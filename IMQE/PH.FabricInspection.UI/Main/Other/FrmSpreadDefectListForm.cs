using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data.Linq;
using PH.Platform.Common;

namespace PH.FabricInspection.UI
{
    public partial class FrmSpreadDefectListForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        #region
        private string strConn = "";

        DataTable dtSpreadDefect = new DataTable("SpreadDefect");
        public PH.FabricInspection.BO.FabricInspectionDataContext ms = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
        Fabric_Insp_Header _Fabric_Insp_Header = null;
        MasterListForm _masterListForm = null;
        private DevExpress.XtraTab.XtraTabPage _curTabPage;

        private string _ItemNo;
        private string _Stock_In_Date;
        #endregion

        public FrmSpreadDefectListForm()
        {
            InitializeComponent();
            PrepareData();
        }

        public FrmSpreadDefectListForm(Fabric_Insp_Header fabric_Insp_Header, MasterListForm masterListForm, string Item_No, string Stock_In_Date)
        {
            InitializeComponent();
            PrepareData();

            _ItemNo = Item_No;
            _Stock_In_Date = Stock_In_Date;
            _Fabric_Insp_Header = fabric_Insp_Header;
            _masterListForm = masterListForm;
        }

        public FrmSpreadDefectListForm(List<object> list)
        {
            InitializeComponent();
            PrepareData();

            _ItemNo = list[2].ToString();
            _Stock_In_Date = list[3].ToString();
            _Fabric_Insp_Header = list[0] as Fabric_Insp_Header;
            _masterListForm = list[1] as MasterListForm;
            _curTabPage = list[4] as DevExpress.XtraTab.XtraTabPage;
        }

        //由David從Designer文件中搬出來的代碼，不然設計期報錯，無法修改UI  2020-10-13
        public void PrepareData()
        {
            SysParamHelper sph = SysParamHelper.Instance;
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Desc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit1.DisplayMember = "Parameter_Desc";
            }
            if (sph.LangID == "TH")
            {
                this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterThaiDesc", "Process Thai Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit1.DisplayMember = "ParameterThaiDesc";
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                this.repositoryItemLookUpEdit1.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterEnglishDesc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit1.DisplayMember = "ParameterEnglishDesc";
            }

            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                this.repositoryItemLookUpEdit2.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Desc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit2.DisplayMember = "Parameter_Desc";
            }
            if (sph.LangID == "TH")
            {
                this.repositoryItemLookUpEdit2.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterThaiDesc", "Process Thai Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit2.DisplayMember = "ParameterThaiDesc";
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                this.repositoryItemLookUpEdit2.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterEnglishDesc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit2.DisplayMember = "ParameterEnglishDesc";
            }


            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                this.repositoryItemLookUpEdit3.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Desc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit3.DisplayMember = "Parameter_Desc";
            }
            if (sph.LangID == "TH")
            {
                this.repositoryItemLookUpEdit3.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterThaiDesc", "Process Thai Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit3.DisplayMember = "ParameterThaiDesc";
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                this.repositoryItemLookUpEdit3.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterEnglishDesc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit3.DisplayMember = "ParameterEnglishDesc";
            }


            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                this.repositoryItemLookUpEdit4.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Desc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit4.DisplayMember = "Parameter_Desc";
            }
            if (sph.LangID == "TH")
            {
                this.repositoryItemLookUpEdit4.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterThaiDesc", "Process Thai Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit4.DisplayMember = "ParameterThaiDesc";
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                this.repositoryItemLookUpEdit4.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterEnglishDesc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit4.DisplayMember = "ParameterEnglishDesc";
            }

            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                this.repositoryItemLookUpEdit5.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Desc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit5.DisplayMember = "Parameter_Desc";
            }
            if (sph.LangID == "TH")
            {
                this.repositoryItemLookUpEdit5.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterThaiDesc", "Process Thai Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit5.DisplayMember = "ParameterThaiDesc";
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                this.repositoryItemLookUpEdit5.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Parameter_Key", "Process Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ParameterEnglishDesc", "Process Solution", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
                this.repositoryItemLookUpEdit5.DisplayMember = "ParameterEnglishDesc";
            }
        }

        private void FrmSpreadDefectListForm_Load(object sender, EventArgs e)
        {
            ///Summary
            ///Obtain PH.FabricInspection.BO ConnectionString
            ///Summary
            strConn = ms.Connection.ConnectionString.ToString();

            textEdit1.EditValue = _Fabric_Insp_Header.Stock_In_Date;
            textEdit3.EditValue = _Fabric_Insp_Header.Item_No;
            textEdit4.EditValue = _Fabric_Insp_Header.Item_Desc;

            //this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn5.OptionsColumn.AllowEdit = false;

            GetSpreadDefectRecord();

            try
            {
                //Summary
                //Setting Add & Delete button visiable equel nerver
                //Summary

                //Summary
                //Load Process Solution data
                //Summary

                string strParameterType = "SDPS";

                PH.FabricInspection.BO.FabricInspectionDataContext smd = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    

                SysParamHelper sph = SysParamHelper.Instance;
                if (sph.LangID == "TW" || sph.LangID == "CN")
                {
                    var Context01 = from ProcSolution in smd.Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select new { ProcSolution.Parameter_Key, ProcSolution.Parameter_Desc };
                    repositoryItemLookUpEdit1.DataSource = Context01;
                    repositoryItemLookUpEdit2.DataSource = Context01;
                    repositoryItemLookUpEdit3.DataSource = Context01;
                    repositoryItemLookUpEdit4.DataSource = Context01;
                    repositoryItemLookUpEdit5.DataSource = Context01;
                }
                if (sph.LangID == "TH")
                {
                    var Context02 = from ProcSolution in smd.Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select new { ProcSolution.Parameter_Key, ProcSolution.ParameterThaiDesc };
                    repositoryItemLookUpEdit1.DataSource = Context02;
                    repositoryItemLookUpEdit2.DataSource = Context02;
                    repositoryItemLookUpEdit3.DataSource = Context02;
                    repositoryItemLookUpEdit4.DataSource = Context02;
                    repositoryItemLookUpEdit5.DataSource = Context02;
                }
                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                {
                    var Context03 = from ProcSolution in smd.Fabric_Sys_Parameters.Where(sf => sf.Parameter_Type == strParameterType) select new { ProcSolution.Parameter_Key, ProcSolution.ParameterEnglishDesc };

                    repositoryItemLookUpEdit1.DataSource = Context03;
                    repositoryItemLookUpEdit2.DataSource = Context03;
                    repositoryItemLookUpEdit3.DataSource = Context03;
                    repositoryItemLookUpEdit4.DataSource = Context03;
                    repositoryItemLookUpEdit5.DataSource = Context03;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void Save()
        {
            this.gridViewSpreadDefects.PostEditor();

            Cursor.Current = Cursors.WaitCursor;

            string strSQL = "";
            string strProcessStatus = "";

            string _Process_OK_Status = "1";
            string _Process_KS_Status = "2";
            string _Process_RTN_Status = "3";

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            //SqlTransaction beginTran;

            // Start a local transaction.
            //beginTran = conn.BeginTransaction("SampleTransaction");

            // Must assign both transaction object and connection
            // to Command object for a pending local transaction
            command.Connection = conn;
            //command.Transaction = beginTran;

            try
            {
                foreach (DataRow row in dtSpreadDefect.Rows)
                {
                    strProcessStatus = "";
                    if (row["Proc_Status"].ToString() == "OK")
                    {
                        strProcessStatus = _Process_OK_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "Deduct")
                    {
                        strProcessStatus = _Process_KS_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "Return")
                    {
                        strProcessStatus = _Process_RTN_Status;
                    }

                    string EvadeMarkerWastage = row["AddtionalPercent"] == DBNull.Value ? "null" : row["AddtionalPercent"].ToString();

                    strSQL = "Update Fabric_Insp_SpreadDefect Set AddtionalPercent = " + EvadeMarkerWastage + ",Proc_Code1='" + row["Proc_Code1"] + "',Proc_Code2 ='" + row["Proc_Code2"] + "',Proc_Code3='" + row["Proc_Code3"] + "',Proc_Code4 = '" + row["Proc_Code4"] + "',Proc_Code5='" + row["Proc_Code5"] + "',Proc_Status='" + strProcessStatus + "' where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                    strSQL = strSQL + " and Defect_Type ='" + row["Defect_Type"] + "' and Defect_Name ='" + row["Defect_Name"] + "' And Spread_Defect_Degree = '" + row["Spread_Defect_Degree"] + "' And From_Place = " + row["From_Place"] + " And To_Place =" + row["To_Place"] + "";
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();

                }

                //beginTran.Commit();

                ///Summary
                ///Update Fabric_Insp_Header Spread Defect Result info
                ///Summary
                DataTable dtMast = new DataTable();
                //strSQL = "SELECT d.Company, d.System_Install_No, m.Item_No, m.Stock_In_Date, m.Spread_Insp_Result, d.Proc_Status,Insp_Result FROM Fabric_Insp_Header AS m LEFT JOIN Fabric_Insp_SpreadDefect AS d ON m.System_Install_No = d.System_Install_No AND m.Company = d.Company WHERE (m.Spread_Defect_Exist = 'Y') AND m.Item_No ='" + _ItemNo + "' AND m.Stock_In_Date ='" + _Stock_In_Date + "'";
                strSQL = "SELECT d.Company, d.System_Install_No,max(d.Proc_Status) as Proc_Status,Insp_Result FROM Fabric_Insp_Header AS m LEFT JOIN Fabric_Insp_SpreadDefect AS d ON m.System_Install_No = d.System_Install_No AND m.Company = d.Company WHERE (m.Spread_Defect_Exist = 'Y') AND m.Item_No ='" + _ItemNo + "' AND m.Stock_In_Date ='" + _Stock_In_Date + "' group by d.Company, d.System_Install_No,Insp_Result Order By d.System_Install_No Desc ";
                command.CommandText = strSQL;
                SqlDataAdapter adpt = new SqlDataAdapter(command);
                adpt.Fill(dtMast);

                foreach (DataRow row in dtMast.Rows)
                {

                    if (row["Proc_Status"].ToString() == "3") //Return
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_RTN_Status + "', Spread_Insp_Result='" + _Process_RTN_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_RTN_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_RTN_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "2")   //Deduct
                    {
                        strSQL = "Update Fabric_Insp_Header Set Spread_Insp_Result='" + _Process_KS_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_KS_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "1") //OK
                    {
                        strSQL = "Update Fabric_Insp_Header Set Spread_Insp_Result='" + _Process_OK_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_OK_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;

                    }


                    else if (row["Insp_Result"].ToString() != "3" && row["Proc_Status"].ToString() == "3") //Return & Return
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_RTN_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_RTN_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_RTN_Status;

                    }
                    else if (row["Insp_Result"].ToString() != "3" && row["Proc_Status"].ToString() == "2") //Return & Deduct
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_KS_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_KS_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;
                    }
                    else if (row["Insp_Result"].ToString() != "3" && row["Insp_Result"].ToString() != "2" && row["Proc_Status"].ToString() == "1")  //Return & Deduct & OK
                    {
                        strSQL = "Update Fabric_Insp_Header Set  Insp_Result='" + _Process_OK_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_OK_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_OK_Status;
                    }
                }

                adpt.Dispose();
                dtMast.Dispose();
                dtSpreadDefect.Dispose();
                MessageBox.Show("Save Data Successful!");

                ///============================================
                /// 重新刷新數據
                ///============================================
                ///
                #region Xsj20111129:如下代碼為了提升速度而被注釋掉
                //PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                //_masterListForm.DataContext = context;
                //var cc = from c in context.Fabric_Insp_Headers select c;
                //_masterListForm.BindingSource.DataSource = cc;

                #endregion

                #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

                string strToday = MasterTableUtil.getTodayBefore60String();
                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                _masterListForm.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(Convert.ToInt32( strToday), MasterTableUtil.Status);
                _masterListForm.DataContext = fabric_Insp_HeaderList.CurrentDataContext;

                #endregion

                Close();
            }

            catch (Exception ex)
            {
                //beginTran.Rollback();
                //beginTran.Dispose();
                command.Dispose();
                conn.Dispose();
                dtSpreadDefect.Dispose();
                MessageBox.Show(ex.Message);
            }

            finally
            {
                //beginTran.Dispose();
                command.Dispose();
                conn.Dispose();
                dtSpreadDefect.Dispose();
                Cursor.Current = Cursors.Default;

            }
        }

        private void GetSpreadDefectRecord()
        {
            ///Summary
            ///Obtain Spread Defect Records for current select Spread Defect Records.
            ///Summary
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            command.Connection = conn;

            //string strSQL = "";
            //strSQL="select * from dbo.Fabric_Insp_SpreadDefect where System_Install_No in (Select System_Install_No from dbo.Fabric_Insp_Header Where Spread_Defect_Exist='Y' And Item_No='" + sm.Item_No + "' and Stock_In_date = '" + sm.Stock_In_Date + "' "; 
            //strSQL=strSQL + "Group by System_Install_No,Item_No,Stock_In_Date)";

            string strSQL = "";

            SysParamHelper sph = SysParamHelper.Instance;

            //由David改写下面的SQL语句 2021-01-27
            string DefectNameField = "DefectEnglishName";
            if (sph.LangID == "EN") { DefectNameField = "DefectEnglishName"; }
            else if (sph.LangID == "TW" || sph.LangID == "CN") { DefectNameField = "DefectChineseName"; }
            else if (sph.LangID == "TH") { DefectNameField = "DefectThaiName"; }

            strSQL = "select c.Usable_Width, c.ProjectNo, a.AddtionalPercent, a.Company,a.System_Install_No,c.Lot_Id,Defect_Type,Defect_Name, " +
                             "{0} as DefectName,Spread_Defect_Degree,From_Place,To_Place,Proc_Code1,Proc_Code2,Proc_Code3,Proc_Code4,Proc_Code5," +
                             "CASE Proc_Status WHEN '1' THEN 'OK' WHEN '2' THEN 'Deduct' WHEN '3' THEN 'Return' END AS Proc_Status " +
                      "from dbo.Fabric_Insp_SpreadDefect a " +
                      "     left join dbo.PHQCDefect b on b.PHDefectCode = a.Defect_Name " +
                      "     join dbo.Fabric_Insp_Header c on c.System_Install_No = a.System_Install_No " +
                      "where c.Item_No='{1}' and Stock_In_date = '{2}'";
            strSQL = string.Format(strSQL, DefectNameField, _ItemNo, _Stock_In_Date);



            //if (sph.LangID == "TW" || sph.LangID == "CN")
            //{
            //    strSQL = "select c.Usable_Width, c.ProjectNo, a.AddtionalPercent, a.Company,a.System_Install_No,c.Lot_Id,Defect_Type,Defect_Name,DefectChineseName as DefectName,Spread_Defect_Degree,From_Place,To_Place,Proc_Code1,Proc_Code2,Proc_Code3,Proc_Code4,Proc_Code5,CASE Proc_Status WHEN '1' THEN 'OK' WHEN '2' THEN 'Deduct' WHEN '3' THEN 'Return' END AS Proc_Status from dbo.Fabric_Insp_SpreadDefect a,dbo.PHQCDefect b,dbo.Fabric_Insp_Header c";
            //    strSQL += " where a.Defect_Name = b.PHDefectCode and a.System_Install_No = c.System_Install_No and a.System_Install_No in (Select System_Install_No from dbo.Fabric_Insp_Header Where Item_No='" + _ItemNo + "' and Stock_In_date = '" + _Stock_In_Date + "' ";
            //    strSQL += " Group by System_Install_No,Item_No,Stock_In_Date)";
            //}
            //if (sph.LangID == "TH")
            //{
            //    strSQL = "select c.Usable_Width, c.ProjectNo, a.AddtionalPercent, a.Company,a.System_Install_No,c.Lot_Id,Defect_Type,Defect_Name,DefectThaiName as DefectName,Spread_Defect_Degree,From_Place,To_Place,Proc_Code1,Proc_Code2,Proc_Code3,Proc_Code4,Proc_Code5,CASE Proc_Status WHEN '1' THEN 'OK' WHEN '2' THEN 'Deduct' WHEN '3' THEN 'Return' END AS Proc_Status from dbo.Fabric_Insp_SpreadDefect a,dbo.PHQCDefect b,dbo.Fabric_Insp_Header c";
            //    strSQL += " where a.Defect_Name *= b.PHDefectCode and a.System_Install_No = c.System_Install_No and a.System_Install_No in (Select System_Install_No from dbo.Fabric_Insp_Header Where Item_No='" + _ItemNo + "' and Stock_In_date = '" + _Stock_In_Date + "' ";
            //    strSQL += " Group by System_Install_No,Item_No,Stock_In_Date)";
            //}
            //if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            //{
            //    strSQL = "select c.Usable_Width, c.ProjectNo, a.AddtionalPercent, a.Company,a.System_Install_No,c.Lot_Id,Defect_Type,Defect_Name,DefectEnglishName as DefectName,Spread_Defect_Degree,From_Place,To_Place,Proc_Code1,Proc_Code2,Proc_Code3,Proc_Code4,Proc_Code5,CASE Proc_Status WHEN '1' THEN 'OK' WHEN '2' THEN 'Deduct' WHEN '3' THEN 'Return' END AS Proc_Status from dbo.Fabric_Insp_SpreadDefect a,dbo.PHQCDefect b,dbo.Fabric_Insp_Header c";
            //    strSQL += " where a.Defect_Name = b.PHDefectCode and a.System_Install_No = c.System_Install_No and a.System_Install_No in (Select System_Install_No from dbo.Fabric_Insp_Header Where Item_No='" + _ItemNo + "' and Stock_In_date = '" + _Stock_In_Date + "' ";
            //    strSQL += " Group by System_Install_No,Item_No,Stock_In_Date)";
            //}

            DataTable dt = new DataTable();

            try
            {
                command.CommandText = strSQL;
                SqlDataAdapter adpt = new SqlDataAdapter(command);
                adpt.Fill(dtSpreadDefect);
                this.gridSpreadDefects.DataSource = dtSpreadDefect;

            }
            catch (Exception ex)
            {
                command.Dispose();
                conn.Dispose();
                MessageBox.Show(ex.Message);
            }

            finally
            {
                command.Dispose();
                conn.Dispose();

            }

        }

        private void barBtnCopyToAll_Click(object sender, EventArgs e)
        {

            ///Summary
            ///Process Copy to All Function
            ///Summary

            try
            {
                if (dtSpreadDefect == null)
                {
                    return;
                }
                string ProcessSolution01 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code1"].ToString();
                string ProcessSolution02 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code2"].ToString();
                string ProcessSolution03 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code3"].ToString();
                string ProcessSolution04 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code4"].ToString();
                string ProcessSolution05 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code5"].ToString();
                string ProcessStatus = gridViewSpreadDefects.GetDataRow(0)["Proc_Status"].ToString();

                for (int i = 1; i < gridViewSpreadDefects.RowCount; i++)
                {
                    gridViewSpreadDefects.GetDataRow(i)[7] = ProcessSolution01;
                    gridViewSpreadDefects.GetDataRow(i)[8] = ProcessSolution02;
                    gridViewSpreadDefects.GetDataRow(i)[9] = ProcessSolution03;
                    gridViewSpreadDefects.GetDataRow(i)[10] = ProcessSolution04;
                    gridViewSpreadDefects.GetDataRow(i)[11] = ProcessSolution05;
                    gridViewSpreadDefects.GetDataRow(i)[12] = ProcessStatus;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            dtSpreadDefect.Dispose();
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            Cursor.Current = Cursors.WaitCursor;

            string strSQL = "";
            string strProcessStatus = "";

            string _Process_OK_Status = "1";
            string _Process_KS_Status = "2";
            string _Process_RTN_Status = "3";

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            //SqlTransaction beginTran;

            // Start a local transaction.
            //beginTran = conn.BeginTransaction("SampleTransaction");

            // Must assign both transaction object and connection
            // to Command object for a pending local transaction
            command.Connection = conn;
            //command.Transaction = beginTran;

            try
            {
                foreach (DataRow row in dtSpreadDefect.Rows)
                {
                    strProcessStatus = "";
                    if (row["Proc_Status"].ToString() == "OK")
                    {
                        strProcessStatus = _Process_OK_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "Deduct")
                    {
                        strProcessStatus = _Process_KS_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "Return")
                    {
                        strProcessStatus = _Process_RTN_Status;
                    }

                    strSQL = "Update Fabric_Insp_SpreadDefect Set Proc_Code1='" + row["Proc_Code1"] + "',Proc_Code2 ='" + row["Proc_Code2"] + "',Proc_Code3='" + row["Proc_Code3"] + "',Proc_Code4 = '" + row["Proc_Code4"] + "',Proc_Code5='" + row["Proc_Code5"] + "',Proc_Status='" + strProcessStatus + "' where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                    strSQL = strSQL + " and Defect_Type ='" + row["Defect_Type"] + "' and Defect_Name ='" + row["Defect_Name"] + "' And Spread_Defect_Degree = '" + row["Spread_Defect_Degree"] + "' And From_Place = " + row["From_Place"] + " And To_Place =" + row["To_Place"] + "";
                    command.CommandText = strSQL;
                    command.ExecuteNonQuery();

                }

                //beginTran.Commit();

                ///Summary
                ///Update Fabric_Insp_Header Spread Defect Result info
                ///Summary
                DataTable dtMast = new DataTable();
                //strSQL = "SELECT d.Company, d.System_Install_No, m.Item_No, m.Stock_In_Date, m.Spread_Insp_Result, d.Proc_Status,Insp_Result FROM Fabric_Insp_Header AS m LEFT JOIN Fabric_Insp_SpreadDefect AS d ON m.System_Install_No = d.System_Install_No AND m.Company = d.Company WHERE (m.Spread_Defect_Exist = 'Y') AND m.Item_No ='" + _ItemNo + "' AND m.Stock_In_Date ='" + _Stock_In_Date + "'";
                strSQL = "SELECT d.Company, d.System_Install_No,max(d.Proc_Status) as Proc_Status,Insp_Result FROM Fabric_Insp_Header AS m LEFT JOIN Fabric_Insp_SpreadDefect AS d ON m.System_Install_No = d.System_Install_No AND m.Company = d.Company WHERE (m.Spread_Defect_Exist = 'Y') AND m.Item_No ='" + _ItemNo + "' AND m.Stock_In_Date ='" + _Stock_In_Date + "' group by d.Company, d.System_Install_No,Insp_Result Order By d.System_Install_No Desc ";
                command.CommandText = strSQL;
                SqlDataAdapter adpt = new SqlDataAdapter(command);
                adpt.Fill(dtMast);

                foreach (DataRow row in dtMast.Rows)
                {

                    if (row["Proc_Status"].ToString() == "3") //Return
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_RTN_Status + "', Spread_Insp_Result='" + _Process_RTN_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_RTN_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_RTN_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "2")   //Deduct
                    {
                        strSQL = "Update Fabric_Insp_Header Set Spread_Insp_Result='" + _Process_KS_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_KS_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;
                    }
                    else if (row["Proc_Status"].ToString() == "1") //OK
                    {
                        strSQL = "Update Fabric_Insp_Header Set Spread_Insp_Result='" + _Process_OK_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_OK_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;

                    }


                    else if (row["Insp_Result"].ToString() != "3" && row["Proc_Status"].ToString() == "3") //Return & Return
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_RTN_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_RTN_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_RTN_Status;

                    }
                    else if (row["Insp_Result"].ToString() != "3" && row["Proc_Status"].ToString() == "2") //Return & Deduct
                    {
                        strSQL = "Update Fabric_Insp_Header Set Insp_Result='" + _Process_KS_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_KS_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_KS_Status;
                    }
                    else if (row["Insp_Result"].ToString() != "3" && row["Insp_Result"].ToString() != "2" && row["Proc_Status"].ToString() == "1")  //Return & Deduct & OK
                    {
                        strSQL = "Update Fabric_Insp_Header Set  Insp_Result='" + _Process_OK_Status + "' Where Company='" + row["Company"] + "' and System_install_no = " + row["System_install_no"] + " ";
                        command.CommandText = strSQL;
                        command.ExecuteNonQuery();
                        _Fabric_Insp_Header.Spread_Insp_Result = _Process_OK_Status;
                        //_Fabric_Insp_Header["Spread_Insp_Result"] = _Process_OK_Status;
                    }
                }

                adpt.Dispose();
                dtMast.Dispose();
                dtSpreadDefect.Dispose();
                MessageBox.Show("Save Data Successful!");

                ///============================================
                /// 重新刷新數據
                ///============================================
                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                _masterListForm.DataContext = context;
                var cc = from c in context.Fabric_Insp_Headers select c;
                _masterListForm.BindingSource.DataSource = cc;

                Close();
            }

            catch (Exception ex)
            {
                //beginTran.Rollback();
                //beginTran.Dispose();
                command.Dispose();
                conn.Dispose();
                dtSpreadDefect.Dispose();
                MessageBox.Show(ex.Message);
            }

            finally
            {
                //beginTran.Dispose();
                command.Dispose();
                conn.Dispose();
                dtSpreadDefect.Dispose();
                Cursor.Current = Cursors.Default;

            }

        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            ///Summary
            ///Process Copy to All Function
            ///Summary

            try
            {
                if (dtSpreadDefect == null)
                {
                    return;
                }
                string ProcessSolution01 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code1"].ToString();
                string ProcessSolution02 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code2"].ToString();
                string ProcessSolution03 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code3"].ToString();
                string ProcessSolution04 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code4"].ToString();
                string ProcessSolution05 = gridViewSpreadDefects.GetDataRow(0)["Proc_Code5"].ToString();
                string ProcessStatus = gridViewSpreadDefects.GetDataRow(0)["Proc_Status"].ToString();

                for (int i = 1; i < gridViewSpreadDefects.RowCount; i++)
                {
                    gridViewSpreadDefects.GetDataRow(i)[9] = ProcessSolution01;
                    gridViewSpreadDefects.GetDataRow(i)[10] = ProcessSolution02;
                    gridViewSpreadDefects.GetDataRow(i)[11] = ProcessSolution03;
                    gridViewSpreadDefects.GetDataRow(i)[12] = ProcessSolution04;
                    gridViewSpreadDefects.GetDataRow(i)[13] = ProcessSolution05;
                    gridViewSpreadDefects.GetDataRow(i)[14] = ProcessStatus;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            Save();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            Save();

            this.ClosePage(this.TabControls.SelectedTabPage, _curTabPage);


        }

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            this.ClosePage(this.TabControls.SelectedTabPage, _curTabPage);
        }


    }
}
