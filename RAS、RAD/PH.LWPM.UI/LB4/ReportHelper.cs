using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.LWPM.BO;
using System.Data;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB4
{
    public class ReportHelper
    {

        /// <summary>
        /// Opt Permit Report Verion (工序許可證報表的版本號)
        /// </summary>
        public static string OptPermitReportVersion = "v2.2";

        /// <summary>
        /// Opt Permit Report Verion
        /// </summary>
        public static string OptPermitSummaryReportVersion = "v2.2";


        /// <summary>
        /// 打印工序許可證(用于Step 5 - Deployment re-arranging 委派重整)
        /// </summary>
        /// <param name="AFactory"></param>
        public static void PrintOptsPermitReport(string AFactory,int Language)
        {
            //Step5DeploymentReArranging obj = this.bsProposal.Current as Step5DeploymentReArranging;

            if (Language == 0)
            {
                StyleMasterListFormReport rpt1 = new StyleMasterListFormReport("", "", "", "",
                    "", "", AFactory, "", "Step 4", "", DateTime.Now, "", "", "Step 5 re-arrangement", "", true);
                //StyleMasterListFormReport rpt1 = new StyleMasterListFormReport(Factory);

                if (rpt1.BindingSourceCount != 0)
                { rpt1.CreateDocument(); }

                StyleMasterListFormReport2 rpt2 = new StyleMasterListFormReport2("", "", "", "",
                      "", "", AFactory, "", "Step 4", "", DateTime.Now, "", "", "Step 5 re-arrangement", "", true);

                if (rpt2.BindingSourceCount != 0)
                {
                    rpt2.CreateDocument();
                }
                rpt2.Pages.AddRange(rpt1.Pages);


                StyleMasterListFormReport3 rpt3 = new StyleMasterListFormReport3("", "", "", "",
                    "", "", AFactory, "", "Step 4", "", DateTime.Now, "", "", "Step 5 re-arrangement", "", true);
                if (rpt3.BindingSourceCount != 0)
                { rpt3.CreateDocument(); }

                rpt2.Pages.AddRange(rpt3.Pages);

                rpt2.ShowPreview();

            }
            else
            {
                RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
                string SqlStr = "exec LB4PListFrmReportStep5 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}','{14}'";
                SqlStr = string.Format(SqlStr, "", "", "", "", "", "", AFactory, "", "Step 4", "", DateTime.Now.ToString("yyyy-MM-dd"), "", "", "Step 5 re-arrangement", 1);
                DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "dtOpsSpecSheet");

                //DataSet AllSource = db.GetAllSource(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", "");


                //StyleMasterListFormReport_B1 rpt1 = new StyleMasterListFormReport_B1(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(), obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
                StyleMasterListFormReport_B1 rpt1_BD = new StyleMasterListFormReport_B1(ds, 1);
                if (rpt1_BD.BindingSourceCount != 0)
                { rpt1_BD.CreateDocument(); }

                StyleMasterListFormReport_B2 rpt2_BD = new StyleMasterListFormReport_B2(ds, 1);
                //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");

                if (rpt2_BD.BindingSourceCount != 0)
                {
                    rpt2_BD.CreateDocument();
                }
                rpt2_BD.Pages.AddRange(rpt1_BD.Pages);

                StyleMasterListFormReport_B3 rpt3_BD = new StyleMasterListFormReport_B3(ds, 1);
                //(obj.Rwo.Trim(), obj.Qn.Trim(), obj.j_NO.Trim(), obj.LineCode.Trim(),obj.Bcolor.Trim(), obj.J2_job.Trim(), obj.Factory.Trim(), ReportOptionType, "Step 4", "", DateTime.Now, "", "", StepType, "");
                if (rpt3_BD.BindingSourceCount != 0)
                { rpt3_BD.CreateDocument(); }

                rpt2_BD.Pages.AddRange(rpt3_BD.Pages);

                rpt2_BD.ShowPreview();

            }


        }
    }
}
