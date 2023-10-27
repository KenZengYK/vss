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
using PH.LWPM.UI.LB4;
using PH.Platform.BO;
using PH.LWPM.UI.Report;
using System.Data.Linq;
using DevExpress.XtraBars;

namespace PH.LWPM.UI.LB5
{
    public partial class LB5ChildListY1 : ListForm
    {
        public LB5ChildListY1()
        {
            InitializeComponent();
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "JWorkSN")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["JWorkSN"]) != null)
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "CWorkSN")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["CWorkSN"]) != null)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }

            }

            else if (e.Column.FieldName == "CWorkSN_LB3")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["CWorkSN_LB3"]) != null)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }
            }
            else if (e.Column.FieldName == "JWorkSN_LB3")
            {
                //Matching mc = bandedGridView1.GetRow(e.RowHandle) as Matching;
                if (bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["JWorkSN_LB3"]) != null)
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "FAE")
            {
                if (e.DisplayText == "A")
                {
                    e.DisplayText = "AL";
                }

                //object ObjFAE = bandedGridView1.GetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["FAE"]);
                //if (ObjFAE != null && ObjFAE.ToString() == "A")
                //{
                //    e.DisplayText
                //}
            }
        }

        private void chkIsFloater_CheckedChanged(object sender, EventArgs e)
        {
            try
            {

                if (bandedGridView1.FocusedRowHandle < 0)
                    return;

                int _idx = bandedGridView1.FocusedRowHandle;

                Lb5Matching mc1 = this.bandedGridView1.GetRow(bandedGridView1.FocusedRowHandle) as Lb5Matching;

                var datalist = (IEnumerable<Lb5Matching>)this.BindingSource.DataSource;
                IEnumerable<Lb5Matching> _matchins = datalist.Where(p => p.WorkerId == mc1.WorkerId);
                List<Lb5Matching> mlst = (this.ParentForm as LB5ChildFrmN).mclist;

                bool b = ((DevExpress.XtraEditors.CheckEdit)sender).Checked;
                if (!b)
                {
                    foreach (Lb5Matching _mc in _matchins)
                    {
                        _mc.IsFloater = false;
                        _mc.HeadCount = mlst.Where(p => p.WorkerId == _mc.WorkerId && p.OperationCode == _mc.OperationCode && _mc.WPSN == p.WPSN).FirstOrDefault().HeadCount;
                    }
                    return;
                }

                var query = (from c in datalist
                             orderby c.JWorkSN descending
                             where c.Mtm_Suggest.GetValueOrDefault() == (decimal)100.0
                             select c).FirstOrDefault();

                if (query != null && query.Mtm_Suggest.GetValueOrDefault() > 0)
                {
                    //decimal _hc = (mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (mc.Mtm_Suggest.GetValueOrDefault() * query.JWorkSN.GetValueOrDefault());
                    //mc.HeadCount = decimal.Round(_hc, 2);
                    foreach (Lb5Matching _mc in _matchins)
                    {
                        if (_mc.Mtm_Suggest.GetValueOrDefault() > 0)
                        {
                            decimal _hc = (_mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (_mc.Mtm_Suggest.GetValueOrDefault() * query.JWorkSN.GetValueOrDefault());
                            _mc.HeadCount = decimal.Round(_hc, 2);
                            _mc.IsFloater = true;
                        }
                    }
                }
                else
                {
                    MessageBox.Show("請填寫計算Floater所必須的Requerst MTM值后,再執行此操作!");

                }

                int pos = this.BindingSource.List.IndexOf(mc1);
                this.BindingSource.Position = pos;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "請填寫計算Floater所必須的Requerst MTM值!");
            }
        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }

        private void bandedGridView1_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.Name == "colMoveable")
            {
                if (e.Value.ToString() != "物移")
                    bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 1);
                else
                    bandedGridView1.SetRowCellValue(e.RowHandle, this.bandedGridView1.Columns["WKStaitonCount"], 0);
            }
        }

        public string OptionType { get; set; }
        private void OpsSpecSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            if (OptionType == "A")
                OptionType = "";

            Lb5Matching obj = this.BindingSource.Current as Lb5Matching;

            var a = db.Machines.Where(p => p.Id == obj.MachineId).Select(p => p.MachineClass);
            string MachineGroup = "";
            foreach (var item in a)
            {
                MachineGroup = item.ToString();
            }

            int ReportType = db.fn_GetOpsPermitType(MachineGroup, obj.FAE) ?? 1;

            DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
                OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(),  obj.WPSN.ToString().Trim());
                //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");

            if (ReportType == 1)
            {
                StyleMasterListFormReport rpt = new StyleMasterListFormReport(AllSource, "Step 5 re-arranging");
                //    (obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
                //OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
                rpt.ShowPreview();
            }
            else if (ReportType == 2)
            {
                StyleMasterListFormReport2 rpt2 = new StyleMasterListFormReport2(AllSource, "Step 5 re-arranging");
                //    (obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
                //OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
                rpt2.ShowPreview();

            }
            else if (ReportType == 3)
            {
                StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3(AllSource, "Step 5 re-arranging");
                //    (obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
                //OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
                rpt3.ShowPreview();
            }



            //if (MachineGroup == "A1" || MachineGroup == "A5" || string.IsNullOrEmpty(MachineGroup))
            //{
            //    StyleMasterListFormReport rpt = new StyleMasterListFormReport(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //    OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //    rpt.ShowPreview();
            //}
            //else if (MachineGroup == "A2")
            //{
            //    StyleMasterListFormReport2 rpt2 = new StyleMasterListFormReport2(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //     OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //    rpt2.ShowPreview();
            //}
            //else if (MachineGroup == "A3" || MachineGroup == "A4")
            //{
            //    StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //     OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //    rpt3.ShowPreview();
            //}
            //else if (MachineGroup == "A7" || MachineGroup == "A8")
            //{
            //    StyleMasterListFormReport rpt = new StyleMasterListFormReport(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //     OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //    rpt.ShowPreview();
            //}
            //else if (MachineGroup == "A6")
            //{
            //    if (obj.FAE == "B")
            //    {
            //        StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //    OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //        rpt3.ShowPreview();
            //    }
            //    else
            //    {
            //        StyleMasterListFormReport rpt = new StyleMasterListFormReport(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //         OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim(), "Step 5 re-arranging", obj.WPSN.ToString().Trim());
            //        rpt.ShowPreview();
            //    }
            //}



            //if (!string.IsNullOrEmpty(obj.addMachineId1) || !string.IsNullOrEmpty(obj.addMachineId2) || !string.IsNullOrEmpty(obj.addMachineId3) || !string.IsNullOrEmpty(obj.addworkerId1) || !string.IsNullOrEmpty(obj.addworkerId2) || !string.IsNullOrEmpty(obj.addworkerId3) || !string.IsNullOrEmpty(obj.addworker1) || !string.IsNullOrEmpty(obj.addworker2) || !string.IsNullOrEmpty(obj.addworker3))
            //{
            //    StyleMasterListFormReport rpt = new StyleMasterListFormReport(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(),
            //        OptionType, "Step 5", obj.OTN.Trim(), obj.Date, obj.OperationCode.Trim(), obj.WorkerId.Trim());
            //    rpt.ShowPreview();
            //}
            //else 
            //{
            //    MessageBox.Show("無加人或者加車!");
            //}
        }

        private void OptPermitSummary_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PoolInfo obj = (this.FirstForm as LB5ChildFrmN).BindingSource.Current  as PoolInfo;
            Lb5Matching Lb5MatchingObj = this.BindingSource.Current as Lb5Matching;

            PoolInfo PoolInfoObj = Lb5MatchingObj.PoolInfo;

            WPMaster obj = PoolInfoObj.WPMaster;

            if (obj == null)
            {
                return;
            }
            string ReportHeaderType = "";
            //if ((obj.ToBeConfirmedFlag_MC ?? false) && (obj.ToBeConfirmedFlag ?? false))

            ReportHeaderType = "Operation Permit (with spec.) - Step 5 / Deployed Summary";


            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            string SqlStr = string.Format("exec sp_GetOpsPermitReportLB5 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}' , '{8}'", obj.Factory.Trim(),
                obj.LineCode.Trim(), obj.j_NO.Trim(), obj.J2_job.Trim(), obj.Rwo.Trim(), obj.Qn.Trim(), obj.Bcolor.Trim(), PoolInfoObj.Date, PoolInfoObj.OTN.Trim());

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
                    Status = (PoolInfoObj.IsConfirmed ?? false) ? "Confirmed" : "Unconfirmed",   //Status[Status.Count() - 1],
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
            if (dtHWStitching.Rows.Count > 0)
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
            if (dtHWBonding.Rows.Count > 0)
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

            if (dtHWHeatPressUltrasonic.Rows.Count > 0)
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

        private void barBtnProposal_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Current == null)
            {
                return;
            }

            Lb5Matching obj = this.BindingSource.Current as Lb5Matching;
            ProposalForm frmProposal = new ProposalForm(this.DataContext as RAPLQDataContext, obj);
            frmProposal.ShowDialog();
        }

        private void barBtnProposalReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Current == null)
            {
                return;
            }

            Lb5Matching obj = this.BindingSource.Current as Lb5Matching;
            //ProposalReport rtpProposal = new ProposalReport(obj.PoolInfo);
            //rtpProposal.ShowPreview();

            RAPLQDataContext db = this.DataContext as RAPLQDataContext;
            string SqlStr = string.Format("exec sp_GetLB5MatchingWithLog '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'",
                obj.PoolInfo.Factory, obj.PoolInfo.LineCode, obj.PoolInfo.j_NO, obj.PoolInfo.J2_job, obj.PoolInfo.Rwo, obj.PoolInfo.Qn,
                obj.PoolInfo.Bcolor, obj.PoolInfo.Date, obj.PoolInfo.OTN);
            var lists = db.ExecuteQuery<Step5DeploymentReArranging>(SqlStr);
            Step5DeploymentReArrangingReport rptReArranging = new Step5DeploymentReArrangingReport(lists.ToList(), "Step 5 - RD re-arranging need stage 需要重整階段");
            rptReArranging.ShowPreview();
        }

        private void barBtnProposalUpdate_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ////ALTER PROCEDURE [dbo].[sp_UpdateProposalToLB5Matching]
            ////@Factory  nchar(5),     -- 工廠
            ////@Line     varchar(50),  -- 生產線
            ////@Project  nchar(15),    -- 工程號
            ////@WO       nchar(15),    -- 制單號
            ////@RWO      nchar(10),    -- 輪制單號
            ////@QN       nchar(10),    -- QN號
            ////@BColor   nchar(10),     -- 顏色
            ////@Date     datetime,
            ////@OTN      nchar(10)

            //Lb5Matching obj = this.BindingSource.Current as Lb5Matching;
            //if (obj == null) return;

            //RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            //string SqlStr = "exec sp_UpdateProposalToLB5Matching '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'";
            //SqlStr = string.Format(SqlStr, obj.Factory, obj.LineCode, obj.j_NO, obj.J2_job, obj.Rwo, obj.Qn, obj.Bcolor, obj.Date, obj.OTN);
            //try
            //{
            //    this.Cursor = Cursors.WaitCursor;
            //    db.ExecuteCommand(SqlStr);
            //    db.Refresh(RefreshMode.OverwriteCurrentValues, obj.PoolInfo.Lb5Matchings);
            //    this.BindingSource.ResetBindings(false);
            //    MessageBox.Show("Update proposal data to Step 5 is succeed! ", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //}
            //finally
            //{
            //    this.Cursor = Cursors.Default;
            //}
        }

        /// <summary>
        /// 設置為向導模式，專門用于Step 5 Depployment Re-arranging的Add Type功能中
        /// </summary>
        public void SetupWizardMode()
        {
            this.barBtnWF.Visibility = BarItemVisibility.Never;
            this.barBtnMC.Visibility = BarItemVisibility.Never;
            this.barBtnCopy.Visibility = BarItemVisibility.Never;
            this.OpsSpecSheet.Visibility = BarItemVisibility.Never;
            this.OptPermitSummary.Visibility = BarItemVisibility.Never;

            this.barBtnBoLanguage.Visibility = BarItemVisibility.Never;
            this.barBtnReScan.Visibility = BarItemVisibility.Never;
            this.barBtnCollapseBase.Visibility = BarItemVisibility.Never;
            this.barBtnExpandBase.Visibility = BarItemVisibility.Never;

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnSave.Visibility = BarItemVisibility.Never;
            this.barBtnFind.Visibility = BarItemVisibility.Never;
            this.btnSaveLayout.Visibility = BarItemVisibility.Never;

            this.barBtnFirst.Enabled = true;
            this.barBtnPrevious.Enabled = true;
            this.barBtnNext.Enabled = true;
            this.barBtnLast.Enabled = true;
        }
    }
}
