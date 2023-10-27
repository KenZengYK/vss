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

namespace PH.FabricInspection.UI.BandLace
{
    public partial class BandLaceHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public BandLaceHeaderDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;
            bandLaceSpotDefectListForm1.BindingSource.DataSource = obj.BandLaceSpotDefects;
            bandLaceChainDefectListForm1.BindingSource.DataSource = obj.BandLaceChainDefects;
            bandLandWidthListForm1.BindingSource.DataSource = obj.BandLandWidths;
            bandLandPatternShapeRepeatListForm1.BindingSource.DataSource = obj.BandLandPatternShapeRepeats;
            bandLandSkewnessBowListForm1.BindingSource.DataSource = obj.BandLandSkewnessBows;
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
        }


        public override void EditCurrent()
        {
            this.bandLaceChainDefectListForm1.AllowGridEdit = true;
            base.EditCurrent();
            TxtReadOnly();
        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;
            obj.Save(db, (this.ListForm as BandLaceHeaderListForm).BindingSource);
            base.SaveCurrent();
        }

        public void TxtReadOnly()
        {
            txtAuditNo.Properties.ReadOnly = true;
            txtLotID.Properties.ReadOnly = true;
            txtItemCode.Properties.ReadOnly = true;
            txtColorCode.Properties.ReadOnly = true;
            txtPatternShapeMarkerLossPercentByLot.Properties.ReadOnly = true;
            txtOverallProposaClaimlByLot.Properties.ReadOnly = true;
            txtPackingListLength.Properties.ReadOnly = true;
            txtSkewnessDistanceAB.Properties.ReadOnly = true;
        }

        private void txtOverallResultCoreDefectSupport_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;
                obj.OverallResultCoreDefectSupport = frmReason.GetSelectedData();
                this.BindingSource.EndEdit();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
        }

        private void buttonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;

            string MissingAudit = obj.ActionLogSeqNo;
            if (string.IsNullOrEmpty(MissingAudit))
            {
                //MissingAudit = ECode(DateTime.Now.ToString("yyyy/MM/dd"));
                MissingAudit = null;
            }

            var lists = (this.BindingSource.DataSource as IEnumerable<BandLaceHeader>).Where(p => p.AuditNo == obj.AuditNo).Select(p => new { p.SuppCode, p.ProjectNo, p.BatchNo });
            string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            string Projects = FabricHelper.GetProjectFormatString(lists.Select(p => p.ProjectNo.Trim()).ToList(), "/");
            string Batchs = string.Join("/", lists.Select(p => p.BatchNo).Distinct().ToArray<string>());

            //string Suppliers = "";
            //string Projects = "";
            //string Batchs = "";

            //string MissingAudit = obj.ActionLogSeqNo;
            //if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            //{
            //    MissingAudit = ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            //    Suppliers = obj.SuppCode;
            //    Projects = obj.ProjectNo;
            //    Batchs = obj.BatchNo;
            //}
            //else //打开已经保存好的Action Log
            //{
            //    var lists = ((this.ListForm as BandLaceHeaderListForm).BindingSource.DataSource as IEnumerable<BandLaceHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID).Select(p => new { p.SuppCode, p.ProjectNo, p.BatchNo });

            //    Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            //    Projects = string.Join("/", lists.Select(p => p.ProjectNo).Distinct().ToArray<string>());
            //    Batchs = string.Join("/", lists.Select(p => p.BatchNo).Distinct().ToArray<string>());
            //}

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.BandLace, db, MissingAudit, obj.ActionLogID, (this.ListForm as BandLaceHeaderListForm), Suppliers, Projects, Batchs, obj.AuditStage);
            frmAlertLog.ShowDialog();
        }

        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = (this.ListForm as BandLaceHeaderListForm).BindingSource.DataSource as IEnumerable<BandLaceHeader>;
        //    var obj = List.Where(dr => !string.IsNullOrEmpty(dr.ActionLogSeqNo) && dr.ActionLogSeqNo.StartsWith(Str))
        //        .Select(dr => dr.ActionLogSeqNo).Distinct().OrderByDescending(p => p).FirstOrDefault();

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

        private void txtSkewnessDistanceCD_FormatEditValue(object sender, DevExpress.XtraEditors.Controls.ConvertEditValueEventArgs e)
        {
            BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;
            if (obj != null && obj.NeedSkewnessAndBow == "N")
                e.Value = "n.a.";
        }

        private void txtSkewnessDistanceAB_FormatEditValue(object sender, DevExpress.XtraEditors.Controls.ConvertEditValueEventArgs e)
        {
            BandLaceHeader obj = this.BindingSource.Current as BandLaceHeader;
            if (obj != null && obj.NeedSkewnessAndBow == "N")
                e.Value = "n.a.";
        }


    }
}
