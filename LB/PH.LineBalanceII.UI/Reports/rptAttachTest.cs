using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class rptAttachTest : DevExpress.XtraReports.UI.XtraReport
    {
        public rptAttachTest()
        {
            InitializeComponent();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           DevExpress.XtraReports.UI.XRTable tb = CreatTable();
           xrPanel1.Controls.Add(tb);

        }

        private DevExpress.XtraReports.UI.XRTable CreatTable()
        {
            DevExpress.XtraReports.UI.XRTable tblBasic = new DevExpress.XtraReports.UI.XRTable();
            tblBasic.Location = new Point(92, 18);
            System.Drawing.Size rowSize = new System.Drawing.Size(517, 22);
          //  foreach (Summary obj in this.CurMaster.SummaryList)
            for (int j = 0; j < 5;j++ )
            {

                DevExpress.XtraReports.UI.XRTableRow xrnewrow = new DevExpress.XtraReports.UI.XRTableRow();

                xrnewrow.Size = rowSize;

                DevExpress.XtraReports.UI.XRTableCell tcell1 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell1.Size = new System.Drawing.Size(59, 22);
           

                DevExpress.XtraReports.UI.XRTableCell tcell2 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell2.Size = new System.Drawing.Size(67, 22);
             


                DevExpress.XtraReports.UI.XRTableCell tcell3 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell3.Size = new System.Drawing.Size(74, 22);
               // tcell3.Text = obj.NoneLBYCCount.ToString();

                DevExpress.XtraReports.UI.XRTableCell tcell4 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell4.Size = new System.Drawing.Size(55, 22);
              //  tcell4.Text = obj.CJLBMainAreaYCCount.ToString();



                DevExpress.XtraReports.UI.XRTableCell tcell5 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell5.Size = new System.Drawing.Size(45, 22);
               // tcell5.Text = obj.CJLBSupportAreaYCCount.ToString();


                DevExpress.XtraReports.UI.XRTableCell tcell6 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell6.Size = new System.Drawing.Size(43, 22);
               


                DevExpress.XtraReports.UI.XRTableCell tcell7 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell7.Size = new System.Drawing.Size(57, 22);
           

                DevExpress.XtraReports.UI.XRTableCell tcell8 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell8.Size = new System.Drawing.Size(54, 22);
             

                DevExpress.XtraReports.UI.XRTableCell tcell9 = new DevExpress.XtraReports.UI.XRTableCell();
                tcell9.Size = new System.Drawing.Size(63, 22);
            


                xrnewrow.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {tcell1,tcell2,tcell3,                   
                       tcell4,tcell5,tcell6,tcell7,tcell8,tcell9
                   });

               
             
                tblBasic.Rows.Add(xrnewrow);
              
            }
            tblBasic.Size = new System.Drawing.Size(517, 22 * (5 + 1));

           // xrPanel1.Controls.Add(tblBasic);
            return tblBasic;
        
        }

    }
}
