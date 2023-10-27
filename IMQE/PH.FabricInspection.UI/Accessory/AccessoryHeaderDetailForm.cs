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

namespace PH.FabricInspection.UI.Accessory
{
    public partial class AccessoryHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public AccessoryHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            accessoryDefectListForm1.BindingSource.DataSource = obj.AccessoryDefects;
            //accessoryCasingDefectListForm1.BindingSource.DataSource = obj.AccessoryCasingDefects;

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

            //bool AccessoryFlag = (this.ListForm as AccessoryHeaderListForm)._AuditType == "Accessories";
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

        public override void EditCurrent()
        {
            base.EditCurrent();

            auditNoSpinEdit.Properties.ReadOnly = true;
            txtItemIDNO.Properties.ReadOnly = true;
            itemCodeTextEdit.Properties.ReadOnly = true;
            colorCodeTextEdit.Properties.ReadOnly = true;
            overallProposaClaimlByLotSpinEdit.Properties.ReadOnly = true;
            actionLogIsCompletedTextEdit.Properties.ReadOnly = true;
            agreedUsableWidthRangeTextEdit.Properties.ReadOnly = true;
            proWeightQtySpinEdit.Properties.ReadOnly = true;
            txtWeightRange.Properties.ReadOnly = true;
        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            base.SaveCurrent();
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            obj.Save(db, (this.ListForm as AccessoryHeaderListForm).BindingSource);
        }

        private void overallResultCoreDefectSupportButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
                obj.OverallResultCoreDefectSupport = frmReason.GetSelectedData();
                this.BindingSource.EndEdit();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
        }



        private void actionLogNOButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            AccessoryHeaderListForm HeaderListForm = this.ListForm as AccessoryHeaderListForm;

            string Suppliers = "";
            string Projects = "";
            string Batchs = "";

            string MissingAudit = obj.ActionLogNO;
            if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            {
                //MissingAudit = HeaderListForm.ECode(DateTime.Now.ToString("yyyy/MM/dd"));
                MissingAudit = null;
                Suppliers = obj.SuppCode;
                Projects = obj.ProjectNO;
                Batchs = "";
            }
            else //打开已经保存好的Action Log
            {
                var lists = (HeaderListForm.BindingSource.DataSource as IEnumerable<AccessoryHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID).Select(p => new { p.SuppCode, p.ProjectNO });

                Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
                Projects = string.Join("/", lists.Select(p => p.ProjectNO).Distinct().ToArray<string>());
                Batchs = "";
            }

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Accessories, db, MissingAudit, obj.ActionLogID, (this.ListForm as AccessoryHeaderListForm), Suppliers, Projects, Batchs, obj.AuditStage);
            frmAlertLog.ShowDialog();
        }

        private void sampleQuantumWeightLabel_Click(object sender, EventArgs e)
        {

        }

        private void agreedUsableWidthRangeLabel_Click(object sender, EventArgs e)
        {

        }

        private void pullBoxWeightLabel_Click(object sender, EventArgs e)
        {

        }

        private void headerTitleBar_Paint(object sender, PaintEventArgs e)
        {

        }

        private void edgeToEdgeWidthLabel_Click(object sender, EventArgs e)
        {

        }



        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = (this.ListForm as AccessoryHeaderListForm).BindingSource.DataSource as IEnumerable<AccessoryHeader>;
        //    var obj = List.Where(dr => !string.IsNullOrEmpty(dr.ActionLogNO) && dr.ActionLogNO.StartsWith(Str))
        //        .Select(dr => dr.ActionLogNO).Distinct().OrderByDescending(p => p).FirstOrDefault();

        //    if (obj == null)
        //    {
        //        return Str + "aa";
        //    }

        //    char LastChar = Convert.ToChar(obj.Substring(obj.Length - 1, 1)); //取最后一位字符
        //    if (LastChar != 'z')
        //    {
        //        char LastCharNew = Convert.ToChar((int)LastChar + 1);
        //        return obj.Substring(0, obj.Length - 1) + LastCharNew;
        //    }
        //    else
        //    {
        //        char PenultimateChar = Convert.ToChar(obj.Substring(obj.Length - 2, 1)); //取倒数第二个字符

        //        if (PenultimateChar == 'z')
        //        {
        //            return "Error";
        //        }

        //        char PenultimateCharNew = Convert.ToChar((int)PenultimateChar + 1);
        //        return obj.Substring(0, obj.Length - 2) + PenultimateCharNew + "a";
        //    }
        //}

    }

}
