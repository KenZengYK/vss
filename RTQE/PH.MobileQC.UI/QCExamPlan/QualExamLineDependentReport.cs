using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Data;
using System.Linq;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class QualExamLineDependentReport : DevExpress.XtraReports.UI.XtraReport
    {
        public QualExamLineDependentReport(string Factory, string Line, string CustStyle,int CheckStepType, Int64 AOid)
        {
            InitializeComponent();

            Predate(Factory, Line, CustStyle, CheckStepType, AOid);

            ReportHelper reportHelper = new ReportHelper("00000018");
            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            if (Line == "" && CheckStepType==0) 
            {
                this.xrTable3.Rows.Remove(this.xrTableRow5);
                this.xrTable3.Size = new System.Drawing.Size(599, 48);
            }
        }

        DataSet ds;
        public void Predate(string Factory, string Line, string CustStyle, int CheckStepType, Int64 AOid)
        {
            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            string Sqlstr = "exec sp_ExamPlanChosenBOOOpts  '{0}', '{1}', '{2}'";
            Sqlstr = string.Format(Sqlstr, AOid, Line, CheckStepType);
            ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "dtOpsSpecSheet");
            
            this.bindingSource1.DataSource = ds.Tables[1];
            if (ds.Tables[1].Rows.Count == 0) return;


            if (ds.Tables[2].Rows.Count > 0)
            {

                //处理表头数据
                this.xrClassCode.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["ClassCode"]).FirstOrDefault().ToString();
                this.xrStyleNo.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["CustStyle"]).FirstOrDefault().ToString();
                this.xrLine.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["AssignedLine"]).FirstOrDefault().ToString();

                //处理表尾计算字段
                this.xrtotalSeq.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalOptSel"]).FirstOrDefault().ToString();
                this.xrtotalALSeq.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALOptseq"]).FirstOrDefault().ToString();
                this.xrtotalDeQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalDeQA"]).FirstOrDefault().ToString();
                this.xrtotalDeQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalDeQI"]).FirstOrDefault().ToString();

                this.xrtotalALDeQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALDeQA"]).FirstOrDefault().ToString();
                this.xrtotalALDeQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALDeQI"]).FirstOrDefault().ToString();


                //表尾Note字段
                this.taImportant.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["ImportantNote"]).FirstOrDefault().ToString();
            }
            //用于计算确认人存在几个
            int StepIndex = 0;

            if (CheckStepType==1) //有Line --step2
            {

                xrTableCell21.Text = Factory == "CL" ? "Y" : "N";
                 StepIndex = 1;
                 if (Line != "")
                 {
                        if (ds.Tables[2].Rows.Count == 0) return;
                         //表尾确认人字段
                         this.xrAssDeQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["QACheckDefAss"]).FirstOrDefault().ToString();
                         this.xrAssDeQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["QICheckDefAss"]).FirstOrDefault().ToString();


                         this.xrcfmdQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["LineConfirmerQA"]).FirstOrDefault().ToString();
                         this.xrcfmdQADate.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["LineConfirmDateQA"]).FirstOrDefault().ToString();
                         if (!string.IsNullOrEmpty(xrcfmdQA.Text)) { StepIndex += 1; }

                         this.xrcfmdQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["LineConfirmerQI"]).FirstOrDefault().ToString();
                         this.xrcfmdQIDate.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["LineConfirmDateQI"]).FirstOrDefault().ToString();
                         if (!string.IsNullOrEmpty(xrcfmdQI.Text)) { StepIndex += 1; }

                         this.xragreeman.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["AgreeMan"]).FirstOrDefault().ToString();
                         this.xragreemanDate.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["AgreeDate"]).FirstOrDefault().ToString();
                         if (!string.IsNullOrEmpty(xragreeman.Text)) { StepIndex += 1; }

                         //total
                        
                         this.totalQALine1.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQALine1"]).FirstOrDefault().ToString();
                         this.totalQALine2.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQALine2"]).FirstOrDefault().ToString();
                         this.totalQALine3.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQALine3"]).FirstOrDefault().ToString();
                         this.totalQALine4.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQALine4"]).FirstOrDefault().ToString();
                         this.totalQALine5.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQALine5"]).FirstOrDefault().ToString();

                         this.totalQILine1.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQILine1"]).FirstOrDefault().ToString();
                         this.totalQILine2.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQILine2"]).FirstOrDefault().ToString();
                         this.totalQILine3.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQILine3"]).FirstOrDefault().ToString();
                         this.totalQILine4.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQILine4"]).FirstOrDefault().ToString();
                         this.totalQILine5.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalQILine5"]).FirstOrDefault().ToString();

                         //total-AL
                         this.totalALQALine1.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQALine1"]).FirstOrDefault().ToString();
                         this.totalALQALine2.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQALine2"]).FirstOrDefault().ToString();
                         this.totalALQALine3.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQALine3"]).FirstOrDefault().ToString();
                         this.totalALQALine4.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQALine4"]).FirstOrDefault().ToString();
                         this.totalALQALine5.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQALine5"]).FirstOrDefault().ToString();

                         this.totalALQILine1.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQILine1"]).FirstOrDefault().ToString();
                         this.totalALQILine2.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQILine2"]).FirstOrDefault().ToString();
                         this.totalALQILine3.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQILine3"]).FirstOrDefault().ToString();
                         this.totalALQILine4.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQILine4"]).FirstOrDefault().ToString();
                         this.totalALQILine5.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALQILine5"]).FirstOrDefault().ToString();

                         //表尾total计算字段
                         this.xrtotalLineQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalAssQA"]).FirstOrDefault().ToString();
                         this.xrtotalLineQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalAssQI"]).FirstOrDefault().ToString();
                         this.xrtotalALLineQA.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALAssQA"]).FirstOrDefault().ToString();
                         this.xrtotalALLineQI.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALAssQI"]).FirstOrDefault().ToString();
                     }
                 
                //表头字段（Step的类别，程度，Factory）
                this.xrLabel2.Text = "Stage: Step 2." + StepIndex.ToString();
                this.xrStepStatus.Text = "( " + (StepIndex == 4 ? "Completed" : "In progress") + " )";
                this.xrFactory.Text = Line == "" ? Factory : Factory + " / " + ds.Tables[2].AsEnumerable().Select(dr => dr["Workshop"]).FirstOrDefault().ToString();

               //表尾Total
                this.xrtotalALWF.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALWFCode"]).FirstOrDefault().ToString();
                this.xrtotalALWorkdesk.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["totalALWorkDesk"]).FirstOrDefault().ToString();

                this.xrFactorydate.Text = ds.Tables[2].AsEnumerable().Select(dr => dr["ChosenFactoryDate"]).FirstOrDefault().ToString();



                //处理表尾格式显示
                this.xrtotalALWF.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(218)))), ((int)(((byte)(238)))), ((int)(((byte)(243)))));
                this.xrtotalALWorkdesk.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(218)))), ((int)(((byte)(238)))), ((int)(((byte)(243)))));
               
                this.xrtotalALWF.Borders=  ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left )
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));

                this.xrtotalALWorkdesk.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left)
                     | DevExpress.XtraPrinting.BorderSide.Right)
                     | DevExpress.XtraPrinting.BorderSide.Bottom)));
                
                //处理Top5 Line 字段
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++) 
                {
                    string LineFactory = ds.Tables[0].AsEnumerable().Select(dr => dr["Factory"]).FirstOrDefault().ToString();
                    if (i == 0) 
                    { 
                        this.xrLine1.Text = LineFactory + "-" + "\n" + ds.Tables[0].Rows[0]["Line"].ToString(); 
                        this.QAxrLine1.Text = "QA"; 
                        this.QIxrLine1.Text = "QI";
                    }
                    if (i == 1) 
                    { 
                        this.xrLine2.Text = LineFactory + "-" + "\n" + ds.Tables[0].Rows[1]["Line"].ToString();
                        this.QAxrLine2.Text = "QA"; 
                        this.QIxrLine2.Text = "QI";
                    }
                    if (i == 2)
                    {
                        this.xrLine3.Text = LineFactory + "-" + "\n" + ds.Tables[0].Rows[2]["Line"].ToString();
                        this.QAxrLine3.Text = "QA"; 
                        this.QIxrLine3.Text = "QI"; 
                    }
                    if (i == 3) 
                    { 
                        this.xrLine4.Text = LineFactory + "-" + "\n" + ds.Tables[0].Rows[3]["Line"].ToString();
                        this.QAxrLine4.Text = "QA";
                        this.QIxrLine4.Text = "QI"; 
                    }
                    if (i == 4) 
                    { 
                        this.xrLine5.Text = LineFactory + "-" + "\n" + ds.Tables[0].Rows[4]["Line"].ToString(); 
                        this.QAxrLine5.Text = "QA"; 
                        this.QIxrLine5.Text = "QI";
                    }

                }

            }
            else //step 1 的情况
            {
                
                //处理表尾格式显示
                //this.xrLabel8.Visible = this.xrTable9.Visible = this.xrLabel4.Visible = this.xrTable6.Visible = false;
                this.xrTableCell67.Text = xrTableCell21.Text = xrFactorydate.Text = xrAssDeQA.Text = xrAssDeQI.Text = xrTableCell69.Text = xrTableCell70.Text = xrTableCell72.Text = "";
                this.xrTableCell73.Text = xrTableCell89.Text = xrTableCell88.Text = xrTableCell89.Text = xrTableCell74.Text = xrTableCell75.Text = xrTableCell76.Text = "";
                this.xrSteptype.Text = "Step 1";
                this.xrTableCell82.Text = "Default chosen opts cfmd by QA:";
                this.xrTableCell27.Text = "Default chosen opts cfmd by QI:";
                this.xrTableCell77.Text = "Default chosen approved by:";

                if (ds.Tables[2].Rows.Count == 0) return;
                //赋值表尾确认人字段
                this.xrcfmdQA.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["ConfirmerQA"]).FirstOrDefault().ToString();
                this.xrcfmdQADate.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["ConfirmDateQA"]).FirstOrDefault().ToString();
                if (!string.IsNullOrEmpty(xrcfmdQA.Text)) { StepIndex += 1; }

                this.xrcfmdQI.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["ConfirmerQI"]).FirstOrDefault().ToString();
                this.xrcfmdQIDate.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["ConfirmDateQI"]).FirstOrDefault().ToString();
                if (!string.IsNullOrEmpty(xrcfmdQI.Text)) { StepIndex += 1; }
                
                this.xragreeman.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["Approvaler"]).FirstOrDefault().ToString();
                this.xragreemanDate.Text =  ds.Tables[2].AsEnumerable().Select(dr => dr["ApprovalDate"]).FirstOrDefault().ToString();
                if (!string.IsNullOrEmpty(xragreeman.Text)) { StepIndex += 1; }

                //表头字段赋值
                this.xrLabel2.Text = "Stage: Step 1." + StepIndex.ToString();
                this.xrStepStatus.Text = "( " + (StepIndex == 3 ? "Completed" : "In progress") + " )";

              
            }

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (ds.Tables[1].Rows.Count == 0) return;
            string DeQA = this.GetCurrentColumnValue("MQACheck").ToString();
            string DeQI = this.GetCurrentColumnValue("MQCCheck").ToString();
            string LineQA = this.GetCurrentColumnValue("QAAssignedLine").ToString();
            string LineQI = this.GetCurrentColumnValue("QIAssignedLine").ToString();
            if (DeQA != LineQA)
            {
                this.xrStepQA.ForeColor = System.Drawing.Color.Red;      
            }
            else
            {
                this.xrStepQA.ForeColor = System.Drawing.Color.Black;
            }

            if(DeQI != LineQI)
            {
                 this.xrStepQI.ForeColor = System.Drawing.Color.Red;      
            }
            else
            {
                this.xrStepQI.ForeColor = System.Drawing.Color.Black;
            }
        }
    }
}
