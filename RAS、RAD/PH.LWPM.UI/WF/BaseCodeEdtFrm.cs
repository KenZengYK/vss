using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Data.Common;
using DevExpress.XtraTreeList;

namespace PH.LWPM.UI.WF
{
    public partial class BaseCodeEdtFrm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public BaseCodeEdtFrm()
        {
            InitializeComponent();
        }


        private List<DataTypes> TypeList = new List<DataTypes>();
        public override void DataBind()
        {
            BaseCodeListFrm bcfrm = this.PrevForm as BaseCodeListFrm;
            TypeList = bcfrm.AllTypes;

            this.lbHSCode.Visible = false;
            this.edtHSCode.Visible = false;
            //if (bcfrm.lueAllTypes.EditValue != null && bcfrm.lueAllTypes.EditValue.ToString() == "DPTUS")
            //{
            //    this.edtHSCode.Properties.DataSource = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "MCPart");
            //    this.edtHSCode.Properties.DisplayMember = "Description";
            //    this.edtHSCode.Properties.ValueMember = "Code";

            //    this.lbHSCode.Visible = true;
            //    this.edtHSCode.Visible = true;
            //}

            //控制REC时显示 Appointed Departmental 由David加入 2020-02-24
            this.lbDepartment.Visible = bcfrm.lueAllTypes.EditValue != null && bcfrm.lueAllTypes.EditValue.ToString() == "cbbRecrole";
            this.edtDepartment.Visible = this.lbDepartment.Visible;
            this.edtDepartmentRowID.Visible = false;

            //控制REC时显示 Diff Dept 由David加入 2020-03-02
            this.lbDiffDept.Visible = this.lbDepartment.Visible;
            this.edtDiffDept.Visible = this.lbDepartment.Visible;

            this.lueBaseType.Properties.DisplayMember = "TypeDesc";
            this.lueBaseType.Properties.ValueMember = "TypeValue";

            this.langTextBox.DataBindings.Clear();
            if ((this.PrevForm as BaseCodeListFrm).isregion)
            {
                lblParentCode.Visible = true;
                tbxParent.Visible = true;
                langTextBox.DataBindings.Add(new Binding("Text", this.BindingSource, "Code"));

            }
            else
                langTextBox.DataBindings.Add(new Binding("Text", this.BindingSource, "Lang"));


            if (this.IsNew)
            {
                if ((this.PrevForm as BaseCodeListFrm).isregion)
                    this.lueBaseType.Properties.DataSource = TypeList.Where(p => p.TypeCode.EndsWith("GC")).ToList();
                if ((this.PrevForm as BaseCodeListFrm).isgroupa)
                    this.lueBaseType.Properties.DataSource = TypeList.Where(p => p.TypeCode.EndsWith("GA") && p.TypeCode != "SYS01_GA").ToList();
                if ((this.PrevForm as BaseCodeListFrm).isgroupb)
                    this.lueBaseType.Properties.DataSource = TypeList.Where(p => p.TypeCode.EndsWith("GB") && p.TypeCode != "SYS05_GB").ToList();

                lueBaseType.ItemIndex = 0;
            }
            else
            {
                BaseCode code = this.BindingSource.Current as BaseCode;
                List<DataTypes> _lsttypes = TypeList.Where(p => p.TypeValue == code.Type).ToList();
                this.lueBaseType.Properties.DataSource = _lsttypes;
            }

            //SetCountryProvince();
        }

        List<RegionInfo> _lstregininfo = new List<RegionInfo>();
        private void SetCountryProvince()
        {
            BaseCode bc = this.BindingSource.Current as BaseCode;
            if (bc.Type == "REGION" || bc.Type == "AREA")
            {

                this.lblCountryProvince.Visible = true;
                this.lueCountryProvince.Visible = true;
                lueCountryProvince.Properties.ValueMember = "Code";


                if (bc.Type == "REGION") //省
                {
                    // colParentCode.Caption = "Which Country";
                    lueCountryProvince.Properties.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", 6, "Country"));
                    lueCountryProvince.Properties.DisplayMember = "Name";
                }
                else
                {
                    // colParentCode.Caption = "Which Province";
                    //lueCountryProvince.Properties.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("NameC", 6, "Countrys"));
                    lueCountryProvince.Properties.Columns.Add(new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", 6, "Province"));
                    lueCountryProvince.Properties.DisplayMember = "Name";
                }
                string mtype = "";
                if (bc.Type == "REGION")
                    mtype = "Country";
                else
                    mtype = "REGION";

                // SetLookUpEdit(mtype);
                //this.lueCountryProvince.Properties.DataSource = _lstregininfo;

            }

        }


        private void SetLookUpEdit(string vtype)
        {
            BaseCodeList bcl = new BaseCodeList();
            List<BaseCode> typelist = bcl.GetDataByCondition("Type='" + vtype + "'").ToList();
            string lanid = PH.Platform.Common.SysParamHelper.Instance.LangID.ToLower();

            for (int j = 0; j < typelist.Count; j++)
            {
                RegionInfo dt = new RegionInfo();
                dt.Code = typelist[j].Code;


                if (vtype.ToLower() == "country")
                {

                    if (lanid == "en")
                        dt.Name = typelist[j].Name;

                    if (lanid == "tw"
                        || lanid == "cn")
                        dt.Name = typelist[j].Description;

                    if (lanid.ToLower() == "bd")
                        dt.Name = typelist[j].NameBd;
                }


                //dt.NameP = "--"; //set default value;
                if (vtype.ToLower() == "region")
                {
                    string vcode = typelist[j].Code;

                    BaseCode bsc = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Code == vcode).FirstOrDefault();

                    if (bsc == null)
                        continue;

                    switch (lanid)
                    {
                        case "en":
                            dt.Name = bsc.Name;
                            //dt.NameP=bcl.GetDataByCondition("code='"+typelist[j].ParentCode+"'").FirstOrDefault().Name;
                            break;
                        case "tw":
                            //dt.NameP=bcl.GetDataByCondition("code='"+typelist[j].ParentCode+"'").FirstOrDefault().Description;
                            dt.Name = bsc.Description;
                            break;
                        case "bd":
                            // dt.NameP = bcl.GetDataByCondition("code='" + typelist[j].ParentCode + "'").FirstOrDefault().NameBd;
                            dt.Name = bsc.NameBd;
                            break;
                        case "cn":
                            // dt.NameP = bcl.GetDataByCondition("code='" + typelist[j].ParentCode + "'").FirstOrDefault().Description;
                            dt.Name = bsc.Description;
                            break;
                    }
                }


                _lstregininfo.Add(dt);
            }


        }

        bool _isaddchild;
        public override void EditCurrent()
        {
            base.EditCurrent();


            if (!IsNew)
            {
                this.lueBaseType.Enabled = false;
                BaseCode objcur = this.BindingSource.Current as BaseCode;
                if ((this.PrevForm as BaseCodeListFrm).isregion)
                {
                    // tbxCode.Text = objcur.Code;
                    this.langTextBox.Enabled = false;
                }
                //else
                //    tbxCode.Text = objcur.Lang;
            }
            else
            {
                //if (!(this.PrevForm as BaseCodeListFrm).isregion)
                // this.tbxCode.Enabled = false;



                if ((this.PrevForm as BaseCodeListFrm).isaddchild)
                {
                    _isaddchild = true;
                    (this.PrevForm as BaseCodeListFrm).isaddchild = false;
                    BaseCode newobj = this.BindingSource.Current as BaseCode;
                    string typename = (this.PrevForm as BaseCodeListFrm).objparent.Type;

                    //newobj.Type = (this.PrevForm as BaseCodeListFrm).objparent.Type;
                    //newobj.ParentCode = (this.PrevForm as BaseCodeListFrm).objparent.Code;
                    //string stext = "";
                    //if (typename.ToLower() == "country")
                    //    stext = "REGION";
                    //if (typename.ToLower() == "region")
                    //    stext = "AREA";
                    //if (typename.ToLower() == "area")
                    //    stext = "Town";

                    //  lueBaseType.Text = TypeList.Where(p => p.TypeValue == stext).FirstOrDefault().TypeDesc;

                    this.langTextBox.Enabled = false;
                    tbxParent.Text = (this.PrevForm as BaseCodeListFrm).objparent.Code;
                    lueBaseType.Enabled = false;
                    tbxParent.Enabled = false;
                }
                if ((this.PrevForm as BaseCodeListFrm).isregion)
                {
                    lueBaseType.Enabled = false;
                    this.langTextBox.Enabled = false;
                }

            }
        }

        protected override void SaveCurrent()
        {
            BaseCode bc = this.BindingSource.Current as BaseCode;
            if (IsNew)
            {
                if ((this.PrevForm as BaseCodeListFrm).isregion)
                {
                    // tbxCode.DataBindings.Add(new Binding("Text", this.BindingSource, "Code"));
                    bc.Code = this.GenerateCode();
                    langTextBox.Text = bc.Code;
                }
                else
                    bc.Code = this.GenerateCode();
            }

            if ((this.PrevForm as BaseCodeListFrm).isregion)
                bc.Type = "AREA";

            if (bc.ParentCode != null && bc.ParentCode.Trim() == "")
                bc.ParentCode = null;

            base.SaveCurrent();
            if (_isaddchild)
            {

                Control[] c0 = (this.PrevForm as BaseCodeListFrm).Controls.Find("panel1", true);//[0] as System.Windows.Forms.RadioButton;                                                
                foreach (Control control in c0[0].Controls)
                {
                    if (control.GetType() == typeof(RadioButton))
                    {
                        if (control.Name == "rbRegion")
                        {
                            (control as RadioButton).Checked = false;
                            (control as RadioButton).Checked = true;

                        }
                    }
                }

            }
        }


        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if (_isaddchild)
            {

                Control[] c0 = (this.PrevForm as BaseCodeListFrm).Controls.Find("panel1", true);//[0] as System.Windows.Forms.RadioButton;                                                
                foreach (Control control in c0[0].Controls)
                {
                    if (control.GetType() == typeof(RadioButton))
                    {
                        if (control.Name == "rbRegion")
                        {
                            (control as RadioButton).Checked = false;
                            (control as RadioButton).Checked = true;

                        }
                    }
                }



            }
        }


        private string GenerateCode()
        {
            RAPLQDataContext rdc = this.DataContext as RAPLQDataContext;
            string sqlstr = "select max(code) from basecode where code like '%CJ%'";
            DbParameter[] paras = new DbParameter[] { };

            DbDataReader dr = rdc.ExecuteReader(sqlstr, paras);

            string mcode = "CJ00000001";



            if (dr.Read())
            {
                string maxcode = dr[0].ToString();
                if (!string.IsNullOrEmpty(maxcode))
                {
                    int ii = int.Parse(maxcode.Substring(2, 8)) + 1;
                    string middle = string.Empty;
                    for (int j = 0; j < 8 - ii.ToString().Length; j++)
                    {
                        middle = middle + "0";
                    }
                    mcode = "CJ" + middle + ii.ToString();
                }
            }
            dr.Close();
            return mcode;
        }

        private void edtDepartment_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            AppointedDepartmentalForm frmDept = new AppointedDepartmentalForm();
            if (frmDept.ShowDialog() == DialogResult.OK)
            {
                BaseCode obj = this.BindingSource.Current as BaseCode;
                if (obj != null)
                {
                    obj.ExtraField1 = frmDept.ChoiceDepartmentalRowIDs;
                }
                //this.edtDepartmentRowID.Text = frmDept.ChoiceDepartmentalRowIDs;
            }
        }

    }

    public class DataTypes
    {
        public string TypeValue
        {
            get;
            set;
        }

        public string TypeDesc { get; set; }

        public string TypeCode { get; set; }
    }


    public class RegionInfo
    {
        public string Code
        {
            get;
            set;
        }

        public string Name { get; set; }

        //public string NameP { get; set; }
    }



}
