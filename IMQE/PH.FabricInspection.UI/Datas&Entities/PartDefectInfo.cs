using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Data.Linq;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using PH.Platform.Common;

namespace PH.FabricInspection.UI
{
    public class PartDefectInfo
    {


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


        private string _defect_type;
        /// <summary>
        /// Defect_Type	varchar	1	Defect type(‘P’)
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

        private string _defect_namename;
        /// <summary>
        /// Defect_Nname	varchar	20	Defect_Nname
        /// </summary>
        public string Defect_NameName
        {
            get
            {
                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                var objs = (from c in context.PHQCDefects where c.PHDefectCode == this.Defect_Name select c).FirstOrDefault();
                SysParamHelper sph = SysParamHelper.Instance;
                if (objs == null)
                    return "";
                else
                {
                    string DefectName = null;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        DefectName = objs.DefectChineseName;
                    if (sph.LangID == "TH")
                        DefectName = objs.DefectThaiName;
                    if (sph.LangID != "TW" && sph.LangID != "CN" && sph.LangID != "TH")
                        DefectName = objs.DefectEnglishName;

                    return DefectName;
                }
            }
            set
            {
                _defect_namename = value;
                //this.OnPropertyChanged("Defect_Nname");
            }
        }
        private int _defect_deduce_points;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public int Defect_Deduce_Points
        {
            get
            {
                return _defect_deduce_points;
            }
            set
            {
                _defect_deduce_points = value;
                //this.OnPropertyChanged("Defect_Degree_Count");
            }
        }



        /// <summary>
        /// 셻쐙경?
        /// </summary>
        private int _detect_Turn_No;
        /// <summary>
        /// 셻쐙경?，뒤Detect_Turn_No경
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
                //this.OnPropertyChanged("Detect_Turn_No");
            }
        }

    }

}
