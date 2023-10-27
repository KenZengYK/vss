using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.BackEnd
{
    public class PartDefectInfoForReportByPiece
    {

        private int _detect_Turn_No;
        /// <summary>
        /// ™zœy°æÌ–£¬µÚDetect_Turn_No°æ
        /// </summary>
        public int Detect_Turn_No
        {
            get
            {
                return _detect_Turn_No;
            }
            set
            {
                _detect_Turn_No = value;
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

        private int _int_level1_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public int Int_Level1_Defect_Degree_Count
        {
            get
            {
                return _int_level1_defect_degree_count;
            }
            set
            {
                _int_level1_defect_degree_count = value;
            }
        }

        private int _int_level2_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public int Int_Level2_Defect_Degree_Count
        {
            get
            {
                return _int_level2_defect_degree_count;
            }
            set
            {
                _int_level2_defect_degree_count = value;
            }
        }

        private int _int_level3_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public int Int_Level3_Defect_Degree_Count
        {
            get
            {
                return _int_level3_defect_degree_count;
            }
            set
            {
                _int_level3_defect_degree_count = value;
            }
        }

        private int _int_level4_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public int Int_Level4_Defect_Degree_Count
        {
            get
            {
                return _int_level4_defect_degree_count;
            }
            set
            {
                _int_level4_defect_degree_count = value;
            }
        }



        private string _level1_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count
        {
            get
            {
                return _level1_defect_degree_count;
            }
            set
            {
                _level1_defect_degree_count = value;
            }
        }

        private string _level2_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count
        {
            get
            {
                return _level2_defect_degree_count;
            }
            set
            {
                _level2_defect_degree_count = value;
            }
        }

        private string _level3_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count
        {
            get
            {
                return _level3_defect_degree_count;
            }
            set
            {
                _level3_defect_degree_count = value;
            }
        }

        private string _level4_defect_degree_count;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count
        {
            get
            {
                return _level4_defect_degree_count;
            }
            set
            {
                _level4_defect_degree_count = value;
            }
        }


    }
}
