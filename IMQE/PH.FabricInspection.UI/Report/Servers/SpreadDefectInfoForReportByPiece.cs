using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    class SpreadDefectInfoForReportByPiece
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

        private string _defect_name0;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name0
        {
            get
            {
                return _defect_name0;
            }
            set
            {
                _defect_name0 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree0;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree0
        {
            get
            {
                return _spread_defect_degree0;
            }
            set
            {
                _spread_defect_degree0 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place0;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place0
        {
            get
            {
                return _from_place0;
            }
            set
            {
                _from_place0 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place0;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place0
        {
            get
            {
                return _to_place0;
            }
            set
            {
                _to_place0 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name1;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name1
        {
            get
            {
                return _defect_name1;
            }
            set
            {
                _defect_name1 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree1;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree1
        {
            get
            {
                return _spread_defect_degree1;
            }
            set
            {
                _spread_defect_degree1 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place1;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place1
        {
            get
            {
                return _from_place1;
            }
            set
            {
                _from_place1 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place1;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place1
        {
            get
            {
                return _to_place1;
            }
            set
            {
                _to_place1 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name2;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name2
        {
            get
            {
                return _defect_name2;
            }
            set
            {
                _defect_name2 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree2;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree2
        {
            get
            {
                return _spread_defect_degree2;
            }
            set
            {
                _spread_defect_degree2 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place2;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place2
        {
            get
            {
                return _from_place2;
            }
            set
            {
                _from_place2 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place2;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place2
        {
            get
            {
                return _to_place2;
            }
            set
            {
                _to_place2 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name3;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name3
        {
            get
            {
                return _defect_name3;
            }
            set
            {
                _defect_name3 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree3;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree3
        {
            get
            {
                return _spread_defect_degree3;
            }
            set
            {
                _spread_defect_degree3 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place3;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place3
        {
            get
            {
                return _from_place3;
            }
            set
            {
                _from_place3 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place3;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place3
        {
            get
            {
                return _to_place3;
            }
            set
            {
                _to_place3 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name4;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name4
        {
            get
            {
                return _defect_name4;
            }
            set
            {
                _defect_name4 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree4;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree4
        {
            get
            {
                return _spread_defect_degree4;
            }
            set
            {
                _spread_defect_degree4 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place4;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place4
        {
            get
            {
                return _from_place4;
            }
            set
            {
                _from_place4 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place4;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place4
        {
            get
            {
                return _to_place4;
            }
            set
            {
                _to_place4 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }



        private string _defect_name5;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name5
        {
            get
            {
                return _defect_name5;
            }
            set
            {
                _defect_name5 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree5;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree5
        {
            get
            {
                return _spread_defect_degree5;
            }
            set
            {
                _spread_defect_degree5 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place5;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place5
        {
            get
            {
                return _from_place5;
            }
            set
            {
                _from_place5 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place5;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place5
        {
            get
            {
                return _to_place5;
            }
            set
            {
                _to_place5 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name6;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name6
        {
            get
            {
                return _defect_name6;
            }
            set
            {
                _defect_name6 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree6;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree6
        {
            get
            {
                return _spread_defect_degree6;
            }
            set
            {
                _spread_defect_degree6 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place6;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place6
        {
            get
            {
                return _from_place6;
            }
            set
            {
                _from_place6 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place6;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place6
        {
            get
            {
                return _to_place6;
            }
            set
            {
                _to_place6 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }


        private string _defect_name7;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name7
        {
            get
            {
                return _defect_name7;
            }
            set
            {
                _defect_name7 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree7;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree7
        {
            get
            {
                return _spread_defect_degree7;
            }
            set
            {
                _spread_defect_degree7 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place7;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place7
        {
            get
            {
                return _from_place7;
            }
            set
            {
                _from_place7 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place7;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place7
        {
            get
            {
                return _to_place7;
            }
            set
            {
                _to_place7 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }
        private string _defect_name8;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name8
        {
            get
            {
                return _defect_name8;
            }
            set
            {
                _defect_name8 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree8;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree8
        {
            get
            {
                return _spread_defect_degree8;
            }
            set
            {
                _spread_defect_degree8 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place8;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place8
        {
            get
            {
                return _from_place8;
            }
            set
            {
                _from_place8 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place8;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place8
        {
            get
            {
                return _to_place8;
            }
            set
            {
                _to_place8 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }
        private string _defect_name9;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name9
        {
            get
            {
                return _defect_name9;
            }
            set
            {
                _defect_name9 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree9;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree9
        {
            get
            {
                return _spread_defect_degree9;
            }
            set
            {
                _spread_defect_degree9 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place9;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place9
        {
            get
            {
                return _from_place9;
            }
            set
            {
                _from_place9 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place9;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place9
        {
            get
            {
                return _to_place9;
            }
            set
            {
                _to_place9 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }
        private string _defect_name10;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name10
        {
            get
            {
                return _defect_name10;
            }
            set
            {
                _defect_name10 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree10;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree10
        {
            get
            {
                return _spread_defect_degree10;
            }
            set
            {
                _spread_defect_degree10 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place10;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place10
        {
            get
            {
                return _from_place10;
            }
            set
            {
                _from_place10 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place10;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place10
        {
            get
            {
                return _to_place10;
            }
            set
            {
                _to_place10 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }

        private string _defect_name11;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name11
        {
            get
            {
                return _defect_name11;
            }
            set
            {
                _defect_name11 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree11;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree11
        {
            get
            {
                return _spread_defect_degree11;
            }
            set
            {
                _spread_defect_degree11 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place11;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place11
        {
            get
            {
                return _from_place11;
            }
            set
            {
                _from_place11 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place11;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place11
        {
            get
            {
                return _to_place11;
            }
            set
            {
                _to_place11 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }
        private string _defect_name12;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name12
        {
            get
            {
                return _defect_name12;
            }
            set
            {
                _defect_name12 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree12;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree12
        {
            get
            {
                return _spread_defect_degree12;
            }
            set
            {
                _spread_defect_degree12 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place12;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place12
        {
            get
            {
                return _from_place12;
            }
            set
            {
                _from_place12 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place12;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place12
        {
            get
            {
                return _to_place12;
            }
            set
            {
                _to_place12 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }
        private string _defect_name13;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name13
        {
            get
            {
                return _defect_name13;
            }
            set
            {
                _defect_name13 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree13;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree13
        {
            get
            {
                return _spread_defect_degree13;
            }
            set
            {
                _spread_defect_degree13 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place13;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place13
        {
            get
            {
                return _from_place13;
            }
            set
            {
                _from_place13 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place13;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place13
        {
            get
            {
                return _to_place13;
            }
            set
            {
                _to_place13 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }

        private string _defect_name14;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_Name14
        {
            get
            {
                return _defect_name14;
            }
            set
            {
                _defect_name14 = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }



        private string _spread_defect_degree14;
        /// <summary>
        /// Spread_Defect_Degree	varchar	5	Spread defect Degree(High/Mid/Low)
        /// </summary>
        public string Spread_Defect_Degree14
        {
            get
            {
                return _spread_defect_degree14;
            }
            set
            {
                _spread_defect_degree14 = value;
                //this.OnPropertyChanged("Spread_Defect_Degree");
            }
        }

        private string _from_place14;
        /// <summary>
        /// From_Place	int	4(0)	From Place
        /// </summary>
        public string From_Place14
        {
            get
            {
                return _from_place14;
            }
            set
            {
                _from_place14 = value;
                //this.OnPropertyChanged("From_Place");
            }
        }

        private string _to_place14;
        /// <summary>
        /// To_Place	int	4(0)	To Place
        /// </summary>
        public string To_Place14
        {
            get
            {
                return _to_place14;
            }
            set
            {
                _to_place14 = value;
                //this.OnPropertyChanged("To_Place");
            }
        }

        #endregion


    }
}
