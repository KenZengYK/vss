using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.BackEnd
{
    public class SpreadDefectInfoForReportByPiece
    {


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


        private string _system_install_no;
        /// <summary>
        /// System_Install_No	int	9(0)	System_Install_No
        /// </summary>
        public string System_Install_No
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


        private string _defect_type;
        /// <summary>
        /// Defect_Type	varchar	1	Defect type(¡®S¡¯)
        /// </summary>
        public string Defect_Type
        {
            get
            {
                return _defect_type;
            }
            set
            {
                _defect_type = value;
                //this.OnPropertyChanged("Defect_Type");
            }
        }

        private string _defect_name;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name
        {
            get
            {
                return _defect_name;
            }
            set
            {
                _defect_name = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree
        {
            get
            {
                return _spread_defect_degree;
            }
            set
            {
                _spread_defect_degree = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place
        {
            get
            {
                return _from_place;
            }
            set
            {
                _from_place = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place
        {
            get
            {
                return _to_place;
            }
            set
            {
                _to_place = value;
                //this.OnPropertyChanged("To_Place");
            }
        }

        #endregion


    }
}
