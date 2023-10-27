using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data.Linq;

namespace PH.LWPM.UI.WF
{
    public partial class WFPoolReportNew : DevExpress.XtraReports.UI.XtraReport
    {
        RAPLQDataContext CurDataContext;
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
              

        public WFPoolReportNew()
        {
            InitializeComponent();
            CurDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
        }

        private ISingleResult<GetWFResult> GetReportData()
        {
            ISingleResult<GetWFResult> rptsource = CurDataContext.GetSummaryWF(this.factory, this.linecode, this.workertyle, this.location, this.wsss, this.jobtitle, this.id, this.area);
            CurDataContext.CommandTimeout = 6000;
            this.bindingSource1.DataSource = rptsource;

            return rptsource;

        }

        public WFPoolReportNew(string _factory, string _linecode, string _location, string _wsss, string _jobtitle, string _id, string _area, string _workertyle, string _rpttitle, RAPLQDataContext rapdc)
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
            this.CurDataContext = rapdc;
            CurDataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            InitializeComponent();
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


        private void GetWorkerCount(out int swing,int sswing,out int hwork,int shwork,out int iline,int sinline)
        {
            swing = sswing;
            hwork = shwork;
            iline = sinline;
            switch (GetCurrentColumnValue("JobTitleEn").ToString().TrimEnd())
            {
                case "Sewing Machinist": swing++; break;
                case "Hand Worker": hwork++; break;
                case "In-line Inspector": iline++; break;
                default: break;
            }
            
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.c_cell_sta_sewing.Text = sewing[1].ToString();
            //this.c_cell_sta_hand.Text = handwork[1].ToString();
            //this.c_cell_sta_inline.Text = inline[1].ToString();
            //this.c_cell_sta_total.Text = (sewing[1] + handwork[1] + inline[1]).ToString();

            //this.c_cell_mobi_sewing.Text = sewing[2].ToString();
            //this.c_cell_mobi_hand.Text = handwork[2].ToString();
            //this.c_cell_mobi_inline.Text = inline[2].ToString();
            //this.c_cell_mobi_total.Text = (sewing[2] + handwork[2] + inline[2]).ToString();

            //this.c_cell_floa_sewing.Text = sewing[3].ToString();
            //this.c_cell_floa_hand.Text = handwork[3].ToString();
            //this.c_cell_floa_line.Text = inline[3].ToString();
            //this.c_cell_floa_total.Text = (sewing[3] + handwork[3] + inline[3]).ToString();

            //this.c_cell_auxSew.Text = sewing[4].ToString();
            //this.c_cell_auxHand.Text = handwork[4].ToString();
            //this.c_cell_auxInline.Text = inline[4].ToString();
            //this.c_cell_auxTotal.Text = (sewing[4] + handwork[4] + inline[4]).ToString();

            this.TotalSwf = this.SwfSweMach + this.SwfHardWork + this.SwfLineEnd;
            this.TotalMwf = this.MwfSweMach + this.MwfHardWork + this.MwfLineEnd;
            this.TotalFwf = this.FwfSweMach + this.FwfHardWork + this.FwfLineEnd;
            this.TotalSpwf = this.SpwfSweMach + this.SpwfHardWork + this.SpwfLineEnd;
            this.TotalFunwf = this.FunwfSweMach + this.FunwfHardWork + this.FunwfLineEnd + this.FunTempTotal; 
            this.TotalAll = this.TotalSpwf + this.TotalMwf + this.TotalFwf + this.TotalSwf+this.TotalFunwf;
            this.TotalSewing = this.SwfSweMach + this.MwfSweMach + this.FwfSweMach + this.SpwfSweMach+this.FunwfSweMach;
            this.TotalHand = this.SwfHardWork + this.MwfHardWork + this.FwfHardWork + this.SpwfHardWork+this.FunwfHardWork;
            this.TotalLineEnd = this.SwfLineEnd + this.MwfLineEnd + this.FwfLineEnd + this.SpwfLineEnd+this.FunwfLineEnd;

            this.c_cell_sta_sewing.Text = this.SwfSweMach.ToString();
            this.c_cell_sta_hand.Text = this.SwfHardWork.ToString();
            this.c_cell_sta_inline.Text = this.SwfLineEnd.ToString();
            this.c_cell_sta_total.Text = this.TotalSwf.ToString();

            this.c_cell_mobi_sewing.Text = this.MwfSweMach.ToString();
            this.c_cell_mobi_hand.Text = this.MwfHardWork.ToString();
            this.c_cell_mobi_inline.Text = this.MwfLineEnd.ToString();
            this.c_cell_mobi_total.Text = TotalMwf.ToString();

            this.c_cell_floa_sewing.Text = this.FwfSweMach.ToString();
            this.c_cell_floa_hand.Text = this.FwfHardWork.ToString();
            this.c_cell_floa_line.Text = this.FwfLineEnd.ToString();
            this.c_cell_floa_total.Text = this.TotalFwf.ToString();

            this.c_cell_Spic_sewing.Text = this.SpwfSweMach.ToString();
            this.c_cell_spic_hand.Text = this.SpwfHardWork.ToString();
            this.c_cell_spic_inline.Text = this.SpwfLineEnd.ToString();
            this.c_cell_spic_total.Text = this.TotalSpwf.ToString();

            this.c_cell_FWF_sewing.Text = this.FunwfSweMach.ToString();
            this.c_cell_FWF_hand.Text = this.FunwfHardWork.ToString();
            this.c_cell_FWF_inline.Text = this.FunwfLineEnd.ToString();
            this.c_cell_FWF_total.Text = this.TotalFunwf.ToString();

            this.c_cell_auxSew.Text = this.TotalSewing.ToString();
            this.c_cell_auxHand.Text = this.TotalHand.ToString();
            this.c_cell_auxInline.Text = this.TotalLineEnd.ToString();
            this.c_cell_auxTotal.Text = this.TotalAll.ToString();

           
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void WFPoolReportNew_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            context.CommandTimeout = 8000;
            string sql = string.Format("exec [getSummaryWF] '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}'", this.factory, this.linecode, this.workertyle, this.location, this.wsss, this.jobtitle, this.id, this.area);
            this.bindingSource1.DataSource=context.ExecuteQuery<GetWFResult>(sql);
            //GetReportData();
        }
        int SwfSweMach = 0;
        int SwfHardWork = 0;
        int SwfLineEnd = 0;
        int MwfSweMach = 0;
        int MwfHardWork = 0;
        int MwfLineEnd = 0;
        int FwfSweMach = 0;
        int FwfHardWork = 0;
        int FwfLineEnd = 0;
        int SpwfSweMach = 0;
        int SpwfHardWork = 0;
        int SpwfLineEnd = 0;
        int FunwfHardWork = 0;
        int FunwfSweMach = 0;
        int FunwfLineEnd = 0;
        int FunTempTotal = 0;
        int TotalSwf = 0;
        int TotalMwf = 0;
        int TotalFwf = 0;
        int TotalSpwf = 0;
        int TotalFunwf = 0;
        int TotalSewing = 0;
        int TotalHand = 0;
        int TotalLineEnd = 0;
        int TotalAll = 0;
        string beforeId = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          
            GetWFResult gbs = this.GetCurrentRow() as GetWFResult;
            if (gbs == null) return;       
  
                //if (beforeId != "" && beforeId != gbs.Id.Trim()) countId = 1;
                //if (beforeId == gbs.Id.Trim()) countId++;
                if (beforeId != gbs.Id.Trim())
                {
                    cellWorkerId.Text = gbs.Id.Trim();
                    cellWorkerType.Text = gbs.WorkerType.Trim();
                    cellName.Text = gbs.NameCn.Trim();
                    cellSeniority.Text = gbs.Seniority.Trim();
                    cellRegion.Text = gbs.Region.Trim();
                    cellSex.Text = gbs.Sex.Trim();
                    cellWFLevel.Text = gbs.WFLevel.Trim();
                    cellDept.Text = gbs.Dept.Trim();
                    Cell_JobtitleEn.Text = gbs.JobTitleEn.Trim();
                    if (gbs.WorkerType.ToString().Trim() == "Stationed") 
                    {
                        if (gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist" || gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist (Core-Tech)" || gbs.WorkerType.ToString().Trim() == "Band-knife Machinist") SwfSweMach++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Hand Worker" || gbs.JobTitleEn.ToString().Trim() == "Hand Worker (Core-Tech)") SwfHardWork++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Line-End Inspector") SwfLineEnd++;
                    }
                    if (gbs.WorkerType.ToString().Trim() == "Mobile")
                    {
                        if (gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist" || gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist (Core-Tech)" || gbs.WorkerType.ToString().Trim() == "Band-knife Machinist") MwfSweMach++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Hand Worker" || gbs.JobTitleEn.ToString().Trim() == "Hand Worker (Core-Tech)") MwfHardWork++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Line-End Inspector") MwfLineEnd++;
                    }
                    if (gbs.WorkerType.ToString().Trim() == "Floater")
                    {
                        if (gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist" || gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist (Core-Tech)" || gbs.WorkerType.ToString().Trim() == "Band-knife Machinist") FwfSweMach++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Hand Worker" || gbs.JobTitleEn.ToString().Trim() == "Hand Worker (Core-Tech)") FwfHardWork++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Line-End Inspector") FwfLineEnd++;
                    }
                    if (gbs.WorkerType.ToString().Trim() == "Specific WF")
                    {
                        if (gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist" || gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist (Core-Tech)" || gbs.WorkerType.ToString().Trim() == "Band-knife Machinist") SpwfSweMach++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Hand Worker" || gbs.JobTitleEn.ToString().Trim() == "Hand Worker (Core-Tech)") SpwfHardWork++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Line-End Inspector") SpwfLineEnd++;
                    }
                    if (gbs.WorkerType.ToString().Trim() == "Fundamental WF" || gbs.WorkerType.ToString().Trim() == "Trainee")
                    {
                        if (gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist" || gbs.JobTitleEn.ToString().Trim() == "Sewing Machinist (Core-Tech)" || gbs.WorkerType.ToString().Trim() == "Band-knife Machinist") FunwfSweMach++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Hand Worker" || gbs.JobTitleEn.ToString().Trim() == "Hand Worker (Core-Tech)") FunwfHardWork++;
                        if (gbs.JobTitleEn.ToString().Trim() == "Line-End Inspector") FunwfLineEnd++;
                        else FunTempTotal++;
                    }
                }
                else
                {
                    cellWorkerId.DataBindings.Clear();
                    cellWorkerType.DataBindings.Clear();
                    cellName.DataBindings.Clear();
                    cellSeniority.DataBindings.Clear();
                    cellRegion.DataBindings.Clear();
                    cellSex.DataBindings.Clear();
                    cellWFLevel.DataBindings.Clear();
                    cellDept.DataBindings.Clear();
                    Cell_JobtitleEn.DataBindings.Clear();

                    cellWorkerId.Text = string.Empty;
                    cellWorkerType.Text = string.Empty;
                    cellName.Text = string.Empty;
                    cellSeniority.Text = string.Empty;
                    cellRegion.Text = string.Empty;
                    cellSex.Text = string.Empty;
                    cellWFLevel.Text = string.Empty;
                    cellDept.Text = string.Empty;
                    Cell_JobtitleEn.Text = string.Empty;
                }
                beforeId = GetCurrentColumnValue("Id").ToString().Trim();

                //switch (GetCurrentColumnValue("WorkerType").ToString().Trim())
                //{
                //    case "Stationed":
                //        GetWorkerCount(out sewing[1], sewing[1], out handwork[1], handwork[1], out inline[1], inline[1]);
                //        break;
                //    case "Mobile":
                //        GetWorkerCount(out sewing[2], sewing[2], out handwork[2], handwork[2], out inline[2], inline[2]);
                //        break;
                //    case "Floater":
                //        GetWorkerCount(out sewing[3], sewing[3], out handwork[3], handwork[3], out inline[3], inline[3]);
                //        break;
                //    case "Auxiliary":
                //        GetWorkerCount(out sewing[4], sewing[4], out handwork[4], handwork[4], out inline[4], inline[4]);
                //        break;
                //    default:
                //        break;

                //}
        }
       

    }
}
