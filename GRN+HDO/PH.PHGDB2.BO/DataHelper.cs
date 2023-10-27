using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using PH.Platform.BO;

namespace PH.PHGDB2.BO
{
    public class DataHelper
    {
        static string _connstr = "";
        public static string ConnStr
        {
            get
            {
                if (_connstr == "")
                {
                    // MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                    // _connstr = context.Connection.ConnectionString;
                    _connstr = "Data Source=10.2.1.10;Initial Catalog=PHGDB2;Persist Security Info=True;User ID=ituser;Password=itsystem@2009";
                }
                return _connstr;
            }
        }

        public static DataTable GetPieceInfo(string start, string end, int imptype, int Flag)
        {

            SqlDataAdapter da = new SqlDataAdapter();
            SqlConnection cn = new SqlConnection(ConnStr);
            DataSet ds = new DataSet();
            //  da.SelectCommand = new SqlCommand("Proc_TrafficReport_Test", cn); using the line when test
            da.SelectCommand = new SqlCommand("Proc_PieceDataImport", cn);
            //da.SelectCommand = new SqlCommand("Proc_TrafficReport_New_V2", cn);

            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            da.SelectCommand.Parameters.Add(new SqlParameter("@imptype", SqlDbType.Int));
            da.SelectCommand.Parameters["@imptype"].Value = imptype;

            da.SelectCommand.Parameters.Add(new SqlParameter("@startdate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@startdate"].Value = start;

            da.SelectCommand.Parameters.Add(new SqlParameter("@enddate", SqlDbType.VarChar, 10));
            da.SelectCommand.Parameters["@enddate"].Value = end;


            da.SelectCommand.Parameters.Add(new SqlParameter("@Flag", SqlDbType.Int));
            da.SelectCommand.Parameters["@Flag"].Value = Flag;
            //da.SelectCommand.Parameters.Add(new SqlParameter("@flag", SqlDbType.VarChar, 1));
            //da.SelectCommand.Parameters["@flag"].Value = flag;

            da.SelectCommand.CommandTimeout = 8000;

            cn.Open();
            da.Fill(ds);
            cn.Close();
            cn.Dispose();
            return ds.Tables[0];
        }

        public static List<ByPiece_ReciveItem> GetRecvList(DataTable dt)
        {
            List<ByPiece_ReciveItem> lst = new List<ByPiece_ReciveItem>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ByPiece_ReciveItem item = new ByPiece_ReciveItem();

                item.ReciveItemId = int.Parse(dr["ReciveItemId"].ToString());

                if (dr["DT_Recive"] != DBNull.Value)
                    item.DT_Recive = DateTime.Parse(dr["DT_Recive"].ToString());

                //  item.DT_Recive = dr["dt_recv"] != DBNull.Value ? DateTime.Parse(dr["dt_recv"].ToString()) : DateTime.Now;
                item.Lot_id = dr["Lot_id"] != DBNull.Value ?dr["Lot_id"].ToString() : "";
                item.IDNUM = dr["IDNUM"] != DBNull.Value ? int.Parse(dr["IDNUM"].ToString()) : 0;
                item.ReciveMan = dr["ReciveMan"] != DBNull.Value ? dr["ReciveMan"].ToString() : "";
                item.MaterialType = dr["MaterialType"] != DBNull.Value ? dr["MaterialType"].ToString() : "";
                item.HDONO = dr["HDONO"] != DBNull.Value ? dr["HDONO"].ToString() : "";
                item.Flag = dr["Flag"] != DBNull.Value ?int.Parse( dr["Flag"].ToString()) : 0;
                lst.Add(item);
            }
            return lst;
        }
        //[ByPiece_IssueItem]
        public static List<ByPiece_IssueItem> GetIssuList(DataTable dt)
        {
            List<ByPiece_IssueItem> lst = new List<ByPiece_IssueItem>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ByPiece_IssueItem item = new ByPiece_IssueItem();

                item.IssueItemId = int.Parse(dr["IssueItemId"].ToString());

                if (dr["DT_Issue"] != DBNull.Value)
                    item.DT_Issue = DateTime.Parse(dr["DT_Issue"].ToString());

                item.ProjCode = dr["ProjCode"] != DBNull.Value ? dr["ProjCode"].ToString() : "";

                item.MaterialType = dr["MaterialType"] != DBNull.Value ? dr["MaterialType"].ToString() : "";
                item.IDNUM_M = dr["IDNUM_M"] != DBNull.Value ? int.Parse(dr["IDNUM_M"].ToString()) : 0;
                item.IDNUM_C = dr["IDNUM_C"] != DBNull.Value ? int.Parse(dr["IDNUM_C"].ToString()) : 0;

                //   item.HDONO = dr["hdono"] != DBNull.Value ? dr["hdono"].ToString() : "";
                lst.Add(item);
            }
            return lst;
        }

        //[ByPiece_IssueItem]
        public static List<ByPiece_IssueItem_Text> GetIssuList1(DataTable dt)
        {
            List<ByPiece_IssueItem_Text> lst = new List<ByPiece_IssueItem_Text>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ByPiece_IssueItem_Text item = new ByPiece_IssueItem_Text();

                item.IssueItemId = int.Parse(dr["IssueItemId"].ToString());

                if (dr["DT_Issue"] != DBNull.Value)
                    item.DT_Issue = DateTime.Parse(dr["DT_Issue"].ToString());

                item.ProjCode = dr["ProjCode"] != DBNull.Value ? dr["ProjCode"].ToString() : "";
                item.IDO = dr["IDO"] != DBNull.Value ? dr["IDO"].ToString() : "";
                item.lot_id = dr["lot_id"] != DBNull.Value ? dr["lot_id"].ToString() : "";
                item.MaterialType = dr["MaterialType"] != DBNull.Value ? dr["MaterialType"].ToString() : "";
                item.SAHType = dr["SAHType"] != DBNull.Value ? int.Parse(dr["SAHType"].ToString()) : 0;
                item.ISSUE_QTY = dr["ISSUE_QTY"] != DBNull.Value ? int.Parse(dr["ISSUE_QTY"].ToString()) : 0;
                item.IssueMan = dr["IssueMan"] != DBNull.Value ? dr["IssueMan"].ToString() : "";
                item.Flag =  dr["Flag"] != DBNull.Value ? int.Parse(dr["Flag"].ToString()) : 0;
                //   item.HDONO = dr["hdono"] != DBNull.Value ? dr["hdono"].ToString() : "";
                lst.Add(item);
            }
            return lst;
        }


        public static List<ByPiece_ReturnItem> GetReturnList(DataTable dt)
        {
            List<ByPiece_ReturnItem> lst = new List<ByPiece_ReturnItem>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ByPiece_ReturnItem item = new ByPiece_ReturnItem();

                item.ReturnItemId = int.Parse(dr["ReturnItemId"].ToString());

                if (dr["DT_Return"] != DBNull.Value)
                    item.DT_Return = DateTime.Parse(dr["DT_Return"].ToString());

                //item.DT_Return = dr["dt_return"] != DBNull.Value ? DateTime.Parse(dr["dt_return"].ToString()) : DateTime.Now;

                item.IDNUM = dr["IDNUM"] != DBNull.Value ? int.Parse(dr["IDNUM"].ToString()) : 0;
                item.lot_id = dr["lot_id"] != DBNull.Value ? dr["lot_id"].ToString() : "";
                item.MaterialType = dr["MaterialType"] != DBNull.Value ? dr["MaterialType"].ToString() : "";
                item.ReturnNo = dr["ReturnNo"] != DBNull.Value ? dr["ReturnNo"].ToString() : "";
                item.ReturnMan = dr["ReturnMan"] != DBNull.Value ? dr["ReturnMan"].ToString() : "";
                item.Flag = dr["Flag"] != DBNull.Value ? int.Parse(dr["Flag"].ToString()) : 0;
                lst.Add(item);
            }
            return lst;
        }

        public static List<ByPiece_RCItem> GetRCList(DataTable dt)
        {
            List<ByPiece_RCItem> lst = new List<ByPiece_RCItem>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                ByPiece_RCItem item = new ByPiece_RCItem();

                item.OID = int.Parse(dr["OID"].ToString());

                if (dr["RCDate"] != DBNull.Value)
                    item.RCDate = DateTime.Parse(dr["RCDate"].ToString());

                item.RCQty = dr["RCQty"] != DBNull.Value ? int.Parse(dr["RCQty"].ToString()) : 0;
                item.Lot_ID1 = dr["Lot_ID1"] != DBNull.Value ? dr["Lot_ID1"].ToString() : "";
                item.Lot_ID = dr["Lot_ID"] != DBNull.Value ? dr["Lot_ID"].ToString() : "";
                item.MaterialType = dr["MaterialType"] != DBNull.Value ? dr["MaterialType"].ToString() : "";
                item.RCNO = dr["RCNO"] != DBNull.Value ? dr["RCNO"].ToString() : "";
                item.RCMan = dr["RCMan"] != DBNull.Value ? dr["RCMan"].ToString() : "";
                item.Flag = dr["Flag"] != DBNull.Value ? int.Parse(dr["Flag"].ToString()) : 0;
                lst.Add(item);
            }
            return lst;
        }

        //發料
        public static int Insert_Isu(string MaterialType, string ProjCode, DateTime DT_Issue, string IDNUM_M, string IDNUM_C, string OpMan, DateTime OpDate, int Flag)
        {
            if (IDNUM_C == "母") 
            {
                IDNUM_C = "0";
            }
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            string DT_Issue1 = DT_Issue.ToString("yyyy-MM-dd HH:mm:ss");
            string OpDate1 = OpDate.ToString("yyyy-MM-dd HH:mm:ss");
            string SqlStr = "insert into ByPiece_IssueItem_Text(DT_Issue,MaterialType,ProjCode,ISSUE_QTY,SAHType,IsManualInput,OpMan,OpDate)  VALUES ( '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}' , '{8}')";
            SqlStr = string.Format(SqlStr, DT_Issue1, MaterialType, ProjCode, IDNUM_M, IDNUM_C, true, OpMan, OpDate1, Flag);
            return context.ExecuteCommand(SqlStr);

            //IssueItemId	IDO	DT_Issue	MaterialType	ProjCode	ISSUE_QTY	SAHType	Remark	IsManualInput	OpMan	OpDate	lot_id

        }

        //收料
        public static int Insert_Rec(DateTime DT_Recive, string MaterialType, string HDONO, int IDNUM, string OpMan, DateTime OpDate, int Flag)
        {
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            string DT_Recive1 = DT_Recive.ToString("yyyy-MM-dd HH:mm:ss");
            string OpDate1 = OpDate.ToString("yyyy-MM-dd HH:mm:ss");
            string SqlStr = "insert into ByPiece_ReciveItem(DT_Recive, MaterialType, HDONO, IDNUM, IsManualInput, OpMan, OpDate, Flag) VALUES ( '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')";
            SqlStr = string.Format(SqlStr, DT_Recive1, MaterialType, HDONO, IDNUM, true, OpMan, OpDate1, Flag);
            return context.ExecuteCommand(SqlStr);
        }
        
        //退料
        public static int Insert_Ret(DateTime txtDT_Return, string MaterialType, string txtReturnNo, int IDNUM, string OpMan, DateTime OpDate, int Flag)
        {
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            string DT_Return1 = txtDT_Return.ToString("yyyy-MM-dd HH:mm:ss");
            string OpDate1 = OpDate.ToString("yyyy-MM-dd HH:mm:ss");
            string SqlStr = "insert into ByPiece_ReturnItem(MaterialType, ReturnNo, DT_Return, IDNUM, IsManualInput, OpMan, OpDate) VALUES ( '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}' , '{7}' )";
            SqlStr = string.Format(SqlStr, MaterialType, txtReturnNo, DT_Return1, IDNUM, true, OpMan, OpDate1, Flag);
            return context.ExecuteCommand(SqlStr);
        }

        public static int Insert_Rc(DateTime txtDT_Return, string MaterialType, string txtReturnNo, int IDNUM, string OpMan, DateTime OpDate, string IDNUM_M, int Flag)
        {
            if (IDNUM_M == "母")
            {
                IDNUM_M = "0";
            }
            else 
            {
                IDNUM_M = "1";
            }

            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            string DT_Return1 = txtDT_Return.ToString("yyyy-MM-dd HH:mm:ss");
            string OpDate1 = OpDate.ToString("yyyy-MM-dd HH:mm:ss");
            string SqlStr = "insert into ByPiece_RCItem(MaterialType, RCNO, RCDate, RCQty, IsManualInput, OpMan, OpDate, Lot_ID) VALUES ( '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}' , '{8}')";
            SqlStr = string.Format(SqlStr, MaterialType, txtReturnNo, DT_Return1, IDNUM, true, OpMan, OpDate1, IDNUM_M, Flag);
            return context.ExecuteCommand(SqlStr);
        }


        public static DataTable GetIDO_Project(string IDO)
        {
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();

            string SqlStr = @"select  PROJECT_NO from 
                                        (
                                            select distinct PROJECT_NO from dbo.PB_GATEPASS where IDO = '{0}'
                                            union
                                            select  distinct PROJECT_NO from dbo.PB_GATEPASS_Unplanned  where IDO = '{0}'
                                         ) as a";
            SqlStr = string.Format(SqlStr, IDO);
            return context.ExecuteDataTable(SqlStr,"");
        }

        public static DataTable GetIDO_Material(string IDO)
        {
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();

            string SqlStr = @"select  pgmn from 
                                (       
                                select  distinct a.pgmn  from dbo.PB_GATEPASS  as a where a.IDO = '{0}' and 
                                exists (select 1 from TypeMaster as b where a.pgmn = b. TypeID)
                                union
                                select  distinct a.pgmn  from dbo.PB_GATEPASS_Unplanned  as a where a.IDO = '{0}' and 
                                exists (select 1 from TypeMaster as b where a.pgmn = b. TypeID)
                        ) as a";
            SqlStr = string.Format(SqlStr, IDO);
            return context.ExecuteDataTable(SqlStr, "");
        }



        public static DataTable GetProject_Material1()
        {
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();

            //string SqlStr = "select distinct  pgmn  from dbo.PB_GATEPASS ";
            string SqlStr = "select distinct TypeId from TypeMaster";
         
            return context.ExecuteDataTable(SqlStr, "");
        }
        
    }
}
