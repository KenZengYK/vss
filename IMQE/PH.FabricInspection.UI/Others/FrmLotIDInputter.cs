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
using DevExpress.XtraEditors;
using System.Globalization;
using PH.FabricInspection.BO;
using System.Linq;
using PH.Platform.BO;
using PH.MIDc.BO;


namespace PH.FabricInspection.UI
{
    public partial class FrmLotIDInputter : DevExpress.XtraEditors.XtraForm
    {
        private DevExpress.XtraEditors.TextEdit focusedTextEdit = null;
        public string currentValue = "";
        //private List<Master> tblInspectionHeader = new List<Master>();
        private Guid key;

        DateTime time = DateTime.Now;

        private string timeFormat = "yyyy/MM/dd HH:mm:ss";
        private string currentCompanyNo = "";

        private bool dialogResultValueSetted = false;

        FrmBlankDefectsSetting blankDefectsSetting;
        private MasterListForm masterListForm;
        PH.FabricInspection.BO.FabricInspectionDataContext context;

        //Xsj(补)20110924:構造函數
        public FrmLotIDInputter(MasterListForm paramMasterListForm, FrmBlankDefectsSetting paramBlankDefectsSetting, string ALotID, string AAuditStage  )
        {
            InitializeComponent();
            txtAuditStage.Text = AAuditStage;
            blankDefectsSetting = paramBlankDefectsSetting;
            this.ActiveControl = teIDNo;
            teIDNo.Text = ALotID;
            teIDNo.Focus();
            teIDNo.SelectAll();
            masterListForm = paramMasterListForm;
            context = (PH.FabricInspection.BO.FabricInspectionDataContext)paramMasterListForm.DataContext;
        }


        //Xsj(补)20110924:调用入口
        public static string ShowLotIDInputter(MasterListForm paramMasterListForm, FrmBlankDefectsSetting blankDefectsSetting, string ALotID, string AAuditStage)
        {
            try
            {
                FrmLotIDInputter frmLotIDInputter = new FrmLotIDInputter(paramMasterListForm, blankDefectsSetting, ALotID, AAuditStage);

                DialogResult result = frmLotIDInputter.ShowDialog();
                if (result == DialogResult.OK)
                {
                    return frmLotIDInputter.currentValue;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the ID Inputter\n" + ex.Message);
            }
            return "";
        }

        #region Xsj(补)20110924:按鈕動作

        /// <summary>
        /// Xsj(补)20110924:数字/字母按钮动作
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void sbNum7_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    string str = (string)((SimpleButton)sender).Tag;
                    SendKeys.SendWait(str);  //由David 修改

                    //for (int i = 0, iSize = str.Length; i < iSize; i++)
                    //{
                    //    KeyPressEventArgs keyArgs = new KeyPressEventArgs(str[i]);
                    //    //Xsj:應用SendKey方式,通過模擬鍵盤向當前獲焦的輸入框輸入值
                    //    focusedTextEdit.SendKey(keyArgs);
                    //}
                }
            }
        }

        /// <summary>
        /// Xsj(补)20110926:Enter事件,全選輸入框內容 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void teFrom_Enter(object sender, EventArgs e)
        {
            focusedTextEdit = (DevExpress.XtraEditors.TextEdit)sender;
            focusedTextEdit.SelectAll();
        }

        //Xsj(补)20110926:Clear按钮点击事件,清空內容 
        private void sbNumClear_Click(object sender, EventArgs e)
        {
            if (focusedTextEdit != null)
            {
                if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
                {
                    focusedTextEdit.Text = "";
                }
            }
        }

        //Xsj(补)20110926:窗體的“回車”按鍵動作
        private void FrmCharInputter_KeyPress(object sender, KeyPressEventArgs e)
        {
            //if (e.KeyChar == (char)13)
            //{
            //    sbNumEnter_Click(sender, null);
            //}
        }


        private void btnClose_Click(object sender, EventArgs e)
        {
            dialogResultValueSetted = true;
            this.DialogResult = DialogResult.Cancel;
        }

        //Xsj(补)20110926:Return按鈕動作
        private void sbReturn_Click(object sender, EventArgs e)
        {
            dialogResultValueSetted = true;
            this.DialogResult = DialogResult.Cancel;
            blankDefectsSetting.Close();
        }


        //Xsj(补)20110926:Enter按钮点击事件 
        //觸發從AS400取數邏輯
        private void sbNumEnter_Click(object sender, EventArgs e)
        {
            currentValue = teCompnayNo.Text.Trim();
            ShowDefectsDetail();
            //this.DialogResult = DialogResult.OK;

        }

        //Xsj:刪除輸入
        //private void sbDel_Click(object sender, EventArgs e)
        //{
        //    if (focusedTextEdit != null)
        //    {
        //        if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
        //        {
        //            SendKeys.SendWait("{ENTER}");
        //        }
        //    }

        //if (focusedTextEdit != null)
        //{
        //    if ((focusedTextEdit.Properties.ReadOnly == false) && (focusedTextEdit.Enabled))
        //    {
        //        if (focusedTextEdit.EditValue != null && focusedTextEdit.EditValue.ToString().Trim() != "")
        //        {
        //            string val = focusedTextEdit.EditValue.ToString().Trim();
        //            int selectStartIndex = this.focusedTextEdit.SelectionStart;
        //            int selectLength = this.focusedTextEdit.SelectionLength;
        //            string txt1 = "";
        //            string txt2 = "";
        //            if (selectLength > 0)
        //            {
        //                txt1 = val.Substring(0, selectStartIndex);
        //                txt2 = val.Substring(selectStartIndex + selectLength);
        //                focusedTextEdit.EditValue = txt1 + txt2;
        //            }
        //            else
        //            {
        //                if (selectStartIndex > 0)
        //                {
        //                    txt1 = val.Substring(0, selectStartIndex - 1);
        //                    txt2 = val.Substring(selectStartIndex);
        //                    focusedTextEdit.EditValue = txt1 + txt2;
        //                }
        //            }

        //        }
        //    }
        //}
        //}

        #endregion

        /// <summary>
        /// Xsj(补)20110926:从as400获取指定Company和lot_id的数据，并生成Fabric_Insp_Header实例
        /// </summary>
        private void ShowDefectsDetail()
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;

            try
            {
                if (teIDNo.Text.Trim().Length == 0)
                {
                    MessageBox.Show(this, "please input IDNo to query!");
                    return;
                }

                if (teCompnayNo.Text.Trim().Length == 0)
                {
                    MessageBox.Show(this, "please input CompanyNo to query!");
                    return;
                }

                if (txtAuditStage.Text.Trim().Length == 0)
                {
                    MessageBox.Show(this, "please input Aduit Stage to query!");
                    return;
                }

                currentCompanyNo = teCompnayNo.Text;
                //var tempData = from p in context.Masters
                //               where p.Company.Equals(currentCompanyNo) && p.Lot_Id.Equals(teIDNo.Text.Trim())
                //               select p;
                //tblInspectionHeader = tempData.ToList<Master>();
                //Master inspectionHeader = null;

                //Xsj(补)20110926:从FIS中获取用户输入的Company和Lot_Id所指定的Fabric_Insp_Header
                Fabric_Insp_Header inspectionHeader = LocateMasterRecord(currentCompanyNo, teIDNo.Text.Trim(), txtAuditStage.Text.Trim());
                //Xsj(补)20110926:如果FIS不存在用户输入的Company和Lot_Id所指定的Fabric_Insp_Header，则从ERP获取
                if (inspectionHeader == null)
                {
                    //1: generate data

                    //StringBuilder sb = new StringBuilder();
                    //sb.Append("call AULPHGMODS.PH984(").Append(generateQueryString()).Append(")");

                    //string strSQL = sb.ToString();
                    //PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);

                    //2: select data
                    //#region  Xsj20111129:如下代碼為了提升速度而被注釋掉
                    ////strSQL = "SELECT * FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' "
                    ////+ " AND WLOCN = '" + teIDNo.Text.Trim() + "'";
                    ////DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
                    //#endregion
                    //#region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
                    //strSQL = "Select * from OpenQuery([as400],'SELECT * FROM AULPHGMODS.PH984W where WGUID = ''" + key.ToString() + "''  AND WLOCN = ''" + teIDNo.Text.Trim() + "''')";
                    //FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
                    //DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");

                    //由david修改 2020-10-12
                    string ProjectNos = "";
                    decimal TotalLength = 0;
                    DataTable dataTable = null;

                    FabricInspectionDataContext FISdc = ContextBuilder.CreateContext<FabricInspectionDataContext>();

                    foreach (var lotID in teIDNo.Lines)
                    {
                        if (!string.IsNullOrEmpty(lotID))
                        {
                            string strSQL = string.Format("exec sp_ImportDataFromERP '{0}', '{1}', '{2}'", currentCompanyNo, lotID, lotID);
                            dataTable = FISdc.ExecuteDataTable(strSQL, "t0");

                            if (dataTable.Rows.Count <= 0)
                            {
                                MessageBox.Show("No found Item#:" + lotID, "Hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                                return;
                            }

                            ProjectNos += dataTable.Rows[0]["PROJWA"].ToString().Trim() + "\r\n";
                            TotalLength += (decimal)dataTable.Rows[0]["LENGWA"];
                        }

                    }
                    ProjectNos = ProjectNos.TrimEnd('\r', '\n');

                    //if (dataTable.Rows.Count <= 0)
                    //{
                    //    MessageBox.Show("No data found!");
                    //    return;
                    //}
                    //else
                    //{
                    inspectionHeader = (Fabric_Insp_Header)masterListForm.BindingSource.AddNew();

                    inspectionHeader.System_Install_No = inspectionHeader.GetMaxInstallNo(); //由David加入 2020-10-19
                    inspectionHeader.Company = currentCompanyNo;
                    inspectionHeader.Lot_Id = teIDNo.Text.Trim();
                    inspectionHeader.Item_No = ((string)dataTable.Rows[0]["ITEMWA"]).Trim();
                    inspectionHeader.Item_Desc = ((string)dataTable.Rows[0]["DESCWA"]).Trim();
                    inspectionHeader.Actual_Length = TotalLength; //(decimal)dataTable.Rows[0]["LENGWA"];

                    inspectionHeader.Supplier_Length_Unit = ((string)dataTable.Rows[0]["UNIT1WA"]).Trim();
                    inspectionHeader.Supplier_Width = 0;
                    inspectionHeader.Supplier_Width_Unit = "";

                    inspectionHeader.GM_SQM = 0;

                    inspectionHeader.PO = ((string)dataTable.Rows[0]["POWA"]).Trim();
                    inspectionHeader.HdoNo = ((string)dataTable.Rows[0]["HDOWA"]).Trim();
                    inspectionHeader.ProjectNo = ProjectNos; //((string)dataTable.Rows[0]["PROJWA"]).Trim();

                    inspectionHeader.Supplier_Code = ((string)dataTable.Rows[0]["VNDRWA"]).Trim();

                    inspectionHeader.InvoiceNo = ((string)dataTable.Rows[0]["INVOWA"]).Trim();

                    inspectionHeader.Supplier_Item_No = ((string)dataTable.Rows[0]["REFWA"]).Trim();
                    inspectionHeader.SupplierItemColor = ((string)dataTable.Rows[0]["COLWA"]).Trim();


                    inspectionHeader.Create_User = GlobalInfo.GetCurrentUserId();
                    inspectionHeader.Create_Date = DateTime.Now;
                    inspectionHeader.Status = "WIP";

                    //生成Refence NO. 由David增加 2020-10-12
                    inspectionHeader.Stock_In_Date = dataTable.Rows[0]["STDTWA"].ToString().Trim();

                    //因为AS400在2021后出现问题，AS400在2021时将服务的时候修改为2002年，所以Stock_In_Date需要将2002的调整为2021年
                    if (!string.IsNullOrEmpty(inspectionHeader.Stock_In_Date) && inspectionHeader.Stock_In_Date.Substring(0, 2) == "02")
                    {
                        inspectionHeader.Stock_In_Date = "21" + inspectionHeader.Stock_In_Date.Substring(2);
                    }

                    //inspectionHeader.RefNo = this.GetMaxRefNo(FISdc, inspectionHeader.Stock_In_Date, inspectionHeader.Item_No);
                    inspectionHeader.Warehouse = dataTable.Rows[0]["STRC80"].ToString().Trim();

                    //从MIDc中取布封和克重, 由David增加 2020-10-19
                    MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
                    var obj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == inspectionHeader.Supplier_Item_No);
                    if (obj != null)
                    {
                        //inspectionHeader.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth) / 1000.00M;

                        //2020-12-18 王生要求Width的单位修改为：mm
                        inspectionHeader.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth);


                        //取克重的算法修改 David 2020-10-23
                        inspectionHeader.StandardWeightGmSqm = obj.WeightGmSqm;
                        inspectionHeader.StandardWeightGmSqmMax = obj.WeightGmSqmMax.HasValue ? obj.WeightGmSqmMax : obj.WeightGmSqm;
                        inspectionHeader.StandardWeightGmSqmMin = obj.WeightGmSqmMin.HasValue ? obj.WeightGmSqmMin : obj.WeightGmSqm;
                        inspectionHeader.StandardWeightGmSqmS = obj.WeightGmSqmS;
                    }

                    //inspectionHeader.StandardWidth = (decimal)dataTable.Rows[0]["StandardWidth"];
                    //inspectionHeader.StandardWeightGmSqm = (decimal)dataTable.Rows[0]["StandardWeightGmSqm"];

                    //Shelley要求以下写入默认值 David 2020-10-16
                    inspectionHeader.ColorMatching = "Y";

                    //将Supp Item Ref/Clr Name拆分成两栏： Supp Item Ref、Clr Name  David 2020-10-22
                    inspectionHeader.SuppItemRef = dataTable.Rows[0]["SUPPITEMREF"].ToString();
                    inspectionHeader.ColorName = dataTable.Rows[0]["COLORNAME"].ToString();

                    //由David加入 2020-11-11
                    inspectionHeader.AuditStage = txtAuditStage.Text.Trim(); //"1st";

                    (masterListForm.BindingSource.Current as BaseEntity).CurrentDataContext = masterListForm.DataContext;
                    (masterListForm.BindingSource.Current as BaseEntity).CurrentBindingSource = masterListForm.BindingSource;

                    //inspectionHeader.Company = currentCompanyNo;
                    //inspectionHeader.Lot_Id = teIDNo.Text.Trim();
                    //inspectionHeader.Item_No = ((string)dataTable.Rows[0]["WITEM"]).Trim();
                    //// teHeaderItemDesc
                    //inspectionHeader.Item_Desc = ((string)dataTable.Rows[0]["WDESC"]).Trim();

                    //inspectionHeader.Actual_Length = (decimal)dataTable.Rows[0]["WLENG"];
                    //////Xsj20120605:因调整长短码计算的需要而注释掉以上代码，添加以下代码。
                    ////inspectionHeader.Actual_Length = (decimal)dataTable.Rows[0]["StoreLength"];

                    //inspectionHeader.Supplier_Length_Unit = ((string)dataTable.Rows[0]["WUNIT1"]).Trim();
                    //inspectionHeader.Supplier_Width = (decimal)dataTable.Rows[0]["WWIDTH"];
                    //inspectionHeader.Supplier_Width_Unit = ((string)dataTable.Rows[0]["WUNIT2"]).Trim();

                    //inspectionHeader.GM_SQM = (decimal)dataTable.Rows[0]["WWGHT"];

                    //inspectionHeader.PO = ((string)dataTable.Rows[0]["WPO"]).Trim();
                    //inspectionHeader.HdoNo = ((string)dataTable.Rows[0]["WHDO"]).Trim();
                    //inspectionHeader.ProjectNo = ((string)dataTable.Rows[0]["WPROJ"]).Trim();

                    //inspectionHeader.Supplier_Code = ((string)dataTable.Rows[0]["WVNDR"]).Trim();

                    //inspectionHeader.InvoiceNo = ((string)dataTable.Rows[0]["WINVO"]).Trim();

                    //inspectionHeader.Supplier_Item_No = ((string)dataTable.Rows[0]["WREF"]).Trim();
                    //inspectionHeader.SupplierItemColor = ((string)dataTable.Rows[0]["WCOL"]).Trim();


                    //inspectionHeader.Create_Date = DateTime.Now;

                    //(masterListForm.BindingSource.Current as BaseEntity).CurrentDataContext = masterListForm.DataContext;
                    //(masterListForm.BindingSource.Current as BaseEntity).CurrentBindingSource = masterListForm.BindingSource;

                    masterListForm.BindingSource.EndEdit();

                    //masterListForm.BindingSource.Add(inspectionHeader);


                    //}

                    //delete data
                    //strSQL = "delete from AULPHGMODS.PH984W where WGUID='" + key.ToString() + "'";
                    //PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);

                }


                if (inspectionHeader != null)
                {
                    FrmDefectsSetting.ShowDefectsSetting(masterListForm, inspectionHeader);
                    //false , close this window
                }


            }
            catch (Exception ex)
            {
                //MessageBox.Show("Error happened when execute sql \n" + ex.Message);
                MessageBox.Show("Error happened when execute sql \n" + ex.ToString());
            }
            finally
            {
                this.Cursor = currCursor;
            }
        }

        /// <summary>
        /// Xsj(补)20110926:生成AS400任务号：'Guid','yyyy/MM/dd HH:mm:ss','Company','Lot_Id','','000000',''
        /// </summary>
        /// <returns></returns>
        private string generateQueryString()
        {
            //脤戙賒醱趼僇隅砱ㄩ
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 蚚筳森炵緙?腔鼠侗
            sb.Append("'").Append(currentCompanyNo).Append("'").Append(", ");

            //4 LOT_ID 躉奻?腔ID.NO
            sb.Append("'").Append(teIDNo.Text.Trim()).Append("'").Append(", ");


            //5  ITEM_NO諾
            sb.Append("''").Append(", ");

            //6 STOCK_IN_DATE 錨
            sb.Append("'").Append("000000").Append("'").Append(", ");

            //7  MESSAGE諾
            sb.Append("''");

            return sb.ToString();

        }


        /// <summary>
        /// Xsj(补)20110926:获取MasterListForm中的指定CompanyNo和Lot_Id的记录
        /// </summary>
        /// <param name="companyNo"></param>
        /// <param name="lotId"></param>
        /// <returns></returns>
        private Fabric_Insp_Header LocateMasterRecord(string companyNo, string lotId, string AAuditStage)
        {

            int i = 0;
            int iCount = masterListForm.BindingSource.Count;

            masterListForm.BindingSource.MoveFirst();
            Fabric_Insp_Header tempMaster = null;

            while (i < iCount)
            {
                tempMaster = (Fabric_Insp_Header)masterListForm.BindingSource.Current;
                if ((tempMaster.Company == null) || (tempMaster.Lot_Id == null))
                {
                    masterListForm.BindingSource.MoveNext();
                    i++;
                    continue;
                }
                if (tempMaster.Company.Trim().Equals(companyNo.Trim()) && tempMaster.Lot_Id.Trim().Equals(lotId.Trim()) && tempMaster.AuditStage.Trim().Equals(AAuditStage))
                {
                    return tempMaster;
                }
                masterListForm.BindingSource.MoveNext();
                i++;
            }
            return null;
        }


        //Xsj(补)20110926:關閉窗體
        private void FrmLotIDInputter_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (dialogResultValueSetted == false)
            {
                this.DialogResult = DialogResult.Cancel;
                blankDefectsSetting.Close();
            }
        }



        ////得到最大的Ref No. 由David 加入  2020-09-29
        //public int? GetMaxRefNo(FabricInspectionDataContext ADB, string AStockInDate, string AItemNo)
        //{
        //    string SqlStr = string.Format("select dbo.fn_GetMaxRefNo('{0}','{1}')", AStockInDate, AItemNo);
        //    DataTable dt = ADB.ExecuteDataTable(SqlStr, "dtRefNo");
        //    if (dt == null || dt.Rows.Count == 0) return 0;

        //    return (int)dt.Rows[0][0];

        //    //var obj = ADB.Fabric_Insp_Headers.FirstOrDefault(p => p.Stock_In_Date == AStockInDate && p.Item_No == AItemNo && p.RefNo.HasValue);
        //    //if (obj != null)
        //    //{
        //    //    return obj.RefNo;
        //    //}

        //    //int MaxRefNoByStockInDate = ADB.Fabric_Insp_Headers.Where(p => p.Stock_In_Date == AStockInDate).Select(p => (p.RefNo ?? 0)).Max();
        //    //return (MaxRefNoByStockInDate > 0) ? (MaxRefNoByStockInDate + 1) : (Convert.ToInt32(AStockInDate) * 1000 + 1);
        //}



    }


}