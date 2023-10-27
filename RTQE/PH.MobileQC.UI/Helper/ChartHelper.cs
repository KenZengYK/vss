using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MobileQC.BO;
using System.Data.SqlClient;
using System.Data;

namespace PH.MobileQC.UI.Helper
{
    public class ChartHelper
    {

        public List<AuditQtyMoveBO> GetMoveList(QCMasterSeartchConditionBO SeartchConditionBO, string ProcessName)
        {
            List<AuditQtyMoveBO> result = new List<AuditQtyMoveBO>();
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = ProcessName;
                PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
                cmd.CommandTimeout = 1000 * 60 * 3;
                cmd.Connection = new SqlConnection(dcon.Connection.ConnectionString);

                cmd.Parameters.Add("@Factory", SqlDbType.NVarChar);
                if (SeartchConditionBO.Factory == null || SeartchConditionBO.Factory == "")
                {
                    cmd.Parameters["@Factory"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@Factory"].Value = SeartchConditionBO.Factory;
                }

                cmd.Parameters.Add("@WorkShop", SqlDbType.NVarChar);
                if (SeartchConditionBO.WorkShop == null || SeartchConditionBO.WorkShop == "")
                {
                    cmd.Parameters["@WorkShop"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@WorkShop"].Value = SeartchConditionBO.WorkShop;
                }

                cmd.Parameters.Add("@WorkLine", SqlDbType.NVarChar);
                if (SeartchConditionBO.WorkLine == null || SeartchConditionBO.WorkLine == "")
                {
                    cmd.Parameters["@WorkLine"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@WorkLine"].Value = SeartchConditionBO.WorkLine;
                }

                cmd.Parameters.Add("@Style", SqlDbType.NVarChar);
                if (SeartchConditionBO.Style == null || SeartchConditionBO.Style == "")
                {
                    cmd.Parameters["@Style"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@Style"].Value = SeartchConditionBO.Style;
                }

                cmd.Parameters.Add("@QCTimeFrom", SqlDbType.DateTime);
                if (SeartchConditionBO.QCTimeFrom == null || SeartchConditionBO.QCTimeFrom == "")
                {
                    cmd.Parameters["@QCTimeFrom"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@QCTimeFrom"].Value = Convert.ToDateTime(SeartchConditionBO.QCTimeFrom);
                }

                cmd.Parameters.Add("@QCTimeTO", SqlDbType.DateTime);
                if (SeartchConditionBO.QCTimeTO == null || SeartchConditionBO.QCTimeTO == "")
                {
                    cmd.Parameters["@QCTimeTO"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@QCTimeTO"].Value = Convert.ToDateTime(SeartchConditionBO.QCTimeTO);
                }

                cmd.Parameters.Add("@QCRole", SqlDbType.NVarChar);
                if (SeartchConditionBO.QCRole == null || SeartchConditionBO.QCRole == "")
                {
                    cmd.Parameters["@QCRole"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@QCRole"].Value = SeartchConditionBO.QCRole;
                }

                cmd.Parameters.Add("@QCMan", SqlDbType.NVarChar, 20);
                if (SeartchConditionBO.QCMan == null || SeartchConditionBO.QCMan == "")
                {
                    cmd.Parameters["@QCMan"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@QCMan"].Value = SeartchConditionBO.QCMan;
                }

                cmd.Parameters.Add("@RecordType", SqlDbType.NVarChar, 20);
                if (SeartchConditionBO.RecordType == null || SeartchConditionBO.RecordType == "")
                {
                    cmd.Parameters["@RecordType"].Value = DBNull.Value;
                }
                else
                {
                    cmd.Parameters["@RecordType"].Value = SeartchConditionBO.RecordType;
                }

                cmd.Parameters.Add("@AnalyseType", SqlDbType.NVarChar, 10);
                if (SeartchConditionBO.AnalyseType == null || SeartchConditionBO.AnalyseType == "")
                {
                    cmd.Parameters["@AnalyseType"].Value = "Summary";
                }
                else
                {
                    cmd.Parameters["@AnalyseType"].Value = SeartchConditionBO.AnalyseType;
                }


                SqlDataAdapter dap = new SqlDataAdapter();
                dap.SelectCommand = cmd;
                DataTable dt = new DataTable();
                dap.Fill(dt);


                result = (from v in dt.AsEnumerable()
                          select new AuditQtyMoveBO
                          {
                              QCRoleCode = v["QCRoleCode"].ToString(),
                              Factory = v["Factory"].ToString(),
                              WorkShop = v["WorkShop"].ToString(),
                              Line = v["Line"].ToString(),
                              Style = v["Style"].ToString(),
                              MoveDate = v["QCTime"].ToString(),
                              FirstPassQty = Convert.ToDecimal(v["FirstPassQty"]),
                              AuditQty = Convert.ToDecimal(v["AuditCount"]),
                              FirstPassRatio = Convert.ToDecimal(v["FirstPassRate"])
                          }).ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return result;
        }


    }
}
