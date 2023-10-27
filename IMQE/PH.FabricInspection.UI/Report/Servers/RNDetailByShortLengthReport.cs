using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    class RNDetailByShortLengthReport
    {
        public RNDetailByShortLengthReport()
        {

        }



        #region header field defines
        private string _record_status;
        /// <summary>
        /// Record_Status	varchar	2	Record_Status
        /// </summary>
        public string Record_Status
        {
            get
            {
                return _record_status;
            }
            set
            {
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
        /// Company	varchar	2	Company
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



        private int _system_install_no;
        /// <summary>
        /// System_Install_No	int	9(0)	System_Install_No
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
        /// Item_No	varchar	15	Item_No
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


        private string _lot_id;
        /// <summary>
        /// Lot_Id	varchar	15	Lot_id
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

        private decimal _insp_qty;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal Insp_Qty
        {
            get
            {
                return _insp_qty;
            }
            set
            {
                _insp_qty = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        private string _reject_reason;
        /// <summary>
        /// Reject_Reason	varchar	30	Reason for Rejection
        /// </summary>
        public string Reject_Reason
        {
            get
            {
                return _reject_reason;
            }
            set
            {
                _reject_reason = value;
                //this.OnPropertyChanged("Reject_Reason");
            }
        }


        private string _supplier_name;
        /// <summary>
        /// Supplier_Name	varchar	8	Supplier name
        /// </summary>
        public string Supplier_Name
        {
            get
            {
                return _supplier_name;
            }
            set
            {
                _supplier_name = value;
                //this.OnPropertyChanged("Supplier_Name");
            }
        }

        private string _HDO_no;
        /// <summary>
        /// HDO_no	varchar	15	HDO No
        /// </summary>
        public string HDO_no
        {
            get
            {
                return _HDO_no;
            }
            set
            {
                _HDO_no = value;
                //this.OnPropertyChanged("HDO_no");
            }
        }


        private string _project_no;
        /// <summary>
        /// Project_No	varchar	15	Project No
        /// </summary>
        public string Project_No
        {
            get
            {
                return _project_no;
            }
            set
            {
                _project_no = value;
                //this.OnPropertyChanged("Project_No");
            }
        }

        private string _supplier_inv_no;
        /// <summary>
        /// Supplier_Inv_No	varchar	15	Supplier Inv.No.
        /// </summary>
        public string Supplier_Inv_No
        {
            get
            {
                return _supplier_inv_no;
            }
            set
            {
                _supplier_inv_no = value;
                //this.OnPropertyChanged("Supplier_Inv_No");
            }
        }

        private string _po_no;
        /// <summary>
        /// Po_No	varchar	15	PO No
        /// </summary>
        public string Po_No
        {
            get
            {
                return _po_no;
            }
            set
            {
                _po_no = value;
                //this.OnPropertyChanged("Po_No");
            }
        }



        private string _batch_no;
        /// <summary>
        /// Batch_No	varchar
        /// </summary>
        public string Batch_No
        {
            get
            {
                return _batch_no;
            }
            set
            {
                _batch_no = value;
                //this.OnPropertyChanged("Batch_No");
            }
        }



        private string _roll_no;
        /// <summary>
        /// Batch_No	varchar
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


        private decimal _Inspect_Length;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal Inspect_Length
        {
            get
            {
                return _Inspect_Length;
            }
            set
            {
                _Inspect_Length = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }


        private decimal _Supplier_Length;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal Supplier_Length
        {
            get
            {
                return _Supplier_Length;
            }
            set
            {
                _Supplier_Length = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        public decimal Short_Length
        {
            get
            {
                return Supplier_Length - Inspect_Length;
            }
        }


        #endregion



        #region header field defines
        private string _record_status2;
        /// <summary>
        /// Record_Status	varchar	2	Record_Status
        /// </summary>
        public string Record_Status2
        {
            get
            {
                return _record_status2;
            }
            set
            {
                _record_status2 = value;
                //this.OnPropertyChanged("Record_Status");
            }
        }


        /// <summary>
        /// Record_Status	Varchar	2	Record status (RC'=ACTIVE,'RZ'=DELETE)
        /// </summary>
        public string Record_Status_Desc2
        {
            get
            {
                if ((_record_status2 != null) && (_record_status2.Trim().ToUpper() == "RZ"))
                {
                    return "Inactive";
                }
                else
                {
                    return "Active";
                }
            }
        }

        private string _company2;
        /// <summary>
        /// Company	varchar	2	Company
        /// </summary>
        public string Company2
        {
            get
            {
                return _company2;
            }
            set
            {
                _company2 = value;
                //this.OnPropertyChanged("Company");
            }
        }


        private string _RN_number2;
        /// <summary>
        /// RN_number	int	9(0)	RN Number
        /// </summary>
        public string RN_number2
        {
            get
            {
                return _RN_number2;
            }
            set
            {
                _RN_number2 = value;
                //this.OnPropertyChanged("RN_number");
            }
        }



        private string _system_install_no2;
        /// <summary>
        /// System_Install_No	int	9(0)	System_Install_No
        /// </summary>
        public string System_Install_No2
        {
            get
            {
                return _system_install_no2;
            }
            set
            {
                _system_install_no2 = value;
                //this.OnPropertyChanged("System_Install_No");
            }
        }

        private string _item_no2;
        /// <summary>
        /// Item_No	varchar	15	Item_No
        /// </summary>
        public string Item_No2
        {
            get
            {
                return _item_no2;
            }
            set
            {
                _item_no2 = value;
                //this.OnPropertyChanged("Item_No");
            }
        }


        private string _lot_id2;
        /// <summary>
        /// Lot_Id	varchar	15	Lot_id
        /// </summary>
        public string Lot_Id2
        {
            get
            {
                return _lot_id2;
            }
            set
            {
                _lot_id2 = value;
                //this.OnPropertyChanged("Lot_Id");
            }
        }

        private string _insp_qty2;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public string Insp_Qty2
        {
            get
            {
                return _insp_qty2;
            }
            set
            {
                _insp_qty2 = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        private string _reject_reason2;
        /// <summary>
        /// Reject_Reason	varchar	30	Reason for Rejection
        /// </summary>
        public string Reject_Reason2
        {
            get
            {
                return _reject_reason2;
            }
            set
            {
                _reject_reason2 = value;
                //this.OnPropertyChanged("Reject_Reason");
            }
        }


        private string _supplier_name2;
        /// <summary>
        /// Supplier_Name	varchar	8	Supplier name
        /// </summary>
        public string Supplier_Name2
        {
            get
            {
                return _supplier_name2;
            }
            set
            {
                _supplier_name2 = value;
                //this.OnPropertyChanged("Supplier_Name");
            }
        }

        private string _HDO_no2;
        /// <summary>
        /// HDO_no	varchar	15	HDO No
        /// </summary>
        public string HDO_no2
        {
            get
            {
                return _HDO_no2;
            }
            set
            {
                _HDO_no2 = value;
                //this.OnPropertyChanged("HDO_no");
            }
        }


        private string _project_no2;
        /// <summary>
        /// Project_No	varchar	15	Project No
        /// </summary>
        public string Project_No2
        {
            get
            {
                return _project_no2;
            }
            set
            {
                _project_no2 = value;
                //this.OnPropertyChanged("Project_No");
            }
        }

        private string _supplier_inv_no2;
        /// <summary>
        /// Supplier_Inv_No	varchar	15	Supplier Inv.No.
        /// </summary>
        public string Supplier_Inv_No2
        {
            get
            {
                return _supplier_inv_no2;
            }
            set
            {
                _supplier_inv_no2 = value;
                //this.OnPropertyChanged("Supplier_Inv_No");
            }
        }

        private string _po_no2;
        /// <summary>
        /// Po_No	varchar	15	PO No
        /// </summary>
        public string Po_No2
        {
            get
            {
                return _po_no2;
            }
            set
            {
                _po_no2 = value;
                //this.OnPropertyChanged("Po_No");
            }
        }



        private string _batch_no2;
        /// <summary>
        /// Batch_No	varchar
        /// </summary>
        public string Batch_No2
        {
            get
            {
                return _batch_no2;
            }
            set
            {
                _batch_no2 = value;
                //this.OnPropertyChanged("Batch_No");
            }
        }



        private string _roll_no2;
        /// <summary>
        /// Batch_No	varchar
        /// </summary>
        public string Roll_No2
        {
            get
            {
                return _roll_no2;
            }
            set
            {
                _roll_no2 = value;
                //this.OnPropertyChanged("Roll_No");
            }
        }


        private string _Inspect_Length2;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public string Inspect_Length2
        {
            get
            {
                return _Inspect_Length2;
            }
            set
            {
                _Inspect_Length2 = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }


        private string _Supplier_Length2;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public string Supplier_Length2
        {
            get
            {
                return _Supplier_Length2;
            }
            set
            {
                _Supplier_Length2 = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        private string _Short_Length2;
        public string Short_Length2
        {
            get
            {
                return _Short_Length2;
            }
            set
            {
                _Short_Length2 = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }


        #endregion



    }
}
