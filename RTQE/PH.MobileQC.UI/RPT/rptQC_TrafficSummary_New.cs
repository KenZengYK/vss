using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_TrafficSummary_New : DevExpress.XtraReports.UI.XtraReport
    {

        string ExecDate = "",Factory="";
        string Flag = "";

        public rptQC_TrafficSummary_New()
        {
            InitializeComponent();
          
            //PrepareReportData();
        }

        public rptQC_TrafficSummary_New(string execdate)
        {
            InitializeComponent();
            ExecDate = execdate;
            PrepareReportData();
        }

        public rptQC_TrafficSummary_New(string execdate,string factory)
        {
            InitializeComponent();
            ExecDate = execdate;
            Factory = factory;
            PrepareReportData();
        }

        public rptQC_TrafficSummary_New(string execdate, string factory,string flag)
        {
            InitializeComponent();
            ExecDate = execdate;
            Factory = factory;
            Flag = flag;
            PrepareReportData();
        }

        int _maxline = 0;
        public void PrepareReportData()
        {
           // List<Proc_TrafficSummaryResult> lst = SqlDataHelper.GetTrafficData();
            //List<Proc_TrafficSummaryResult> lst = SqlDataHelper.GetTrafficData(ExecDate);
            List<Proc_TrafficSummaryResult> lst = SqlDataHelper.GetTrafficData_New(ExecDate,Factory);
            

            this.bsTraffic.DataSource = lst;

            
            foreach (Proc_TrafficSummaryResult pts in lst)
            {
                 int _count =pts.TrafficBasicBOs.Count;
                if (_count > _maxline)
                {
                    _maxline = _count;
                }
            }
            
        }



        private DevExpress.XtraReports.UI.XRTable CreateTable(int X, int Y, TrafficBasicBO BO)
        {
            //System.Drawing.Size tableSize = new System.Drawing.Size(100, 90);
            System.Drawing.Size tableSize = new System.Drawing.Size(130, 90);
            System.Drawing.Size rowSize = new System.Drawing.Size(130, 18);
            //Table
            DevExpress.XtraReports.UI.XRTable tblBasic = new DevExpress.XtraReports.UI.XRTable();
            tblBasic.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                     | DevExpress.XtraPrinting.BorderSide.Right)
                     | DevExpress.XtraPrinting.BorderSide.Bottom)));
            tblBasic.Location = new System.Drawing.Point(X, Y);

            //ROW1
            DevExpress.XtraReports.UI.XRTableRow xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell clNoteName = new DevExpress.XtraReports.UI.XRTableCell();

            clNoteName.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clNoteName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            clNoteName.Location = new System.Drawing.Point(0, 0);
            clNoteName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            clNoteName.Size = rowSize;
            clNoteName.Text = BO.Section;

            clNoteName.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));


            xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            clNoteName});
            xrTableRow1.Size = rowSize;

            //ROW2
            DevExpress.XtraReports.UI.XRTableRow xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();

            DevExpress.XtraReports.UI.XRTableCell xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();           
            xrTableCell4.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            xrTableCell4.Text = "Y";
           // xrTableCell4.BackColor = Color.Yellow;




            DevExpress.XtraReports.UI.XRTableCell xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell5.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            xrTableCell5.Text = "R";
            //xrTableCell5.BackColor = Color.Red;

            xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            xrTableCell4,
            xrTableCell5
            });
            xrTableRow2.Name = "xrTableRow2";
            xrTableRow2.Size = rowSize;



            //ROW3
            DevExpress.XtraReports.UI.XRTableRow xrTableRow21 = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell xrTableCell41 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell41.Size = new System.Drawing.Size(25, 18);
            xrTableCell41.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
            xrTableCell41.Text = "TTL";


            DevExpress.XtraReports.UI.XRTableCell xrTableCell51 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell51.Size = new System.Drawing.Size(40, 18);
            xrTableCell51.Text = "O/S";

            //DevExpress.XtraReports.UI.XRTableCell xrTableCell51A = new DevExpress.XtraReports.UI.XRTableCell();
            //xrTableCell51A.Text = "O/S(B)";



            DevExpress.XtraReports.UI.XRTableCell xrTableCell61 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell61.Text = "TTL";
            xrTableCell61.Size = new System.Drawing.Size(25, 18);
            xrTableCell61.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);


            DevExpress.XtraReports.UI.XRTableCell xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell71.Text = "O/S";
            xrTableCell71.Size = new System.Drawing.Size(40, 18);

            //DevExpress.XtraReports.UI.XRTableCell xrTableCell71A = new DevExpress.XtraReports.UI.XRTableCell();
            //xrTableCell71A.Text = "O/S(B)";

            xrTableCell41.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell41.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell51.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell51.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            //xrTableCell51A.Font = new Font("Arial Unicode MS,style=Bold", 7);
            //xrTableCell51A.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell61.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell61.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell71.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell71.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            //xrTableCell71A.Font = new Font("Arial Unicode MS,style=Bold", 7);
            //xrTableCell71A.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;




            xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            xrTableCell41,
            xrTableCell51,
            xrTableCell61,
            xrTableCell71});
            xrTableRow21.Name = "xrTableRow21";
            xrTableRow21.Size = rowSize;
////////////////////////////////////////////////////////////////////////////////////////


            //ROW31
            DevExpress.XtraReports.UI.XRTableRow xrTableRow21A = new DevExpress.XtraReports.UI.XRTableRow();

            DevExpress.XtraReports.UI.XRTableCell xrTableCell411 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell411.Text = "";
            xrTableCell411.Size = new System.Drawing.Size(25, 18);

            DevExpress.XtraReports.UI.XRTableCell xrTableCell511 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell511.Text = "Yt";
            xrTableCell511.Size = new System.Drawing.Size(20, 18);

             DevExpress.XtraReports.UI.XRTableCell xrTableCell51A = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell51A.Text = "Yb";
            xrTableCell51A.Size = new System.Drawing.Size(20, 18);



            DevExpress.XtraReports.UI.XRTableCell xrTableCell611 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell611.Text = "";
            xrTableCell611.Size = new System.Drawing.Size(25, 18);

            DevExpress.XtraReports.UI.XRTableCell xrTableCell711 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell711.Text = "Yt";
            xrTableCell711.Size = new System.Drawing.Size(20, 18);

            DevExpress.XtraReports.UI.XRTableCell xrTableCell71A = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell71A.Text = "Yb";
            xrTableCell71A.Size = new System.Drawing.Size(20, 18);

            xrTableCell411.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell411.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell511.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell511.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell51A.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell51A.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell611.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell611.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell711.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell711.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell71A.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell71A.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;




            xrTableRow21A.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            xrTableCell411,
            xrTableCell511,
             xrTableCell51A,
            xrTableCell611,
            xrTableCell711,
             xrTableCell71A});
            xrTableRow21A.Name = "xrTableRow21A";
            xrTableRow21A.Size = rowSize;


///////////////////////////////////////////////////////////////////////////////////////


            // 
            // //ROW4
            // 
            DevExpress.XtraReports.UI.XRTableRow xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();

            DevExpress.XtraReports.UI.XRTableCell clTTLQty_Y = new DevExpress.XtraReports.UI.XRTableCell();
            clTTLQty_Y.Text = BO.TTL_Val_Y.ToString();
            clTTLQty_Y.Size = new System.Drawing.Size(25, 18);


            DevExpress.XtraReports.UI.XRTableCell clOSQty_Y = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_Y.Text = BO.OS_Val_Y_Cur.ToString();
            clOSQty_Y.Size = new System.Drawing.Size(20, 18);

            DevExpress.XtraReports.UI.XRTableCell clOSQty_Y_B = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_Y_B.Text = BO.OS_Val_Y_B4.ToString();
            clOSQty_Y_B.Size = new System.Drawing.Size(20, 18);






            DevExpress.XtraReports.UI.XRTableCell clTTLQty_R = new DevExpress.XtraReports.UI.XRTableCell();
            clTTLQty_R.Text = BO.TTL_Val_R.ToString();
            clTTLQty_R.Size = new System.Drawing.Size(25, 18);


            DevExpress.XtraReports.UI.XRTableCell clOSQty_R = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_R.Text = BO.OS_Val_R.ToString();
            clOSQty_R.Size = new System.Drawing.Size(20, 18);

            DevExpress.XtraReports.UI.XRTableCell clOSQty_R_B = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_R_B.Text = BO.OS_Val_R_B4.ToString();
            clOSQty_R_B.Size = new System.Drawing.Size(20, 18);




            clTTLQty_Y.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clTTLQty_Y.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
       

            clOSQty_Y.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_Y.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
         


            clOSQty_Y_B.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_Y_B.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;


            clTTLQty_R.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clTTLQty_R.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
          

            clOSQty_R.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_R.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            clOSQty_R_B.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_R_B.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;


            //DevExpress.XtraReports.UI.XRTableCell clREQty = new DevExpress.XtraReports.UI.XRTableCell();
            //clREQty.Text = BO.ReAuditQty.ToString();

            xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            clTTLQty_Y,
            clOSQty_Y,
            clOSQty_Y_B,
            clTTLQty_R,
            clOSQty_R,
            clOSQty_R_B});
            xrTableRow3.Name = "xrTableRow3";
            xrTableRow3.Size = rowSize;


            tblBasic.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
             xrTableRow1,
             xrTableRow2,
             xrTableRow21,
              xrTableRow21A,
            xrTableRow3});
            tblBasic.Size = tableSize;
            tblBasic.StyleName = "xrControlStyle1";
            tblBasic.StylePriority.UseBorders = false;


            //tblBasic.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);

            return tblBasic;
        }


        string _factory = "";
        int j = 1, _loc = 0;
        int _ttl_y_total = 0, _os_y_total = 0, _ttl_r_total = 0, _os_r_total = 0;
        int _os_y_totalb = 0, _os_r_totalb = 0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_TrafficSummaryResult bo = this.GetCurrentRow() as Proc_TrafficSummaryResult;
            if (bo == null)
                return;

            this.xrTable3.Width = _maxline * 130 + 172;
            xrFactory.Width = 42;
            tblBasic.Width = 130;
      


           _ttl_y_total = _ttl_y_total+bo.TTL_Val_Y;
           _os_y_total = _os_y_total + bo.OS_Val_Y_Cur;
           _os_y_totalb = _os_y_totalb + bo.OS_Val_Y_B4;

           _ttl_r_total = _ttl_r_total + bo.TTL_Val_R;
           _os_r_total = _os_r_total + bo.OS_Val_R;
           _os_r_totalb = _os_r_totalb + bo.OS_Val_R_B4;

            if (_factory != bo.Factory)
            {
               
                _factory = bo.Factory;
                _loc = bo.WSCount / 2 + 1;
                j = 1;
                if (j < bo.WSCount)
                {
                    xrFactory.Text = "";
                    xrFactory.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                }
                else
                {
                    xrFactory.Text = bo.Factory;
                    xrFactory.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                }

            }
            else
            {
                if (j != _loc)
                    xrFactory.Text = "";
                else
                   xrFactory.Text = bo.Factory;

                if (j <= bo.WSCount-1)
                    xrFactory.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                else
                    xrFactory.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
            }

            j++;
            int i = 0;
            foreach (TrafficBasicBO item in bo.TrafficBasicBOs)
            {
                Point p = this.tblBasic.Location;
                int w = this.tblBasic.Width * (++i);
                XRTable tb = CreateTable(p.X + w, p.Y, item);
                this.clDetailZone.Controls.Add(tb);
            }

            //clDetailZone.Controls.AddRange()this.tblBasic.Borders);
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            List<DevExpress.XtraReports.UI.XRControl> ctrls = new List<DevExpress.XtraReports.UI.XRControl>();
            foreach (DevExpress.XtraReports.UI.XRControl item in this.clDetailZone.Controls)
            {
                if (item.GetType() == typeof(XRTable))
                {
                    if (item.Name != "tblBasic")
                    {
                        ctrls.Add(item);
                    }
                }
            }

            for (int i = ctrls.Count - 1; i >= 0; i--)
            {
                this.clDetailZone.Controls.Remove(ctrls[i]);
            }
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //this.xrTable1.Width = _maxline * 100 + 142;
            this.xrTable1.Width = _maxline * 130 + 172;

            xrTtl.Width = 42;
            this.xrTable4.Width = 130;

            xrttl_y.Width = 25; xros_y_t.Width = 20; xros_y_b.Width = 20;

            xrttl_r.Width = 25; xros_r_t.Width = 20; xros_r_b.Width = 20;

            this.xrttl_y.Text = _ttl_y_total.ToString();
            this.xros_y_t.Text = _os_y_total.ToString();
            this.xros_y_b.Text = _os_y_totalb.ToString();

            this.xrttl_r.Text = _ttl_r_total.ToString();
            this.xros_r_t.Text = _os_r_total.ToString();
            this.xros_r_b.Text = _os_r_totalb.ToString();


        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrTable2.Width = _maxline * 130 + 172;
            this.xrFty.Width = 42;
            this.xrWs.Width = 130;

            this.xrLabel2.Text = " Query date :" + this.ExecDate; // string.Format("{0:yyyy/MM/dd HH:mm:ss}", DateTime.Now);  

            this.xrLabel2.Location = new Point(_maxline * 130 + 172 - 180, 3);
          
        }

    }
}
