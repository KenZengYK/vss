using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;
using PH.Platform.BO;
using PH.DefectCode.BO;
using PH.MobileQC.BO;


namespace PH.MobileQC.UI
{
    public partial class TraceFixDetailForm : DetailForm
    {
        public TraceFixDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            BindDefectInfo();
            if (IsNew)
                this.lueFixCode.Properties.ReadOnly = false;
            //if (IsEditting)
            //{
            //    this.edtCode.Properties.ReadOnly = true;
            //    this.edtCode.Text = mdd.DataCode;
            //    this.edtDesc.Text = mdd.Description;
            //}
            this.lueFixCode.EditValue = mdd.DataCode;
              this.edtDesc.Text = mdd.Description;            
            
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.lueFixCode.Properties.ReadOnly = false;
            

        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            //if (IsNew)
             this.lueFixCode.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            Misc_DataDictionary mdd = this.BindingSource.Current as Misc_DataDictionary;
            if (IsNew)
            {
                mdd.DataType = "PH.MobileQC.DefectFix";
                mdd.DataCode = lueFixCode.Text;
                mdd.Description = edtDesc.Text;
            }
            else if (IsEditting)
            {
                mdd.Description = this.edtDesc.Text;
            }
            base.SaveCurrent();
        }

        IList<PHQCDefect_Disp> defect_Code = new List<PHQCDefect_Disp>();
        BindingSource bs = new BindingSource();
        private void BindDefectInfo()
        {
            FabricInspectionDataContext ctx_fbi = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var defects = from c in ctx_fbi.PHQCDefects select new { c.PHDefectCode, c.DefectChineseName };

            foreach (var r in defects)
            {
                PHQCDefect_Disp obj = new PHQCDefect_Disp();
                obj.PHDefectCode = r.PHDefectCode;
                obj.DefectChineseName = r.DefectChineseName;
                defect_Code.Add(obj);
            }
            bs.DataSource = defect_Code;

            this.lueFixCode.Properties.Columns.Clear();

            this.lueFixCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

            this.lueFixCode.Properties.AutoSearchColumnIndex = 0;
            this.lueFixCode.Properties.DataSource = bs;
            this.lueFixCode.Properties.ValueMember = "PHDefectCode";
            this.lueFixCode.Properties.DisplayMember = "PHDefectCode";
        
        }

        private void lueFixCode_EditValueChanged(object sender, EventArgs e)
        {
            PHQCDefect_Disp _defect =bs.Current as PHQCDefect_Disp;
            object obj = lueFixCode.GetColumnValue("DefectChineseName");
            if (obj != null)
            {
                edtDesc.Text = lueFixCode.GetColumnValue("DefectChineseName").ToString();
    
            }
        }
    }
}
