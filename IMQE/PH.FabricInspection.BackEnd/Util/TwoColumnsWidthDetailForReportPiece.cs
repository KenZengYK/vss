using System;
using System.Collections.Generic;
using System.Text;

namespace PH.FabricInspection.BackEnd
{
    public class TwoColumnsWidthDetailForReportPiece
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
        /// �z�y��̖
        /// </summary>
        private string _detect_Turn_No;
        /// <summary>
        /// �z�y��̖����Detect_Turn_No��
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


        private string _usable_width2;
        /// <summary>
        /// Usable_Width	int	7(0)	Usable width
        /// </summary>
        public string Usable_Width2
        {
            get
            {
                return _usable_width2;
            }
            set
            {
                _usable_width2 = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }

        private string _sideToSide_Width2;
        /// <summary>
        /// Usable_Width	int	7(0)	Usable width
        /// </summary>
        public string SideToSide_Width2
        {
            get
            {
                return _sideToSide_Width2;
            }
            set
            {
                _sideToSide_Width2 = value;
                //this.OnPropertyChanged("Usable_Width");
            }
        }

        /// <summary>
        /// �z�y��̖
        /// </summary>
        private string _detect_Turn_No2;
        /// <summary>
        /// �z�y��̖����Detect_Turn_No��
        /// </summary>
        public string Detect_Turn_No2
        {
            get
            {
                return _detect_Turn_No2;
            }
            set
            {
                _detect_Turn_No2 = value;
                //this.OnPropertyChanged("Detect_Turn_No");
            }
        }


    }


    }


