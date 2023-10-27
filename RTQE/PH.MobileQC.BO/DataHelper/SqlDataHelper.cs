using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PH.Platform.BO;

namespace PH.MobileQC.BO
{
    public class SqlDataHelper
    {
        public static string GetWorkShop(string line)
        {
            string workShop = "";

            //PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            //SqlConnection cn = new SqlConnection(context.Connection.ConnectionString);

            SqlConnection cn = new SqlConnection(ConnStr);
            SqlCommand com = new SqlCommand("select  distinct * from openquery(interbase, 'select TSHOP, PLINE from Mobile_QC') where pline='" + line + "'", cn);
            cn.Open();

            SqlDataReader da = com.ExecuteReader();

            if (da.Read())
            {
                workShop = da["TSHOP"].ToString();
            }

            cn.Close();
            cn.Dispose();

            return workShop;

        }

        public static DataTable EXECMobileQC_QuerySize(string StyleNo)
        {
            PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            SqlDataAdapter da = new SqlDataAdapter();
            //SqlConnection cn = new SqlConnection(context.Connection.ConnectionString);
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("MobileQC_QuerySize", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@StyleNo", SqlDbType.VarChar, 100));
            da.SelectCommand.Parameters["@StyleNo"].Value = StyleNo;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }

        public static DataTable EXECGetSize(string Line, int seq)
        {
            PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            SqlDataAdapter da = new SqlDataAdapter();
            //SqlConnection cn = new SqlConnection(context.Connection.ConnectionString);
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("GetSize", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 8));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Seq", SqlDbType.Int));
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@Seq"].Value = seq;
            da.SelectCommand.CommandTimeout = 8000;
            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];

        }

        public static List<SP_QC_MasterAnalyz> EXECSP_QC_MasterAnalyze(string Line, string Project, string Style, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {

            DataTable dt = EXECSP_QC_MasterAnalyzeDT(Line, Project, Style, QNNo, QC_timeForm, QC_timeTo, LangID);

            List<SP_QC_MasterAnalyz> list = new List<SP_QC_MasterAnalyz>();
            foreach (DataRow item in dt.Rows)
            {
                SP_QC_MasterAnalyz newobj = new SP_QC_MasterAnalyz();
                newobj.WFID = item["WFID"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.CheckQty = item["CheckQty"] is DBNull ? 0 : Convert.ToInt32(item["CheckQty"]);
                newobj.P = item["P"] is DBNull ? 0 : Convert.ToInt32(item["P"]);
                newobj.F = item["F"] is DBNull ? 0 : Convert.ToInt32(item["F"]);
                newobj.U = item["U"] is DBNull ? 0 : Convert.ToInt32(item["U"]);
                newobj.S = item["S"] is DBNull ? 0 : Convert.ToInt32(item["S"]);
                newobj.CP = item["CP"] is DBNull ? 0 : Convert.ToInt32(item["CP"]);
                newobj.EV = item["EV"] is DBNull ? 0 : Convert.ToInt32(item["EV"]);
                newobj.MA = item["MA"] is DBNull ? 0 : Convert.ToInt32(item["MA"]);
                newobj.WS = item["WS"] is DBNull ? 0 : Convert.ToInt32(item["WS"]);
                newobj.Other = item["Other"] is DBNull ? 0 :Convert.ToInt32(item["Other"]);
                newobj.OPTName = item["OPTName"].ToString();
                newobj.WFHame = item["WFHame"].ToString();

                list.Add(newobj);

            }
            return list;
        }


        //component
        public static List<SP_QC_MasterAnalyz> EXECSP_QC_MasterAnalyze_Comp(string Line, string Project, string Style, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {

            DataTable dt = EXECSP_QC_MasterAnalyzeDT_Comp(Line, Project, Style, QNNo, QC_timeForm, QC_timeTo, LangID);

            List<SP_QC_MasterAnalyz> list = new List<SP_QC_MasterAnalyz>();
            foreach (DataRow item in dt.Rows)
            {
                SP_QC_MasterAnalyz newobj = new SP_QC_MasterAnalyz();
                newobj.WFID = item["WFID"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.CheckQty = item["CheckQty"] is DBNull ? 0 : Convert.ToInt32(item["CheckQty"]);
                newobj.P = item["P"] is DBNull ? 0 : Convert.ToInt32(item["P"]);
                newobj.F = item["F"] is DBNull ? 0 : Convert.ToInt32(item["F"]);
                newobj.U = item["U"] is DBNull ? 0 : Convert.ToInt32(item["U"]);
                newobj.S = item["S"] is DBNull ? 0 : Convert.ToInt32(item["S"]);
                newobj.CP = item["CP"] is DBNull ? 0 : Convert.ToInt32(item["CP"]);
                newobj.EV = item["EV"] is DBNull ? 0 : Convert.ToInt32(item["EV"]);
                newobj.MA = item["MA"] is DBNull ? 0 : Convert.ToInt32(item["MA"]);
                newobj.WS = item["WS"] is DBNull ? 0 : Convert.ToInt32(item["WS"]);
                newobj.Other = item["Other"] is DBNull ? 0 : Convert.ToInt32(item["Other"]);
                newobj.OPTName = item["OPTName"].ToString();
                newobj.WFHame = item["WFHame"].ToString();

                list.Add(newobj);

            }
            return list;
        }



        public static List<SP_QC_MasterAnalyz> EXECSP_QC_MasterAnalyze2(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            DataTable dt = EXECSP_QC_MasterAnalyzeDT2(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID);


            List<SP_QC_MasterAnalyz> list = new List<SP_QC_MasterAnalyz>();
            foreach (DataRow item in dt.Rows)
            {
                SP_QC_MasterAnalyz newobj = new SP_QC_MasterAnalyz();
                newobj.WFID = item["WFID"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.CheckQty = item["CheckQty"] is DBNull ? 0 : Convert.ToInt32(item["CheckQty"]);
                newobj.P = item["P"] is DBNull ? 0 : Convert.ToInt32(item["P"]);
                newobj.F = item["F"] is DBNull ? 0 : Convert.ToInt32(item["F"]);
                newobj.U = item["U"] is DBNull ? 0 : Convert.ToInt32(item["U"]);
                newobj.S = item["S"] is DBNull ? 0 : Convert.ToInt32(item["S"]);
                newobj.CP = item["CP"] is DBNull ? 0 : Convert.ToInt32(item["CP"]);
                newobj.EV = item["EV"] is DBNull ? 0 : Convert.ToInt32(item["EV"]);
                newobj.MA = item["MA"] is DBNull ? 0 : Convert.ToInt32(item["MA"]);
                newobj.WS = item["WS"] is DBNull ? 0 : Convert.ToInt32(item["WS"]);
                newobj.FPY = item["FPY"] is DBNull ? 0 : Convert.ToDouble(item["FPY"]);
                newobj.Other = item["Other"] is DBNull ? 0 : Convert.ToInt32(item["Other"]);
                newobj.OPTName = item["OPTName"].ToString();
                newobj.WFHame = item["WFHame"].ToString();
                newobj.Line = item["Line"].ToString();
                newobj.Project = item["Project"].ToString();
                newobj.CustStyle = item["CustStyle"].ToString();
                //newobj.ReCheck = item["ReCheck"].ToString();

                list.Add(newobj);

            }
            return list;
        }

        /*joseph add: For component */
        public static DataSet EXECSP_QC_MasterAnalyzeComp(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID, string Flag)
        {
            DataSet ds = EXECSP_QC_MasterAnalyzeDT_Comp(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID, Flag);
            return ds;
        }


        /*joseph add */

        public static DataSet EXECSP_QC_MasterAnalyze2B(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID,string Flag)
        {
            DataSet ds = EXECSP_QC_MasterAnalyzeDT2A(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID,Flag);
            return ds;
        }


        public static List<Proc_MasterAnalyzResult> EXECSP_QC_MasterAnalyze2A(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID,string Flag)
        {
            DataSet ds = EXECSP_QC_MasterAnalyzeDT2A(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID,Flag);


            List<Proc_MasterAnalyzResult> list = new List<Proc_MasterAnalyzResult>();
            foreach (DataRow item in ds.Tables[0].Rows)
            {
                Proc_MasterAnalyzResult newobj = new Proc_MasterAnalyzResult();
                newobj.WFID = item["WFID"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.OPTName = item["OPTName"].ToString();
                newobj.WFHame = item["WFHame"].ToString();
                newobj.Line = item["Line"].ToString();
                newobj.Project = item["Project"].ToString();
                newobj.CustStyle = item["CustStyle"].ToString();

                newobj.AuditTotal = item["AuditTotal"] is DBNull ? 0 : Convert.ToInt32(item["AuditTotal"]);


                newobj.TotalCheckTimes = item["totalchktimes"] is DBNull ? 0 : Convert.ToInt32(item["totalchktimes"]);
                newobj.ReCheckTimes = item["rechecktimes"] is DBNull ? 0 : Convert.ToInt32(item["rechecktimes"]);

                newobj.FirsPassTimes = item["firstpasstimes"] is DBNull ? 0 : Convert.ToInt32(item["firstpasstimes"]);
                newobj.ReCheckPassTimes = item["recheckpasstimes"] is DBNull ? 0 : Convert.ToInt32(item["recheckpasstimes"]);
                newobj.FirstPassQty = item["FirstPassQty"] is DBNull ? 0 : Convert.ToInt32(item["FirstPassQty"]);
                newobj.FPY = item["FPY"] is DBNull ? 0 : Convert.ToDouble(item["FPY"]);
                newobj.IsPass = item["IPY"].ToString();


                newobj.P_Qty = item["P_Qty"] is DBNull ? 0 : Convert.ToInt32(item["P_Qty"]);
                newobj.F_Qty = item["F_Qty"] is DBNull ? 0 : Convert.ToInt32(item["F_Qty"]);
                newobj.U_Qty = item["U_Qty"] is DBNull ? 0 : Convert.ToInt32(item["U_Qty"]);
                newobj.S_Qty = item["S_Qty"] is DBNull ? 0 : Convert.ToInt32(item["S_Qty"]);
                newobj.QNQty = item["qn_qty"] is DBNull ? 0 : Convert.ToInt32(item["qn_qty"]);
                newobj.QNQty_Total = item["qnqty_total"] is DBNull ? 0 : Convert.ToInt32(item["qnqty_total"]);




                list.Add(newobj);

            }
            return list;
        }

        public static DataSet EXECSP_sp_WorkforceAnalyze(string Factory, string Workshop, DateTime QC_timeForm, DateTime QC_timeTo, string symbol, string grade)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            string Sqlstr = "exec [sp_WorkforceAnalyze]  '{0}', '{1}', '{2}',  '{3}', '{4}',{5}";
            Sqlstr = string.Format(Sqlstr, Factory, Workshop, QC_timeForm.ToString("yyyy-MM-dd"), QC_timeTo.ToString("yyyy-MM-dd"), symbol, grade);
            DataSet ds = context.ExecuteDataSet(Sqlstr, new DataSet(), "dtOpsSpecSheet");

            return ds;
        }



        public static DataTable EXECSP_QC_MasterAnalyzeDT(string Line, string Project, string Style, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SP_QC_MasterAnalyze", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 8));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QNNo", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@QNNo"].Value = QNNo;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        //Componet
        public static DataTable EXECSP_QC_MasterAnalyzeDT_Comp(string Line, string Project, string Style, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SP_QC_MasterAnalyze_Comp", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 8));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QNNo", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@QNNo"].Value = QNNo;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }


        public static DataTable EXECSP_QC_MasterAnalyzeDT2(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("SP_QC_MasterAnalyze2", cn);

            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Factory"].Value = Factory;
            da.SelectCommand.Parameters["@WorkShop"].Value = WorkShop;
            da.SelectCommand.Parameters["@Customer"].Value = Customer;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }





        public static DataSet EXECSP_QC_MasterAnalyzeDT2A(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID,string Flag)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

           // da.SelectCommand = new SqlCommand("Proc_MasterAnalyze", cn); 2/10 remark
           // da.SelectCommand = new SqlCommand("Proc_MasterAnalyze_V2", cn);
            da.SelectCommand = new SqlCommand("Proc_MasterAnalyze_V8", cn); //以次數計算FPY
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));

            da.SelectCommand.Parameters["@Factory"].Value = Factory;
            da.SelectCommand.Parameters["@WorkShop"].Value = WorkShop;
            da.SelectCommand.Parameters["@Customer"].Value = Customer;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;
            da.SelectCommand.Parameters["@Flag"].Value = Flag;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            // return ds.Tables[0];
            return ds;

        }


        public static DataSet EXECSP_QC_MasterAnalyzeDT_Comp(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID, string Flag)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_MasterAnalyze", cn); 2/10 remark
            // da.SelectCommand = new SqlCommand("Proc_MasterAnalyze_V2", cn);
            da.SelectCommand = new SqlCommand("Proc_MasterAnalyze_V4", cn); //組件&以次數計算FPY
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));

            da.SelectCommand.Parameters["@Factory"].Value = Factory;
            da.SelectCommand.Parameters["@WorkShop"].Value = WorkShop;
            da.SelectCommand.Parameters["@Customer"].Value = Customer;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;
            da.SelectCommand.Parameters["@Flag"].Value = Flag;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            // return ds.Tables[0];
            return ds;

        }


        public static List<DefectSummaryResult> GetDefectSummary(string factory, string Line, string datefrom, string dateto, string langid)
        {

            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string connstr = context.Connection.ConnectionString; 

            DataTable dt = EXECSP_Defect_SummaryDT(factory, Line, datefrom, dateto, langid);

            List<DefectSummaryResult> list = new List<DefectSummaryResult>();
            foreach (DataRow item in dt.Rows)
            {
                DefectSummaryResult newobj = new DefectSummaryResult();
                newobj.Line = item["Line"].ToString();
                newobj.Custmer = item["Custmer"].ToString();
                newobj.CustStyle = item["CustStyle"].ToString();
                newobj.OperCode = item["OperCode"].ToString();
                newobj.OperName = item["OperName"].ToString();
                newobj.ProjNo = item["ProjNo"].ToString();

                newobj.Worker =item["Worker"] is DBNull ? "": item["Worker"].ToString();
                newobj.DefectCode = item["DefectCode"] is DBNull ? "": item["DefectCode"].ToString();
                newobj.DefectName = item["DefectName"] is DBNull ? "":item["DefectName"].ToString();

                newobj.AuditQty = item["AuditQty"] is DBNull ? 0 : Convert.ToInt32(item["AuditQty"]);
                newobj.DefectQty = item["DefectQty"] is DBNull ? 0 : Convert.ToInt32(item["DefectQty"]);
                newobj.PerPass = item["PerPass"] is DBNull ? 0 : Convert.ToDecimal(item["PerPass"]);
                newobj.PointQty = item["PointQty"] is DBNull ? 0 : Convert.ToInt32(item["PointQty"]);

                list.Add(newobj);

            }
            return list;
        }



        /*Defect Analyze Report -> for process */

        public static List<DefectAnalyzeResult> GetDefectAnalyze(string Factory, string WorkShop, string Customer, string Style, string Project,
             string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {

            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string connstr = context.Connection.ConnectionString;

            DataTable dt = EXECSP_DefectAnalyze(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID);

            List<DefectAnalyzeResult> list = new List<DefectAnalyzeResult>();
            foreach (DataRow item in dt.Rows)
            {
                DefectAnalyzeResult newobj = new DefectAnalyzeResult();
                newobj.Line = item["Line"].ToString();
                newobj.Project = item["Project"].ToString();
                newobj.Style = item["Style"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.OptName = item["OptName"].ToString();



                newobj.DefectCode = item["DefectCode"] is DBNull ? "" : item["DefectCode"].ToString();
                newobj.DefectName = item["DefectName"] is DBNull ? "" : item["DefectName"].ToString();

                newobj.CheckTimes = item["CheckTimes"] is DBNull ? 0 : Convert.ToInt32(item["CheckTimes"]);
                newobj.Frequency = item["Frequency"] is DBNull ? 0 : Convert.ToInt32(item["Frequency"]);
                newobj.ImgUrl = item["ImgUrl"] is DBNull ? "" : item["ImgUrl"].ToString();


                list.Add(newobj);

            }
            return list;
        }



        public static DataTable EXECSP_DefectAnalyze(string Factory, string WorkShop, string Customer, string Style, string Project, 
             string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_DefectAnalyze", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Factory"].Value = Factory;
            da.SelectCommand.Parameters["@WorkShop"].Value = WorkShop;
            da.SelectCommand.Parameters["@Customer"].Value = Customer;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }





        /*Defect Analyze Report -> for component */

        public static List<DefectAnalyzeResult> GetDefectAnalyze_Comp(string Factory, string WorkShop, string Customer, string Style, string Project,
             string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {

            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string connstr = context.Connection.ConnectionString;

            DataTable dt = EXECSP_DefectAnalyze_Comp(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, LangID);

            List<DefectAnalyzeResult> list = new List<DefectAnalyzeResult>();
            foreach (DataRow item in dt.Rows)
            {
                DefectAnalyzeResult newobj = new DefectAnalyzeResult();
                newobj.Line = item["Line"].ToString();
                newobj.Project = item["Project"].ToString();
                newobj.Style = item["Style"].ToString();
                newobj.OptCode = item["OptCode"].ToString();
                newobj.OptName = item["OptName"].ToString();



                newobj.DefectCode = item["DefectCode"] is DBNull ? "" : item["DefectCode"].ToString();
                newobj.DefectName = item["DefectName"] is DBNull ? "" : item["DefectName"].ToString();

                newobj.CheckTimes = item["CheckTimes"] is DBNull ? 0 : Convert.ToInt32(item["CheckTimes"]);
                newobj.Frequency = item["Frequency"] is DBNull ? 0 : Convert.ToInt32(item["Frequency"]);
                newobj.ImgUrl = item["ImgUrl"] is DBNull ? "" : item["ImgUrl"].ToString();


                list.Add(newobj);

            }
            return list;
        }

        public static DataTable EXECSP_DefectAnalyze_Comp(string Factory, string WorkShop, string Customer, string Style, string Project,
             string Line, DateTime QC_timeForm, DateTime QC_timeTo, string LangID)
        {
            //MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            //string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_DefectAnalyze_Comp", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Style", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Project", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeForm", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@QC_timeTo", SqlDbType.VarChar));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LangID", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Factory"].Value = Factory;
            da.SelectCommand.Parameters["@WorkShop"].Value = WorkShop;
            da.SelectCommand.Parameters["@Customer"].Value = Customer;
            da.SelectCommand.Parameters["@Style"].Value = Style;
            da.SelectCommand.Parameters["@Project"].Value = Project;
            da.SelectCommand.Parameters["@Line"].Value = Line;
            da.SelectCommand.Parameters["@QC_timeForm"].Value = QC_timeForm.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@QC_timeTo"].Value = QC_timeTo.ToString("yyyy-MM-dd");
            da.SelectCommand.Parameters["@LangID"].Value = LangID;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }





        public static DataTable EXECSP_Defect_SummaryDT(string factory, string Line, string datefrom, string dateto, string LangID)
        {
           // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
           // string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_DefectSummyByDay", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@LineCode", SqlDbType.VarChar, 50));
            da.SelectCommand.Parameters.Add(new SqlParameter("@DateFrom", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@DateTo", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@Langid", SqlDbType.VarChar,2));

            da.SelectCommand.Parameters["@Factory"].Value = factory;
            da.SelectCommand.Parameters["@LineCode"].Value = Line;
            da.SelectCommand.Parameters["@DateFrom"].Value = datefrom;
            da.SelectCommand.Parameters["@DateTo"].Value = dateto;
            da.SelectCommand.Parameters["@Langid"].Value = LangID;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        //AQL&Full Audit拒收超5%
        public static DataTable GetRefuseList(string factory, int rtype, string datefrom, string dateto)
        {
            // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            // string sqlstr = context.Connection.ConnectionString;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_RefuseReport", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 20));
            da.SelectCommand.Parameters.Add(new SqlParameter("@ReportType", SqlDbType.Int));
            da.SelectCommand.Parameters.Add(new SqlParameter("@StartDate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters.Add(new SqlParameter("@EndDate", SqlDbType.VarChar, 10));

            da.SelectCommand.Parameters["@Factory"].Value = factory;
            da.SelectCommand.Parameters["@ReportType"].Value = rtype;
            da.SelectCommand.Parameters["@StartDate"].Value = datefrom;
            da.SelectCommand.Parameters["@EndDate"].Value = dateto;
    

            da.SelectCommand.CommandTimeout = 10000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds.Tables[0];
        }

        public static List<Proc_TrafficSummaryResult> GetTrafficData(string execdate)
        {
            List<Proc_TrafficSummaryResult> lsttraffic = new List<Proc_TrafficSummaryResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
            //   da.SelectCommand = new SqlCommand("Proc_TrafficReport_Test", cn);
            da.SelectCommand = new SqlCommand("Proc_TrafficReport_New", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = execdate;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            DataRow[] workshops = db.Select("line is null");
            for (int i = 0; i < workshops.Length; i++)
            {
                DataRow dr = workshops[i];
                Proc_TrafficSummaryResult traffic = new Proc_TrafficSummaryResult();
                traffic.Factory = dr["Factory"].ToString();
                traffic.Section = dr["Workshop"].ToString();
                traffic.TTL_Val_Y = dr["ttl_val_y"] != DBNull.Value ? int.Parse(dr["ttl_val_y"].ToString()) : 0;
                traffic.TTL_Val_R = dr["ttl_val_r"] != DBNull.Value ? int.Parse(dr["ttl_val_r"].ToString()) : 0;
                traffic.OS_Val_Y = dr["os_val_y"] != DBNull.Value ? int.Parse(dr["os_val_y"].ToString()) : 0;
                traffic.OS_Val_R = dr["os_val_r"] != DBNull.Value ? int.Parse(dr["os_val_r"].ToString()) : 0;

                traffic.WSCount = dr["wstotal"] != DBNull.Value ? int.Parse(dr["wstotal"].ToString()) : 0;

                DataRow[] lines = db.Select("workshop='" + traffic.Section + "' and line is not null");
                foreach (DataRow drow in lines)
                {

                    TrafficBasicBO bo = new TrafficBasicBO();
                    bo.Section = drow["line"].ToString();
                    bo.TTL_Val_Y = drow["ttl_val_y"] != DBNull.Value ? int.Parse(drow["ttl_val_y"].ToString()) : 0;
                    bo.TTL_Val_R = drow["ttl_val_r"] != DBNull.Value ? int.Parse(drow["ttl_val_r"].ToString()) : 0;
                    bo.OS_Val_Y = drow["os_val_y"] != DBNull.Value ? int.Parse(drow["os_val_y"].ToString()) : 0;
                    bo.OS_Val_R = drow["os_val_r"] != DBNull.Value ? int.Parse(drow["os_val_r"].ToString()) : 0;
                    traffic.TrafficBasicBOs.Add(bo);
                }

                lsttraffic.Add(traffic);
            }

            return lsttraffic;


        }


    //    public static List<Proc_WorkShopAnalysiskResult> GetWorkShopAnalyData(string execdate)
        public static List<Proc_WorkShopAnalysiskResult> GetWorkShopAnalyData(string execdate,string enddate,string factory,string flag)
        {
            List<Proc_WorkShopAnalysiskResult> lstauditwk = new List<Proc_WorkShopAnalysiskResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
           // da.SelectCommand = new SqlCommand("Proc_WorkShopAnalysis", cn); use the line when test
            //da.SelectCommand = new SqlCommand("Proc_WorkShopAnalysis_Group", cn);
            //da.SelectCommand = new SqlCommand("Proc_WorkShopAnalysis_Group_V2", cn); //17/3/3 remark
            
            //da.SelectCommand = new SqlCommand("Proc_WorkShopAnalysis_Group_V3", cn);
            da.SelectCommand = new SqlCommand("Proc_WorkShopAnalysis_Group", cn);  //2018-01-05由David修改

            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@fac", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@fac"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = execdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                Proc_WorkShopAnalysiskResult auditwk = new Proc_WorkShopAnalysiskResult();
                auditwk.Factory = dr["Factory"].ToString();
                auditwk.WorkShop = dr["Workshop"].ToString();

                auditwk.AllChkQty = dr["AllChkQty"] != DBNull.Value ? int.Parse(dr["AllChkQty"].ToString()) : 0;

                auditwk.AllPassQty = dr["AllPassQty"] != DBNull.Value ? int.Parse(dr["AllPassQty"].ToString()) : 0; //當日重檢數

                auditwk.OneFailQty = dr["OneFailQty"] != DBNull.Value ? int.Parse(dr["OneFailQty"].ToString()) : 0;
                auditwk.TwoFailQty = dr["TwoFailQty"] != DBNull.Value ? int.Parse(dr["TwoFailQty"].ToString()) : 0;
                auditwk.ThreeFailQty = dr["ThreeFailQty"] != DBNull.Value ? int.Parse(dr["ThreeFailQty"].ToString()) : 0;
                auditwk.FourFailQty = dr["FourFailQty"] != DBNull.Value ? int.Parse(dr["FourFailQty"].ToString()) : 0;
                auditwk.FiveFailQty = dr["FiveFailQty"] != DBNull.Value ? int.Parse(dr["FiveFailQty"].ToString()) : 0;
                auditwk.SixFailQty = dr["SixFailQty"] != DBNull.Value ? int.Parse(dr["SixFailQty"].ToString()) : 0;
                auditwk.SevenFailQty = dr["SevenFailQty"] != DBNull.Value ? int.Parse(dr["SevenFailQty"].ToString()) : 0;

                //auditwk.GroupBase = dr["groupbase"] != DBNull.Value ? int.Parse(dr["groupbase"].ToString()) : 0;

                auditwk.FirstPassTime = dr["FirstPassTime"] != DBNull.Value ? int.Parse(dr["FirstPassTime"].ToString()) : 0;
                auditwk.FirstChkTime = dr["FirstChkTime"] != DBNull.Value ? int.Parse(dr["FirstChkTime"].ToString()) : 0;

                auditwk.FistLight = dr["FistLight"] != DBNull.Value ? int.Parse(dr["FistLight"].ToString()) : 0;
                auditwk.RepeatLight = dr["RepeatLight"] != DBNull.Value ? int.Parse(dr["RepeatLight"].ToString()) : 0;
                auditwk.FirstPass = dr["FirstPass"] != DBNull.Value ? int.Parse(dr["FirstPass"].ToString()) : 0;
                auditwk.SecondPass = dr["SecondPass"] != DBNull.Value ? int.Parse(dr["SecondPass"].ToString()) : 0;

                auditwk.ZeroDefectQty = dr["ZeroDefectQty"] != DBNull.Value ? int.Parse(dr["ZeroDefectQty"].ToString()) : 0;
                auditwk.OneDefectQty = dr["OneDefectQty"] != DBNull.Value ? int.Parse(dr["OneDefectQty"].ToString()) : 0;
                auditwk.TwoDefectQty = dr["TwoDefectQty"] != DBNull.Value ? int.Parse(dr["TwoDefectQty"].ToString()) : 0;

                lstauditwk.Add(auditwk);
            }
            return lstauditwk;
        }


        //審定員每日巡審定工作分析報告
       // public static List<Proc_AuditorWorkResult> GetAuditWorkingcData(string execdate,string factory)
        public static List<Proc_AuditorWorkResult> GetAuditWorkingcData(string execdate, string factory,string flag)
        {
            List<Proc_AuditorWorkResult> lstauditwk = new List<Proc_AuditorWorkResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
            da.SelectCommand = new SqlCommand("Proc_AuditorWorkAnalysis", cn);
           // da.SelectCommand = new SqlCommand("Proc_AuditorWorkAnalysis_Test", cn);

           // da.SelectCommand = new SqlCommand("Proc_AuditorWorkAnalysis_Test", cn); using the line when test
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@fac", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@fac"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = execdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            DateTime? _tm =null;
            decimal SumAve=0;
            decimal aa;
           // DataRow[] workshops = db.Select("line is null");
            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                Proc_AuditorWorkResult auditwk = new Proc_AuditorWorkResult();
                auditwk.Factory = dr["Factory"].ToString();
                auditwk.WorkShop = dr["Workshop"].ToString();
                auditwk.Auditor = dr["Auditor"].ToString();

                auditwk.StartTime = dr["starttime"] != DBNull.Value ? DateTime.Parse(dr["starttime"].ToString()) : _tm;
                auditwk.EndTime = dr["endtime"] != DBNull.Value ? DateTime.Parse(dr["endtime"].ToString()) : _tm;

                //auditwk.Auditor = dr["Auditor"].ToString();

                auditwk.ReauditTimes = dr["time_reaudit"] != DBNull.Value ? int.Parse(dr["time_reaudit"].ToString()) : 0;

                auditwk.ReauditTimes_Yt = dr["time_reaudit_yt"] != DBNull.Value ? int.Parse(dr["time_reaudit_yt"].ToString()) : 0; //當日重檢數

                auditwk.AllTimes = dr["time_check"] != DBNull.Value ? int.Parse(dr["time_check"].ToString()) : 0;


                auditwk.time_reaudit = dr["time_reaudit"] != DBNull.Value ? int.Parse(dr["time_reaudit"].ToString()) : 0;
                auditwk.TotalHour = dr["TotalHour"] != DBNull.Value ? decimal.Parse(dr["TotalHour"].ToString()) : 0;
                auditwk.AveExamUsedTime = dr["AveExamUsedTime"] != DBNull.Value ? dr["AveExamUsedTime"].ToString() + " min." : "0.00 min.";
                auditwk.AveExamUsedTimeSum = dr["AveSum"] != DBNull.Value ? dr["AveSum"].ToString() + " min." : "0.00  min.";

                auditwk.SeqNo = dr["SeqNo"] != DBNull.Value ? int.Parse(dr["SeqNo"].ToString()) : 0;
                auditwk.ExamTotalTime = dr["ExamTotalTime"] != DBNull.Value ? int.Parse(dr["ExamTotalTime"].ToString()) : 0;
                
                //auditwk.FormalTimes =

                //auditwk.TTL_Val_R = dr["ttl_val_r"] != DBNull.Value ? int.Parse(dr["ttl_val_r"].ToString()) : 0;
                //auditwk.OS_Val_Y = dr["os_val_y"] != DBNull.Value ? int.Parse(dr["os_val_y"].ToString()) : 0;
                //auditwk.OS_Val_R = dr["os_val_r"] != DBNull.Value ? int.Parse(dr["os_val_r"].ToString()) : 0;

                //auditwk.WSCount = dr["wstotal"] != DBNull.Value ? int.Parse(dr["wstotal"].ToString()) : 0;

                //DataRow[] lines = db.Select("workshop='" + auditwk.Section + "' and line is not null");


                lstauditwk.Add(auditwk);
            }

            return lstauditwk;


        }


        //public static DataTable EXECSP_TrafficInfo()
        //public static List<Proc_TrafficSummaryResult> GetTrafficData()
        //public static List<Proc_TrafficSummaryResult> GetTrafficData_New(string execdate,string factory,string flag)
        public static List<Proc_TrafficSummaryResult> GetTrafficData_New(string execdate, string factory)
        {
            List<Proc_TrafficSummaryResult> lsttraffic = new List<Proc_TrafficSummaryResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
          //  da.SelectCommand = new SqlCommand("Proc_TrafficReport_Test", cn); using the line when test
            da.SelectCommand = new SqlCommand("Proc_TrafficReport_New", cn);
            //da.SelectCommand = new SqlCommand("Proc_TrafficReport_New_V2", cn);

            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@fac", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@fac"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = execdate;

            //da.SelectCommand.Parameters.Add(new SqlParameter("@flag", SqlDbType.VarChar, 1));
            //da.SelectCommand.Parameters["@flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            DataRow[] workshops = db.Select("line is null");
            for (int i = 0; i < workshops.Length; i++)
            {
                DataRow dr = workshops[i];
                Proc_TrafficSummaryResult traffic = new Proc_TrafficSummaryResult();
                traffic.Factory = dr["Factory"].ToString();
                traffic.Section = dr["Workshop"].ToString();
                traffic.TTL_Val_Y = dr["ttl_val_y"] != DBNull.Value ? int.Parse(dr["ttl_val_y"].ToString()) : 0;
                traffic.TTL_Val_R = dr["ttl_val_r"] != DBNull.Value ? int.Parse(dr["ttl_val_r"].ToString()) : 0;
                //traffic.OS_Val_Y = dr["os_val_y"] != DBNull.Value ? int.Parse(dr["os_val_y"].ToString()) : 0;
                traffic.OS_Val_Y_Cur = dr["os_val_y_cur"] != DBNull.Value ? int.Parse(dr["os_val_y_cur"].ToString()) : 0;
                traffic.OS_Val_Y_B4 = dr["os_val_y_b4"] != DBNull.Value ? int.Parse(dr["os_val_y_b4"].ToString()) : 0;

                traffic.OS_Val_R_Cur = dr["os_val_r_cur"] != DBNull.Value ? int.Parse(dr["os_val_r_cur"].ToString()) : 0;
                traffic.OS_Val_R_B4 = dr["os_val_r_b4"] != DBNull.Value ? int.Parse(dr["os_val_r_b4"].ToString()) : 0;

                traffic.WSCount = dr["wstotal"] != DBNull.Value ? int.Parse(dr["wstotal"].ToString()) : 0;

                DataRow[] lines = db.Select("workshop='" + traffic.Section+"' and line is not null");
                foreach (DataRow drow in lines)
                { 
                   
                    TrafficBasicBO bo =new TrafficBasicBO();
                    bo.Section=drow["line"].ToString();
                    bo.TTL_Val_Y = drow["ttl_val_y"] != DBNull.Value ? int.Parse(drow["ttl_val_y"].ToString()) : 0;
                    bo.TTL_Val_R = drow["ttl_val_r"] != DBNull.Value ? int.Parse(drow["ttl_val_r"].ToString()) : 0;
                    //bo.OS_Val_Y = drow["os_val_y"] != DBNull.Value ? int.Parse(drow["os_val_y"].ToString()) : 0;
                    //bo.OS_Val_R = drow["os_val_r"] != DBNull.Value ? int.Parse(drow["os_val_r"].ToString()) : 0;
                    bo.OS_Val_Y_Cur = drow["os_val_y_cur"] != DBNull.Value ? int.Parse(drow["os_val_y_cur"].ToString()) : 0;
                    bo.OS_Val_R_Cur = drow["os_val_r_cur"] != DBNull.Value ? int.Parse(drow["os_val_r_cur"].ToString()) : 0;

                    bo.OS_Val_Y_B4 = drow["os_val_y_b4"] != DBNull.Value ? int.Parse(drow["os_val_y_b4"].ToString()) : 0;
                    bo.OS_Val_R_B4 = drow["os_val_r_b4"] != DBNull.Value ? int.Parse(drow["os_val_r_b4"].ToString()) : 0;

                    traffic.TrafficBasicBOs.Add(bo);
                }

                lsttraffic.Add(traffic);
            }

            return lsttraffic;


        }


        public static List<QualityPerformance> GetQualityPerformance( string factory,string workshop,string line,string startdate,string enddate)
        {
            List<QualityPerformance> lstquality = new List<QualityPerformance>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

           // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
            //if (factory=="SL")
              da.SelectCommand = new SqlCommand("Proc_QualityPerformance_SL", cn);
            //else
            //    da.SelectCommand = new SqlCommand("Proc_QualityPerformance_GX", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@WorkShop"].Value = workshop;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@Line"].Value = line;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                QualityPerformance quaper = new QualityPerformance();
                quaper.Factory = dr["Factory"].ToString();
                quaper.WorkShop = dr["Workshop"].ToString();
                quaper.Line = dr["Line"].ToString();

                quaper.Qty_QA = dr["Qty_QA"] != DBNull.Value ? int.Parse(dr["Qty_QA"].ToString()) : 0;
                quaper.Qty_QA_Rej = dr["Qty_QA_Rej"] != DBNull.Value ? int.Parse(dr["Qty_QA_Rej"].ToString()) : 0;

                quaper.Qty_AQL = dr["Qty_AQL"] != DBNull.Value ? int.Parse(dr["Qty_AQL"].ToString()) : 0;
                quaper.Qty_AQL_Rej = dr["Qty_AQL_Rej"] != DBNull.Value ? int.Parse(dr["Qty_AQL_Rej"].ToString()) : 0;

                quaper.Qty_FAudit = dr["Qty_FAudit"] != DBNull.Value ? int.Parse(dr["Qty_FAudit"].ToString()) : 0;
                quaper.Qty_FAudit_Rej = dr["Qty_FAudit_Rej"] != DBNull.Value ? int.Parse(dr["Qty_FAudit_Rej"].ToString()) : 0;

                quaper.Per_Total =dr["total_per"] != DBNull.Value ?dr["total_per"].ToString():"";
                quaper.Remark = dr["remark"] != DBNull.Value ? dr["remark"].ToString() : "";
                quaper.Per_AQL_XD = dr["per_aql_xd"] != DBNull.Value ? dr["per_aql_xd"].ToString() : "";

                quaper.LineLeader_A = dr["LineLeader_A"] != DBNull.Value ? dr["LineLeader_A"].ToString() : "";
                quaper.Supervisor_A = dr["Supervisor_A"] != DBNull.Value ? dr["Supervisor_A"].ToString() : "";
                quaper.Superintendent_A = dr["Superintendent_A"] != DBNull.Value ? dr["Superintendent_A"].ToString() : "";

                quaper.total_per_group = dr["total_per_group"] != DBNull.Value ? decimal.Parse(dr["total_per_group"].ToString()) : 0;
                quaper.per_aql_xd_group = dr["per_aql_xd_group"] != DBNull.Value ?decimal.Parse(dr["per_aql_xd_group"].ToString()) : 0;

                quaper.Qty_QI = dr["Qty_QI"] != DBNull.Value ? int.Parse(dr["Qty_QI"].ToString()) : 0;
                quaper.Qty_QI_Rej = dr["Qty_QI_Rej"] != DBNull.Value ? int.Parse(dr["Qty_QI_Rej"].ToString()) : 0;
                quaper.Qty_FI = dr["Qty_FI"] != DBNull.Value ? int.Parse(dr["Qty_FI"].ToString()) : 0;
                quaper.Qty_FI_Rej = dr["Qty_FI_Rej"] != DBNull.Value ? int.Parse(dr["Qty_FI_Rej"].ToString()) : 0;
                quaper.Per_QI = dr["Per_QI"] != DBNull.Value ? dr["Per_QI"].ToString() : "";
                quaper.Per_FI = dr["Per_FI"] != DBNull.Value ?dr["Per_FI"].ToString() : "";
                quaper.Per_FI_Converted = dr["Per_FI_Converted"] != DBNull.Value ?dr["Per_FI_Converted"].ToString() : "";
                quaper.total_per_QI = dr["total_per_QI"] != DBNull.Value ? dr["total_per_QI"].ToString() : "";
        
                lstquality.Add(quaper);
            }

            return lstquality;


        }

        public static List<QualityPerformanceOperationday> GetQualityOperationday(string factory, string workshop, string line, string startdate, string enddate)
        {
            List<QualityPerformanceOperationday> lstquality = new List<QualityPerformanceOperationday>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
            //if (factory == "SL")
                da.SelectCommand = new SqlCommand("Proc_QualityPerformance_SL", cn);
            //else
            //    da.SelectCommand = new SqlCommand("Proc_QualityPerformance_GX", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@WorkShop", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@WorkShop"].Value = workshop;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@Line"].Value = line;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[1];
            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                QualityPerformanceOperationday quaper = new QualityPerformanceOperationday();
                quaper.NoOperationdays = dr["NoOperationdays"] != DBNull.Value ? int.Parse(dr["NoOperationdays"].ToString()) : 0;
                quaper.Operationdays = dr["Operationdays"] != DBNull.Value ? int.Parse(dr["Operationdays"].ToString()) : 0;
                lstquality.Add(quaper);
            }

            return lstquality;


        }





        public static List<FullAuditQualityRptResult> GetFullAuditQualityInfo(string factory, int sumtype,string startdate, string enddate,string flag)
        {
            List<FullAuditQualityRptResult> lstquality = new List<FullAuditQualityRptResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
            da.SelectCommand = new SqlCommand("Proc_FullAuditQualityRpt", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            DataTable db = ds.Tables[0];
            for (int i = 0; i < db.Rows.Count; i++)
            {
                DataRow dr = db.Rows[i];
                FullAuditQualityRptResult quaper = new FullAuditQualityRptResult();
                quaper.Factory = dr["Factory"].ToString();
                quaper.Workshop = dr["Workshop"].ToString();
                quaper.Line = dr["Line"].ToString();
                quaper.Customer = dr["Customer"].ToString();
                quaper.BKU = dr["Bku"].ToString();
                quaper.Style = dr["Style"].ToString();
                quaper.YYMM = dr["YYMM"].ToString();
                quaper.MLevel = dr["MLevel"].ToString();

                quaper.MPer = dr["MPer"].ToString();

                quaper.DefectCode = dr["DefectCode"].ToString();
                quaper.DefectQty = dr["DefectQty"] != DBNull.Value ? int.Parse(dr["DefectQty"].ToString()) : 0;
                quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
                quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
                quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

                quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;
               
                lstquality.Add(quaper);
            }

            return lstquality;
        }



        public static DataSet GetFullAuditQuality(string factory, int sumtype, string startdate, string enddate, string flag)
        {
          //  List<FullAuditQualityRptResult> lstquality = new List<FullAuditQualityRptResult>();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
            da.SelectCommand = new SqlCommand("Proc_FullAuditQualityRpt_V1", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds;
        }


     //   public static DataSet GetFullAuditQuality_New(string factory, int sumtype, string startdate, string enddate, string flag,string custlst,string wolst)
        public static DataSet GetFullAuditQuality_New(string factory, int sumtype, string startdate, string enddate, string flag, string custlst, string wolst,string wslist,string linelist)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
           // da.SelectCommand = new SqlCommand("Proc_FullAuditQualityRpt_V1_New", cn);
          //  da.SelectCommand = new SqlCommand("Proc_FullAuditQualityRpt_V2_New", cn);
            da.SelectCommand = new SqlCommand("Proc_FullAuditQualityRpt_V3", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Customer"].Value = custlst;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Wo", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Wo"].Value = wolst;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Workshop", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Workshop"].Value = wslist;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Line"].Value = linelist;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds;
        }

        public static DataSet GetAuditQuality_AQL(string factory, int sumtype, string startdate, string enddate, string flag)
        {


            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            // da.SelectCommand = new SqlCommand("Proc_QualityPerformance", cn);
           // da.SelectCommand = new SqlCommand("Proc_AuditQuality_AQL", cn);
            da.SelectCommand = new SqlCommand("Proc_AuditQuality_AQL_New", cn);
      
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@StartDate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@StartDate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@EndDate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@EndDate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds;
        
        }

//        public static DataSet GetAuditQuality_AQL_New(string factory, int sumtype, string startdate, string enddate, string flag,string custlist,string wolist)
        public static DataSet GetAuditQuality_AQL_New(string factory, int sumtype, string startdate, string enddate, string flag, string custlist, string wolist,string wslist,string linelist)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

           //da.SelectCommand = new SqlCommand("Proc_AuditQuality_AQL_New3", cn);
             da.SelectCommand = new SqlCommand("Proc_AuditQuality_AQL_New31", cn);

            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@StartDate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@StartDate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@EndDate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@EndDate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Customer"].Value = custlist;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Wo", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Wo"].Value = wolist;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Workshop", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Workshop"].Value = wslist;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Line", SqlDbType.VarChar, 1000));
            da.SelectCommand.Parameters["@Line"].Value = linelist;


            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            return ds;

        }


        public static DataSet GetAQLPerfDefectPointListReport(string factory, int sumtype, string startdate, string enddate, string flag, string custlist, string wolist, string wslist, string linelist)
        {
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
             
            string Str=string.Format("exec sp_AQLPerfDefectPointListReport '{0}', '{1}', '{2}' , '{3}' , '{4}' , '{5}' , '{6}' , '{7}'",  factory, sumtype, startdate, enddate,  custlist, wolist, wslist, linelist);
          
            DataSet ds = db.ExecuteDataSet(Str,new DataSet(), "Opt");

            return ds;

        }




        public static DataSet GetFullAuditOnLine(string factory, int sumtype, string startdate, string enddate, string flag)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_FullAuditOnLineRpt", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@SummaryType", SqlDbType.Int));
            da.SelectCommand.Parameters["@SummaryType"].Value = sumtype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.VarChar, 1));
            da.SelectCommand.Parameters["@Flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();

            //DataTable tb1 = ds.Tables[0];
            //for (int i = 0; i < tb1.Rows.Count; i++)
            //{
            //    DataRow dr = tb1.Rows[i];
            //    FullAuditHeadInfo headinfo = new FullAuditHeadInfo();
            //    headinfo.POTotal = dr["pototal"] != DBNull.Value ? int.Parse(dr["pototal"].ToString()) : 0;
            //    headinfo.CheckTotal = dr["checktotal"] != DBNull.Value ? int.Parse(dr["checktotal"].ToString()) : 0;
            //    headinfo.ProductTotal = dr["producttotal"] != DBNull.Value ? int.Parse(dr["producttotal"].ToString()) : 0;
            //    headinfo.LineTotal = dr["linetotal"] != DBNull.Value ? int.Parse(dr["linetotal"].ToString()) : 0;
            //    headinfo.StyleTotal = dr["styletotal"] != DBNull.Value ? int.Parse(dr["styletotal"].ToString()) : 0;
            //    headinfo.CustomerTotal = dr["custtotal"] != DBNull.Value ? int.Parse(dr["custtotal"].ToString()) : 0; 
            //}




            //DataTable db = ds.Tables[1];
            //for (int i = 0; i < db.Rows.Count; i++)
            //{
            //    DataRow dr = db.Rows[i];
            //    FullAuditQualityRptResult quaper = new FullAuditQualityRptResult();
            //    quaper.Factory = dr["Factory"].ToString();
            //    quaper.Workshop = dr["Workshop"].ToString();
            //    quaper.Line = dr["Line"].ToString();
            //    quaper.Customer = dr["Customer"].ToString();
            //    quaper.BKU = dr["Bku"].ToString();
            //    quaper.Style = dr["Style"].ToString();
            //    quaper.YYMM = dr["YYMM"].ToString();
            //    quaper.MLevel = dr["MLevel"].ToString();

            //    quaper.MPer = dr["MPer"].ToString();


            //    quaper.DefectQty = dr["DefectQty"] != DBNull.Value ? int.Parse(dr["DefectQty"].ToString()) : 0;
            //    quaper.DefectTypeTotal = dr["TypeCount"] != DBNull.Value ? int.Parse(dr["TypeCount"].ToString()) : 0;
            //    quaper.ChkTotal = dr["Chktotal"] != DBNull.Value ? int.Parse(dr["Chktotal"].ToString()) : 0;
            //    quaper.ProductTotal = dr["Producttotal"] != DBNull.Value ? int.Parse(dr["Producttotal"].ToString()) : 0;

            //    quaper.MasterTotal = dr["Master_ttl"] != DBNull.Value ? int.Parse(dr["Master_ttl"].ToString()) : 0;

            //    lstquality.Add(quaper);
            //}

            return ds;
        }

        //add by jospeh
        public static List<FullAuditPerformance> GetFullAuditQualitySummary(string factory, string startdate, string enddate, string custlist, string wslist)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();

            da.SelectCommand = new SqlCommand("Proc_FullAuditPerfSummary_New", cn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Factory", SqlDbType.VarChar, 15));
            da.SelectCommand.Parameters["@Factory"].Value = factory;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = startdate;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = enddate;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Customer", SqlDbType.VarChar, 500));
            da.SelectCommand.Parameters["@Customer"].Value = custlist;

            da.SelectCommand.Parameters.Add(new SqlParameter("@Workshop", SqlDbType.VarChar, 500));
            da.SelectCommand.Parameters["@Workshop"].Value = wslist;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();
            DataTable dt = ds.Tables[0];
            List<FullAuditPerformance> _lst = new List<FullAuditPerformance>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                FullAuditPerformance _obj = new FullAuditPerformance();
                

              _obj.Factory = dr["Factory"] != DBNull.Value ? dr["Factory"].ToString() :"";
              _obj.MasterId  = dr["MasterId"] != DBNull.Value ? dr["MasterId"].ToString() :"";
              _obj.QCDate = dr["QCDate"] != DBNull.Value ? dr["QCDate"].ToString() : "";
              _obj.Workshop = dr["Workshop"] != DBNull.Value ? dr["Workshop"].ToString() :"";
              _obj.POList = dr["POList"] != DBNull.Value ? dr["POList"].ToString() :"";
              _obj.BKU = dr["BKU"] != DBNull.Value ? dr["BKU"].ToString() :"";
              _obj.Style = dr["Style"] != DBNull.Value ? dr["Style"].ToString() : "";
              _obj.QCMan = dr["QCMan"] != DBNull.Value ? dr["QCMan"].ToString() : "";
              _obj.IsReaudit = dr["IsReaudit"] != DBNull.Value ? dr["IsReaudit"].ToString() : "";

              _obj.AuditQty=dr["AuditQty"] != DBNull.Value ? int.Parse(dr["AuditQty"].ToString()) : 0;
              _obj.DefectQty_Ttl=dr["DefectQty_Ttl"] != DBNull.Value ? int.Parse(dr["DefectQty_Ttl"].ToString()) : 0;
              _obj.MaxColor=dr["MaxColor"] != DBNull.Value ? int.Parse(dr["MaxColor"].ToString()) : 0;
              _obj.MaxSize =dr["MaxSize"] != DBNull.Value ? int.Parse(dr["MaxSize"].ToString()) : 0;
              _obj.Gam_Ttl =dr["Gam_Ttl"] != DBNull.Value ? int.Parse(dr["Gam_Ttl"].ToString()) : 0;
              _obj.Sample_Ttl =dr["Sample_Ttl"] != DBNull.Value ? int.Parse(dr["Sample_Ttl"].ToString()) : 0;
              _obj.ReauditQty =dr["ReauditQty"] != DBNull.Value ? int.Parse(dr["ReauditQty"].ToString()) : 0;
              _obj.AuditTtl =dr["AuditTtl"] != DBNull.Value ? int.Parse(dr["AuditTtl"].ToString()) : 0;
              _obj.Defect_Major=dr["Defect_Major"] != DBNull.Value ? int.Parse(dr["Defect_Major"].ToString()) : 0;
              _lst.Add(_obj);

            }

            return _lst;
        
        }

        //add by joseph
        public static Dictionary<string, string[]> GetWoAndCustomer(string startdate,string enddate)
        {
           
            //string sqlcust = @"select distinct left(a.customer,4) as customer from [ph.rwo1]..project a where exists (select 1 from qc_master_final where project=a.projectno and datediff(day,[qc_time],getdate())<=100) ";
          //  string sqlcust = @"select distinct customer from [ph.rwo1]..CustomerCode order by customer select distinct wo from qc_master_final where datediff(day,[qc_time],getdate())<=90 order by wo";

            // string sqlA = @"select distinct left(customer,4) as customer from [ph.rwo1]..project where exists (select 1 from qc_master) order by customer ";



            string sqlA="",sqlB ="",sqlWs="",sqlLine="";
            if (enddate != "")
            {
                sqlA = string.Format("select distinct left(aa.customer,4) as customer from [ph.rwo1]..project aa where exists (select 1 from qc_master_final where aa.projectno=project and qc_time between '{0}' and '{1}') order by customer ",startdate,enddate);
                sqlB = string.Format("select distinct wo from qc_master_final where qc_time between '{0}' AND '{1}'", startdate, enddate);
                sqlWs = string.Format("select distinct workshop from qc_master_final where qc_time between '{0}' AND '{1}' order by workshop", startdate, enddate);
                sqlLine = string.Format("select distinct line from qc_master_final where qc_time between '{0}' AND '{1}' order by line", startdate, enddate);
            }
            else
            {
                string _d1 = startdate + " 00:00", _d2 = startdate + " 23:59";
                sqlA = string.Format("select distinct left(aa.customer,4) as customer from [ph.rwo1]..project aa where exists (select 1 from qc_master_final where aa.projectno=project and qc_time between '{0}' and '{1}') order by customer ", _d1, _d2);
                sqlB = string.Format("select distinct wo from qc_master_final where qc_time between '{0}' AND '{1}'", _d1, _d2);

                sqlWs = string.Format("select distinct workshop from qc_master_final where qc_time between '{0}' AND '{1}' order by workshop", _d1, _d2);
                sqlLine = string.Format("select distinct line from qc_master_final where qc_time between '{0}' AND '{1}' order by line", _d1, _d2);
            }

            string sqlsum = sqlA + " " + sqlB+" "+sqlWs+" "+sqlLine;

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
            da.SelectCommand = new SqlCommand(sqlsum, cn);
            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();
            Dictionary<string, string[]> _dicts = new Dictionary<string, string[]>();
            DataTable tb1 = ds.Tables[0];
            DataTable tb2 = ds.Tables[1];
            DataTable tb3 = ds.Tables[2];
            DataTable tb4 = ds.Tables[3];
            string[] _arycust =new string[tb1.Rows.Count];
            string[] _arywo =new string[tb2.Rows.Count];
            string[] _aryws = new string[tb3.Rows.Count];
            string[] _aryline = new string[tb4.Rows.Count];
            int i = 0, j = 0, k = 0, m = 0;
            foreach (DataRow dr in tb1.Rows)
            {
                string _cust = dr["customer"].ToString();
                _arycust[i] = _cust;
                i++;
            }
            _dicts.Add("Customer", _arycust);
            foreach (DataRow dr in tb2.Rows)
            {
                string _wo = dr["wo"].ToString();
                _arywo[j] = _wo;
                j++;

            }
            _dicts.Add("Wo", _arywo);

            foreach (DataRow dr in tb3.Rows)
            {
                string _ws = dr["workshop"].ToString();
                _aryws[k] = _ws;
                k++;

            }
            _dicts.Add("Workshop", _aryws);

            foreach (DataRow dr in tb4.Rows)
            {
                string _line = dr["line"].ToString();
                _aryline[m] = _line;
                m++;

            }
            _dicts.Add("Line", _aryline);
            return _dicts;
                 
        
        }




        /// <summary>
        /// Mobile database connection string
        /// </summary>
        static string _connstr="";
        public static string ConnStr
        {
            get{
                if (_connstr == "")
                {
                   // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                   // _connstr = context.Connection.ConnectionString;
                    _connstr ="Data Source=10.2.1.10;Initial Catalog=PH.MobileQC;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
                }
                return _connstr;
            }                           
        }

    }
}
