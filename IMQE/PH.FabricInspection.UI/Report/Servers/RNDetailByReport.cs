using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    class RNDetailByReport
    {
        public RNDetailByReport()
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



        private string _change_user;
        /// <summary>
        /// Change_User	varchar	10	USER ID
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
        /// Change_Date	dateTime	8(0)	CHANGE DATE and Change Time
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


        private decimal _New_Inspect_Length;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal New_Inspect_Length
        {
            get
            {
                return _New_Inspect_Length;
            }
            set
            {
                _New_Inspect_Length = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }


        private decimal _New_Supplier_Length;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal New_Supplier_Length
        {
            get
            {
                return _New_Supplier_Length;
            }
            set
            {
                _New_Supplier_Length = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }

        public decimal New_Short_Length
        {
            get
            {
                return New_Supplier_Length - New_Inspect_Length;
            }
        }

        public decimal New_Short_Length_ForRecvQty
        {
            get
            {
                return Insp_Qty - New_Inspect_Length;
            }
        }


        private decimal _New_Usable_Width;
        /// <summary>
        /// Insp_Qty	decimal	11(4)	QTY Inspected
        /// </summary>
        public decimal New_Usable_Width
        {
            get
            {
                return _New_Usable_Width;
            }
            set
            {
                _New_Usable_Width = value;
                //this.OnPropertyChanged("Insp_Qty");
            }
        }


        #endregion



    }
}
