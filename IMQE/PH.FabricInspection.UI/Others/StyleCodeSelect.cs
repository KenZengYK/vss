using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Collections;
using PH.Platform.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    public partial class FrmStyleCodeSelect : DevExpress.XtraEditors.XtraForm
    {
        DataTable dataTable = null;
        public string selectedValue = "";
        private string currentCompanyNo = "";

        public FrmStyleCodeSelect(string companyNo)
        {
            InitializeComponent();
            currentCompanyNo = companyNo;
            LoadAllData();
        }

        private void LoadAllData()
        {
            //logger.WriteLog("[Query] [SELECT] " + strSQL);
            #region  Xsj20111129:如下代碼為了提升速度而被注釋掉
            //string strSQL = "SELECT CONO15, PSAR15 as StyleCode FROM AULT4F1.INP15 WHERE PRMT15='PGMN' AND VATC15 = 'M' AND CONO15='" + currentCompanyNo + "' order by StyleCode";
            //dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
            #endregion
            #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
            string strSQL = "Select * from OpenQuery([as400],'SELECT CONO15, PSAR15 as StyleCode, VATC15 as MaterialGroup FROM AULT4F1.INP15 WHERE PRMT15=''PGMN'' AND VATC15 in (''M'',''L'',''A'',''C'',''E'') AND CONO15=''" + currentCompanyNo + "'' order by VATC15, StyleCode' ) ";
            FabricInspectionDataContext FISdc = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
            #endregion

            this.bsStyleCode.DataSource = dataTable;
        }


        public static string ShowStyleCodeSelect(string companyNo)
        {

            try
            {
                FrmStyleCodeSelect frmStyleCode = new FrmStyleCodeSelect(companyNo);
                DialogResult result = frmStyleCode.ShowDialog();
                return frmStyleCode.selectedValue;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the StyleCodeSelect form  \n" + ex.Message);
            }
            return "";
        }

        private void sbSelect_Click(object sender, EventArgs e)
        {
            if (this.bsStyleCode.Count <= 0)
            {
                MessageBox.Show("No StyleCode exists!");
                return;
            }

            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {

                if (dataTable != null)
                {
                    if ((dataTable.Rows.Count > 0) && (bsStyleCode.Position >= 0) && (bsStyleCode.Position < dataTable.Rows.Count))
                    {
                        //selectedValue = (string)dataTable.Rows[bsStyleCode.Position][0];
                        selectedValue = (string)dataTable.Rows[bsStyleCode.Position][1];
                        this.DialogResult = DialogResult.OK;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when select all StyleCode from db \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }

        }

        private void sbCancel_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;

        }
    }


}