using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.MIDc.UI.Config
{
    public partial class DeclareForm : Form
    {
        private Detail _Detail;
        private string _SuppRef = "";
        private string _MidcHSCode = "";

        private MIDcDataContext db;

        private DeclareForm()
        {
            InitializeComponent();
        }

        public DeclareForm(MIDcDataContext ADataContext, Detail ADetail, string ASuppRef, string AMidcHSCode)
            : this()
        {
            db = ADataContext;
            _Detail = ADetail;
            _SuppRef = ASuppRef;
            _MidcHSCode = AMidcHSCode;

            this.simpleButton1.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator;
        }

        private void DeclareForm_Load(object sender, EventArgs e)
        {
            this.bindingSource_Declare.DataSource = db.CustomMaterialDeclares
                .Where(p => p.SuppRef == _SuppRef && p.MidcHSCode == _MidcHSCode)
                .OrderBy(p => p.SortId);
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(_MidcHSCode))
            {
                MessageBox.Show("沒有MIDc HSCode，不能導入！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string HintStr = "導入數據會清掉HsCode:" + _MidcHSCode + "所有的海關申報信息，是否繼續?";
            if (MessageBox.Show(HintStr, "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            //先清除現有的申報信息
            var lists = db.CustomMaterialDeclares.Where(p => p.SuppRef == _SuppRef && p.MidcHSCode == _MidcHSCode);
            db.CustomMaterialDeclares.DeleteAllOnSubmit(lists);
            db.SubmitChanges();

            //從HSCode定義中導入申報信息
            CustomMaterial customMaterial = db.CustomMaterials.Where(p => p.MidcHSCode == _MidcHSCode).FirstOrDefault();
            foreach (var o in customMaterial.CustomMaterialElements)
            {
                CustomMaterialDeclare obj = new CustomMaterialDeclare();
                obj.SuppRef = _SuppRef;
                obj.MidcHSCode = _MidcHSCode;
                obj.CustomNo = o.CustomNo;
                obj.HSCodeSeq = o.HSCodeSeq;
                obj.ElementNo = o.ElementNo;
                //obj.Remark = o.Remark;

                if (obj.ElementNo == "000001") //處理成份含量
                {
                    obj.Remark = this._Detail.GetCustomDeclareCompositionRemark();
                }
                else if (obj.ElementNo == "000023")   //處理幅寬
                {
                    obj.Remark = this._Detail.GetCustomDeclareSupplierWidthRemark();
                }
                else if (obj.ElementNo == "000025") //每只重量
                {
                    obj.Remark = this._Detail.GetCustomDeclareWeightAnySingle();
                }
                else if (obj.ElementNo == "000034")  //每平方米克重
                {
                    obj.Remark = this._Detail.GetCustomDeclareWeightGmSqmRemark();
                }
                else if (obj.ElementNo == "000037" || obj.ElementNo == "000022" || obj.ElementNo == "000069") //000037纖維成份、000022(聚酯等)、000069(材質)的取法與成份含量的取法一樣
                {
                    obj.Remark = this._Detail.GetCustomDeclareCompositionRemark();
                }


                ////如果是580421000006花邊,580421000063花邊 /國內購買時，申報項：纖維成份的取法與成份含量的取法一樣
                //if (obj.MidcHSCode == "580421000006" || obj.MidcHSCode == "580421000063")
                //{
                //    if (obj.ElementNo == "000037") //纖維成份
                //    {
                //        obj.Remark = this._Detail.GetCustomDeclareCompositionRemark();
                //    }
                //}

                //如果是392099909040雙面膠膜/TPU制時
                //if (obj.MidcHSCode == "3920999090040" || obj.MidcHSCode == "3920999090075") 
                if (obj.MidcHSCode == "3920999090040")
                {
                    string SaveSuppRef = this._Detail.SuppRef;

                    if (obj.ElementNo == "000020") //貨號
                    {
                        //取SuppRef的前幾位，一般有這幾種格式：
                        //1. 3412-2MIL， 取得：3412, 以"-"分隔開
                        //2. ET312/2MIL/10MM, 取得ET312, 以"/"分隔開
                        if (SaveSuppRef.IndexOf("-") > 0) //有"-"分隔符
                        {
                            obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("-"));
                        }
                        else if (SaveSuppRef.IndexOf("/") > 0) //有"/"分隔符
                        {
                            obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("/"));
                        }

                    }
                    else if (obj.ElementNo == "000065") //規格尺寸
                    {
                        //取厚度, MIL
                        //1. 3412-2MIL， 取得：2, 以"-"分隔開
                        //2. ET312/2MIL/10MM, 取得2, 以"/"分隔開
                        string sDeep = "";
                        float fDeep = 0;
                        if (SaveSuppRef.IndexOf("MIL") > 0)  //有毫寸
                        {
                            string[] StrLists = SaveSuppRef.Split(new string[] { "-", "/" }, StringSplitOptions.RemoveEmptyEntries);
                            if (StrLists.Count() > 1)
                            {
                                string Str = StrLists.FirstOrDefault(p => p.Contains("MIL"));
                                sDeep = Str.Replace("MIL", "");
                                float.TryParse(sDeep, out fDeep);

                                if (fDeep > 0)
                                {
                                    obj.Remark = string.Format("/厚{0}cm", Convert.ToString(fDeep * 0.026 * 0.1));
                                }
                            }

                            //取幅寬
                            if (this._Detail.SupplierWidth.HasValue)
                            {
                                obj.Remark += string.Format("/幅宽{0}cm", Convert.ToString(this._Detail.SupplierWidth / 10.00m));
                            }
                        }
                    }
                }

                if (string.IsNullOrEmpty(obj.Remark))
                {
                    obj.Remark = o.Remark;
                }

                obj.SortId = o.SortId;
                obj.IsMailMaterial = o.IsMailMaterial;
                obj.Unit = o.Unit;
                obj.StandardUnit = o.StandardUnit;
                obj.DeclareQty = o.DeclareQty;
                obj.DeclarePrice = o.DeclarePrice;

                db.CustomMaterialDeclares.InsertOnSubmit(obj);
            }
            db.SubmitChanges();

            this.bindingSource_Declare.DataSource = db.CustomMaterialDeclares
                .Where(p => p.SuppRef == _SuppRef && p.MidcHSCode == _MidcHSCode)
                .OrderBy(p => p.SortId);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.gridView1.PostEditor();
            db.SubmitChanges();
        }

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            //先清除現有的申報信息
            //db.ExecuteCommand("delete from CustomMaterialDeclare");

            //var lists = db.Details.Where(p => p.HsCode != "");
            //var lists = db.ExecuteQuery<Detail>("select * from Detail where David_UpdateTime is not null").ToList();
            //var lists = db.ExecuteQuery<Detail>("select * from Detail where David_UpdateTime = '2019-05-28'").ToList();
            //var lists = db.ExecuteQuery<Detail>("select * from Detail where David_UpdateTime = '2019-06-20'").ToList();

            var lists = db.ExecuteQuery<Detail>("select HSCode, * from detail where HSCode in ('7326909000243', '5810920000244', '5508100000245', '5402321100246',  '7326909000343', '5810920000344', '5508100000345', '5402321100346')").ToList();

            int count = lists.Count();

            //var lists = db.Details.Where(p => p.SuppRef == "#100X");

            foreach (Detail d in lists)
            {
                this._Detail = d;

                //從HSCode定義中導入申報信息
                CustomMaterial customMaterial = db.CustomMaterials.Where(p => p.MidcHSCode == d.HsCode).FirstOrDefault();
                if (customMaterial == null)  //當前HSCode在HSCode定義中沒有找到，不處理
                {
                    continue;
                }

                foreach (var o in customMaterial.CustomMaterialElements)
                {
                    CustomMaterialDeclare obj = new CustomMaterialDeclare();
                    obj.SuppRef = d.SuppRef;
                    obj.MidcHSCode = d.HsCode;
                    obj.CustomNo = o.CustomNo;
                    obj.HSCodeSeq = o.HSCodeSeq;
                    obj.ElementNo = o.ElementNo;
                    //obj.Remark = o.Remark;

                    if (obj.ElementNo == "000001") //處理成份含量
                    {
                        obj.Remark = d.GetCustomDeclareCompositionRemark();
                    }
                    else if (obj.ElementNo == "000023")   //處理幅寬
                    {
                        obj.Remark = d.GetCustomDeclareSupplierWidthRemark();
                    }
                    else if (obj.ElementNo == "000025") //每只重量
                    {
                        obj.Remark = d.GetCustomDeclareWeightAnySingle();
                    }
                    else if (obj.ElementNo == "000034")  //每平方米克重
                    {
                        obj.Remark = d.GetCustomDeclareWeightGmSqmRemark();
                    }
                    else if (obj.ElementNo == "000037" || obj.ElementNo == "000022" || obj.ElementNo == "000069") //000037纖維成份、000022(聚酯等)、000069(材質)的取法與成份含量的取法一樣
                    {
                        obj.Remark = this._Detail.GetCustomDeclareCompositionRemark();
                    }

                    //如果是392099909040雙面膠膜/TPU制時
                    if (obj.MidcHSCode == "3920999090225")
                    {
                        string SaveSuppRef = this._Detail.SuppRef;

                        if (obj.ElementNo == "000020") //貨號
                        {
                            //取SuppRef的前幾位，一般有這幾種格式：
                            //1. 3412-2MIL， 取得：3412, 以"-"分隔開
                            //2. ET312/2MIL/10MM, 取得ET312, 以"/"分隔開
                            if (SaveSuppRef.IndexOf("-") > 0) //有"-"分隔符
                            {
                                obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("-"));
                            }
                            else if (SaveSuppRef.IndexOf("/") > 0) //有"/"分隔符
                            {
                                obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("/"));
                            }

                        }
                        else if (obj.ElementNo == "000065") //規格尺寸
                        {
                            //取厚度, MIL
                            //1. 3412-2MIL， 取得：2, 以"-"分隔開
                            //2. ET312/2MIL/10MM, 取得2, 以"/"分隔開
                            string sDeep = "";
                            float fDeep = 0;
                            if (SaveSuppRef.IndexOf("MIL") > 0)  //有毫寸
                            {
                                string[] StrLists = SaveSuppRef.Split(new string[] { "-", "/" }, StringSplitOptions.RemoveEmptyEntries);
                                if (StrLists.Count() > 1)
                                {
                                    string Str = StrLists.FirstOrDefault(p => p.Contains("MIL"));
                                    sDeep = Str.Replace("MIL", "");
                                    float.TryParse(sDeep, out fDeep);

                                    if (fDeep > 0)
                                    {
                                        obj.Remark = string.Format("/厚{0}cm", Convert.ToString(fDeep * 0.026 * 0.1));
                                    }
                                }

                                //取幅寬
                                if (this._Detail.SupplierWidth.HasValue)
                                {
                                    obj.Remark += string.Format("/幅宽{0}cm", Convert.ToString(this._Detail.SupplierWidth / 10.00m));
                                }
                            }
                        }
                    }

                    if (string.IsNullOrEmpty(obj.Remark))
                    {
                        obj.Remark = o.Remark;
                    }

                    obj.SortId = o.SortId;
                    obj.IsMailMaterial = o.IsMailMaterial;
                    obj.Unit = o.Unit;
                    obj.StandardUnit = o.StandardUnit;
                    obj.DeclareQty = o.DeclareQty;
                    obj.DeclarePrice = o.DeclarePrice;

                    db.CustomMaterialDeclares.InsertOnSubmit(obj);
                }
                db.SubmitChanges();
            }


        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            var lists = db.Details.Where(p => p.HsCode != "");
            foreach (Detail d in lists)
            {
                CustomMaterialDeclare obj = d.CustomMaterialDeclares.FirstOrDefault(p => p.ElementNo == "000022");

                if (obj != null)
                {
                    obj.Remark = d.GetCustomDeclareCompositionRemark();
                }
            }

            db.SubmitChanges();

        }

        private void simpleButton3_Click(object sender, EventArgs e)
        {

            var lists = db.Details.Where(p => p.HsCode == "6217109000083");
            foreach (Detail d in lists)
            {
                foreach (var obj in d.CustomMaterialDeclares)
                {
                    string SaveSuppRef = d.SuppRef;

                    if (obj.ElementNo == "000001" && string.IsNullOrEmpty(obj.Remark)) //處理成份含量
                    {
                        obj.Remark = this._Detail.GetCustomDeclareCompositionRemark();
                    }

                    if (obj.ElementNo == "000020" && string.IsNullOrEmpty(obj.Remark)) //貨號
                    {
                        //取SuppRef的前幾位，一般有這幾種格式：
                        //1. 3412-2MIL， 取得：3412, 以"-"分隔開
                        //2. ET312/2MIL/10MM, 取得ET312, 以"/"分隔開
                        if (SaveSuppRef.IndexOf("-") > 0) //有"-"分隔符
                        {
                            obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("-"));
                        }
                        else if (SaveSuppRef.IndexOf("/") > 0) //有"/"分隔符
                        {
                            obj.Remark = SaveSuppRef.Substring(0, SaveSuppRef.IndexOf("/"));
                        }

                    }

                }


            }

            db.SubmitChanges();


        }
    }
}
