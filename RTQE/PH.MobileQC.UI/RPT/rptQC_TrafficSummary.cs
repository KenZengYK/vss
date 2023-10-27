using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptQC_TrafficSummary : DevExpress.XtraReports.UI.XtraReport
    {

        string ExecDate = "";
        public rptQC_TrafficSummary()
        {
            InitializeComponent();
          
            //PrepareReportData();
        }

        public rptQC_TrafficSummary(string execdate)
        {
            InitializeComponent();
            ExecDate = execdate;
            PrepareReportData();
        }

        int _maxline = 0;
        public void PrepareReportData()
        {
           // List<Proc_TrafficSummaryResult> lst = SqlDataHelper.GetTrafficData();
            List<Proc_TrafficSummaryResult> lst = SqlDataHelper.GetTrafficData(ExecDate);
            

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
            System.Drawing.Size tableSize = new System.Drawing.Size(100, 90);
            System.Drawing.Size rowSize = new System.Drawing.Size(100, 22);
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
            xrTableCell41.Text = "TTL";
            DevExpress.XtraReports.UI.XRTableCell xrTableCell51 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell51.Text = "O/S";
            DevExpress.XtraReports.UI.XRTableCell xrTableCell61 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell61.Text = "TTL";
            DevExpress.XtraReports.UI.XRTableCell xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            xrTableCell71.Text = "O/S";

            xrTableCell41.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell41.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell51.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell51.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell61.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell61.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            xrTableCell71.Font = new Font("Arial Unicode MS,style=Bold", 7);
            xrTableCell71.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;




            xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            xrTableCell41,
            xrTableCell51,
            xrTableCell61,
            xrTableCell71});
            xrTableRow21.Name = "xrTableRow21";
            xrTableRow21.Size = rowSize;


            // 
            // //ROW4
            // 
            DevExpress.XtraReports.UI.XRTableRow xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            DevExpress.XtraReports.UI.XRTableCell clTTLQty_Y = new DevExpress.XtraReports.UI.XRTableCell();
            clTTLQty_Y.Text = BO.TTL_Val_Y.ToString();

            DevExpress.XtraReports.UI.XRTableCell clOSQty_Y = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_Y.Text = BO.OS_Val_Y.ToString();

            DevExpress.XtraReports.UI.XRTableCell clTTLQty_R = new DevExpress.XtraReports.UI.XRTableCell();
            clTTLQty_R.Text = BO.TTL_Val_R.ToString();

            DevExpress.XtraReports.UI.XRTableCell clOSQty_R = new DevExpress.XtraReports.UI.XRTableCell();
            clOSQty_R.Text = BO.OS_Val_R.ToString();


            clTTLQty_Y.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clTTLQty_Y.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            clOSQty_Y.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_Y.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            clTTLQty_R.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clTTLQty_R.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;

            clOSQty_R.Font = new Font("Arial Unicode MS,style=Bold", 7);
            clOSQty_R.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;


            //DevExpress.XtraReports.UI.XRTableCell clREQty = new DevExpress.XtraReports.UI.XRTableCell();
            //clREQty.Text = BO.ReAuditQty.ToString();

            xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            clTTLQty_Y,
            clOSQty_Y,
            clTTLQty_R,
            clOSQty_R});
            xrTableRow3.Name = "xrTableRow3";
            xrTableRow3.Size = rowSize;


            tblBasic.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
             xrTableRow1,
             xrTableRow2,
             xrTableRow21,
            xrTableRow3});
            tblBasic.Size = tableSize;
            tblBasic.StyleName = "xrControlStyle1";
            tblBasic.StylePriority.UseBorders = false;

            return tblBasic;
        }


        string _factory = "";
        int j = 1, _loc = 0;
        int _ttl_y_total = 0, _os_y_total = 0, _ttl_r_total = 0, _os_r_total = 0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_TrafficSummaryResult bo = this.GetCurrentRow() as Proc_TrafficSummaryResult;
            if (bo == null)
                return;

            this.xrTable3.Width = _maxline * 100 + 142;
            xrFactory.Width = 42;
            tblBasic.Width = 100;
      


           _ttl_y_total = _ttl_y_total+bo.TTL_Val_Y;
           _os_y_total = _os_y_total + bo.OS_Val_Y;
           _ttl_r_total = _ttl_r_total + bo.TTL_Val_R;
           _os_r_total = _os_r_total + bo.OS_Val_R;

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

            this.xrTable1.Width = _maxline * 100 + 142;
            xrTtl.Width = 42;
            this.xrTable4.Width = 100;
                             
            xrttl_y.Width = 25; xros_y.Width = 25; xrttl_r.Width = 25; xros_r.Width = 25;

            this.xrttl_y.Text = _ttl_y_total.ToString();
            this.xros_y.Text = _os_y_total.ToString();
            this.xrttl_r.Text = _ttl_r_total.ToString();
            this.xros_r.Text = _os_r_total.ToString();


        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrTable2.Width = _maxline * 100 + 142;
            this.xrFty.Width = 42;
            this.xrWs.Width = 100;

            this.xrLabel2.Text = " Executing date :" + this.ExecDate; // string.Format("{0:yyyy/MM/dd HH:mm:ss}", DateTime.Now);  

            this.xrLabel2.Location = new Point(_maxline * 100 + 142 - 180, 3);
          
        }

    }
}
