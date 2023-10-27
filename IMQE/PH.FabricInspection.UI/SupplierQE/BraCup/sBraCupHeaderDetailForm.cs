using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.FabricInspection.UI.Main;
using PH.Platform.BO;
using PH.Platform.Common;

namespace PH.FabricInspection.UI.SupplierQE.BraCup
{
    public partial class sBraCupHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public sBraCupHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            braCupDefectListForm1.BindingSource.DataSource = obj.BraCupDefects;
            braCupCasingDefectListForm1.BindingSource.DataSource = obj.BraCupCasingDefects;

            //string strParameterType = "SDPS";
            //FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            //SysParamHelper sph = SysParamHelper.Instance;
            //if (sph.LangID == "TW" || sph.LangID == "CN")
            //{
            //    var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.Parameter_Desc }).ToList();
            //    Lists.Insert(0, null);
            //    this.txtFailSolution.Properties.DataSource = Lists;
            //    this.txtFailSolution.Properties.DisplayMember = "Solution";
            //    this.txtFailSolution.Properties.NullText = "";
            //    this.txtFailSolution.Properties.ValueMember = "Code";
            //}
            //else
            //{
            //    var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.ParameterEnglishDesc }).ToList();
            //    Lists.Insert(0, null);
            //    this.txtFailSolution.Properties.DataSource = Lists;
            //    this.txtFailSolution.Properties.DisplayMember = "Solution";
            //    this.txtFailSolution.Properties.NullText = "";
            //    this.txtFailSolution.Properties.ValueMember = "Code";
            //}

            //bool AccessoryFlag = (this.ListForm as BraCupHeaderListForm)._AuditType == "Accessories";
            //agreedUsableWidthRangeLabel.Visible = AccessoryFlag;
            //agreedUsableWidthRangeTextEdit.Visible = AccessoryFlag;
            //edgeToEdgeWidthLabel.Visible = AccessoryFlag;
            //edgeToEdgeWidthSpinEdit.Visible = AccessoryFlag;



            //totalAuditSampleLabel.Visible = AccessoryFlag;
            //totalAuditSampleSpinEdit.Visible = AccessoryFlag;

            //ChangeName();
            //auditSKUCrossCupLabel.Visible = !AccessoryFlag;
            //auditSKUCrossCupTextEdit.Visible = !AccessoryFlag;
            //packListQtyLabel.Visible = !AccessoryFlag;
            //packListQtySpinEdit.Visible = !AccessoryFlag;
        }

        //void ChangeName() 
        //{
        //    if ((this.ListForm as BraCupHeaderListForm)._AuditType == "BraCup")
        //    {
        //        defectResultByIDLabel.Text = "Defect Exam. RESULT\r\nunder Pull iPack *:";

        //        casingPackListQtyLabel.Text = "Pull case's pkg list Qty\r\nfig. * (mult. SKU) :-";
        //    }
        //    else 
        //    {
        //        defectResultByIDLabel.Text = "Defect Exam. RESULT\r\nunder Pull Case *";

        //        casingPackListQtyLabel.Text = "Pull case's pkg\r\nlist Qty fig. * :-";

        //        indPackNOLabel.Visible = false; indPackNOTextEdit.Visible = false;

        //    }
        //}

        public override void EditCurrent()
        {
            braCupCasingDefectListForm1.AllowGridEdit = true;
            base.EditCurrent();

            auditNoSpinEdit.Properties.ReadOnly = true;
            itemIDNOTextEdit.Properties.ReadOnly = true;
            itemCodeTextEdit.Properties.ReadOnly = true;
            colorCodeTextEdit.Properties.ReadOnly = true;
            packListQtyByLotSpinEdit.Properties.ReadOnly = true;
            overallProposaClaimlByLotSpinEdit.Properties.ReadOnly = true;
            overallClaimPercentByLotTextEdit.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            base.SaveCurrent();
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            obj.Save(db, (this.ListForm as sBraCupHeaderListForm).BindingSource);
        }

        private void overallResultCoreDefectSupportButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                BraCupHeader obj = this.BindingSource.Current as BraCupHeader;

                List<string> ReasonGroupList = new List<string>();
                List<string> ReasonDefectNameList = new List<string>();
                frmReason.GetSelectedDataBySplit(ref ReasonGroupList, ref ReasonDefectNameList);

                obj.OverallResultReasonGroup = string.Join("; ", ReasonGroupList.Distinct().ToArray());
                obj.OverallResultCoreDefecName = string.Join("; ", ReasonDefectNameList.ToArray());

                obj.OverallResultDefectKind = "n.a.";
                if (string.IsNullOrEmpty(obj.OverallResultReasonGroup))
                {
                    obj.OverallResultDefectKind = null;
                }
                this.BindingSource.EndEdit();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }


            //SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            //if (frmReason.ShowDialog() == DialogResult.OK)
            //{
            //    BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            //    obj.OverallResultCoreDefectSupport = frmReason.GetSelectedData();
            //    this.BindingSource.EndEdit();
            //    (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            //}
        }



        private void actionLogNOButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            sBraCupHeaderListForm HeaderListForm = this.ListForm as sBraCupHeaderListForm;

            string Suppliers = "";
            string Projects = "";
            string Batchs = "";

            string MissingAudit = obj.ActionLogNO;
            if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            {
                MissingAudit = null;  //HeaderListForm.ECode(DateTime.Now.ToString("yyyy/MM/dd"));
                Suppliers = obj.SuppCode;
                Projects = obj.ProjectNO;
                Batchs = "";
            }
            else //打开已经保存好的Action Log
            {
                var lists = (HeaderListForm.BindingSource.DataSource as IEnumerable<BraCupHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID).Select(p => new { p.SuppCode, p.ProjectNO });

                Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
                Projects = string.Join("/", lists.Select(p => p.ProjectNO).Distinct().ToArray<string>());
                Batchs = "";
            }

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.BraCup, db, MissingAudit, obj.ActionLogID, (this.ListForm as sBraCupHeaderListForm), Suppliers, Projects, Batchs);
            frmAlertLog.ShowDialog();
        }


    }

}
