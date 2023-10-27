using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Windows.Forms;
using System.Data.Linq;
using PH.Platform.BO;

namespace PH.FabricInspection.UI
{
    public class PH984Field
    {
        public PH984Field()
        {

        }

        #region field defines

        private string _record_status;

        /// <summary>
        /// Record_Status	Varchar	2	Record status (RC'=ACTIVE,'RZ'=DELETE)
        /// </summary>
        public string Record_Status
        {
            get
            {
                return _record_status;
            }
            set
            {
                //if (value.Length > 2) {
                //    throw new Exception("the value's length must be shorter than 2");
                //}
                _record_status = value;
                //this.OnPropertyChanged("Record_Status");
            }
        }


        /// <summary>
        /// Record_Status	Varchar	2	Record status (RC'=ACTIVE,'RZ'=DELETE)
        /// </summary>
        public string Record_Status_Desc
        {
            get
            {
                if ((_record_status != null) && (_record_status.Trim().ToUpper() == "RZ"))
                {
                    return "Inactive";
                }
                else
                {
                    return "Active";
                }
            }
        }

        private string _company;

        /// <summary>
        /// Company	varchar	2	Company Code
        /// </summary>
        public string Company
        {
            get
            {
                return _company;
            }
            set
            {
                _company = value;
                //this.OnPropertyChanged("Company");
            }
        }


        private int _system_install_no;
        /// <summary>
        /// System_Install_No	int	9(0)	System Install No
        /// </summary>
        public int System_Install_No
        {
            get
            {
                return _system_install_no;
            }
            set
            {
                _system_install_no = value;
                //this.OnPropertyChanged("System_Install_No");
            }
        }

        private string _item_no;
        /// <summary>
        /// Item_No	varchar	15	Item code
        /// </summary>
        public string Item_No
        {
            get
            {
                return _item_no;
            }
            set
            {
                _item_no = value;
                //this.OnPropertyChanged("Item_No");
            }
        }

        private string _item_Desc;
        /// <summary>
        /// Item_Desc	varchar	36	Item Desc
        /// </summary>
        public string Item_Desc
        {
            get
            {
                return _item_Desc;
            }
            set
            {
                _item_Desc = value;
                //this.OnPropertyChanged("Item_Desc");
            }
        }


        private string _lot_id;
        /// <summary>
        /// Lot_Id	varchar	15	Lot id
        /// </summary>
        public string Lot_Id
        {
            get
            {
                return _lot_id;
            }
            set
            {
                _lot_id = value;
                //this.OnPropertyChanged("Lot_Id");
            }
        }

        private decimal _actual_length;
        /// <summary>
        /// Actual_Length	decimal	11(4)	Supplier length
        /// </summary>
        public decimal Actual_Length
        {
            get
            {
                return _actual_length;
            }
            set
            {
                _actual_length = value;
                //this.OnPropertyChanged("Actual_Length");
            }
        }

        private decimal _supplier_Width;
        /// <summary>
        /// Supplier_Width	decimal	11(4)	Supplier Width
        /// </summary>
        public decimal Supplier_Width
        {
            get
            {
                return _supplier_Width;
            }
            set
            {
                _supplier_Width = value;
                //this.OnPropertyChanged("Supplier_Width");
            }
        }

        private decimal _insp_length;
        /// <summary>
        /// Insp_Length	decimal	11(4)	Insp length
        /// </summary>
        public decimal Insp_Length
        {
            get
            {
                return _insp_length;
            }
            set
            {
                _insp_length = value;
                //this.OnPropertyChanged("Insp_Length");
            }
        }

        private decimal _GM_SQM;
        /// <summary>
        /// GM_SQM	decimal	11(4)	GM/SQM  (平方克重)
        /// </summary>
        public decimal GM_SQM
        {
            get
            {
                return _GM_SQM;
            }
            set
            {
                _GM_SQM = value;
                //this.OnPropertyChanged("GM_SQM");
            }
        }

        private decimal _usable_width;

        public decimal Usable_Width
        {
            get
            {
                return _usable_width;
            }
            set
            {
                _usable_width = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }

        private string _supplich_batch;
        /// <summary>
        /// Supplich_Batch	varchar	15	Supplier Batch
        /// </summary>
        public string Supplich_Batch
        {
            get
            {
                return _supplich_batch;
            }
            set
            {
                _supplich_batch = value;
                //this.OnPropertyChanged("Supplich_Batch");
            }
        }

        private string _roll_no;
        /// <summary>
        /// Roll_No	varchar	10	Roll No
        /// </summary>
        public string Roll_No
        {
            get
            {
                return _roll_no;
            }
            set
            {
                _roll_no = value;
                //this.OnPropertyChanged("Roll_No");
            }
        }

        private int _total_points;
        /// <summary>
        /// Total_Points	int	7	Total Points (?罰分)
        /// </summary>
        public int Total_Points
        {
            get
            {
                return _total_points;
            }
            set
            {
                _total_points = value;
                //this.OnPropertyChanged("Total_Points");
            }
        }

        private decimal _points_hundred_sqm;
        /// <summary>
        /// points_ hundred_sqm	decimal	11(4)	Points /100m2 (平均罰分)
        /// </summary>
        public decimal Points_Hundred_SQM
        {
            get
            {
                return _points_hundred_sqm;
            }
            set
            {
                _points_hundred_sqm = value;
                //this.OnPropertyChanged("points_ hundred_sqm");
            }
        }


        private decimal _deductive_qty;
        /// <summary>
        /// Deductive_Qty	decimal	11(4)	deductive Qty(扣碼)
        /// </summary>
        public decimal Deductive_Qty
        {
            get
            {
                return _deductive_qty;
            }
            set
            {
                _deductive_qty = value;
                //this.OnPropertyChanged("Deductive_Qty");
            }
        }

        private decimal _wastage;
        /// <summary>
        /// Wastage	decimal	11(4)	Wastage(損耗率)
        /// </summary>
        public decimal Wastage
        {
            get
            {
                return _wastage;
            }
            set
            {
                _wastage = value;
                //this.OnPropertyChanged("Wastage");
            }
        }


        private string _insp_result;
        /// <summary>
        /// Insp_Result	varchar	    1	Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Insp_Result
        {
            get
            {
                return _insp_result;
            }
            set
            {
                _insp_result = value;
                //this.OnPropertyChanged("Insp_Result");
            }
        }


        /// <summary>
        /// Insp_Result	varchar	    1	Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Insp_Result_Desc
        {
            get
            {
                if (this._insp_result == "1")
                {
                    return RecordStatus.OK_DESCRIPTION;
                }
                else if (this._insp_result == "2")
                {
                    return RecordStatus.DEDUCTIVE_DESCRIPTION;
                }
                else if (this._insp_result == "3")
                {
                    return RecordStatus.REJECT_DESCRIPTION;
                }
                else
                {
                    return "";
                }

            }
        }
        private string _party_insp_result;
        /// <summary>
        /// Party_Insp_Result	varchar	    1	Party defect Insp result '1'= OK, '2'= Deductive,'3'=Reject
        /// </summary>
        public string Party_Insp_Result
        {
            get
            {
                return _party_insp_result;
            }
            set
            {
                _party_insp_result = value;
                //this.OnPropertyChanged("Party_Insp_Result");
            }
        }

        private string _spread_insp_result;
        /// <summary>
        /// Spread_Insp_Result	varchar	    1	spreat defect Insp result ‘1’= OK, ‘2’= Deductive,’3’=Reject
        /// </summary>
        public string Spread_Insp_Result
        {
            get
            {
                return _spread_insp_result;
            }
            set
            {
                _spread_insp_result = value;
                //this.OnPropertyChanged("Spread_Insp_Result");
            }
        }

        private string _mould_trial_result;
        /// <summary>
        /// Mould_Trial_Result	varchar	    1	spreat defect Insp result ‘1’=OK, ’3’=Reject
        /// </summary>
        public string Mould_Trial_Result
        {
            get
            {
                return _mould_trial_result;
            }
            set
            {
                _mould_trial_result = value;
                //this.OnPropertyChanged("Mould_Trial_Result");
            }
        }

        private string _spread_defect_exist;
        /// <summary>
        /// Spread_Defect_Exist	varchar	    1	spread defect 'Y'= Exist Spread defect, 'N'= Inexistence Spread defect
        /// </summary>
        public string Spread_Defect_Exist
        {
            get
            {
                return _spread_defect_exist;
            }
            set
            {
                _spread_defect_exist = value;
                //this.OnPropertyChanged("Spread_Defect_Exist");
            }
        }


        private string _insp_confirm;
        /// <summary>
        /// Insp_Confirm	varchar	    1	'Y'= CONFIRM , 'N'= NO CONFIRM
        /// </summary>
        public string Insp_Confirm
        {
            get
            {
                return _insp_confirm;
            }
            set
            {
                _insp_confirm = value;
                //this.OnPropertyChanged("Insp_Confirm");
            }
        }

        private int _RN_number;
        /// <summary>
        /// RN_number	int	9(0)	RN Number
        /// </summary>
        public int RN_number
        {
            get
            {
                return _RN_number;
            }
            set
            {
                _RN_number = value;
                //this.OnPropertyChanged("RN_number");
            }
        }

        private decimal _PH_Sample;
        /// <summary>
        /// PH_Sample	float	PH_Sample
        /// </summary>
        public decimal PH_Sample
        {
            get
            {
                return _PH_Sample;
            }
            set
            {
                _PH_Sample = value;
                //this.OnPropertyChanged("PH_Sample");
            }
        }

        private decimal _Panel_Size1;
        /// <summary>
        /// Panel_Size1	float	Panel_Size1
        /// </summary>
        public decimal Panel_Size1
        {
            get
            {
                return _Panel_Size1;
            }
            set
            {
                _Panel_Size1 = value;
                //this.OnPropertyChanged("Panel_Size1");
            }
        }

        private decimal _Panel_Size2;
        /// <summary>
        /// Panel_Size2	float	Panel_Size2
        /// </summary>
        public decimal Panel_Size2
        {
            get
            {
                return _Panel_Size2;
            }
            set
            {
                _Panel_Size2 = value;
                //this.OnPropertyChanged("Panel_Size2");
            }
        }

        private decimal _special_marker;

        public decimal Special_Marker
        {
            get
            {
                return _special_marker;
            }
            set
            {
                _special_marker = value;
                //this.OnPropertyChanged("Special_Marker");
            }
        }

        private string _mould_Trial_Remark;
        /// <summary>
        /// Mould trial的說明
        /// </summary>
        public string Mould_Trial_Remark
        {
            get
            {
                return _mould_Trial_Remark;
            }
            set
            {
                _mould_Trial_Remark = value;
                //this.OnPropertyChanged("Mould_Trial_Remark");
            }
        }

        /// <summary>
        /// Stock_In_Date
        /// </summary>
        public string Stock_In_Date
        {
            get
            {
                if (Lot_Id != null)
                {
                    return Lot_Id.Substring(0, 6);
                }
                return "";
            }
        }

        private int _turn_Size;
        /// <summary>
        /// 每Turn_Size大小的布检测一次
        /// </summary>
        public int Turn_Size
        {
            get
            {
                return _turn_Size;
            }
            set
            {
                _turn_Size = value;
                //this.OnPropertyChanged("Turn_Size");
            }
        }

        private string _supplier_Length_Unit;
        /// <summary>
        /// Supplier Length's Unti
        /// </summary>
        public string Supplier_Length_Unit
        {
            get
            {
                return _supplier_Length_Unit;
            }
            set
            {
                _supplier_Length_Unit = value;
                //this.OnPropertyChanged("Supplier_Length_Unit");
            }
        }

        private string _supplier_Width_Unit;
        /// <summary>
        /// Supplier Width Unit
        /// </summary>
        public string Supplier_Width_Unit
        {
            get
            {
                return _supplier_Width_Unit;
            }
            set
            {
                _supplier_Width_Unit = value;
                //this.OnPropertyChanged("Supplier_Width_Unit");
            }
        }

        private string _inspector;
        /// <summary>
        /// Inspector	varchar	   10	Inspector
        /// </summary>
        public string Inspector
        {
            get
            {
                return _inspector;
            }
            set
            {
                _inspector = value;
                //this.OnPropertyChanged("Inspector");
            }
        }

        private string _create_user;
        /// <summary>
        /// Create_User	varchar	   10	Create user
        /// </summary>
        public string Create_User
        {
            get
            {
                return _create_user;
            }
            set
            {
                _create_user = value;
                //this.OnPropertyChanged("Create_User");
            }
        }


        private DateTime _create_date;
        /// <summary>
        /// Create_Date	dateTime	8(0)	CREATE DATE and Create Time
        /// </summary>
        public DateTime Create_Date
        {
            get
            {
                return _create_date;
            }
            set
            {
                _create_date = value;
                //this.OnPropertyChanged("Create_Date");
            }
        }



        private string _change_user;
        /// <summary>
        /// Change_User	varchar	   10	change user
        /// </summary>
        public string Change_User
        {
            get
            {
                return _change_user;
            }
            set
            {
                _change_user = value;
                //this.OnPropertyChanged("Change_User");
            }
        }


        private DateTime _change_date;
        /// <summary>
        /// Change_Date	dateTime	8(0)	change DATE and change Time
        /// </summary>
        public DateTime Change_Date
        {
            get
            {
                return _change_date;
            }
            set
            {
                _change_date = value;
                //this.OnPropertyChanged("Change_Date");
            }
        }


        private string _use_status;
        /// <summary>
        /// Use_Status	varchar	    1	In used status (1= used, blank =no used)
        /// </summary>
        public string Use_Status
        {
            get
            {
                return _use_status;
            }
            set
            {
                _use_status = value;
                //this.OnPropertyChanged("Use_Status");
            }
        }

        private string _po;

        public string PO
        {
            get { return _po; }
            set { _po = value; }
        }

        private string _hdoNo;

        public string HdoNo
        {
            get { return _hdoNo; }
            set { _hdoNo = value; }
        }


        private string _projectNo;

        public string ProjectNo
        {
            get { return _projectNo; }
            set { _projectNo = value; }
        }

        private string _invoiceNo;
        /// <summary>
        /// L:把文件AULPHGMODS/PH984W滿足條件的不同的WINVO字符合並.
        /// </summary>
        public string InvoiceNo
        {
            get { return _invoiceNo; }
            set { _invoiceNo = value; }
        }

        private string _supplier_Name;
        /// <summary>
        /// L:把文件AULPHGMODS/PH984W的不WVNDR
        /// </summary>
        public string SupplierName
        {
            get { return _supplier_Name; }
            set { _supplier_Name = value; }
        }

        private string _new_supplier_Name;
        /// <summary>
        /// L:把文件AULPHMODS/PH984W : WSNAM
        /// </summary>
        public string NewSupplierName
        {
            get { return _new_supplier_Name; }
            set { _new_supplier_Name = value; }
        }

        private string _new_supplier_color;
        /// <summary>
        /// L:把文件AULPHMODS/PH984W : WSNAM
        /// </summary>
        public string NewSupplierColor
        {
            get { return _new_supplier_color; }
            set { _new_supplier_color = value; }
        }

        private string _Supplier_Item_No;
        /// <summary>
        /// </summary>
        public string Supplier_Item_No
        {
            get { return _Supplier_Item_No; }
            set { _Supplier_Item_No = value; }
        }
        // BEGIN 20091209 SHARLY
        private string _SupplierItemColor;
        public string SupplierItemColor
        {
            get { return _SupplierItemColor; }
            set { _SupplierItemColor = value; }
        }
        // END  20091209 SHARLY

        private string _supplier_Description;
        /// <summary>
        /// L:把文件AULPHGMODS/PH984W的不WSNAM
        /// </summary>
        public string Supplier_Description
        {
            get { return _supplier_Description; }
            set { _supplier_Description = value; }
        }

        #endregion

        #region Xsj:矗ど硉τ糤

        public FabricInspection.BO.FabricInspectionDataContext FISdc
        {
            get;
            set;
        }

        #endregion

        public static List<PH984Field> GetAllDataFromAS400WithItemNo(string company, string strItemNo, string strStockInDate)
        {
            try
            {
                Guid key = Guid.NewGuid();
                DateTime time = DateTime.Now;
                string timeFormat = "yyyy/MM/dd HH:mm:ss";

                List<PH984Field> resultData = new List<PH984Field>();
                PH984Field temp = null;
                //1: generate data
                StringBuilder sb = new StringBuilder();
                sb.Append("call AULPHGMODS.PH984(").Append(generateQueryString(key, time, timeFormat, company, strItemNo, strStockInDate)).Append(")");

                string strSQL = sb.ToString();

                PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);


                //2: select data             

                #region Xsj20111129:絏矗ど硉τ砆猔睦奔
                ////strSQL = "SELECT * FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
                //DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
                #endregion
                #region  Xsj20111129:絏矗ど硉τ睰絏

                FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
                string sqlStr="Select * from openquery([as400],'SELECT * FROM AULPHGMODS.PH984W Where WGUID =''" + key.ToString() + "''')";
                DataTable dataTable = FISdc.ExecuteDataTable(sqlStr, "t0");

                #endregion

                if (dataTable.Rows.Count > 0)
                {
                    for (int i = 0, iSize = dataTable.Rows.Count; i < iSize; i++)
                    {
                        temp = new PH984Field();

                        //========Peter 20080112==============
                        string suppReference = ((string)dataTable.Rows[i]["WREF"]).Trim();
                        /*?? TODO 
                                            PH.MIDc.BO.MIDc_Detail d = GlobalInfo.MIDcHelper.GetMIDcDetailBySuppReference(suppReference);
                                            if (d != null)
                                            {
                                                temp.Supplier_Width = d.SupplierWidth;
                                                temp.GM_SQM = d.WeightGmSqm;
                                            }
                        */
                        //======================>>

                        //freddy V2
                        //PH.MIDc.BO.MIDcDataContext context = new PH.MIDc.BO.MIDcDataContext();

                        PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

                        var ds = from d in context.Details where (d.SuppRef == suppReference) select d;
                        PH.MIDc.BO.Detail[] dsDetails = ds.ToArray();
                        if ((dsDetails != null) && (dsDetails.Length > 0))
                        {
                            if (dsDetails[0].SupplierWidth != null)
                            {
                                temp.Supplier_Width = (decimal)dsDetails[0].SupplierWidth;
                            }
                            else
                            {
                                temp.Supplier_Width = 0;
                            }

                            if (dsDetails[0].WeightGmSqm != null)
                            {
                                temp.GM_SQM = (decimal)dsDetails[0].WeightGmSqm;
                            }
                            else
                            {
                                temp.GM_SQM = 0;
                            }

                            if (dsDetails[0].UsableWidth != null)
                            {
                                temp.Usable_Width = (decimal)dsDetails[0].UsableWidth;
                            }
                            else
                            {
                                temp.Usable_Width = 0;
                            }

                        }

                        temp.Company = company;
                        temp.Lot_Id = ((string)dataTable.Rows[i]["WLOCN"]).Trim();
                        temp.Item_No = ((string)dataTable.Rows[i]["WITEM"]).Trim();
                        // teHeaderItemDesc
                        temp.Item_Desc = (string)dataTable.Rows[i]["WDESC"];
                        temp.Actual_Length = (decimal)dataTable.Rows[i]["WLENG"];
                        //temp.GM_SQM = (decimal)dataTable.Rows[i]["WWGHT"];
                        temp.Create_Date = DateTime.Now;
                        temp.PO = (string)dataTable.Rows[i]["WPO"];
                        temp.HdoNo = (string)dataTable.Rows[i]["WHDO"];
                        temp.ProjectNo = (string)dataTable.Rows[i]["WPROJ"];
                        temp.InvoiceNo = (string)dataTable.Rows[i]["WINVO"];
                        temp.Supplier_Item_No = (string)dataTable.Rows[i]["WREF"];
                        temp.SupplierItemColor = (string)dataTable.Rows[i]["WCOL"];
                        temp.SupplierName = (string)dataTable.Rows[i]["WVNDR"];
                        temp.Supplier_Description = (string)dataTable.Rows[i]["WSNAM"];


                        resultData.Add(temp);
                    }
                }
                strSQL = "DELETE FROM AULPHGMODS.PH984W where WGUID = '" + key.ToString() + "' ";
                PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);
                return resultData;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }

        }

        private static string generateQueryString(Guid key, DateTime time, string timeFormat, string company, string strItemNo, string strStockInDate)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時?入的公司
            sb.Append("'").Append(company).Append("'").Append(", ");

            //4 LOT_ID 為空
            sb.Append("'").Append("").Append("'").Append(", ");


            //5  ITEM_NO
            sb.Append("'").Append(strItemNo).Append("'").Append(", ");

            //6 STOCK_IN_DATE 為零
            //sb.Append("'").Append("000000").Append("'").Append(", ");
            sb.Append("'").Append(strStockInDate).Append("'").Append(", ");

            //7  MESSAGE為空
            sb.Append("''");

            return sb.ToString();

        }

    }
}
