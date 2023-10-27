using System;
using System.Collections.Generic;
using System.Text;
using PH.FabricInspection.BO;
using System.Linq;
using PH.Platform.Common;

namespace PH.FabricInspection.UI
{
    class PartDefectInfoForReportByPiece
    {

        private int _detect_Turn_No;
        /// <summary>
        /// ™zœy°æ?£¬µÚDetect_Turn_No°æ
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

                PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                //var objs = (from c in context.PHQCDefects where c.PHDefectCode == this._defect_name select c).FirstOrDefault();

                var objs = (from c in context.PHQCDefects
                            where c.PHDefectCode == this._defect_name
                            select new { c.DefectChineseName, c.DefectThaiName, c.DefectEnglishName }).FirstOrDefault();


                SysParamHelper sph = SysParamHelper.Instance;
                if (objs == null)
                    return _defect_name;
                else
                {
                    string DefectName = null;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        DefectName = objs.DefectChineseName + "(" + _defect_name + ")"; ;
                    if (sph.LangID == "TH")
                        DefectName = objs.DefectThaiName + "(" + _defect_name + ")";
                    if (sph.LangID != "TW" && sph.LangID != "CN" && sph.LangID != "TH")
                        DefectName = objs.DefectEnglishName + "(" + _defect_name + ")";

                    return DefectName;
                }
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

        private string _level1_defect_degree_count0;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count0
        {
            get
            {
                return _level1_defect_degree_count0;
            }
            set
            {
                _level1_defect_degree_count0 = value;
            }
        }

        private string _level2_defect_degree_count0;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count0
        {
            get
            {
                return _level2_defect_degree_count0;
            }
            set
            {
                _level2_defect_degree_count0 = value;
            }
        }

        private string _level3_defect_degree_count0;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count0
        {
            get
            {
                return _level3_defect_degree_count0;
            }
            set
            {
                _level3_defect_degree_count0 = value;
            }
        }

        private string _level4_defect_degree_count0;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count0
        {
            get
            {
                return _level4_defect_degree_count0;
            }
            set
            {
                _level4_defect_degree_count0 = value;
            }
        }


        private string _level1_defect_degree_count1;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count1
        {
            get
            {
                return _level1_defect_degree_count1;
            }
            set
            {
                _level1_defect_degree_count1 = value;
            }
        }

        private string _level2_defect_degree_count1;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count1
        {
            get
            {
                return _level2_defect_degree_count1;
            }
            set
            {
                _level2_defect_degree_count1 = value;
            }
        }

        private string _level3_defect_degree_count1;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count1
        {
            get
            {
                return _level3_defect_degree_count1;
            }
            set
            {
                _level3_defect_degree_count1 = value;
            }
        }

        private string _level4_defect_degree_count1;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count1
        {
            get
            {
                return _level4_defect_degree_count1;
            }
            set
            {
                _level4_defect_degree_count1 = value;
            }
        }



        private string _level1_defect_degree_count2;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count2
        {
            get
            {
                return _level1_defect_degree_count2;
            }
            set
            {
                _level1_defect_degree_count2 = value;
            }
        }

        private string _level2_defect_degree_count2;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count2
        {
            get
            {
                return _level2_defect_degree_count2;
            }
            set
            {
                _level2_defect_degree_count2 = value;
            }
        }

        private string _level3_defect_degree_count2;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count2
        {
            get
            {
                return _level3_defect_degree_count2;
            }
            set
            {
                _level3_defect_degree_count2 = value;
            }
        }

        private string _level4_defect_degree_count2;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count2
        {
            get
            {
                return _level4_defect_degree_count2;
            }
            set
            {
                _level4_defect_degree_count2 = value;
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


        private string _level1_defect_degree_count3;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count3
        {
            get
            {
                return _level1_defect_degree_count3;
            }
            set
            {
                _level1_defect_degree_count3 = value;
            }
        }

        private string _level2_defect_degree_count3;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count3
        {
            get
            {
                return _level2_defect_degree_count3;
            }
            set
            {
                _level2_defect_degree_count3 = value;
            }
        }

        private string _level3_defect_degree_count3;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count3
        {
            get
            {
                return _level3_defect_degree_count3;
            }
            set
            {
                _level3_defect_degree_count3 = value;
            }
        }

        private string _level4_defect_degree_count3;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count3
        {
            get
            {
                return _level4_defect_degree_count3;
            }
            set
            {
                _level4_defect_degree_count3 = value;
            }
        }



        private string _level1_defect_degree_count4;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count4
        {
            get
            {
                return _level1_defect_degree_count4;
            }
            set
            {
                _level1_defect_degree_count4 = value;
            }
        }

        private string _level2_defect_degree_count4;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count4
        {
            get
            {
                return _level2_defect_degree_count4;
            }
            set
            {
                _level2_defect_degree_count4 = value;
            }
        }

        private string _level3_defect_degree_count4;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count4
        {
            get
            {
                return _level3_defect_degree_count4;
            }
            set
            {
                _level3_defect_degree_count4 = value;
            }
        }

        private string _level4_defect_degree_count4;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count4
        {
            get
            {
                return _level4_defect_degree_count4;
            }
            set
            {
                _level4_defect_degree_count4 = value;
            }
        }


        private string _level1_defect_degree_count5;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count5
        {
            get
            {
                return _level1_defect_degree_count5;
            }
            set
            {
                _level1_defect_degree_count5 = value;
            }
        }

        private string _level2_defect_degree_count5;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count5
        {
            get
            {
                return _level2_defect_degree_count5;
            }
            set
            {
                _level2_defect_degree_count5 = value;
            }
        }

        private string _level3_defect_degree_count5;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count5
        {
            get
            {
                return _level3_defect_degree_count5;
            }
            set
            {
                _level3_defect_degree_count5 = value;
            }
        }

        private string _level4_defect_degree_count5;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count5
        {
            get
            {
                return _level4_defect_degree_count5;
            }
            set
            {
                _level4_defect_degree_count5 = value;
            }
        }



        private string _level1_defect_degree_count6;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count6
        {
            get
            {
                return _level1_defect_degree_count6;
            }
            set
            {
                _level1_defect_degree_count6 = value;
            }
        }

        private string _level2_defect_degree_count6;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count6
        {
            get
            {
                return _level2_defect_degree_count6;
            }
            set
            {
                _level2_defect_degree_count6 = value;
            }
        }

        private string _level3_defect_degree_count6;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count6
        {
            get
            {
                return _level3_defect_degree_count6;
            }
            set
            {
                _level3_defect_degree_count6 = value;
            }
        }

        private string _level4_defect_degree_count6;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count6
        {
            get
            {
                return _level4_defect_degree_count6;
            }
            set
            {
                _level4_defect_degree_count6 = value;
            }
        }



        private string _level1_defect_degree_count7;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count7
        {
            get
            {
                return _level1_defect_degree_count7;
            }
            set
            {
                _level1_defect_degree_count7 = value;
            }
        }

        private string _level2_defect_degree_count7;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count7
        {
            get
            {
                return _level2_defect_degree_count7;
            }
            set
            {
                _level2_defect_degree_count7 = value;
            }
        }

        private string _level3_defect_degree_count7;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count7
        {
            get
            {
                return _level3_defect_degree_count7;
            }
            set
            {
                _level3_defect_degree_count7 = value;
            }
        }

        private string _level4_defect_degree_count7;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count7
        {
            get
            {
                return _level4_defect_degree_count7;
            }
            set
            {
                _level4_defect_degree_count7 = value;
            }
        }



        private string _level1_defect_degree_count8;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count8
        {
            get
            {
                return _level1_defect_degree_count8;
            }
            set
            {
                _level1_defect_degree_count8 = value;
            }
        }

        private string _level2_defect_degree_count8;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count8
        {
            get
            {
                return _level2_defect_degree_count8;
            }
            set
            {
                _level2_defect_degree_count8 = value;
            }
        }

        private string _level3_defect_degree_count8;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count8
        {
            get
            {
                return _level3_defect_degree_count8;
            }
            set
            {
                _level3_defect_degree_count8 = value;
            }
        }

        private string _level4_defect_degree_count8;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count8
        {
            get
            {
                return _level4_defect_degree_count8;
            }
            set
            {
                _level4_defect_degree_count8 = value;
            }
        }


        private string _level1_defect_degree_count9;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count9
        {
            get
            {
                return _level1_defect_degree_count9;
            }
            set
            {
                _level1_defect_degree_count9 = value;
            }
        }

        private string _level2_defect_degree_count9;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count9
        {
            get
            {
                return _level2_defect_degree_count9;
            }
            set
            {
                _level2_defect_degree_count9 = value;
            }
        }

        private string _level3_defect_degree_count9;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count9
        {
            get
            {
                return _level3_defect_degree_count9;
            }
            set
            {
                _level3_defect_degree_count9 = value;
            }
        }

        private string _level4_defect_degree_count9;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count9
        {
            get
            {
                return _level4_defect_degree_count9;
            }
            set
            {
                _level4_defect_degree_count9 = value;
            }
        }



        private string _level1_defect_degree_count10;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count10
        {
            get
            {
                return _level1_defect_degree_count10;
            }
            set
            {
                _level1_defect_degree_count10 = value;
            }
        }

        private string _level2_defect_degree_count10;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count10
        {
            get
            {
                return _level2_defect_degree_count10;
            }
            set
            {
                _level2_defect_degree_count10 = value;
            }
        }

        private string _level3_defect_degree_count10;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count10
        {
            get
            {
                return _level3_defect_degree_count10;
            }
            set
            {
                _level3_defect_degree_count10 = value;
            }
        }

        private string _level4_defect_degree_count10;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count10
        {
            get
            {
                return _level4_defect_degree_count10;
            }
            set
            {
                _level4_defect_degree_count10 = value;
            }
        }


        private string _level1_defect_degree_count11;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count11
        {
            get
            {
                return _level1_defect_degree_count11;
            }
            set
            {
                _level1_defect_degree_count11 = value;
            }
        }

        private string _level2_defect_degree_count11;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count11
        {
            get
            {
                return _level2_defect_degree_count11;
            }
            set
            {
                _level2_defect_degree_count11 = value;
            }
        }

        private string _level3_defect_degree_count11;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count11
        {
            get
            {
                return _level3_defect_degree_count11;
            }
            set
            {
                _level3_defect_degree_count11 = value;
            }
        }

        private string _level4_defect_degree_count11;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count11
        {
            get
            {
                return _level4_defect_degree_count11;
            }
            set
            {
                _level4_defect_degree_count11 = value;
            }
        }

        private string _level1_defect_degree_count12;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count12
        {
            get
            {
                return _level1_defect_degree_count12;
            }
            set
            {
                _level1_defect_degree_count12 = value;
            }
        }

        private string _level2_defect_degree_count12;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count12
        {
            get
            {
                return _level2_defect_degree_count12;
            }
            set
            {
                _level2_defect_degree_count12 = value;
            }
        }

        private string _level3_defect_degree_count12;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count12
        {
            get
            {
                return _level3_defect_degree_count12;
            }
            set
            {
                _level3_defect_degree_count12 = value;
            }
        }

        private string _level4_defect_degree_count12;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count12
        {
            get
            {
                return _level4_defect_degree_count12;
            }
            set
            {
                _level4_defect_degree_count12 = value;
            }
        }



        private string _level1_defect_degree_count13;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count13
        {
            get
            {
                return _level1_defect_degree_count13;
            }
            set
            {
                _level1_defect_degree_count13 = value;
            }
        }

        private string _level2_defect_degree_count13;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count13
        {
            get
            {
                return _level2_defect_degree_count13;
            }
            set
            {
                _level2_defect_degree_count13 = value;
            }
        }

        private string _level3_defect_degree_count13;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count13
        {
            get
            {
                return _level3_defect_degree_count13;
            }
            set
            {
                _level3_defect_degree_count13 = value;
            }
        }

        private string _level4_defect_degree_count13;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count13
        {
            get
            {
                return _level4_defect_degree_count13;
            }
            set
            {
                _level4_defect_degree_count13 = value;
            }
        }


        private string _level1_defect_degree_count14;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level1_Defect_Degree_Count14
        {
            get
            {
                return _level1_defect_degree_count14;
            }
            set
            {
                _level1_defect_degree_count14 = value;
            }
        }

        private string _level2_defect_degree_count14;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level2_Defect_Degree_Count14
        {
            get
            {
                return _level2_defect_degree_count14;
            }
            set
            {
                _level2_defect_degree_count14 = value;
            }
        }

        private string _level3_defect_degree_count14;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level3_Defect_Degree_Count14
        {
            get
            {
                return _level3_defect_degree_count14;
            }
            set
            {
                _level3_defect_degree_count14 = value;
            }
        }

        private string _level4_defect_degree_count14;
        /// <summary>
        /// Defect_Degree_Count	int	7(0)	Defect Degree Count (Partly defects)
        /// </summary>
        public string Level4_Defect_Degree_Count14
        {
            get
            {
                return _level4_defect_degree_count14;
            }
            set
            {
                _level4_defect_degree_count14 = value;
            }
        }


    }
}
