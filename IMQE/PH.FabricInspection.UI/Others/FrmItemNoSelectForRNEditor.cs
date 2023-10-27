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
using System.Linq;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    public partial class FrmItemNoSelectForRNEditor : DevExpress.XtraEditors.XtraForm
    {
        PH.FabricInspection.BO.Fabric_Insp_Header[] tempIQC01s = null;
        public Fabric_Insp_Header selectedValue;
        private PH.FabricInspection.BO.FabricInspectionDataContext context;

        public FrmItemNoSelectForRNEditor(PH.FabricInspection.BO.FabricInspectionDataContext paramContext)
        {
            InitializeComponent();
            //婓森偞离DataSource睿context﹝
            context = paramContext;

            #region Xsj20111129:如下代碼為了提升速度而被注釋掉
            //LoadAllData();
            #endregion

            #region  Xsj20111129:如下代碼為了提升速度而添加
            //Xsj:應Shelly的要求，初始化Stock_In_Date
            this.dateEdit_StockInDateFrom.EditValue = DateTime.Now.AddDays(-60);
            #endregion

            this.Text = this.Text + " [User:" + GlobalInfo.GetCurrentUserId() + "]";
        }

        private void LoadAllData()
        {
            try
            {
                // begin 2010/01/22  -- sharly

                //var tempData = (from inspHeader in context.Fabric_Insp_Headers
                //                where !(from rnDetail in context.RN_Details
                //                        join rnHeader in context.RN_Headers
                //                        on rnDetail.RN_number equals rnHeader.RN_number
                //                        into rnInfo
                //                        from prod in rnInfo
                //                        //where prod.RN_confirm.Equals("1")
                //                        select prod.Item_No
                //                     ).Contains(inspHeader.Item_No)
                //                select inspHeader).Distinct();
                ////select new { 
                ////    inspHeader.Company ,
                ////    inspHeader.Item_No,
                ////    inspHeader.Stock_In_Date,
                ////    inspHeader.Item_Desc
                ////}).Distinct();



                #region Xsj20111129:如下代碼為了提升速度而被注釋掉

                //var tempData = (from m in context.Fabric_Insp_Headers
                //                from d in context.view_RNSelectItemNos
                //                where m.Item_No == d.Item_No && m.Stock_In_Date == d.Stock_In_Date
                //                select m).Distinct();

                #endregion

                #region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

                string itemNo = this.textEdit_ItemNo.EditValue == null ? "" : this.textEdit_ItemNo.EditValue.ToString();
                object stockInDateFromObj=this.dateEdit_StockInDateFrom.EditValue;
                object stockInDateEndObj=this.dateEdit_StockInDateEnd.EditValue;
                DateTime stockInDateFromVal = Convert.ToDateTime(stockInDateFromObj);
                DateTime stockInDateEndVal = Convert.ToDateTime(stockInDateEndObj);

                var tempData = (from m in context.Fabric_Insp_Headers
                                from d in context.view_RNSelectItemNos
                                where  m.Item_No  ==  d.Item_No &&
                                (itemNo == "" ? true : m.Item_No.StartsWith(itemNo)) &&
                                m.Stock_In_Date == d.Stock_In_Date &&
                                (stockInDateFromObj==null?true : d.Stock_In_Date.CompareTo(stockInDateFromVal.ToString("yyMMdd")) >= 0) &&
                                (stockInDateEndObj == null ? true : d.Stock_In_Date.CompareTo(stockInDateEndVal.ToString("yyMMdd")) <= 0)
                                select m).OrderBy(p=>p.Stock_In_Date).Distinct();

                #endregion


                // end 2010/01/22  -- sharly      

                //var tempData = //from inspHeader in context.Fabric_Insp_Headers
                //               from rnDetail in context.RN_Details

                //               join rnHeader in context.RN_Headers 
                //               on rnDetail.RN_number equals rnHeader.RN_number 
                //               && rnHeader.RN_confirm equals "1" 
                //               select rnDetail

                //                select * from Fabric_Insp_Headers 

                //where  
                //Item_No not in (
                //select ItemNo from RN_Details
                //inner join RN_Headers on RN_Number = RN_Number
                //where 
                //RN_Headers .RN_Confirmed = 1
                //and RN_Headers.RN_Number > 1

                //)
                //                var tempData = from p in context.Insp_header
                //                               where p.RN_number <= 0
                //                               select p;

                #region Xsj20111129:如下代碼為了提升速度而被注釋掉

                tempIQC01s = tempData.ToArray();
                List<Fabric_Insp_Header> inspectionHeaders = new List<Fabric_Insp_Header>();
                Fabric_Insp_Header temp = null;
                for (int i = tempIQC01s.Length - 1; i >= 0; i--)
                {
                    temp = FindInspectionHeaderWithItemNoAndStockInDate(inspectionHeaders, tempIQC01s[i].Item_No, tempIQC01s[i].Stock_In_Date);

                    if (temp == null)
                    {
                        inspectionHeaders.Add(tempIQC01s[i]);
                    }
                }
                tempIQC01s = inspectionHeaders.ToArray();
                this.bsParameterType.DataSource = tempIQC01s;

                #endregion

                //#region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼

                //tempIQC01s = context.P_RNItemSource().ToArray();
                //this.bsParameterType.DataSource = tempIQC01s;

                //#endregion


            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load Parameter Type \n" + ex.Message);
            }






            //try
            //{
            //    //tempIQC01s = InspectionHeader.GetAllInspectionInformations(GlobalInfo.FBIDB);
            //    tempIQC01s = InspectionHeader.GetUngeneratedRNInspectionHeaders(GlobalInfo.FBIDB);
            //    this.bsParameterType.DataSource = tempIQC01s;
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show("Error happened when load Item No \n" + ex.Message);
            //}              

        }

        private static Fabric_Insp_Header FindInspectionHeaderWithItemNoAndStockInDate(List<Fabric_Insp_Header> inspections, string strItemNo, string strStockInDate)
        {
            foreach (Fabric_Insp_Header temp in inspections)
            {
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == strStockInDate))
                {
                    return temp;
                }
            }
            return null;
        }


        public static Fabric_Insp_Header ShowItemNoSelectForRNEditor(PH.FabricInspection.BO.FabricInspectionDataContext paramContext)
        {

            try
            {
                FrmItemNoSelectForRNEditor frmParameterType = new FrmItemNoSelectForRNEditor(paramContext);
                DialogResult result = frmParameterType.ShowDialog();
                return frmParameterType.selectedValue;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when open the ParameterTypeSelect form  \n" + ex.Message);
            }
            return null;
        }

        private void sbSelect_Click(object sender, EventArgs e)
        {
            if (this.bsParameterType.Count <= 0)
            {
                MessageBox.Show("No Item No exists!");
                return;
            }

            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                if (tempIQC01s != null)
                {
                    if ((tempIQC01s.Length > 0) && (bsParameterType.Position >= 0) && (bsParameterType.Position < tempIQC01s.Length))
                    {

                        //selectedValue = tempIQC01s[bsParameterType.Position].Item_No;
                        selectedValue = tempIQC01s[bsParameterType.Position];
                        this.DialogResult = DialogResult.OK;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when select all ParameterType from db \n" + ex.Message);
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


        #region  Xsj20111129:如下代碼為了提升速度而添加

        private void sBtn_Find_Click(object sender, EventArgs e)
        {
            LoadAllData();
        }

        #endregion
    }


}