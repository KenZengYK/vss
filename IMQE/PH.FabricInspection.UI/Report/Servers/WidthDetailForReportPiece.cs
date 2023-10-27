using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.UI
{
    class WidthDetailForReportPiece
    {
        private string _usable_width;
        /// <summary>
        /// Usable_Width	int	7(0)	Usable width
        /// </summary>
        public string Usable_Width
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

        private string _sideToSide_Width;
        /// <summary>
        /// Usable_Width	int	7(0)	Usable width
        /// </summary>
        public string SideToSide_Width
        {
            get
            {
                return _sideToSide_Width;
            }
            set
            {
                _sideToSide_Width = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }

        /// <summary>
        /// ™zœy°æÌ–
        /// </summary>
        private string _detect_Turn_No;
        /// <summary>
        /// ™zœy°æÌ–£¬µÚDetect_Turn_No°æ
        /// </summary>
        public string Detect_Turn_No
        {
            get
            {
                return _detect_Turn_No;
            }
            set
            {
                _detect_Turn_No = value;
                //this.OnPropertyChanged("Detect_Turn_No");
            }
        }


    }

    class StrWidthDetailForReportPiece
    {
        private string _str_Usable_Width;
        /// <summary>
        /// Usable_Width	int	7(0)	Usable width
        /// </summary>
        public string Str_Usable_Width
        {
            get
            {
                return _str_Usable_Width;
            }
            set
            {
                _str_Usable_Width = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }


    }

}
