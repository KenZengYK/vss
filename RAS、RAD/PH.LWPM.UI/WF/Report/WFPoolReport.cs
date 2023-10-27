using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class WFPoolReport : DevExpress.XtraReports.UI.XtraReport
    {
        private string factory ;
        private string linecode ;
        private string location ;
        private string wsss ;
        private string jobtitle ;
        private string id ;
        private string area ;
        private string workertyle ;
        private string RptTitle ;

        public Boolean ExistData { get; set; }
        int[] sewing = new int[5];
        int[] handwork = new int[5];
        int[] inline = new int[5];
              

        public WFPoolReport()
        {
            InitializeComponent();
        }

        public WFPoolReport(string _factory,string _linecode,string _location,string _wsss,string _jobtitle,string _id,string _area,string _workertyle,string _rpttitle)
        {
            this.factory = _factory;
            this.linecode = _linecode;
            this.location = _location;
            this.wsss = _wsss;
            this.jobtitle = _jobtitle;
            this.id = _id;
            this.area = _area;
            this.workertyle = _workertyle;
            this.RptTitle = _rpttitle;
            InitializeComponent();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (ExistData)
            {
                switch (GetCurrentColumnValue("WorkerType").ToString().Trim())
                {
                    case "Stationed":
                        T_WFType.Text = "SWF";
                        GetWorkerCount(out sewing[1], sewing[1], out handwork[1], handwork[1], out inline[1], inline[1]);
                        break;
                    case "Mobile":
                        T_WFType.Text = "MWF";
                        GetWorkerCount(out sewing[2], sewing[2], out handwork[2], handwork[2], out inline[2], inline[2]);
                        break;
                    case "Floater":
                        T_WFType.Text = "FWF";
                        GetWorkerCount(out sewing[3], sewing[3], out handwork[3], handwork[3], out inline[3], inline[3]);
                        break;
                    case "Auxiliary":
                        T_WFType.Text = "AWF";
                        GetWorkerCount(out sewing[4], sewing[4], out handwork[4], handwork[4], out inline[4], inline[4]);
                        break;
                    default:
                        T_WFType.Text = string.Empty;
                        break;

                }
            }
           
            
        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            c_grp_sewing.Text =sewing[0].ToString();
            c_grp_hand.Text = handwork[0].ToString();
            c_grp_inline.Text = inline[0].ToString();
            c_grp_total.Text  = (sewing[0] + handwork[0] + inline[0]).ToString();
            sewing[0] = 0;            
            handwork[0] = 0;            
            inline[0] = 0;
            

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            c_Factory.Text = factory;
            c_line.Text = linecode;
            c_Dept.Text = wsss;
            L_Title.Text = RptTitle;
        }

        private void Cell_JobtitleEn_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetWorkerCount(out sewing[0], sewing[0],out handwork[0], handwork[0],out inline[0], inline[0]);

        }

        private void WFPoolReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            try
            {
                string strcondition;
                strcondition = factory != "" ? " Factory='" + factory + "'" : "";
                strcondition += strcondition != "" && linecode != "" ? " and linecode='" + linecode + "'" : (strcondition == "" && linecode != "" ? " linecode='" + linecode + "'" : "");
                strcondition += strcondition != "" && location != "" ? " and Location='" + location + "'" : (strcondition == "" && location != "" ? " Location='" + location + "'" : "");
                strcondition += strcondition != "" && wsss != "" ? " and Dept='" + wsss + "'" : (strcondition == "" && wsss != "" ? " Dept='" + wsss + "'" : "");
                strcondition += strcondition != "" && jobtitle != "" ? " and jobtitleEn='" + jobtitle + "'" :( strcondition == "" && jobtitle != "" ? " jobtitleEn='" + jobtitle + "'" : "");
                strcondition += strcondition != "" && id != "" ? " and Id='" + id + "'" : (strcondition == "" && id != "" ? " Id='" + id + "'" : "");
                strcondition += strcondition != "" && area != "" ? " and Area='" + area + "'" :( strcondition == "" && area != "" ? " Area='" + area + "'" : "");
                strcondition += strcondition != "" && workertyle != "" ? " and WorkerType='" + workertyle + "'" :( strcondition == "" && workertyle != "" ? " WorkerType='" + workertyle + "'" : "");
                strcondition = strcondition != "" ? "where " + strcondition : "";
                SqlDataAdapter workforcead = new SqlDataAdapter("select * from workforce " + strcondition, ContextBuilder.CreateContext<RAPLQDataContext>().Connection.ConnectionString);
                workforcead.Fill(skillDataSet1.WorkForce);
                ExistData = skillDataSet1.WorkForce.Count > 0 ? true : false;
                
            }
            catch
            {
            }
        }

        private void GetWorkerCount(out int swing,int sswing,out int hwork,int shwork,out int iline,int sinline)
        {
            swing = sswing;
            hwork = shwork;
            iline = sinline;
            if (ExistData)
            {
                switch (GetCurrentColumnValue("JobTitleEn").ToString().TrimEnd())
                {
                    case "Sewing Machinist": swing++; break;
                    case "Hand Worker": hwork++; break;
                    case "In-line Inspector": iline++; break;
                    default: break;

                }
            }
            
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.c_cell_sta_sewing.Text = sewing[1].ToString();
            this.c_cell_sta_hand.Text =handwork[1].ToString();
            this.c_cell_sta_inline.Text =inline[1].ToString();
            this.c_cell_sta_total.Text = (sewing[1] + handwork[1] + inline[1]).ToString();

            this.c_cell_mobi_sewing.Text = sewing[2].ToString();
            this.c_cell_mobi_hand.Text = handwork[2].ToString();
            this.c_cell_mobi_inline.Text = inline[2].ToString();
            this.c_cell_mobi_total.Text = (sewing[2] + handwork[2] + inline[2]).ToString();

            this.c_cell_floa_sewing.Text = sewing[3].ToString();
            this.c_cell_floa_hand.Text = handwork[3].ToString();
            this.c_cell_floa_inline.Text = inline[3].ToString();
            this.c_cell_floa_total.Text = (sewing[3] + handwork[3] + inline[3]).ToString();

            this.c_cell_auxSew.Text = sewing[4].ToString();
            this.c_cell_auxHand.Text = handwork[4].ToString();
            this.c_cell_auxInline.Text = inline[4].ToString();
            this.c_cell_auxTotal.Text = (sewing[4] + handwork[4] + inline[4]).ToString();


        }
       

    }
}
