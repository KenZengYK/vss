using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using System.Threading;

namespace PH.MR.UI.Report
{
    public partial class AnticipantReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public AnticipantReport()
        {
            InitializeComponent();
            this.btnGetData.Visible = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator;

        }

        MRDataContext mdc;


        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PrintAnticipantReport();
        }
        private bool CallAnticipantProc()
        {
            bool _succ = false;
            string project = this.editProject.Text.Trim();
            ReportHelper rpthelper = new ReportHelper();
            _succ = rpthelper.CallAnticipantMR("P1", project);
            return _succ;

            //PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
            //data.AssemblyName = "PH.MR.BackEnd.dll";　//當前dll全名
            //data.ClassFullName = typeof(PH.MR.BackEnd.Job.JobKBMRReport).FullName;//報表全名
            //data.JobName = string.Format("MR Report({0}):{1}", jobKBMRReport1.ReportOption, project);//JOB名稱
            //data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
            //data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
            //data.RunServer = "SL";
            //data.Parameter = this.jobKBMRReport1.GetParameter();
            //PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
        }


        private void CallAnticipantMR(string company, string projectno)
        {
            ReportHelper helper = new ReportHelper();
            string dept = "OA";
            helper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            helper.TM = DateTime.Now.ToString("HHmmssfff");
            helper.JOBN = string.Format("{0}{1}.{2}", helper.DT, helper.TM.Substring(0, 2), helper.TM.Substring(2, 4));
            helper.phReportAction = PHReportAction.GenerateMR;
            helper.dataAction = DataAction.None;
            helper.ReportOption = PHPrintReportOption.None;
            helper.Dept = dept;
            helper.CONO = company;
            helper.Project = projectno;
            helper.PrepareData();

            //-------------2 
            string sqlcmd = string.Format("exec [PH.MR].dbo.[sp_AnticipatedMR] {0}0,'{1}'", helper.JOBN, PH.Platform.Common.SysParamHelper.Instance.UserID);
            PH.MR.BO.DB.SQL2000DB.Execute(sqlcmd);
        }

        private bool IsExists()
        {
            bool _exists = false;
            if (mdc == null)
                mdc = ContextBuilder.CreateContext<MRDataContext>();

            if (mdc.AnticipantMRs.Where(p => p.Projectno == this.editProject.Text.Trim()).Count() > 0)
                _exists = true;
            return _exists;

        }


        private void ClearData()
        {
            if (mdc == null)
                mdc = ContextBuilder.CreateContext<MRDataContext>();

            var mrs = mdc.AnticipantMRs.Where(p => p.Projectno == editProject.Text.Trim());


            foreach (AnticipantMR amr in mrs)
            {
                mdc.AnticipantMRs.DeleteOnSubmit(amr);
            }

            mdc.SubmitChanges();

        }
        private void GetAnticipantMR(string projno)
        {
            Thread.Sleep(15000);
            DataTable php72o = new DataTable("php72o");
            DataTable php72c = new DataTable("php72c");
            try
            {
                if (mdc == null)
                    mdc = ContextBuilder.CreateContext<MRDataContext>();

                FRNMsterHelper mhelper = new FRNMsterHelper();
                string connstr = mhelper.GetMRDBConnection();
                SqlConnection conn = new SqlConnection(connstr);

                string selstr1 = "select * from openquery(as400,'select * from AULT4F1.PHP72O WHERE cuso7o=''" + projno + "''') ";
                SqlCommand cmd = new SqlCommand(selstr1, conn);
                cmd.CommandTimeout = 100000;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.SelectCommand.CommandType = CommandType.Text;
                sda.Fill(php72o);

                string selstr2 = "select * from openquery(as400,'select * from AULT4F1.PHP72C WHERE cuso7c=''" + projno + "''') ";
                cmd = new SqlCommand(selstr2, conn);
                //cmd.CommandText = selstr2;  // "select * from openquery(as400,'select * from AULT4F1.PHP72C WHERE cuso7c=@cuso ')";
                sda = new SqlDataAdapter(cmd);
                sda.SelectCommand.CommandType = CommandType.Text;
                sda.Fill(php72c);
                php72c.Columns.Add("ParentWO", typeof(string));

                AMRComparers amrcomp = new AMRComparers();
                foreach (DataRow dr in php72o.Rows)
                {
                    AnticipantMR amr = new AnticipantMR();
                    amr.Salesorder = dr["ORDN7O"].ToString().Trim();
                    amr.Projectno = dr["CUSO7O"].ToString().Trim();
                    amr.Workorderno = dr["WORD7O"].ToString().Trim();

                    amr.Wo_status = char.Parse(dr["WSTA7O"].ToString().Trim());
                    //amr.SO_line_ref = dr["WORD7O"].ToString().Trim();
                    amr.SO_line_ref = dr["W1RF7O"].ToString().Trim();
                    amr.Styleno = dr["PSTL7O"].ToString().Trim();
                    amr.Style_color = dr["PCOL7O"].ToString().Trim();

                    amr.Itemno = dr["CSTL7O"].ToString().Trim();//dr["VCAT7O"].ToString().Trim();
                    amr.Item_ref = dr["VCAT7O"].ToString().Trim(); //dr["CSTL7O"].ToString().Trim();

                    amr.Item_color = dr["CCOL7O"].ToString().Trim();
                    amr.Unit = dr["IUNT7O"].ToString().Trim();
                    amr.Wastage = dr["WAST7O"] == null ? 0.0m : decimal.Parse(dr["WAST7O"].ToString());
                    amr.WO_Qty = dr["WQTY7O"] == null ? 0.0m : decimal.Parse(dr["WQTY7O"].ToString());

                    amr.MR_Qty = dr["MQTY7O"] == null ? 0.0m : decimal.Parse(dr["MQTY7O"].ToString());
                    amr.QTY_PER = dr["PQTY7O"] == null ? 0.0m : decimal.Parse(dr["PQTY7O"].ToString());

                    amr.Res_stock = dr["RSTK7O"] == null ? 0.0m : decimal.Parse(dr["RSTK7O"].ToString());
                    amr.Res_redye = dr["RDYE7O"] == null ? 0.0m : decimal.Parse(dr["RDYE7O"].ToString());
                    amr.Res_PO = dr["RPUR7O"] == null ? 0.0m : decimal.Parse(dr["RPUR7O"].ToString());


                    amr.UPX = dr["UPXQ7O"] == null ? 0.0m : decimal.Parse(dr["UPXQ7O"].ToString());
                    amr.USERID = dr["USER7O"] == null ? "" : dr["USER7O"].ToString().Trim();
                    amr.DT = dr["DTME7O"] == null ? "" : dr["DTME7O"].ToString().Trim();
                    amr.JOBNO = dr["JOBN7O"] == null ? "" : dr["JOBN7O"].ToString().Trim();

                    //if (!mdc.AnticipantMRs.Contains<AnticipantMR>(amr, amrcomp))
                    mdc.AnticipantMRs.InsertOnSubmit(amr);
                }



                foreach (DataRow dr in php72c.Rows)
                {
                    string _w1rf7o = dr["w1rf7o"].ToString();
                    string condstr = string.Format("w1rf7o='{0}'", _w1rf7o);
                    DataRow[] selrows = php72o.Select(condstr);
                    if (selrows.Length > 0)
                    {
                        string _parentwo = selrows[0]["word7o"].ToString();
                        dr["ParentWO"] = _parentwo;
                    }
                    AnticipantMR amr = new AnticipantMR();
                    amr.Salesorder = dr["ORDN7C"].ToString().Trim();
                    amr.Projectno = dr["CUSO7C"].ToString().Trim();
                    amr.Workorderno = dr["WORD7C"].ToString().Trim();

                    amr.Wo_status = char.Parse(dr["WSTA7O"].ToString());
                    amr.SO_line_ref = _w1rf7o;//dr["WORD7C"].ToString().Trim();
                    amr.Styleno = dr["PSTL7C"].ToString().Trim();

                    amr.Style_color = dr["PCOL7C"].ToString().Trim();

                    amr.Itemno = dr["SSTL72"].ToString().Trim();//dr["VCAT7C"].ToString().Trim();
                    amr.Item_ref = dr["VCAT7C"].ToString().Trim(); //dr["SSTL72"].ToString().Trim();

                    amr.Item_color = dr["SCOL7C"].ToString().Trim();

                    amr.Unit = dr["INUT7C"].ToString().Trim();
                    amr.Wastage = dr["WAST7C"] == null ? 0.0m : decimal.Parse(dr["WAST7C"].ToString());
                    amr.WO_Qty = dr["WQTY7C"] == null ? 0.0m : decimal.Parse(dr["WQTY7C"].ToString());

                    amr.MR_Qty = dr["MQTY7C"] == null ? 0.0m : decimal.Parse(dr["MQTY7C"].ToString());
                    amr.QTY_PER = dr["PQTY7C"] == null ? 0.0m : decimal.Parse(dr["PQTY7C"].ToString());

                    amr.Res_stock = dr["RSTK7C"] == null ? 0.0m : decimal.Parse(dr["RSTK7C"].ToString());
                    amr.Res_redye = dr["RDYE7C"] == null ? 0.0m : decimal.Parse(dr["RDYE7C"].ToString());
                    amr.Res_PO = dr["RPUR7C"] == null ? 0.0m : decimal.Parse(dr["RPUR7C"].ToString());


                    amr.UPX = dr["UPXQ7C"] == null ? 0.0m : decimal.Parse(dr["UPXQ7C"].ToString());
                    amr.USERID = dr["USER7C"] == null ? "" : dr["USER7C"].ToString().Trim();
                    amr.DT = dr["DTME7C"] == null ? "" : dr["DTME7C"].ToString().Trim();
                    amr.JOBNO = dr["JOBN7C"] == null ? "" : dr["JOBN7C"].ToString().Trim();

                    amr.PARENTWO = dr["ParentWO"] == null ? "" : dr["ParentWO"].ToString().Trim();
                    // if (!mdc.AnticipantMRs.Contains<AnticipantMR>(amr, amrcomp))
                    mdc.AnticipantMRs.InsertOnSubmit(amr);
                }

                mdc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void btnOK_Click(object sender, EventArgs e)
        {

        }

        private void AnticipantReport_Load(object sender, EventArgs e)
        {
            this.btnPrintInQty.Enabled = this.gvProject.RowCount > 0 ? true : false;
            this.btnPrintInValue.Enabled = this.gvProject.RowCount > 0 ? true : false;

        }


        //private void TestMethod()
        //{
        //    double mins = 2.0; //defautl is 2.0 minutes
        //    Misc_DataDictionaryList dicthelper = new Misc_DataDictionaryList();
        //    IEnumerable<Misc_DataDictionary> lst = dicthelper.GetDataByCondition(p => p.DataType == "PH.MR" && p.DataCode == "WAITTIME");
        //    foreach (Misc_DataDictionary dict in lst)
        //    {
        //        if (!string.IsNullOrEmpty(dict.DataName))
        //            mins = double.Parse(dict.DataName);

        //        break;

        //    }

        //    DateTime _dt = DateTime.Now.AddMinutes(mins);        

        //}
        IList<AnticipantMR> mrlist;
        private void btnGetData_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(this.editProject.Text.Trim()))
            {
                MessageBox.Show("Please input a Project No#.");
                return;
            }
            //TestMethod();
            //if (IsExists())
            //{
            //    string _msg = string.Format("The project:'{0}' already exists,to click  'Yes' will importing again and overwritted existing data,to click  'No' will loading existing data! ", editProject.Text.Trim());
            //    DialogResult dlg = MessageBox.Show(_msg, "Please Attention!", MessageBoxButtons.YesNo);
            //    if (dlg == DialogResult.Yes)
            //    {
            //        if (this.CallAnticipantProc())
            //        {
            //            ClearData();
            //            GetAnticipantMR(this.editProject.Text.Trim());
            //        }
            //        else
            //        {

            //            MessageBox.Show(" Import data again fail!");
            //            return;
            //        }
            //    }
            //}
            //else
            //{
            //    if (this.CallAnticipantProc())
            //    {
            //        GetAnticipantMR(this.editProject.Text.Trim());
            //    }            

            //}

            /* jackson's method */
            if (!IsExists())
            {
                if (this.CallAnticipantProc())
                {
                    GetAnticipantMR(this.editProject.Text.Trim());
                    MessageBox.Show("Get Data Completed!");
                }
                else
                {
                    MessageBox.Show(" Get data from as400 fail!");
                    return;
                }
            }

            mrlist = mdc.AnticipantMRs.Where(p => p.Projectno == editProject.Text.Trim()).ToList();
            this.bsAnticipantMR.DataSource = mrlist; // mdc.AnticipantMRs.Where(p => p.Projectno == editProject.Text.Trim());

            this.btnPrintInQty.Enabled = this.gvProject.RowCount > 0 ? true : false;
            this.btnPrintInValue.Enabled = this.gvProject.RowCount > 0 ? true : false; ;


        }

        private void btnPrintInQty_Click(object sender, EventArgs e)
        {
            if (gvProject.RowCount == 0)
            {
                MessageBox.Show("Have no report date!");
                return;
            }

            MR_InQty_Report rpt1 = new MR_InQty_Report();
            rpt1.ProjectNum = this.editProject.Text.Trim();
            rpt1.DataSource = this.bsAnticipantMR;
            rpt1.ShowPreview();

        }

        private void btnPrintInValue_Click(object sender, EventArgs e)
        {
            if (gvProject.RowCount == 0)
            {
                MessageBox.Show("Have no report date!");
                return;
            }

            // mrlist = (IEnumerable<AnticipantMR>)this.bsAnticipantMR.DataSource;
            this.SetPrintSource();
            MR_InValues_Report1 rpt1 = new MR_InValues_Report1();
            rpt1.Project = this.editProject.Text.Trim();
            rpt1.DataSource = this.mrlist;//this.bsAnticipantMR;
            rpt1.ShowPreview();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        /* peter's method */
        private void btnGetMRData_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(this.editProject.Text.Trim()))
            {
                MessageBox.Show("Please input a Project No#.");
                return;
            }

            try
            {
                if (!IsExists())
                {
                    this.CallAnticipantMR("P1", this.editProject.Text.Trim());
                    MessageBox.Show("Get Data Completed!");
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("The error was occurred! the error message is:\r\n" + ex.Message);
            }
            finally
            {

                mrlist = mdc.AnticipantMRs.Where(p => p.Projectno == editProject.Text.Trim()).ToList();
                this.bsAnticipantMR.DataSource = mrlist; //mdc.AnticipantMRs.Where(p => p.Projectno == editProject.Text.Trim());
                this.btnPrintInQty.Enabled = this.gvProject.RowCount > 0 ? true : false;
                this.btnPrintInValue.Enabled = this.gvProject.RowCount > 0 ? true : false; ;

            }
        }


        private void SetPrintSource()
        {
            IEnumerable<AnticipantMR> _mrlist = mrlist.Where(p => p.PARENTWO == null);
            foreach (AnticipantMR amr in _mrlist)
            {
                if (amr.PARENTWO == null)
                {
                    amr.TopWo = amr.Workorderno;
                    amr.SortId = 9;
                    SetTopWo(amr);
                }
            }

        }
        private void SetTopWo(AnticipantMR amr)
        {
            var result = from c in mrlist
                         where c.PARENTWO == amr.Workorderno
                         select c;
            foreach (AnticipantMR _amr in result)
            {
                _amr.TopWo = amr.TopWo;
                _amr.SortId = 0;
                SetTopWo(_amr);
            }
        }


    }
}
