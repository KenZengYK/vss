using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;
using DevExpress.XtraBars;
using PH.MIDc.UI.FG;

namespace PH.MIDc.UI
{
    public partial class CustomMaterialDeclare_FGListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public string StyleNo { get; set; }
        public string HSCode { get; set; }

        public MIDcDataContext db
        {
            get { return (MIDcDataContext)this.DataContext; }
        }

        public CustomMaterialDeclare_FGListForm()
        {
            InitializeComponent();
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;

            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                this.barBtnGetAll.Visibility = BarItemVisibility.Always;
            }
            else
            {
                this.barBtnGetAll.Visibility = BarItemVisibility.Never;
            }
        }

        public override void DataBind()
        {
            this.DataContext = db;
            this.BindingSource.DataSource = db.CustomMaterialDeclare_FGs
                .Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode)
                .OrderBy(p => p.SortId);

            base.DataBind();
        }

        private void barImport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (string.IsNullOrEmpty(this.HSCode))
            {
                MessageBox.Show("沒有MIDc HSCode，不能導入！", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string HintStr = "導入數據會清掉HsCode:" + this.HSCode.Trim() + "所有的海關申報信息，包括手工修改的成份信息, 是否繼續?";
            if (MessageBox.Show(HintStr, "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            FGStyleHSCodeHelper.Import(db, StyleNo, HSCode);

            this.BindingSource.DataSource = db.CustomMaterialDeclare_FGs
                .Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode)
                .OrderBy(p => p.SortId);


            ////先清除現有的申報信息
            //var lists = db.CustomMaterialDeclare_FGs.Where(p => p.StyleNo == StyleNo && p.MidcHSCode == HSCode);
            //db.CustomMaterialDeclare_FGs.DeleteAllOnSubmit(lists);
            //db.SubmitChanges();

            ////從HSCode定義中導入申報信息
            //CustomMaterial customMaterial = db.CustomMaterials.Where(p => p.MidcHSCode == HSCode.Trim()).FirstOrDefault();
            //if (customMaterial == null) return;

            //foreach (var o in customMaterial.CustomMaterialElements)
            //{
            //    CustomMaterialDeclare_FG obj = new CustomMaterialDeclare_FG();
            //    obj.StyleNo = StyleNo;
            //    obj.MidcHSCode = HSCode;
            //    obj.CustomNo = o.CustomNo;
            //    obj.HSCodeSeq = o.HSCodeSeq;
            //    obj.ElementNo = o.ElementNo;
            //    obj.SortId = o.SortId;
            //    obj.Remark = o.Remark;
            //    string Sql = "";

            //    if (obj.ElementNo == "000001") //處理成份含量
            //    {
            //        obj.Remark = this.GetCompositionRemark(this.StyleNo);
            //    }
            //    else if (obj.ElementNo == "000003") //處理品牌
            //    {
            //        //取品牌的Remark
            //        //select left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=款號的最后兩個位
            //        //Sql = string.Format("select top 1 left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=right('{0}', 2)", StyleNo.Trim());
            //        //Sql = string.Format("select left(a.prmd15,4) as brand from as400db..inp15 a,as400db..inp35 b where prmt15='SDIV' and psar15=sdiv35 and pnum35='{0}'", StyleNo.Trim());

            //        Sql = string.Format("select ltrim(rtrim(substring(a.prmd15, charindex(' ', a.prmd15) + 1, len(a.prmd15)))) as brand from as400db..inp15 a,as400db..inp35 b where prmt15='SDIV' and psar15=sdiv35 and pnum35='{0}'", StyleNo.Trim());
            //        obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
            //    }
            //    else if (obj.ElementNo == "000020") //處理貨號
            //    {
            //        //取貨號的Remark
            //        //--select top 1 * from as400db..inp40 where tref40=款號 and usgc40='A'
            //        //Sql = string.Format("select top 1 TLIN40 from as400db..inp40 where tref40='{0}' and usgc40='A'", StyleNo);

            //        //為處理有些款號有多個客款的情況，改用存儲過程實現，多個款號時，用 / 拼接  2018-05-07
            //        Sql = string.Format("exec dbo.Sp_GetArtNoReamrk_FG '{0}'", StyleNo.Trim());
            //        obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
            //    }

            //    db.CustomMaterialDeclare_FGs.InsertOnSubmit(obj);
            //}
            //db.SubmitChanges();

            //this.BindingSource.DataSource = db.CustomMaterialDeclare_FGs
            //    .Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode)
            //    .OrderBy(p => p.SortId);
        }



        ///// <summary>
        ///// 得到成份的Remark
        ///// </summary>
        ///// <param name="AStyleNo">款號</param>
        ///// <returns></returns>
        //string GetCompositionRemark(string AStyleNo)
        //{
        //    //select top 10 * from [AS400DB].dbo.qtp60 where styl60='106212AMB      '
        //    string Sql = string.Format("select STYL60 as StyleNo, CMCD60 as Code, CMPP60 as Value from [AS400DB].dbo.QTP60 where styl60='{0}' order by Value desc", AStyleNo);
        //    //DataTable dt = db.ExecuteDataTable(Sql, "QTP60");
        //    DataTable dt = SqlDataHelper.GetDataTable(Sql);

        //    List<FGComposition> lists = new List<FGComposition>();
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        lists.Add(new FGComposition
        //        {
        //            StyleNo = dt.Rows[i]["StyleNo"].ToString(),
        //            Code = dt.Rows[i]["Code"].ToString(),
        //            Value = string.IsNullOrEmpty(dt.Rows[i]["Value"].ToString()) ? 0 : Convert.ToDecimal(dt.Rows[i]["Value"])
        //        });
        //    }

        //    string Str = "";
        //    foreach (var c in lists.Where(p => p.Value > 0))
        //    {
        //        Str += c.NameCN + "/" + Math.Round(c.Value, 2).ToString() + "% ";
        //    }

        //    return Str;
        //}

        private void barBtnGetAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string HintStr = "本操作將會清除掉所有成品物料所有的海關申報信息，包括手工修改的成份信息，是否繼續?";
            if (MessageBox.Show(HintStr, "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            db.CustomMaterialDeclare_FGs.DeleteAllOnSubmit(db.CustomMaterialDeclare_FGs);
            db.SubmitChanges();

            string sStyleNo = "";
            string sHSCode = "";

            string Sql = "select TREF40 as StyleNo, TLIN40 as HSCode from [AS400DB]..INP40 where USGC40 = 'H'";
            DataTable dt = db.ExecuteDataTable(Sql, "");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                //從HSCode定義中導入申報信息
                sStyleNo = dt.Rows[i]["StyleNo"].ToString();
                sHSCode = dt.Rows[i]["HSCode"].ToString();

                CustomMaterial customMaterial = db.CustomMaterials.Where(p => p.MidcHSCode == sHSCode.Trim()).FirstOrDefault();
                if (customMaterial == null) continue;

                foreach (var o in customMaterial.CustomMaterialElements)
                {
                    CustomMaterialDeclare_FG obj = new CustomMaterialDeclare_FG();
                    obj.StyleNo = sStyleNo;
                    obj.MidcHSCode = sHSCode;
                    obj.CustomNo = o.CustomNo;
                    obj.HSCodeSeq = o.HSCodeSeq;
                    obj.ElementNo = o.ElementNo;
                    obj.SortId = o.SortId;
                    obj.Remark = o.Remark;

                    //if (obj.ElementNo == "000001") //處理成份含量
                    //{
                    //    obj.Remark = this.GetCompositionRemark(sStyleNo);
                    //}
                    //else if (obj.ElementNo == "000003") //處理品牌
                    //{
                    //    Sql = string.Format("select top 1 left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=right('{0}', 2)", sStyleNo.Trim());
                    //    obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
                    //}
                    //else if (obj.ElementNo == "000020") //處理貨號
                    //{
                    //    Sql = string.Format("select top 1 TLIN40 from as400db..inp40 where tref40='{0}' and usgc40='A'", sStyleNo);
                    //    obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
                    //}

                    db.CustomMaterialDeclare_FGs.InsertOnSubmit(obj);
                }
                db.SubmitChanges();
            }

        }

        private void barBatchUpdate_ItemClick(object sender, ItemClickEventArgs e)
        {
            BatchUpdateCustomDeclareForm frmBatchUpdate = new BatchUpdateCustomDeclareForm();
            if (frmBatchUpdate.ShowDialog() == DialogResult.OK)
            {
                //批量更新成分含量000001
                if (frmBatchUpdate.Element != CustomDeclareBatchUpdates.None)
                {
                    var AllElementLists = db.CustomMaterialDeclare_FGs.Where(p => p.ElementNo == "000001");
                    if (frmBatchUpdate.Element == CustomDeclareBatchUpdates.Current)
                    {
                        AllElementLists = AllElementLists.Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode);
                    }
                    else if (frmBatchUpdate.Element == CustomDeclareBatchUpdates.BlankLine)
                    {
                        AllElementLists = AllElementLists.Where(p => p.Remark == null || p.Remark == "");
                    }

                    foreach (var obj in AllElementLists)
                    {
                        if (string.IsNullOrEmpty(obj.UpdatedRemark))
                        {
                            obj.Remark = FGStyleHSCodeHelper.GetCompositionRemark(obj.StyleNo);
                        }
                        else
                        {
                            obj.Remark = obj.UpdatedRemark; //如果成份手工修改过，取直接取手工修改过的成份信息
                        }
                    }
                    db.SubmitChanges();
                }


                //批量更新品牌000003
                if (frmBatchUpdate.Brand != CustomDeclareBatchUpdates.None)
                {
                    //因為更新品牌太慢，所以改為用存儲過程執行
                    string SqlStr = string.Format("exec BatchUpdateCustomDeclare_FG '{0}', '{1}', {2}", this.StyleNo, this.HSCode, (int)frmBatchUpdate.Brand);
                    db.CommandTimeout = 8000;
                    db.ExecuteNonQuery(SqlStr);

                    //var AllBrandLists = db.CustomMaterialDeclare_FGs.Where(p => p.ElementNo == "000003");

                    //if (frmBatchUpdate.Brand == CustomDeclareBatchUpdates.Current)
                    //{
                    //    AllBrandLists = AllBrandLists.Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode);
                    //}
                    //else if (frmBatchUpdate.Brand == CustomDeclareBatchUpdates.BlankLine)
                    //{
                    //    AllBrandLists = AllBrandLists.Where(p => p.Remark == null || p.Remark == "");
                    //}

                    //foreach (var obj in AllBrandLists)
                    //{
                    //    //string Sql = string.Format("select top 1 left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=right('{0}', 2)", obj.StyleNo.Trim());
                    //    string Sql = string.Format("select left(a.prmd15,4) as brand from as400db..inp15 a,as400db..inp35 b where prmt15='SDIV' and psar15=sdiv35 and pnum35='{0}'", StyleNo.Trim());
                    //    obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
                    //}
                    //db.SubmitChanges();
                }

                //批量更新貨號000020
                if (frmBatchUpdate.GoodsNo != CustomDeclareBatchUpdates.None)
                {
                    var AllGoodsNoLists = db.CustomMaterialDeclare_FGs.Where(p => p.ElementNo == "000020");
                    if (frmBatchUpdate.GoodsNo == CustomDeclareBatchUpdates.Current)
                    {
                        AllGoodsNoLists = AllGoodsNoLists.Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode);
                    }
                    else if (frmBatchUpdate.GoodsNo == CustomDeclareBatchUpdates.BlankLine)
                    {
                        AllGoodsNoLists = AllGoodsNoLists.Where(p => p.Remark == null || p.Remark == "");
                    }
                    foreach (var obj in AllGoodsNoLists)
                    {
                        //string Sql = string.Format("select top 1 TLIN40 from as400db..inp40 where tref40='{0}' and usgc40='A'", obj.StyleNo.Trim());

                        //為處理有些款號有多個客款的情況，改用存儲過程實現，多個款號時，用 / 拼接  2018-05-07
                        string Sql = string.Format("exec dbo.Sp_GetArtNoReamrk_FG '{0}'", obj.StyleNo.Trim());
                        obj.Remark = db.ExecuteQuery<string>(Sql).FirstOrDefault();
                    }

                    db.SubmitChanges();
                }

                this.BindingSource.DataSource = db.CustomMaterialDeclare_FGs
                             .Where(p => p.StyleNo == this.StyleNo && p.MidcHSCode == this.HSCode)
                             .OrderBy(p => p.SortId);

            }
        }

        private void objListGridView_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            CustomMaterialDeclare_FG obj = this.BindingSource.Current as CustomMaterialDeclare_FG;
            barUpdatedComposition.Enabled = obj != null && obj.ElementNo == "000001";
        }

        private void barUpdatedComposition_ItemClick(object sender, ItemClickEventArgs e)
        {
            CustomMaterialDeclare_FG obj = this.BindingSource.Current as CustomMaterialDeclare_FG;
            if (obj != null)
            {
                UpdateCompositionForm frmUpdate = new UpdateCompositionForm(obj.Remark);
                if (frmUpdate.ShowDialog() == DialogResult.OK)
                {
                    obj.UpdatedRemark = frmUpdate.UpdateComposition;
                    if (string.IsNullOrEmpty(frmUpdate.UpdateComposition))
                    {
                        obj.Remark = FGStyleHSCodeHelper.GetCompositionRemark(obj.StyleNo);
                    }
                    else
                    {
                        obj.Remark = frmUpdate.UpdateComposition;
                    }

                }
                db.SubmitChanges();
            };
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Remark")
            {
                object obj = objListGridView.GetRowCellValue(e.RowHandle, "UpdatedRemark");
                if (obj != null && !string.IsNullOrEmpty(obj.ToString()))
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                    e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                }

            }
        }

    }
}
