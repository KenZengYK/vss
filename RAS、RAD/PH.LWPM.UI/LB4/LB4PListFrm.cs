using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using DevExpress.XtraGrid;
using PH.Platform.BO;
using PH.LWPM.UI.Report;
using DevExpress.XtraEditors;
using PH.Platform.Email.BO;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4PListFrm : ListForm
    {

        public string OptionType = "A";
        public string MCParam = "";
        public string Step;
        public WPMaster FilterWPMaster = null;
        public string ReportVersion = "v.2.2";

        public LB4PListFrm()
        {
            InitializeComponent();
            ConditionsAdjustment();
        }

        public LB4PListFrm(string opttype, string AMCParam, string AStep)
        {
            InitializeComponent();
            ConditionsAdjustment();
            OptionType = opttype;
            MCParam = AMCParam;
            Step = AStep;

            this.colIsConfirmed.FieldName = (MCParam == "MC") ? "ConfirmShow_MC" : "ConfirmShow";
        }


        public LB4PListFrm(string opttype, string AMCParam, string AStep, WPMaster AWPMaster)
            : this(opttype, AMCParam, AStep)
        {
            this.FilterWPMaster = AWPMaster;
        }


        protected override void OnClickOpen()
        {
            //WPMaster ma = this.BindingSource.Current as WPMaster;
            //(new LB5.ProcessForm(ma)).ShowDialog(); 
            base.OnClickOpen();
        }


        protected override void DeleteCurrent()
        {
            if (this.BindingSource.Current == null)
            {
                return;
            }

            WPMaster obj = this.BindingSource.Current as WPMaster;
            QNDeleteLog QNDelLog = new QNDeleteLog()
            {
                Factory = obj.Factory,
                LineCode = obj.LineCode,
                j_NO = obj.j_NO,
                J2_job = obj.J2_job,
                Rwo = obj.Rwo,
                Qn = obj.Qn,
                Bcolor = obj.Bcolor,
                DeleteTime = DateTime.Now,
                DeleterMan = PH.Platform.Common.SysParamHelper.Instance.UserID
            };

            (this.DataContext as RAPLQDataContext).QNDeleteLogs.InsertOnSubmit(QNDelLog);
            (this.DataContext as RAPLQDataContext).SubmitChanges();

            base.DeleteCurrent();
        }

        protected override void OnClickDelete()
        {
            if (Convert.ToBoolean((this.BindingSource.Current as WPMaster).IsConfirmed))
            {
                MessageBox.Show("It already confirmed,you could not delete it !", "Notice", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            base.OnClickDelete();
        }
        private void ConditionsAdjustment()
        {
            StyleFormatCondition cn, cn1, cn2, cn3;
            cn1 = new StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["OneWeekFlag"], null, true);
            cn1.Appearance.BackColor = Color.FromArgb(249, 247, 204);  //Color.Yellow;
            cn1.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn1);
            cn2 = new StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["TwoWeekFlag"], null, true);
            cn2.Appearance.BackColor = Color.FromArgb(189, 246, 161); //Color.LightGreen;
            cn2.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn2);
            cn3 = new StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["ThreeWeekFlag"], null, true);
            cn3.Appearance.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            cn3.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn3);

            cn = new StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["YNConfirme"], null, true);
            cn.Appearance.BackColor = Color.FromArgb(247, 136, 137);  // Color.Red;
            cn.ApplyToRow = true;
            objListGridView.FormatConditions.Add(cn);
        }

        public override void DataBind()
        {
            base.DataBind();

            //WPMasterList WpContext = new WPMasterList();
            //(new LB5.ProcessForm()).ShowDialog();            
            //WpContext.CurrentDataContext.CommandTimeout = 8000;

            //this.BindingSource.DataSource = WpContext.GetDataByCondition("(flag is null or flag='' or flag like '%h%') or (flag like '%s%' and (IsConfirmed='0' or IsConfirmed is null)) ");
            //this.DataContext = WpContext.CurrentDataContext;

            //var lists = (this.DataContext as RAPLQDataContext).WPMasters.Where(p =>
            //             (p.Flag.Length == 0 || p.Flag.Contains("h")) || (p.Flag.Contains("s") && !(p.IsConfirmed ?? false)));


            this.btnChangeLine.Visibility = BarItemVisibility.Never;
            if (OptionType == "PP" || OptionType == "B")
            {
                this.btnChangeLine.Visibility = BarItemVisibility.Always;
            }

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            //var lists = (this.DataContext as RAPLQDataContext).ExecuteQuery<WPMaster>(string.Format("exec sp_Get10QNPerLine '{0}'", OptionType)).ToList();

            if (this.FilterWPMaster != null)
            {
                this.FilterWPMaster.CurrentDataContext = this.DataContext;

                List<WPMaster> OneWPMaster = new List<WPMaster>();
                OneWPMaster.Add(this.FilterWPMaster);
                this.BindingSource.DataSource = OneWPMaster;
                //this.BindingSource.DataSource = this.FilterWPMaster;

                this.EditorTypeName = typeof(LB4ChildFrm).FullName;
                this.objListGridView.ExpandAllGroups();
                this.objListGridView.MoveLastVisible();
                this.barItemColorFilter.Visibility = BarItemVisibility.Never;
                return;
            }

            this.barItemColorFilter.Visibility = BarItemVisibility.Always;
            List<WPMaster> AllDataList = (this.DataContext as RAPLQDataContext).ExecuteQuery<WPMaster>(string.Format("exec sp_Get10QNPerLine '{0}'", OptionType)).ToList().Where(p => p.Step == Step).ToList();
            List<WPMaster> lists = new List<WPMaster>();

            //All
            //Red (1 Day)
            //Yellow (1 Week)
            //Green (2 Week)
            //Blue (3 Week)
            if (this.barItemColorFilter.EditValue.ToString() == "All")
            {
                lists = AllDataList;
            }
            else if (this.barItemColorFilter.EditValue.ToString() == "Red (1 Day)")
            {
                lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(1)).ToList();
            }
            else if (this.barItemColorFilter.EditValue.ToString() == "Yellow (1 Week)")
            {
                lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(7)).ToList();
            }
            else if (this.barItemColorFilter.EditValue.ToString() == "Green (2 Week)")
            {
                lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(14)).ToList();
            }
            else if (this.barItemColorFilter.EditValue.ToString() == "Blue (3 Week)")
            {
                lists = AllDataList.Where(p => p.StartTime <= DateTime.Now.AddDays(21)).ToList();
            }

            foreach (WPMaster obj in lists)
            {
                obj.IsLB4 = true;
            }
            this.BindingSource.DataSource = lists.OrderBy(p => p.Seq);

            this.EditorTypeName = typeof(LB4ChildFrm).FullName;
        }

        private static bool RemoveColorQN(bool ABool)
        {
            return ABool;
        }


        private void barBtnHistory_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.BindingSource.DataSource = WpContext.GetDataByCondition("factory='SL'");
            WPMasterList WpContext = new WPMasterList();
            this.BindingSource.DataSource = WpContext.GetDataByCondition("flag = 'x' or (flag like '%s%' and IsConfirmed='1')");
            this.DataContext = WpContext.CurrentDataContext;
        }

        private void barBtnResume_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WPMasterList WpContext = new WPMasterList();
            this.BindingSource.DataSource = WpContext.GetDataByCondition("(flag is null or flag='' or flag like '%h%') or (flag like '%s%' and (IsConfirmed='0' or IsConfirmed is null)) ");
            this.DataContext = WpContext.CurrentDataContext;
        }

        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();

            BatchAddForm frmBatchAdd = new BatchAddForm(OptionType);
            if (frmBatchAdd.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    List<string> NoLB3Lists = new List<string>();
                    (this.DataContext as RAPLQDataContext).ImportQNToLB4(frmBatchAdd.Factory, frmBatchAdd.Workshop, frmBatchAdd.Line, frmBatchAdd.QNCount, ref NoLB3Lists);
                    this.DataBind();
                    this.InitFormNavigator();

                    new MessageForm("Batch add QN is succeed.", NoLB3Lists).ShowDialog();
                    //MessageBox.Show("Batch add QN is succeed.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Batch add QN is failed." + ex.Message, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void barBtnAdd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            base.OnClickAddNew();
        }

        private void Report_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (obj == null)
            {
                return;
            }

            string[] NoNeedCheckWss = new string[] { "PP", "B", "F" }; //不需要檢查Confirm標誌的工場



            string ReportOptionType = OptionType == "A" ? "" : OptionType;
            string StepType = "";
            //if ((obj.ToBeConfirmedFlag_MC ?? false) && (obj.ToBeConfirmedFlag ?? false))
            if ((obj.IsConfirmed ?? false) || NoNeedCheckWss.Contains(OptionType)) //P、B、F三個工場不需要檢查confirm標誌也可以打印
            {
                StepType = "Step 4 RD confirmed";
            }
            else
            {
                //MessageBox.Show("WF/HW is incompleted! ", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                MessageBox.Show("The QN is unconfirmed, can't print! ", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");

            StyleMasterListFormReport rpt1 = new StyleMasterListFormReport(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            if (rpt1.BindingSourceCount != 0)
            { rpt1.CreateDocument(); }

            StyleMasterListFormReport2 rpt2 = new StyleMasterListFormReport2(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),  obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");

            if (rpt2.BindingSourceCount != 0)
            {
                rpt2.CreateDocument();
            }
            rpt2.Pages.AddRange(rpt1.Pages);


            StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            if (rpt3.BindingSourceCount != 0)
            { rpt3.CreateDocument(); }

            rpt2.Pages.AddRange(rpt3.Pages);

            rpt2.ShowPreview();

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WPMaster obj = this.BindingSource.Current as WPMaster;

            if (obj == null)
            {
                return;
            }
            string ReportHeaderType = "";
            //if ((obj.ToBeConfirmedFlag_MC ?? false) && (obj.ToBeConfirmedFlag ?? false))
            if (obj.IsConfirmed ?? false)
            {
                ReportHeaderType = "Operation Permit (with spec.) - Step 4 / RD confirmed Summary";
            }
            else
            {
                ReportHeaderType = "Operation Permit (with spec.) - Step 3 / Deployment Arrangement Summary";
            }

            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            string SqlStr = string.Format("exec sp_GetOpsPermitReportLB3 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}'", obj.Factory.Trim(),
                obj.LineCode.Trim(), obj.j_NO.Trim(), obj.J2_job.Trim(), obj.Rwo.Trim(), obj.Qn.Trim(), obj.Bcolor.Trim());

            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "dtStepReport");

            //string[] Status = obj.ConfirmShow.Split(new string[] { " - ", "-" }, StringSplitOptions.RemoveEmptyEntries);
            //string a = Status[Status.Count() - 1];
            //PartA_WF
            //得到表頭數據
            DataTable dtHeader = ds.Tables[0];

            OpsSummaryStep3Header Header = dtHeader.AsEnumerable().Select(dr =>
                new OpsSummaryStep3Header()
                {
                    CustStyle = dr["CustStyle"].ToString(),
                    PHStyle = dr["PHStyle"].ToString(),
                    Cust = dr["Cust"].ToString(),
                    Status = ((obj.ToBeConfirmedFlag ?? false) && (obj.ToBeConfirmedFlag_MC ?? false)) ? "Completed" : "Incomplete",   //Status[Status.Count() - 1],
                    QN = dr["QN"].ToString(),
                    Outstanding = Convert.ToInt32(dr["Outstanding"].ToString()),
                    ALWDesk = Convert.ToInt32(dr["ALDesk"].ToString()),
                    TotalWDesk = Convert.ToInt32(dr["TotalDesk"].ToString()),
                    FirstOptStartDate = dr["FirstOptStartDate"].ToString() + " / " + dr["FirstOptLocation"].ToString(),
                    FirstOptLocation = dr["Workshop"].ToString() + " / " + dr["Line"].ToString(),

                }).FirstOrDefault();


            //得到表體數據
            DataTable dtHWStitching = ds.Tables[1];

            List<OpsSummaryStep3PartAWF> HWStitchingDataList = dtHWStitching.AsEnumerable().Select(dr =>
                new OpsSummaryStep3PartAWF()
                {
                    FAE = dr["FAE"].ToString(),
                    MCType = dr["MCType"].ToString() + "\r\n" + dr["MCTypeName"].ToString(),
                    MCTypeName = dr["MCType"].ToString(),
                    MachineID = dr["MachineID"].ToString(),
                    MachineModelNo = dr["MachineModelNo"].ToString(),
                    //McStyleNo = dr["McStyleNo"].ToString(),
                    WorkerID = dr["WorkerID"].ToString(),
                    WorkerType = dr["WorkerType"].ToString(),
                    OpsSN = dr["OpsSN"].ToString(),
                    OpsNameEN = dr["OpsNameEN"].ToString(),
                    OpsNameCN = dr["OpsNameCN"].ToString(),
                    OpsNameBD = dr["OpsNameBD"].ToString(),
                    AgreeUnRed = dr["agree"].ToString(),
                    AgreeUnRedFlag = dr["AgreeFlag"].ToString(),
                    //KeyOpsEN = dr["KeyOpsEN"].ToString(),
                    //KeyOpsCN = dr["KeyOpsCN"].ToString(),
                    //KeyOpsBD = dr["KeyOpsBD"].ToString(),

                    ZJ = dr["ZJ"].ToString(),
                    GuageThrow1 = dr["GuageThrow1"].ToString(),
                    GuageThrowUnit = dr["GuageThrowUnit"].ToString(),
                    StitchDensity = dr["StitchDensity"].ToString(),
                    StitchDensityUnit = dr["StitchDensityUnit"].ToString(),
                    NeedleNo = dr["NeedleNo"].ToString(),
                    NeedleNoType = dr["NeedleNoType"].ToString(),
                    NeedleThreads = dr["NeedleThreads"].ToString(),
                    BobbinLopper = dr["BobbinLopper"].ToString(),
                    GuidingPlate = dr["GuidingPlate"].ToString(),
                    FeedingDevice = dr["FeedingDevice"].ToString(),
                    ThroatPlateSet = dr["ThroatPlateSet"].ToString(),
                    ThroatPlateSetCode = dr["ThroatPlateSetCode"].ToString(),
                    SeamAllowance = dr["SeamAllowance"].ToString(),
                    SeamAllowanceUnit = dr["SeamAllowanceUnit"].ToString(),
                    TypeOfSAName = dr["TypeOfSAName"].ToString(),
                    TypeOfSANumb = dr["TypeOfSANumb"].ToString(),
                    TypeOfSAUnit = dr["TypeOfSAUnit"].ToString(),
                    ReportType = dr["ReportType"].ToString(),

                }).Where(p => p.ReportType == "1").ToList();

            var OptNOCount1 = HWStitchingDataList.Where(p => p.OpsSN != null && p.OpsSN != "" && p.OpsSN != "!").Select(p => p.OpsSN).Distinct().Count();
            var WFIDCount1 = HWStitchingDataList.Where(p => p.WorkerID != null && p.WorkerID != "" && p.WorkerID != "!").Select(p => p.WorkerID).Distinct().Count();
            var HWIDCount1 = HWStitchingDataList.Where(p => p.MachineID != null && p.MachineID != "" && p.MachineID != "!").Select(p => p.MachineID).Distinct().Count();
            //PartB - HWStitching 表
            OpsSummaryStep3PartB_HWStitchingReport rtpPartAHWStitching = new OpsSummaryStep3PartB_HWStitchingReport(Header, HWStitchingDataList, HWIDCount1.ToString(), WFIDCount1.ToString(), OptNOCount1.ToString(), ReportHeaderType);
            //if (dtHWStitching.Rows.Count > 0)
            //{
            //    rtpPartAHWStitching.CreateDocument();
            //}

            if (HWStitchingDataList.Count > 0)
            {
                rtpPartAHWStitching.CreateDocument();
            }

            //PartB_HW:Bonding
            DataTable dtHWBonding = ds.Tables[2];
            List<OpsSummaryStep3PartBHW> HWBondingDataList = dtHWBonding.AsEnumerable().Select(dr =>
               new OpsSummaryStep3PartBHW()
               {

                   FAE = dr["FAE"].ToString(),
                   MCType = dr["MCType"].ToString() + "\r\n" + dr["MCTypeName"].ToString(),
                   MCTypeName = dr["MCType"].ToString(),
                   MachineID = dr["MachineID"].ToString(),
                   McStyleNo = dr["McStyleNo"].ToString(),
                   WorkerID = dr["WorkerID"].ToString(),
                   WorkerType = dr["WorkerType"].ToString(),
                   OpsSN = dr["OpsSN"].ToString(),
                   //OpsName = dr["OpsName"].ToString(),
                   OpsNameEN = dr["OpsNameEN"].ToString(),
                   OpsNameCN = dr["OpsNameCN"].ToString(),
                   OpsNameBD = dr["OpsNameBD"].ToString(),

                   AgreeUnRed = dr["agree"].ToString(),
                   AgreeUnRedFlag = dr["AgreeFlag"].ToString(),//該字段用於色彩判斷
                   //BasicAttach = dr["BasicAttach"].ToString(),

                   //Bonding
                   Glue_Model = dr["Glue_Model"].ToString(),
                   Glue_Thick = dr["Glue_Thick"].ToString(),
                   Glue_Width = dr["Glue_Width"].ToString(),
                   SingleOrDouble = dr["SingleOrDouble"].ToString(),
                   Temp_SP = dr["Temp_SP"].ToString(),
                   Temp_XP = dr["Temp_XP"].ToString(),
                   TempMeterStrap = dr["TempMeterStrap"].ToString(),
                   Temp_SC = dr["Temp_SC"].ToString(),
                   Temp_XC = dr["Temp_XC"].ToString(),
                   Temp_FRC = dr["Temp_FRC"].ToString(),
                   Temp_YX = dr["Temp_YX"].ToString(),
                   Temp_BW = dr["Temp_BW"].ToString(),
                   Sped_SY = dr["Sped_SY"].ToString(),
                   Disp_IsSyl = dr["Disp_IsSyl"].ToString(),
                   Sped_XY = dr["Sped_XY"].ToString(),
                   Disp_IsXyl = dr["Disp_IsXyl"].ToString(),
                   Sped_CD = dr["Sped_CD"].ToString(),
                   Pres_QX = dr["Pres_QX"].ToString(),
                   Pres_HX = dr["Pres_HX"].ToString(),
                   Pres_SPD = dr["Pres_SPD"].ToString(),
                   Pres_SCF = dr["Pres_SCF"].ToString(),
                   PressureStrap = dr["PressureStrap"].ToString(),
                   ReportType = dr["ReportType"].ToString(),

               }).Where(p => p.ReportType == "2").ToList();

            var OptNOCount2 = HWBondingDataList.Where(p => p.OpsSN != null && p.OpsSN != "" && p.OpsSN != "!").Select(p => p.OpsSN).Distinct().Count();
            var WFIDCount2 = HWBondingDataList.Where(p => p.WorkerID != null && p.WorkerID != "" && p.WorkerID != "!").Select(p => p.WorkerID).Distinct().Count();
            var HWIDCount2 = HWBondingDataList.Where(p => p.MachineID != null && p.MachineID != "" && p.MachineID != "!").Select(p => p.MachineID).Distinct().Count();

            //PartB - HW Bonding 表
            OpsSummaryStep3PartB_HWBondingReport rtpHWBonding = new OpsSummaryStep3PartB_HWBondingReport(Header, HWBondingDataList, HWIDCount2.ToString(), WFIDCount2.ToString(), OptNOCount2.ToString(), ReportHeaderType);
            //if (dtHWBonding.Rows.Count > 0)
            //{
            //    rtpHWBonding.CreateDocument();
            //}
            if (HWBondingDataList.Count > 0)
            {
                rtpHWBonding.CreateDocument();
            }


            //PartB_HW:HeatPressUltrasonic表
            DataTable dtHWHeatPressUltrasonic = ds.Tables[2];
            List<OpsSummaryStep3PartBHW> HWdtHHeatPressUltrasonicDataList = dtHWHeatPressUltrasonic.AsEnumerable().Select(dr =>
                new OpsSummaryStep3PartBHW()
                {

                    FAE = dr["FAE"].ToString(),
                    MCType = dr["MCType"].ToString() + "\r\n" + dr["MCTypeName"].ToString(),
                    MCTypeName = dr["MCType"].ToString(),
                    MachineID = dr["MachineID"].ToString(),
                    WorkerID = dr["WorkerID"].ToString(),
                    WorkerType = dr["WorkerType"].ToString(),
                    McStyleNo = dr["McStyleNo"].ToString(),
                    OpsSN = dr["OpsSN"].ToString(),
                    //OpsName = dr["OpsName"].ToString(),
                    OpsNameEN = dr["OpsNameEN"].ToString(),
                    OpsNameCN = dr["OpsNameCN"].ToString(),
                    OpsNameBD = dr["OpsNameBD"].ToString(),

                    AgreeUnRed = dr["agree"].ToString(),
                    AgreeUnRedFlag = dr["AgreeFlag"].ToString(),//該字段用於色彩判斷

                    //BasicAttach = dr["BasicAttach"].ToString(),

                    //HeatPressUltrasonic
                    UltrasonicTimeDelay = dr["UltrasonicTimeDelay"].ToString(),
                    UltrasonicTimeWelding = dr["UltrasonicTimeWelding"].ToString(),
                    UltrasonicTimeHarden = dr["UltrasonicTimeHarden"].ToString(),
                    UltrasonicRevolution = dr["UltrasonicRevolution"].ToString(),
                    UltrasonicPressure = dr["UltrasonicPressure"].ToString(),
                    Spec_Temp = dr["Spec_Temp"].ToString(),
                    Spec_Time = dr["Spec_Time"].ToString(),
                    Spec_Pres = dr["Spec_Pres"].ToString(),
                    ReportType = dr["ReportType"].ToString(),


                }).Where(p => p.ReportType == "3").ToList();

            var OptNOCount3 = HWdtHHeatPressUltrasonicDataList.Where(p => p.OpsSN != null && p.OpsSN != "" && p.OpsSN != "!").Select(p => p.OpsSN).Distinct().Count();
            var WFIDCount3 = HWdtHHeatPressUltrasonicDataList.Where(p => p.WorkerID != null && p.WorkerID != "" && p.WorkerID != "!").Select(p => p.WorkerID).Distinct().Count();
            var HWIDCount3 = HWdtHHeatPressUltrasonicDataList.Where(p => p.MachineID != null && p.MachineID != "" && p.MachineID != "!").Select(p => p.MachineID).Distinct().Count();

            //PartB - HW //HeatPressUltrasonic ： 主表
            OpsSummaryStep3PartB_HWHeatPressUltrasonicReport rtpHWHeatPressUltrasonic = new OpsSummaryStep3PartB_HWHeatPressUltrasonicReport(Header, HWdtHHeatPressUltrasonicDataList, HWIDCount3.ToString(), WFIDCount3.ToString(), OptNOCount3.ToString(), ReportHeaderType);

            //if (dtHWHeatPressUltrasonic.Rows.Count > 0)
            //{
            //    rtpHWHeatPressUltrasonic.CreateDocument();
            //}

            if (HWdtHHeatPressUltrasonicDataList.Count > 0)
            {
                rtpHWHeatPressUltrasonic.CreateDocument();
            }


            DataTable dtWF = ds.Tables[1];
            List<OpsSummaryStep3PartAWF> WFDataList = dtWF.AsEnumerable().Select(dr =>
                new OpsSummaryStep3PartAWF()
                {
                    FAE = dr["FAE"].ToString(),
                    MCType = dr["MCType"].ToString() + "\r\n" + dr["MCTypeName"].ToString(),
                    MCTypeName = dr["MCType"].ToString(),
                    MachineID = dr["MachineID"].ToString(),
                    MachineModelNo = dr["MachineModelNo"].ToString(),
                    WorkerID = dr["WorkerID"].ToString(),
                    WorkerType = dr["WorkerType"].ToString(),
                    OpsSN = dr["OpsSN"].ToString(),
                    OpsNameEN = dr["OpsNameEN"].ToString(),
                    OpsNameCN = dr["OpsNameCN"].ToString(),

                    AgreeUnRed = dr["agree"].ToString(),
                    AgreeUnRedFlag = dr["AgreeFlag"].ToString(),

                    OpsNameBD = dr["OpsNameBD"].ToString(),
                    KeyOpsEN = dr["KeyOpsEN"].ToString(),
                    KeyOpsCN = dr["KeyOpsCN"].ToString(),
                    KeyOpsBD = dr["KeyOpsBD"].ToString(),

                }).ToList();



            //PartA -Sign
            DataTable dtWFSign = ds.Tables[3];
            List<OpsSummaryStep3PartAWFSign> WFDataListSign = dtWFSign.AsEnumerable().Select(dr =>
                new OpsSummaryStep3PartAWFSign()
                {
                    FAE = dr["FAE"].ToString(),
                    Operator = dr["Operator"].ToString(),
                    QualAuditor = dr["QualAuditor"].ToString(),
                    Mechanic = dr["Mechanic"].ToString(),
                    LineLeader = dr["LineLeader"].ToString(),
                    Supervisor_P = dr["Supervisor_P"].ToString(),
                    Superintendent = dr["Superintendent"].ToString(),
                    Approval1 = dr["Approval1"].ToString(),
                    Approval2 = dr["Approval2"].ToString(),
                    ToBeConfirmedFlag = (dr["ToBeConfirmedFlag"].ToString() == "Y") ? dr["ToBeConfirmedFlag"].ToString() : "",
                    ConfirDateMax = (dr["ToBeConfirmedFlag"].ToString() == "Y") ? dr["ConfirDateMax"].ToString() : "",
                    Approver = obj.Confirmer,
                    ConfirmTime = obj.ConfirmTime.ToString(),
                }).ToList();


            var OptNOCount = WFDataList.Where(p => p.OpsSN != null && p.OpsSN != "" && p.OpsSN != "!").Select(p => p.OpsSN).Distinct().Count();
            var WFIDCount = WFDataList.Where(p => p.WorkerID != null && p.WorkerID != "" && p.WorkerID != "!").Select(p => p.WorkerID).Distinct().Count();
            var HWIDCount = WFDataList.Where(p => p.MachineID != null && p.MachineID != "" && p.MachineID != "!").Select(p => p.MachineID).Distinct().Count();
            //MachineID
            ////PartA-WF：Sign从表
            //OpsSummaryStep3PartA_WFSignReport rtpPartAWFSign = new OpsSummaryStep3PartA_WFSignReport(WFDataListSign);

            //PartA - WF 表
            OpsSummaryStep3PartA_WFReport rtpPartAWF = new OpsSummaryStep3PartA_WFReport(Header, WFDataList, WFDataListSign, HWIDCount.ToString(), WFIDCount.ToString(), OptNOCount.ToString(), ReportHeaderType, obj.IsConfirmed ?? false, obj.Factory, obj.ConfirmTime ?? DateTime.Now);
            if (dtWF.Rows.Count > 0)
            {
                rtpPartAWF.CreateDocument();
            }


            rtpPartAWF.PrintingSystem.ContinuousPageNumbering = false;

            rtpPartAWF.Pages.AddRange(rtpHWBonding.Pages);
            rtpPartAWF.Pages.AddRange(rtpHWHeatPressUltrasonic.Pages);
            rtpPartAWF.Pages.AddRange(rtpPartAHWStitching.Pages);
            rtpPartAWF.ShowPreview();
        }



        private void Table2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (obj == null)
            {
                return;
            }
            string ReportOptionType = OptionType == "A" ? "" : OptionType;
            string StepType = "";
            if ((obj.ToBeConfirmedFlag_MC ?? 2 == 1) && (obj.ToBeConfirmedFlag ?? 2 == 1))
            {
                StepType = "Step 4";
            }
            else
            {
                StepType = "Step 3";
            }
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");

            StyleMasterListFormReport rpt1 = new StyleMasterListFormReport(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            if (rpt1.BindingSourceCount != 0)
            { rpt1.CreateDocument(); }

            StyleMasterListFormReport2 rpt2 = new StyleMasterListFormReport2(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");

            if (rpt2.BindingSourceCount != 0)
            {
                rpt2.CreateDocument();
            }
            rpt2.Pages.AddRange(rpt1.Pages);


            StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            if (rpt3.BindingSourceCount != 0)
            { rpt3.CreateDocument(); }

            rpt2.Pages.AddRange(rpt3.Pages);

            rpt2.ShowPreview();
            //StyleMasterListFormReport2 rpt = new StyleMasterListFormReport2(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),
            //obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "");
            //rpt.ShowPreview();

        }

        private void Table3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (obj == null)
            {
                return;
            }
            string ReportOptionType = OptionType == "A" ? "" : OptionType;

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");

            StyleMasterListFormReport3 rpt = new StyleMasterListFormReport3(AllSource, "");
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "", "");
            rpt.ShowPreview();
        }

        private void OptPermitbp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (obj == null)
            {
                return;
            }

            string[] NoNeedCheckWss = new string[] { "PP", "B", "F" }; //不需要檢查Confirm標誌的工場

            string ReportOptionType = OptionType == "A" ? "" : OptionType;
            string StepType = "";
            //if ((obj.ToBeConfirmedFlag_MC ?? false) && (obj.ToBeConfirmedFlag ?? false))
            if ((obj.IsConfirmed ?? false) || NoNeedCheckWss.Contains(OptionType)) //P、B、F三個工場不需要檢查confirm標誌也可以打印
            {
                StepType = "Step 4 RD confirmed\r\nধাপ 4 RD নিশ্চিত";
            }
            else
            {
                MessageBox.Show("The QN is unconfirmed, can't print! ", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");


            //StyleMasterListFormReport_B1 rpt1 = new StyleMasterListFormReport_B1(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            StyleMasterListFormReport_B1 rpt1 = new StyleMasterListFormReport_B1(AllSource, StepType);
            if (rpt1.BindingSourceCount != 0)
            { rpt1.CreateDocument(); }

            StyleMasterListFormReport_B2 rpt2 = new StyleMasterListFormReport_B2(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");

            if (rpt2.BindingSourceCount != 0)
            {
                rpt2.CreateDocument();
            }
            rpt2.Pages.AddRange(rpt1.Pages);


            StyleMasterListFormReport_B3 rpt3 = new StyleMasterListFormReport_B3(AllSource, StepType);
            //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
            if (rpt3.BindingSourceCount != 0)
            { rpt3.CreateDocument(); }

            rpt2.Pages.AddRange(rpt3.Pages);

            rpt2.ShowPreview();
        }

        private void barItemColorFilter_EditValueChanged(object sender, EventArgs e)
        {
            this.DataBind();
            this.InitFormNavigator();
        }



        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //QNHelper.RedQNSendEMail();
        }

        private void btnChangeLine_ItemClick(object sender, ItemClickEventArgs e)
        {
            WPMaster obj = this.BindingSource.Current as WPMaster;
            if (obj == null) return;

            ChangeLineForm frmChangeLine = new ChangeLineForm(obj);
            if (frmChangeLine.ShowDialog() == DialogResult.OK)
            {
                try
                {
                    string SqlStr = @"Update WPMaster set LineCode = '{0}' 
where Factory = '{1}' and LineCode = '{2}' and j_NO = '{3}' and J2_job = '{4}' and Rwo = '{5}' and Qn = '{6}' and Bcolor = '{7}'";

                    SqlStr = string.Format(SqlStr, frmChangeLine.ChangeLine, obj.Factory, obj.LineCode, obj.j_NO, obj.J2_job, obj.Rwo, obj.Qn, obj.Bcolor);

                    (this.DataContext as RAPLQDataContext).ExecuteCommand(SqlStr);

                    this.DataBind();

                    MessageBox.Show("Line change successfully", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }


            }
        }


    }
}
