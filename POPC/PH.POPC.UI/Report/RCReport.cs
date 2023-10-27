using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.Report
{
    public partial class RCReport : PH.Platform.UI.CS.UI0.BlankForm
    {
        public RCReport()
        {
            InitializeComponent();
        }

        private void simpleButton_PrintRC_Click(object sender, EventArgs e)
        {
            PrintRC();
        }


        private void PrintRC()
        {
            if (this.textEdit_RCNumber.EditValue == null || this.textEdit_RCNumber.EditValue.ToString().Trim() == "")
            {
                MessageBox.Show("請填寫[RC Number]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            PH.POPC.BO.POPCDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            dct.CommandTimeout = 10000;

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandTimeout = 10000;
            cmd.CommandText = "P_GetRCInfo";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@RCNO", SqlDbType.NVarChar, 50);
            cmd.Parameters["@RCNO"].Value = this.textEdit_RCNumber.EditValue.ToString().Trim();
            cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

            DataSet ds = new DataSet();
            System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(ds);

            List<PH.POPC.BO.RCBO> rptDataSource = new List<PH.POPC.BO.RCBO>();
            //Detial
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                #region
                PH.POPC.BO.RCBO bo = new PH.POPC.BO.RCBO();

                bo.CUSR92 = dt.Rows[i]["CUSR92"] == DBNull.Value ? "" : dt.Rows[i]["CUSR92"].ToString();
                bo.RCNO92 = dt.Rows[i]["RCNO92"] == DBNull.Value ? "" : dt.Rows[i]["RCNO92"].ToString();
                bo.VEND92 = dt.Rows[i]["VEND92"] == DBNull.Value ? "" : dt.Rows[i]["VEND92"].ToString();
                bo.SupplierName = dt.Rows[i]["SupplierName"] == DBNull.Value ? "" : dt.Rows[i]["SupplierName"].ToString();
                bo.StatusCode = dt.Rows[i]["StatusCode"] == DBNull.Value ? "" : dt.Rows[i]["StatusCode"].ToString();
                bo.STATUSText = dt.Rows[i]["STATUSText"] == DBNull.Value ? "" : dt.Rows[i]["STATUSText"].ToString();
                bo.CreationUser = dt.Rows[i]["CreationUser"] == DBNull.Value ? "" : dt.Rows[i]["CreationUser"].ToString();
                bo.CreateDate = dt.Rows[i]["CreateDate"] == DBNull.Value ? "" : dt.Rows[i]["CreateDate"].ToString();
                bo.GRN = dt.Rows[i]["GRN"] == DBNull.Value ? "" : dt.Rows[i]["GRN"].ToString();
                bo.PONO = dt.Rows[i]["PONO"] == DBNull.Value ? "" : dt.Rows[i]["PONO"].ToString();
                bo.Rep = dt.Rows[i]["Rep"] == DBNull.Value ? 0 : Convert.ToInt32(dt.Rows[i]["Rep"]);
                bo.ItemNO = dt.Rows[i]["ItemNO"] == DBNull.Value ? "" : dt.Rows[i]["ItemNO"].ToString();
                bo.SuppRef = dt.Rows[i]["SuppRef"] == DBNull.Value ? "" : dt.Rows[i]["SuppRef"].ToString();
                bo.LotNumber = dt.Rows[i]["LotNumber"] == DBNull.Value ? "" : dt.Rows[i]["LotNumber"].ToString();
                bo.Col = dt.Rows[i]["Col"] == DBNull.Value ? "" : dt.Rows[i]["Col"].ToString();
                bo.SIZE = dt.Rows[i]["SIZE"] == DBNull.Value ? "" : dt.Rows[i]["SIZE"].ToString();
                bo.ProjectNO = dt.Rows[i]["ProjectNO"] == DBNull.Value ? "" : dt.Rows[i]["ProjectNO"].ToString();
                bo.ColorShade = dt.Rows[i]["ColorShade"] == DBNull.Value ? "" : dt.Rows[i]["ColorShade"].ToString();
                bo.ColGroup = dt.Rows[i]["ColGroup"] == DBNull.Value ? "" : dt.Rows[i]["ColGroup"].ToString();
                bo.UseFul = dt.Rows[i]["UseFul"] == DBNull.Value ? "" : dt.Rows[i]["UseFul"].ToString();
                bo.Location = dt.Rows[i]["Location"] == DBNull.Value ? "" : dt.Rows[i]["Location"].ToString();
                bo.StockRoom = dt.Rows[i]["StockRoom"] == DBNull.Value ? "" : dt.Rows[i]["StockRoom"].ToString();
                bo.ReturnedQty = dt.Rows[i]["ReturnedQty"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["ReturnedQty"]);
                bo.UOM = dt.Rows[i]["UOM"] == DBNull.Value ? "" : dt.Rows[i]["UOM"].ToString();
                bo.Price = dt.Rows[i]["Price"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Price"]);
                bo.Currency = dt.Rows[i]["Currency"] == DBNull.Value ? "" : dt.Rows[i]["Currency"].ToString();
                bo.Amount = dt.Rows[i]["Amount"] == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[i]["Amount"]);
                bo.ReasonCode = dt.Rows[i]["ReasonCode"] == DBNull.Value ? "" : dt.Rows[i]["ReasonCode"].ToString();
                bo.ResonText = dt.Rows[i]["ResonText"] == DBNull.Value ? "" : dt.Rows[i]["ResonText"].ToString();

                bo.SuppSize = dt.Rows[i]["SuppSize"] == DBNull.Value ? "" : dt.Rows[i]["SuppSize"].ToString();
                bo.SuppCup = dt.Rows[i]["SuppCup"] == DBNull.Value ? "" : dt.Rows[i]["SuppCup"].ToString();

                rptDataSource.Add(bo);
                #endregion
            }

            PH.POPC.BackEnd.RC.RCReport rcRpt = new PH.POPC.BackEnd.RC.RCReport();
            rcRpt.DataSource = rptDataSource;
            rcRpt.ShowPreview();
        }

        private void btnSelectPO_Click(object sender, EventArgs e)
        {
            SelectRCForm frmSelectRC = new SelectRCForm();
            if (frmSelectRC.ShowDialog() == DialogResult.OK)
            {
                this.textEdit_RCNumber.Text = frmSelectRC.GetChooseRCNo();
            }

        }

    }
}
