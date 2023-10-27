using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.LineBalanceII.BO;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class QC_ExamPlanHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        List<QC_ExamPlanCustStyle> CustStyleList;
        public string Flag
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).Flag; }
        }

        public bool HasMQACheckRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasMQACheckRight; }
        }
        public bool HasMQICheckRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasMQICheckRight; }
        }

        public bool HasMQACheckLineRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasMQACheckLineRight; }
        }
        public bool HasMQICheckLineRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasMQICheckLineRight; }
        }

        public bool HasImportStyleOptRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasImportStyleOptRight; }
        }

        public bool HasImportLineOptRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasImportLineOptRight; }
        }

        public bool HasLineOptAgreeRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasLineOptAgree; }
        }

        public bool HasQAConfirmLineRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasQAConfirmLineRight; }
        }

        public bool HasQIConfirmLineRight
        {
            get { return (this.ListForm as QC_ExamPlanHeaderListForm).HasQIConfirmLineRight; }
        }

        public QC_ExamPlanHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            QC_ExamPlanHeader header = this.BindingSource.Current as QC_ExamPlanHeader;

            this.qc_ExamPlanDetailListForm_StyleOpt.BindingSource.DataSource = header.QC_ExamPlanDetails.Where(p => p.Line == header.CustStyle).OrderBy(p => p.OptSeq);
            this.qc_ExamPlanDetailListForm_StyleOpt.WorkMode = WorkModes.CustStyleOpt;

            this.qc_ExamPlanDetailListForm_LineOpt.BindingSource.DataSource = header.QC_ExamPlanDetails.Where(p => p.Line != header.CustStyle)
                .OrderBy(p => p.Line).ThenBy(p => p.OptSeq);

            this.qc_ExamPlanDetailListForm_LineOpt.WorkMode = WorkModes.LineOpt;

            string SqlStr = "exec sp_ExamPlanCustStyleList";
            CustStyleList = (this.DataContext as MobileQCDataContext).ExecuteQuery<QC_ExamPlanCustStyle>(SqlStr).ToList();

            //this.cbCustStyle.Properties.Items.Clear();
            //this.cbCustStyle.Properties.Items.AddRange(CustStyleList.Select(p => p.CustStyle).Distinct().OrderBy(p => p).ToList());

            //ProcessFactory();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            //this.cbCustStyle.Enabled = false;
            //this.txtFactory.Enabled = false;
        }

        //private void cbCustStyle_SelectedValueChanged(object sender, EventArgs e)
        //{
        //    this.txtFactory.Text = "";
        //    this.txtFactory.Properties.Items.Clear();

        //    LineBalanceIIDataContext BOO2DB = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
        //    var FactoryList = BOO2DB.StyleMasters.Where(p => p.KHKH == this.cbCustStyle.Text && p.Statu == 1).Select(p => p.Factory == null ? "" : p.Factory).Distinct().ToList();
        //    this.txtFactory.Properties.Items.AddRange(FactoryList);
        //    this.txtFactory.SelectedIndex = 0;
        //    this.txtFactory.Enabled = this.txtFactory.Properties.Items.Count >= 2;

        //    this.txtStyleType.Text = BOO2DB.StyleMasters.Where(p => p.KHKH == this.cbCustStyle.Text && p.Statu == 1).Select(p => p.CPLB).FirstOrDefault();

        //    //this.cbFactory.Text = "";
        //    //this.cbFactory.Properties.Items.Clear();
        //    //this.cbFactory.Properties.Items.AddRange(CustStyleList.Where(p => p.CustStyle == this.cbCustStyle.Text).Select(p => p.Factory).Distinct().ToList());

        //    //this.cbFactory.Enabled = this.cbFactory.Properties.Items.Count >= 2;
        //    //if (this.cbFactory.Properties.Items.Count == 1)
        //    //    this.cbFactory.SelectedIndex = 0;
        //}

        //protected override void SaveCurrent()
        //{
        //    if (this.txtFactory.Properties.Items.Count > 1 && string.IsNullOrEmpty(this.txtFactory.Text))
        //    {
        //        MessageBox.Show("Please chosen factory.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        //        this.txtFactory.Focus();
        //        return;
        //    }
        //    base.SaveCurrent();
        //}

        protected override void SaveCurrent()
        {         

            QC_ExamPlanHeader obj = this.BindingSource.Current as QC_ExamPlanHeader;
            if (obj.OID == 0)
            {
                MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
                int DataCount = db.QC_ExamPlanHeaders.Where(dr => dr.CustStyle == this.edtStyle.Text && dr.PHStyle == this.txtPHStyle.Text).Count();
                if (DataCount > 0)
                {
                    MessageBox.Show("The CustStyle  and  PHStyle already exists in the system！", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                else 
                {
                    this.DataContext.SubmitChanges();
                    base.SaveCurrent();
                }

            }
            else
            {
                //更新Header 中的Factory、WorkShop
                if (obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Factory)).Count() > 0)
                {
                    obj.Factory = string.Join(",", obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().ToArray());
                }

                if (obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Workshop) && p.Line != obj.CustStyle).Count() > 0)
                {
                    obj.Workshop = string.Join(",", obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Workshop) && p.Line != obj.CustStyle).Select(p => p.Workshop).OrderBy(dr => dr).Distinct().ToArray());
                    
                }

                if (obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Line) && p.Line != obj.CustStyle).Count() > 0)
                {
                    obj.Line = string.Join(",", obj.QC_ExamPlanDetails.Where(p => !string.IsNullOrEmpty(p.Line) && p.Line != obj.CustStyle).Select(p => p.Line).OrderBy(dr => dr).Distinct().ToArray());
                }

                this.DataContext.SubmitChanges();
                base.SaveCurrent();
            }
        }



        private void cbFactory_SelectedValueChanged(object sender, EventArgs e)
        {
            //    ProcessWorkshop();
            //    ProcessCustStyle();
        }

        private void cbWorkshop_SelectedValueChanged(object sender, EventArgs e)
        {
            //ProcessCustStyle();
        }

        void ProcessFactory()
        {
            //this.cbFactory.Properties.Items.Clear();
            //this.cbFactory.Properties.Items.AddRange(CustStyleList.Select(p => p.Factory).Distinct().ToList());
            //this.cbWorkshop.Text = "";
            //this.cbCustStyle.Text = "";
        }

        void ProcessWorkshop()
        {
            //this.cbWorkshop.Properties.Items.Clear();
            //this.cbWorkshop.Properties.Items.AddRange(CustStyleList.Where(p => p.Factory == this.cbFactory.Text).Select(p => p.Workshop).Distinct().ToList());
            //this.cbWorkshop.Properties.Items.Insert(0, "");
            //this.cbWorkshop.Text = "";
            //this.cbCustStyle.Text = "";
        }

        void ProcessCustStyle()
        {
            //if (string.IsNullOrEmpty(this.cbFactory.Text)) return;

            //this.cbCustStyle.Properties.Items.Clear();
            //var lists = CustStyleList.Where(p => p.Factory == this.cbFactory.Text);
            //{
            //    lists = lists.Where(p => p.Workshop == this.cbWorkshop.Text);
            //}

            //this.cbCustStyle.Properties.Items.AddRange(lists.Select(p => p.CustStyle).OrderBy(p => p).Distinct().ToList());
        }

        private void barBtnImportOpt_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //    this.SaveData();

            //    QC_ExamPlanHeader obj = this.BindingSource.Current as QC_ExamPlanHeader;
            //    if (obj == null || obj.OID < 0)
            //    {
            //        return;
            //    }

            //    MobileQCDataContext db = this.DataContext as MobileQCDataContext;

            //    string SqlStr = string.Format("exec sp_ExamPlanImportCustStyleOpt '{0}', {1}", obj.CustStyle, obj.OID);
            //    db.ExecuteCommand(SqlStr);

            //    obj.QC_ExamPlanDetails.SetSource(db.QC_ExamPlanDetails.Where(p => p.HeaderOID == obj.OID));
            //    this.qc_ExamPlanDetailListForm_StyleOpt.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line == obj.CustStyle);
            //    this.qc_ExamPlanDetailListForm_LineOpt.BindingSource.DataSource = obj.QC_ExamPlanDetails.Where(p => p.Line != obj.CustStyle);
        }

        private void edtStyle_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectStyleForm frmSelectStyle = new SelectStyleForm();
            if (frmSelectStyle.ShowDialog() == DialogResult.OK)
            {
                this.txtCustCode.Text = frmSelectStyle.CustCode;
                this.edtStyle.Text = frmSelectStyle.CustStyle;
                this.txtPHStyle.Text = frmSelectStyle.PHStyle;
                this.txtFactory.Text = frmSelectStyle.Facotry;
                this.txtStyleType.Text = frmSelectStyle.StyleType;
                this.txtWorkShop.Text = frmSelectStyle.WorkShop;

            }
        }


    }
}
