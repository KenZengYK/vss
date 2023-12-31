using  System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.Linq;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB4.Report
{
    public partial class LBSAHReport : DevExpress.XtraReports.UI.XtraReport
    {
        RAPLQDataContext CurDataContext;
        WPMaster CurWPMaster;
        Int32 CurRowsCount = 0;
        Int32 CurTeamCount = 0;
        Int32 EmpRows = 0;
        Int32 TeamRows = 0;
        int TotalRow = 0;
        int Row = 0;
        //string empname = string.Empty;
        //string teamname = string.Empty;
        ISingleResult<GetLBSAHResult> RptDataList;
        int DT =Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
        string TM = DateTime.Now.ToString("HHmmssfff");
        public LBSAHReport()
        {
            InitializeComponent();
            CurDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        }

        public LBSAHReport(RAPLQDataContext rapdc,WPMaster wpmaster)
        {
            InitializeComponent();
            CurDataContext = rapdc;
            CurWPMaster = wpmaster;

        }

        //private IEnumerator<GetLBSAHResult> GetReportData()
        private ISingleResult<GetLBSAHResult> GetReportData()
        {
            ISingleResult<GetLBSAHResult> rptsource =
              CurDataContext.GetLBSAH(DT,TM,CurWPMaster.Factory, CurWPMaster.LineCode, CurWPMaster.j_NO, CurWPMaster.J2_job, CurWPMaster.Rwo, CurWPMaster.Qn, CurWPMaster.Bcolor);
            //ISingleResult<GetLBSAHResult> rptsource =
            //  CurDataContext.GetLBSAH("SL", "T049U", "ETAA-356", "W109556", "1/1", "1/1", "W89");

            
            this.bsLsbSah.DataSource = rptsource;        
            

            return rptsource;

        }
        private ISingleResult<GetSummaryResult> GetLBSAHSum()
        {
            ISingleResult<GetSummaryResult> rptsource = CurDataContext.GetLBSAHSum(DT,TM);
            return rptsource;

        }
        private void LBSAHReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ISingleResult<GetLBSAHResult> dsrpt = GetReportData();
            RptDataList = dsrpt;
            
            this.bsLsbSah.DataSource = null;
            this.bsLsbSah.DataSource = dsrpt;
            cell_car.BackColor = Color.LightGreen;
            cell_Anddone.BackColor = Color.LightGreen;
            cell_ree.BackColor = Color.LightGreen;
            cell_dobNodle.BackColor = Color.LightGreen;
            cell_SingleNeedle.BackColor = Color.LightGreen;
            cell_people.BackColor = Color.LightGreen;
            cell_hand.BackColor = Color.LightGreen;
            cell_skill.BackColor = Color.LightGreen;
            cell_hand.BackColor = Color.LightGreen;
            cell_call.BackColor = Color.LightGreen;
        }

        private XRTableRow GetNewRow()
        {
            XRTableRow row = new XRTableRow();
            XRTableCell cel0 = new XRTableCell();
            //cel0.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel0.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel0.Width = 83;
            cel0.Text = "";

            row.Cells.Add(cel0);
            XRTableCell cel1 = new XRTableCell();
            cel1.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel1.Width = 117;
            cel1.Text = "";
            row.Cells.Add(cel1);
            XRTableCell cel2 = new XRTableCell();
            cel2.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel2.Width = 100;
            cel2.Text = "";
            row.Cells.Add(cel2);
            return row;

        }
     
        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            
            GetLBSAHResult gbs = this.GetCurrentRow() as GetLBSAHResult;

            if (CurRowsCount == EmpRows)
            {
                CurRowsCount = 0;
                EmpRows = 0;
            }
            if (CurTeamCount == TeamRows)
            {
                TeamRows = 0;
                CurTeamCount = 0;            
            }
            
        }

       

        private void cell_team_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            GetLBSAHResult gbs = this.GetCurrentRow() as GetLBSAHResult;

            CurRowsCount++;
            CurTeamCount++;
            Row++;
            //if (gbs.employeeid == "0017612")
            //{

            //}

            //if (gbs.employeeid == "0014774")
            //{

            //}  
            if (gbs == null) return;
         
            if (gbs.perdiv == "N/A")
            {
                cell_perflag.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                cell_perv.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
            }
            else 
            {
                cell_perflag.Borders=(DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All);
                cell_perv.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All); 
            }

            if (gbs.wftype == "MWF")
            {
                cell_wftype.BackColor = Color.Blue;
                cell_isspec.BackColor = Color.White;
                Font newFont = new Font(cell_wftype.Font, FontStyle.Regular);
                cell_wftype.Font = newFont;
                Font FontPec = new Font(cell_isspec.Font, FontStyle.Regular);
                cell_isspec.Font = FontPec;
                cell_wftype.ForeColor = Color.Black;
                cell_isspec.ForeColor = Color.Black;
            }
            else if (gbs.wftype == "FWF")
            {
                cell_wftype.BackColor = Color.Red;
                cell_isspec.BackColor = Color.White;
                Font newFont = new Font(cell_wftype.Font, FontStyle.Regular);
                cell_wftype.Font = newFont;
                Font FontPec = new Font(cell_isspec.Font, FontStyle.Regular);
                cell_isspec.Font = FontPec;
                cell_wftype.ForeColor = Color.Black;
                cell_isspec.ForeColor = Color.Black;
            }
            else if (gbs.wftype == "SPWF")
            {
                if (gbs.isspec.ToString() == "Y")
                {
                    cell_wftype.BackColor = Color.Yellow;
                    cell_isspec.BackColor = Color.Yellow;
                    Font newFont = new Font(cell_wftype.Font, FontStyle.Regular);
                    cell_wftype.Font = newFont;
                    Font FontPec = new Font(cell_isspec.Font, FontStyle.Regular);
                    cell_isspec.Font = FontPec;
                    cell_wftype.ForeColor = Color.Black;
                    cell_isspec.ForeColor = Color.Black;
                }
                else
                {
                    cell_wftype.BackColor = Color.White;
                    cell_isspec.BackColor = Color.White;
                    cell_wftype.ForeColor = Color.Red;
                    cell_isspec.ForeColor = Color.Red;
                    Font newFont = new Font(cell_wftype.Font, FontStyle.Bold);
                   cell_wftype.Font = newFont;
                   Font FontPec = new Font(cell_isspec.Font, FontStyle.Bold);
                   cell_isspec.Font = FontPec;
                }
            }
            else 
            {
                cell_wftype.BackColor = Color.White;
                cell_isspec.BackColor = Color.White;
                Font newFont = new Font(cell_wftype.Font, FontStyle.Regular);
                cell_wftype.Font = newFont;
                Font FontPec = new Font(cell_isspec.Font, FontStyle.Regular);
                cell_isspec.Font = FontPec;
                cell_wftype.ForeColor = Color.Black;
                cell_isspec.ForeColor = Color.Black;
            }

            if (string.IsNullOrEmpty(gbs.years.ToString())) 
            {
                cell_years.BackColor = Color.White;
            }
            else if (Convert.ToDouble(gbs.years) < 0.3 && Convert.ToDouble(gbs.years) >0)
            {
                cell_years.BackColor = Color.Red;
            }
            else if (Convert.ToDouble(gbs.years) >= 0.3 && Convert.ToDouble(gbs.years) < 1.2)
            {
                cell_years.BackColor = Color.Orange;
            }
            else if (Convert.ToDouble(gbs.years) >= 1.2 && Convert.ToDouble(gbs.years) < 9)
            {
                cell_years.BackColor = Color.Gold;
            }
            else if (Convert.ToDouble(gbs.years) >= 9)
            {
                cell_years.BackColor = Color.Yellow;
            }

            if (gbs.sah_team == "N/A")
            {
                cell_sahteam.BackColor = Color.White;
            }
            else if ( Convert.ToInt16(gbs.sah_team) >= 85 && Convert.ToInt16(gbs.sah_team) <= 99) 
            {
                cell_sahteam.BackColor = Color.LightGreen;
            }
            else if (Convert.ToInt16(gbs.sah_team) >= 100 && Convert.ToInt16(gbs.sah_team) <= 104)
            {
                cell_sahteam.BackColor = Color.Yellow;
            }
            else if (Convert.ToInt16(gbs.sah_team) >= 105 && Convert.ToInt16(gbs.sah_team) <= 109)
            {
                cell_sahteam.BackColor = Color.Gold;
            }
            else if (Convert.ToInt16(gbs.sah_team) >= 110 && Convert.ToInt16(gbs.sah_team) <= 120)
            {
                cell_sahteam.BackColor = Color.Red;
            }
            else
            {
                cell_sahteam.BackColor = Color.Red;
            }

            if (gbs.sah_line == "N/A")
            {
                cell_sahline.BackColor = Color.White;
            }
            else if (Convert.ToInt16(gbs.sah_line) >= 85 && Convert.ToInt16(gbs.sah_line) <= 99)
            {
                cell_sahline.BackColor = Color.LightGreen;
            }
            else if (Convert.ToInt16(gbs.sah_line) >= 100 && Convert.ToInt16(gbs.sah_line) <= 104)
            {
                cell_sahline.BackColor = Color.Yellow;
            }
            else if (Convert.ToInt16(gbs.sah_line) >= 105 && Convert.ToInt16(gbs.sah_line) <= 109)
            {
                cell_sahline.BackColor = Color.Gold;
            }
            else if (Convert.ToInt16(gbs.sah_line) >= 110 && Convert.ToInt16(gbs.sah_line) <= 120)
            {
                cell_sahline.BackColor = Color.Red;
            }
            else
            {
                cell_sahline.BackColor = Color.Red;
            }

            if (gbs.skill == "0" || gbs.skill == "1")
            {
               // cell_skill_Mat.Text = "-";
                xrPictureBox1.Image = imageList1.Images[0];
            }
            else if (gbs.skill == "2")
            {
                // cell_skill_Mat.Text = "+";
                xrPictureBox1.Image = imageList1.Images[1];
            }
            else 
            {
                xrPictureBox1.Image = null;
            }
            if (gbs.MCType.Substring(0, 2) == "CS") 
            {
              
                if (Convert.ToInt16(gbs.type_cs) >0&&Convert.ToInt16(gbs.type_cs) <100)
                {
                    cell_carDetial.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_cs) >=100 && Convert.ToInt16(gbs.type_cs) <= 104)
                {
                    cell_carDetial.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_cs) >= 105 && Convert.ToInt16(gbs.type_cs) <= 109)
                {
                    cell_carDetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_cs) >= 110 && Convert.ToInt16(gbs.type_cs) <= 115)
                {
                    cell_carDetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_cs) >= 116)
                {
                    cell_carDetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_cs)))
                {
                    cell_carDetial.BackColor = Color.White;
                }
                cell_DouDetial.BackColor = Color.White;
                cell_peoDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "DN")
            {
                if (Convert.ToInt16(gbs.type_dn) > 0 && Convert.ToInt16(gbs.type_dn) <100)
                {
                    cell_DouDetial.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_dn) >= 100 && Convert.ToInt16(gbs.type_dn) <= 104)
                {
                    cell_DouDetial.BackColor = Color.Yellow;
                }
                if (Convert.ToInt16(gbs.type_dn) >=105 && Convert.ToInt16(gbs.type_dn) <= 109)
                {
                    cell_DouDetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_dn) >= 110 && Convert.ToInt16(gbs.type_dn) <= 115)
                {
                    cell_DouDetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_dn) >= 116)
                {
                    cell_DouDetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_dn)))
                {
                    cell_DouDetial.BackColor = Color.White;
                }
                cell_carDetial.BackColor = Color.White;
                cell_peoDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "ZZ" || (gbs.MCType.Length > 3 && gbs.MCType.Substring(0, 3) == "3ZZ"))
            {
                if (Convert.ToInt16(gbs.type_zz) > 0 && Convert.ToInt16(gbs.type_zz) <100)
                {
                    cell_peoDetial.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_zz) >=100 && Convert.ToInt16(gbs.type_zz) <= 104)
                {
                    cell_peoDetial.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_zz) >= 105 && Convert.ToInt16(gbs.type_zz) <= 109)
                {
                    cell_peoDetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_zz) >= 110 && Convert.ToInt16(gbs.type_zz) <= 115)
                {
                    cell_peoDetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_zz) >= 116)
                {
                    cell_peoDetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_zz)))
                {
                    cell_peoDetial.BackColor = Color.White;
                }
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "OV")
            {
                if (Convert.ToInt16(gbs.type_ov) > 0 && Convert.ToInt16(gbs.type_ov) < 100)
                {
                    cell_AndDetial.BackColor = Color.Green;
                }
                else if (Convert.ToInt16(gbs.type_ov) >= 100 && Convert.ToInt16(gbs.type_ov) <= 104)
                {
                    cell_AndDetial.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_ov) >= 105 && Convert.ToInt16(gbs.type_ov) <= 109)
                {
                    cell_AndDetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_ov) >= 110 && Convert.ToInt16(gbs.type_ov) <= 115)
                {
                    cell_AndDetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_ov) >= 116)
                {
                    cell_AndDetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_ov)))
                {
                    cell_AndDetial.BackColor = Color.White;
                }
                cell_peoDetial.BackColor = Color.White;
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "SN")
            {
                if (Convert.ToInt16(gbs.type_sn) > 0 && Convert.ToInt16(gbs.type_sn) < 100)
                {
                    cell_single.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_sn) >=100 && Convert.ToInt16(gbs.type_sn) <= 104)
                {
                    cell_single.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_sn) >= 105 && Convert.ToInt16(gbs.type_sn) <= 109)
                {
                    cell_single.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_sn) >= 110 && Convert.ToInt16(gbs.type_sn) <= 115)
                {
                    cell_single.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_sn) >= 116)
                {
                    cell_single.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_sn)))
                {
                    cell_single.BackColor = Color.White;
                }
                cell_peoDetial.BackColor = Color.White;
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "BT" || gbs.MCType.Substring(0, 2)=="ST")
            {
                if (Convert.ToInt16(gbs.type_bt) > 0 && Convert.ToInt16(gbs.type_bt) <100)
                {
                    cell_calldetial.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_bt) >=100 && Convert.ToInt16(gbs.type_bt) <= 104)
                {
                    cell_calldetial.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_bt) >= 105 && Convert.ToInt16(gbs.type_bt) <= 109)
                {
                    cell_calldetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_bt) >= 110 && Convert.ToInt16(gbs.type_bt) <= 115)
                {
                    cell_calldetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_bt) >= 116)
                {
                    cell_calldetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_bt)))
                {
                    cell_calldetial.BackColor = Color.White;
                }
                cell_peoDetial.BackColor = Color.White;
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
            }
            else if (gbs.MCType.Substring(0, 2) == "HD")
            {
                if (Convert.ToInt16(gbs.type_hd) > 0 && Convert.ToInt16(gbs.type_hd) < 100)
                {
                    cell_handdetial.BackColor = Color.Green;
                }
                if (Convert.ToInt16(gbs.type_hd) >= 100 && Convert.ToInt16(gbs.type_hd) <= 104)
                {
                    cell_handdetial.BackColor = Color.Yellow;
                }
                else if (Convert.ToInt16(gbs.type_hd) >= 105 && Convert.ToInt16(gbs.type_hd) <= 109)
                {
                    cell_handdetial.BackColor = Color.Gold;
                }
                else if (Convert.ToInt16(gbs.type_hd) >= 110 && Convert.ToInt16(gbs.type_hd) <= 115)
                {
                    cell_handdetial.BackColor = Color.Orange;
                }
                else if (Convert.ToInt16(gbs.type_hd) >= 116)
                {
                    cell_handdetial.BackColor = Color.Red;
                }
                else if (string.IsNullOrEmpty(Convert.ToString(gbs.type_hd)))
                {
                    cell_handdetial.BackColor = Color.White;
                }
                cell_peoDetial.BackColor = Color.White;
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_calldetial.BackColor = Color.White;
            }
            else 
            {
                cell_peoDetial.BackColor = Color.White;
                cell_DouDetial.BackColor = Color.White;
                cell_carDetial.BackColor = Color.White;
                cell_AndDetial.BackColor = Color.White;
                cell_single.BackColor = Color.White;
                cell_handdetial.BackColor = Color.White;
            }
            if (EmpRows == TeamRows && EmpRows == 1)  //當前team中隻有一個人，一條記錄
            {
                //cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
               // cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;

            }


            if (EmpRows == TeamRows && EmpRows > 1)  //噹前team中隻有一個人，多條記錄
            {


                if (CurRowsCount == 1)//第一條記錄
                {
                    cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                   // cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                }
                else if (CurRowsCount < EmpRows) //中間的記錄
                {
                    cell_name.Text = string.Empty;
                   // cell_movetype.Text = string.Empty;
                    cell_wftype.Text = string.Empty;
                    cell_isspec.Text = string.Empty;
                    cell_years.Text = string.Empty;
                    cell_sahtotal.Text = string.Empty;
                    cell_sahteam.Text = string.Empty;
                    cell_orderteam.Text = string.Empty;
                    cell_sahline.Text = string.Empty;
                    cell_orderline.Text = string.Empty;
                    //cell_peoDetial.Text = string.Empty;
                    //cell_carDetial.Text = string.Empty;
                    //cell_callDetial.Text = string.Empty;
                    //cell_single.Text = string.Empty;
                    //cell_AndDetial.Text = string.Empty;
                    //cell_DouDetial.Text = string.Empty;
                    //左右
                    cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);

                }
                else if (CurRowsCount == EmpRows) //最后一條
                {
                    cell_name.Text = string.Empty;
                   // cell_movetype.Text = string.Empty;
                    cell_wftype.Text = string.Empty;
                    cell_isspec.Text = string.Empty;
                    cell_years.Text = string.Empty;
                    cell_sahtotal.Text = string.Empty;
                    cell_sahteam.Text = string.Empty;
                    cell_orderteam.Text = string.Empty;
                    cell_sahline.Text = string.Empty;
                    cell_orderline.Text = string.Empty;
                    //cell_peoDetial.Text = string.Empty;
                    //cell_carDetial.Text = string.Empty;
                    //cell_callDetial.Text = string.Empty;
                    //cell_single.Text = string.Empty;
                    //cell_AndDetial.Text = string.Empty;
                    //cell_DouDetial.Text = string.Empty;
                    //左右下
                    cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                   // cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);

                }

            }


            if (EmpRows != TeamRows) //當前team中有多個人
            {


                if (this.CurRowsCount == 1)  //小分組中第一條記錄
                {
                    if (EmpRows == 1) //噹前team中小分組中此人隻有一條記錄的情況 
                    {
                      //  cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //全部
                        cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                       // cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                        //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                    }
                    else //小分組中小分組中此人有多條記錄的情況
                    {

                        //左上右
                        cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);
                        //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right);

                    }

                }

                else if (this.CurRowsCount > 1 && this.CurRowsCount < EmpRows) //小分組中第一條記錄之后,最后一條記錄之前
                {
                    cell_name.Text = string.Empty;
                    //cell_movetype.Text = string.Empty;
                    cell_wftype.Text = string.Empty;
                    cell_isspec.Text = string.Empty;
                    cell_years.Text = string.Empty;
                    cell_sahtotal.Text = string.Empty;
                    cell_sahteam.Text = string.Empty;
                    cell_orderteam.Text = string.Empty;
                    cell_sahline.Text = string.Empty;
                    cell_orderline.Text = string.Empty;
                    //cell_peoDetial.Text = string.Empty;
                    //cell_carDetial.Text = string.Empty;
                    //cell_callDetial.Text = string.Empty;
                    //cell_single.Text = string.Empty;
                    //cell_AndDetial.Text = string.Empty;
                    //cell_DouDetial.Text = string.Empty;
                    //左右��
                    cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_AndDetial.Borders= (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                }
                else if (this.CurRowsCount == EmpRows)
                {      
                    cell_name.Text = string.Empty;
                   // cell_movetype.Text = string.Empty;
                    cell_wftype.Text = string.Empty;
                    cell_isspec.Text = string.Empty;
                    cell_years.Text = string.Empty;
                    cell_sahtotal.Text = string.Empty;
                    cell_sahteam.Text = string.Empty;
                    cell_orderteam.Text = string.Empty;
                    cell_sahline.Text = string.Empty;
                    cell_orderline.Text = string.Empty;
                    //cell_peoDetial.Text = string.Empty;
                    //cell_carDetial.Text = string.Empty;
                    //cell_callDetial.Text = string.Empty;
                    //cell_single.Text = string.Empty;
                    //cell_AndDetial.Text = string.Empty;
                    //cell_DouDetial.Text = string.Empty;
                    //if (this.TeamRows != this.CurTeamCount)
                    //    cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    //else
                    //    cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);

                    //左右下
                    cell_name.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                   // cell_movetype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_wftype.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_isspec.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_years.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahtotal.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderteam.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_sahline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    cell_orderline.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_AndDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_callDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_carDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_DouDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_peoDetial.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                    //cell_single.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
                }

            }


            if (CurTeamCount>1&&CurTeamCount<=TeamRows)
                cell_team.Text = string.Empty;

            if (CurTeamCount == 1 && TeamRows > 1)
                cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left |DevExpress.XtraPrinting.BorderSide.Top| DevExpress.XtraPrinting.BorderSide.Right);

            if (CurTeamCount>1&&CurTeamCount<TeamRows)
                cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);

            if (CurTeamCount ==TeamRows)
                cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom| DevExpress.XtraPrinting.BorderSide.Right);

        }


        //before team group 
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentRow() == null)
                return;
            GetLBSAHResult gsr = this.GetCurrentRow() as GetLBSAHResult;

            TeamRows = gsr.tcount.GetValueOrDefault(0); //此team有多少條記錄
            TotalRow = gsr.totalcount.GetValueOrDefault(0);
           
        }

        //before employee group
        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (this.GetCurrentRow() == null)
                return;

            GetLBSAHResult gsr = this.GetCurrentRow() as GetLBSAHResult;
            EmpRows = gsr.rcount.GetValueOrDefault(0); //此分組有多少條記錄

        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            cell_team.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Right);
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentRow() == null)
                return;

            if (Row==TotalRow)
            {
                cell_addCall.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addOPerNm.Borders=DevExpress.XtraPrinting.BorderSide.None;
                cell_Done.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addCAR.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addDouble.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addisspec.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addName.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addOpera.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addOr_Line.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addOr_Team.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addPeople.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addPerdiv.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_AddPerflag.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addRemark.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addSah.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addSahLine.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addSahTotal.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addSingle.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addSkill.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addTeam.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addTeamSah.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addType.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addYear.Borders = DevExpress.XtraPrinting.BorderSide.None;
                cell_addHand.Borders = DevExpress.XtraPrinting.BorderSide.None;
            }
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //summaryRpt1 sRpt = new SummaryRpt();
            SummaryRpt sRpt = new SummaryRpt();
            sRpt.bindingSource1.DataSource = GetLBSAHSum();
            xrSubreport1.ReportSource = sRpt;
            
        }


    }
}
