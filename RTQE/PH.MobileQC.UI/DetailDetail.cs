using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;


namespace PH.MobileQC.UI
{
    public partial class DetailDetail : PH.Platform.UI.CS.UI2.ParentChildForm//PH.UI.UI2.ChildDetailForm
    {
        #region
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        private QC_Master _Master
        {
            get { return (this.BindingSource.Current as QC_Detail).QC_Master; }
        }
        private QC_Detail Curdetail
        {
            get { return (this.BindingSource.Current as QC_Detail); }
        }

        #endregion

        public DetailDetail()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.radQC_Light.EditValue = Convert.ToString((this.BindingSource.Current as PH.MobileQC.BO.QC_Detail).QC_Light);

            this.PrepareSecondData();

            //Xsj:綁定QC_Detail_Detail數據
            this.mobileQCThirdList.BindingSource.DataSource = (this.BindingSource.Current as PH.MobileQC.BO.QC_Detail).QC_Detail_Details;
            this.mobileQCThirdList.EditorTypeName = typeof(DetailDetailDetail).FullName;
        }

        /// <summary>
        /// 資料准備
        /// </summary>
        private void PrepareSecondData()
        {

            PH.DefectCode.BO.FabricInspectionDataContext context2 = PH.Platform.BO.ContextBuilder.CreateContext<PH.DefectCode.BO.FabricInspectionDataContext>();//.PHQCDefectList list = new PH.DefectCode.BO.PHQCDefectList();
            var defect_Code = from c in context2.PHQCDefects select c;

            this.edtDefetct_Code.Properties.DataSource = defect_Code;
            this.edtDefetct_Code.Properties.DisplayMember = "PHDefectCode";
            this.edtDefetct_Code.Properties.ValueMember = "PHDefectCode";
            switch (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID)
            {
                case "EN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "EN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    break;
                case "TW":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "CN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    break;
                case "CN":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectChineseName", "CN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });
                    break;
                case "TH":
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5), 
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectThaiName", "TN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    break;
                default:
                    this.edtDefetct_Code.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("PHDefectCode", "Code", 5),
                    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DefectEnglishName", "EN", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                    break;
            }


            var problem = from a in context.QC_Defects where a.Defect_Type == 2 select a;
            this.edtProblem.Properties.DataSource = problem;
            this.edtProblem.Properties.DisplayMember = "Defect_Spec";
            this.edtProblem.Properties.ValueMember = "Defect_Code";

            var action_Taken = from a in context.QC_Defects where a.Defect_Type == 3 select a;
            this.edtAction_Taken.Properties.DataSource = action_Taken;
            this.edtAction_Taken.Properties.DisplayMember = "Defect_Spec";
            this.edtAction_Taken.Properties.ValueMember = "Defect_Code";

            var solution = from a in context.QC_Defects where a.Defect_Type == 4 select a;

            this.edtSolution.Properties.DataSource = solution;
            this.edtSolution.Properties.DisplayMember = "Defect_Spec";
            this.edtSolution.Properties.ValueMember = "Defect_Code";

            var cause = from a in context.QC_Defects where a.Defect_Type == 6 select a;
            this.edtCause.Properties.DataSource = cause;
            this.edtCause.Properties.DisplayMember = "Defect_Code";
            this.edtCause.Properties.ValueMember = "Defect_Code";

            //this.edtLightCount.Text = QCLightCount.ToString();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            //  (this.BindingSource.Current as QC_Detail).LightCount = this._QCLightCount;
        }

        protected override void OnClickSave()
        {

            if (CheckSecondInputData())
            {
                (this.BindingSource.Current as QC_Detail).QC_Light = Convert.ToString(this.radQC_Light.EditValue);
                base.OnClickSave();
            }

        }

        protected override void OnClickSaveAndReturn()
        {
            if (CheckSecondInputData())
            {
                (this.BindingSource.Current as QC_Detail).QC_Light = Convert.ToString(this.radQC_Light.EditValue);
                if (this.IsNew)
                    (this.BindingSource.Current as QC_Detail).ID = Guid.NewGuid(); // 09/08/05 add
                base.OnClickSaveAndReturn();
            }
        }

        private void initData()
        {

        }

        private bool CheckSecondInputData()
        {

            int temp = 0;
            int chavalue = 0;
            int all = (this._Master.QCCount ?? 0);

            foreach (QC_Detail obj in this._Master.QC_Details)
            {
                if (obj == this.Curdetail)
                {
                    chavalue = temp;
                }
                temp = temp + obj.LightCount ?? 0;

            }

            if (all < temp)//提示用戶可QC的數量(當前QC明細數量不能大於這個數)
            {
                MessageBox.Show("QC數量不能大於" + (all - chavalue).ToString(), "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }
            return true;


        }

        private void DetailDetail_Load(object sender, EventArgs e)
        {
            //this.radQC_Light.Text = Convert.ToString((this.BindingSource.Current as PH.MobileQC.BO.QC_Detail).QC_Light);
            //this.radQC_Light.EditValue = Convert.ToString((this.BindingSource.Current as PH.MobileQC.BO.QC_Detail).QC_Light);

        }

    }
}
