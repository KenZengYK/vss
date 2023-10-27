///============================================================================
///Builder:Yunyi
///Build Date :2008-08-15
///Description:
///============================================================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.Platform.Common;

namespace PH.FabricInspection.BO
{
    public class MaterialQA
    {
        #region 構造函數

        public MaterialQA(string itemNo, string supplieritemno, string supplier_Code, string supplierFullName, int? mcount, decimal? totalQty, decimal? refuseQty, decimal? refusePercent, string spreadName1, decimal? spreadValue1, string spreadName2, decimal? spreadValue2, string spreadName3, decimal? spreadValue3, string spreadName4, decimal? spreadValue4, string spreadName5, decimal? spreadValue5, decimal? otherSpreadValue, string partName1, decimal? partValue1, string partName2, decimal? partValue2, string partName3, decimal? partValue3, string partName4, decimal? partValue4, string partName5, decimal? partValue5, string partName6, decimal? partValue6, string partName7, decimal? partValue7, string partName8, decimal? partValue8, string partName9, decimal? partValue9, string partName10, decimal? partValue10, decimal? otherPartValue, decimal? actualQty, decimal? mouldTrain, decimal? colorWrong)
        {
            #region

            this._ERP = itemNo;
            this.SupplierItemNo = supplieritemno;
            this._Supplier_Code = supplier_Code;
            this._Supplier = supplierFullName;
            this.MCount = mcount;
            this._TotalQty = totalQty;
            this._RefuseQty = refuseQty;
            this._RefusePercent = refusePercent;

            SysParamHelper sph = SysParamHelper.Instance;
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {

                #region

                var objs1 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName1 select c).FirstOrDefault();
                if (objs1 == null)
                    this._SpreadDefectName1 = "";
                else
                    this._SpreadDefectName1 = objs1.DefectChineseName;

                var objs2 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName2 select c).FirstOrDefault();
                if (objs2 == null)
                    this._SpreadDefectName2 = "";
                else
                    this._SpreadDefectName2 = objs2.DefectChineseName;

                var objs3 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName3 select c).FirstOrDefault();
                if (objs3 == null)
                    this._SpreadDefectName3 = "";
                else
                    this._SpreadDefectName3 = objs3.DefectChineseName;

                var objs4 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName4 select c).FirstOrDefault();
                if (objs4 == null)
                    this._SpreadDefectName4 = "";
                else
                    this._SpreadDefectName4 = objs4.DefectChineseName;

                var objs5 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName5 select c).FirstOrDefault();
                if (objs5 == null)
                    this._SpreadDefectName5 = "";
                else
                    this._SpreadDefectName5 = objs5.DefectChineseName;
                //_________________________________________________//

                var obj1 = (from c in context.PHQCDefects where c.PHDefectCode == partName1 select c).FirstOrDefault();
                if (obj1 == null)
                    this._PartDefectName1 = "";
                else
                    this._PartDefectName1 = obj1.DefectChineseName;

                var obj2 = (from c in context.PHQCDefects where c.PHDefectCode == partName2 select c).FirstOrDefault();
                if (obj2 == null)
                    this._PartDefectName2 = "";
                else
                    this._PartDefectName2 = obj2.DefectChineseName;

                var obj3 = (from c in context.PHQCDefects where c.PHDefectCode == partName3 select c).FirstOrDefault();
                if (obj3 == null)
                    this._PartDefectName3 = "";
                else
                    this._PartDefectName3 = obj3.DefectChineseName;

                var obj4 = (from c in context.PHQCDefects where c.PHDefectCode == partName4 select c).FirstOrDefault();
                if (obj4 == null)
                    this._PartDefectName4 = "";
                else
                    this._PartDefectName4 = obj4.DefectChineseName;

                var obj5 = (from c in context.PHQCDefects where c.PHDefectCode == partName5 select c).FirstOrDefault();
                if (obj5 == null)
                    this._PartDefectName5 = "";
                else
                    this._PartDefectName5 = obj5.DefectChineseName;

                var obj6 = (from c in context.PHQCDefects where c.PHDefectCode == partName6 select c).FirstOrDefault();
                if (obj6 == null)
                    this._PartDefectName6 = "";
                else
                    this._PartDefectName6 = obj6.DefectChineseName;

                var obj7 = (from c in context.PHQCDefects where c.PHDefectCode == partName7 select c).FirstOrDefault();
                if (obj7 == null)
                    this._PartDefectName7 = "";
                else
                    this._PartDefectName7 = obj7.DefectChineseName;

                var obj8 = (from c in context.PHQCDefects where c.PHDefectCode == partName8 select c).FirstOrDefault();
                if (obj8 == null)
                    this._PartDefectName8 = "";
                else
                    this._PartDefectName8 = obj8.DefectChineseName;

                var obj9 = (from c in context.PHQCDefects where c.PHDefectCode == partName9 select c).FirstOrDefault();
                if (obj9 == null)
                    this._PartDefectName9 = "";
                else
                    this._PartDefectName9 = obj9.DefectChineseName;

                var obj10 = (from c in context.PHQCDefects where c.PHDefectCode == partName10 select c).FirstOrDefault();
                if (obj10 == null)
                    this._PartDefectName10 = "";
                else
                    this._PartDefectName10 = obj10.DefectChineseName;


                #endregion
            }

            if (sph.LangID == "TH")
            {

                #region

                var objs1 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName1 select c).FirstOrDefault();
                if (objs1 == null)
                    this._SpreadDefectName1 = "";
                else
                    this._SpreadDefectName1 = objs1.DefectThaiName;

                var objs2 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName2 select c).FirstOrDefault();
                if (objs2 == null)
                    this._SpreadDefectName2 = "";
                else
                    this._SpreadDefectName2 = objs2.DefectThaiName;

                var objs3 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName3 select c).FirstOrDefault();
                if (objs3 == null)
                    this._SpreadDefectName3 = "";
                else
                    this._SpreadDefectName3 = objs3.DefectThaiName;

                var objs4 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName4 select c).FirstOrDefault();
                if (objs4 == null)
                    this._SpreadDefectName4 = "";
                else
                    this._SpreadDefectName4 = objs4.DefectThaiName;

                var objs5 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName5 select c).FirstOrDefault();
                if (objs5 == null)
                    this._SpreadDefectName5 = "";
                else
                    this._SpreadDefectName5 = objs5.DefectThaiName;
                //_________________________________________________//

                var obj1 = (from c in context.PHQCDefects where c.PHDefectCode == partName1 select c).FirstOrDefault();
                if (obj1 == null)
                    this._PartDefectName1 = "";
                else
                    this._PartDefectName1 = obj1.DefectThaiName;

                var obj2 = (from c in context.PHQCDefects where c.PHDefectCode == partName2 select c).FirstOrDefault();
                if (obj2 == null)
                    this._PartDefectName2 = "";
                else
                    this._PartDefectName2 = obj2.DefectThaiName;

                var obj3 = (from c in context.PHQCDefects where c.PHDefectCode == partName3 select c).FirstOrDefault();
                if (obj3 == null)
                    this._PartDefectName3 = "";
                else
                    this._PartDefectName3 = obj3.DefectThaiName;

                var obj4 = (from c in context.PHQCDefects where c.PHDefectCode == partName4 select c).FirstOrDefault();
                if (obj4 == null)
                    this._PartDefectName4 = "";
                else
                    this._PartDefectName4 = obj4.DefectThaiName;

                var obj5 = (from c in context.PHQCDefects where c.PHDefectCode == partName5 select c).FirstOrDefault();
                if (obj5 == null)
                    this._PartDefectName5 = "";
                else
                    this._PartDefectName5 = obj5.DefectThaiName;

                var obj6 = (from c in context.PHQCDefects where c.PHDefectCode == partName6 select c).FirstOrDefault();
                if (obj6 == null)
                    this._PartDefectName6 = "";
                else
                    this._PartDefectName6 = obj6.DefectThaiName;

                var obj7 = (from c in context.PHQCDefects where c.PHDefectCode == partName7 select c).FirstOrDefault();
                if (obj7 == null)
                    this._PartDefectName7 = "";
                else
                    this._PartDefectName7 = obj7.DefectThaiName;

                var obj8 = (from c in context.PHQCDefects where c.PHDefectCode == partName8 select c).FirstOrDefault();
                if (obj8 == null)
                    this._PartDefectName8 = "";
                else
                    this._PartDefectName8 = obj8.DefectThaiName;

                var obj9 = (from c in context.PHQCDefects where c.PHDefectCode == partName9 select c).FirstOrDefault();
                if (obj9 == null)
                    this._PartDefectName9 = "";
                else
                    this._PartDefectName9 = obj9.DefectThaiName;

                var obj10 = (from c in context.PHQCDefects where c.PHDefectCode == partName10 select c).FirstOrDefault();
                if (obj10 == null)
                    this._PartDefectName10 = "";
                else
                    this._PartDefectName10 = obj10.DefectThaiName;


                #endregion
            }

            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {

                #region
                var objs1 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName1 select c).FirstOrDefault();
                if (objs1 == null)
                    this._SpreadDefectName1 = "";
                else
                    this._SpreadDefectName1 = objs1.DefectEnglishName;

                var objs2 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName2 select c).FirstOrDefault();
                if (objs2 == null)
                    this._SpreadDefectName2 = "";
                else
                    this._SpreadDefectName2 = objs2.DefectEnglishName;

                var objs3 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName3 select c).FirstOrDefault();
                if (objs3 == null)
                    this._SpreadDefectName3 = "";
                else
                    this._SpreadDefectName3 = objs3.DefectEnglishName;

                var objs4 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName4 select c).FirstOrDefault();
                if (objs4 == null)
                    this._SpreadDefectName4 = "";
                else
                    this._SpreadDefectName4 = objs4.DefectEnglishName;

                var objs5 = (from c in context.PHQCDefects where c.PHDefectCode == spreadName5 select c).FirstOrDefault();
                if (objs5 == null)
                    this._SpreadDefectName5 = "";
                else
                    this._SpreadDefectName5 = objs5.DefectEnglishName;
                //_________________________________________________//

                var obj1 = (from c in context.PHQCDefects where c.PHDefectCode == partName1 select c).FirstOrDefault();
                if (obj1 == null)
                    this._PartDefectName1 = "";
                else
                    this._PartDefectName1 = obj1.DefectEnglishName;

                var obj2 = (from c in context.PHQCDefects where c.PHDefectCode == partName2 select c).FirstOrDefault();
                if (obj2 == null)
                    this._PartDefectName2 = "";
                else
                    this._PartDefectName2 = obj2.DefectEnglishName;

                var obj3 = (from c in context.PHQCDefects where c.PHDefectCode == partName3 select c).FirstOrDefault();
                if (obj3 == null)
                    this._PartDefectName3 = "";
                else
                    this._PartDefectName3 = obj3.DefectEnglishName;

                var obj4 = (from c in context.PHQCDefects where c.PHDefectCode == partName4 select c).FirstOrDefault();
                if (obj4 == null)
                    this._PartDefectName4 = "";
                else
                    this._PartDefectName4 = obj4.DefectEnglishName;

                var obj5 = (from c in context.PHQCDefects where c.PHDefectCode == partName5 select c).FirstOrDefault();
                if (obj5 == null)
                    this._PartDefectName5 = "";
                else
                    this._PartDefectName5 = obj5.DefectEnglishName;

                var obj6 = (from c in context.PHQCDefects where c.PHDefectCode == partName6 select c).FirstOrDefault();
                if (obj6 == null)
                    this._PartDefectName6 = "";
                else
                    this._PartDefectName6 = obj6.DefectEnglishName;

                var obj7 = (from c in context.PHQCDefects where c.PHDefectCode == partName7 select c).FirstOrDefault();
                if (obj7 == null)
                    this._PartDefectName7 = "";
                else
                    this._PartDefectName7 = obj7.DefectEnglishName;

                var obj8 = (from c in context.PHQCDefects where c.PHDefectCode == partName8 select c).FirstOrDefault();
                if (obj8 == null)
                    this._PartDefectName8 = "";
                else
                    this._PartDefectName8 = obj8.DefectEnglishName;

                var obj9 = (from c in context.PHQCDefects where c.PHDefectCode == partName9 select c).FirstOrDefault();
                if (obj9 == null)
                    this._PartDefectName9 = "";
                else
                    this._PartDefectName9 = obj9.DefectEnglishName;

                var obj10 = (from c in context.PHQCDefects where c.PHDefectCode == partName10 select c).FirstOrDefault();
                if (obj10 == null)
                    this._PartDefectName10 = "";
                else
                    this._PartDefectName10 = obj10.DefectChineseName;


                #endregion
            }
            if (0 != spreadValue1)
                this._SpreadDefectQty1 = spreadValue1;
            if (0 != spreadValue2)
                this._SpreadDefectQty2 = spreadValue2;
            if (0 != spreadValue3)
                this._SpreadDefectQty3 = spreadValue3;
            if (0 != spreadValue4)
                this._SpreadDefectQty4 = spreadValue4;
            if (0 != spreadValue5)
                this._SpreadDefectQty5 = spreadValue5;
            if (0 != otherSpreadValue)
                this._SpreadDefectQtyOther = otherSpreadValue;
            if (0 != partValue1)
                this._PartDefectQty1 = partValue1;
            if (0 != partValue2)
                this._PartDefectQty2 = partValue2;
            if (0 != partValue3)
                this._PartDefectQty3 = partValue3;
            if (0 != partValue4)
                this._PartDefectQty4 = partValue4;
            if (0 != partValue5)
                this._PartDefectQty5 = partValue5;
            if (0 != partValue6)
                this._PartDefectQty6 = partValue6;
            if (0 != partValue7)
                this._PartDefectQty7 = partValue7;
            if (0 != partValue8)
                this._PartDefectQty8 = partValue8;
            if (0 != partValue9)
                this._PartDefectQty9 = partValue9;
            if (0 != partValue10)
                this._PartDefectQty10 = partValue10;
            if (0 != otherPartValue)
                this._PartDefectQtyOther = otherPartValue;
            if (0 != actualQty)
                this._ActualQty = actualQty;
            if (0 != mouldTrain)
                this._MouldTrail = mouldTrain;
            if (0 != colorWrong)
                this._FabricColor = colorWrong;
            #endregion



            #region

            //Xsj:添加百分比信息 
            //DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Spread Defect", Percentage = (this.SpreadDefectPercentage ?? 0) });
            //DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Part Defect", Percentage = (this.PartDefectPercentage ?? 0) });
            DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Defect", Percentage = (this.DefectPercentage ?? 0) });
            if ((this.ActualQty ?? 0) <= 0)
            {
                DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Short Langth", Percentage = (this.ShortLengthPercentage ?? 0) });
            }
            DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Mould Trial", Percentage = (this.MouldTrialPercentage ?? 0) });
            DefPercentageInfoList.Add(new DefectPercentInfo { DefectType = "Off Color", Percentage = (this.OffColorPercentage ?? 0) });

            #endregion



        }
        public MaterialQA(string company, string material_Code, string system_Install_No, decimal? panel_Size1, decimal? panel_Size2, decimal? usable_Width)
        {

            this._Company = company;
            this._ERP = material_Code;
            this._System_Install_No = system_Install_No;
            this._Panel_Size1 = panel_Size1;
            this._Panel_Size2 = panel_Size2;
            this._Usable_Width = usable_Width;

        }
        public MaterialQA(string material_Code)
        {
            this._ERP = material_Code;
        }
        public MaterialQA() { }
        #endregion

        #region Fields
        //公司
        private string _Company;
        //ID
        private string _System_Install_No;
        //纸样长
        private decimal? _Panel_Size1 = 0M;
        //纸样宽
        private decimal? _Panel_Size2 = 0M;
        //物料宽度
        private decimal? _Usable_Width = 0M;


        //-1物料erp
        private string _ERP;
        private string _supplieritemno;

        //0物料供應商
        private string _Supplier;
        // 1供應商
        private string _Supplier_Code;//1
        // 2回料總數
        private decimal? _TotalQty = 0M;//2

        // 2回料次數 add by joseph
        private int? _MCount;

        //3拒收數量
        private decimal? _RefuseQty = 0M;//3
        //4拒收率
        private decimal? _RefusePercent = 0M;//4

        //散佈型疵點
        private string _SpreadDefectName1;//5
        private decimal? _SpreadDefectQty1;//6
        private string _SpreadDefectName2;//7
        private decimal? _SpreadDefectQty2;//8
        private string _SpreadDefectName3;//9
        private decimal? _SpreadDefectQty3;//10
        private string _SpreadDefectName4;//11
        private decimal? _SpreadDefectQty4;//12
        private string _SpreadDefectName5;//13
        private decimal? _SpreadDefectQty5;//14
        private decimal? _SpreadDefectQtyOther;//15
        //局部型疵點
        private string _PartDefectName1;//16
        private decimal? _PartDefectQty1;//17
        private string _PartDefectName2;//18
        private decimal? _PartDefectQty2;//19
        private string _PartDefectName3;//20
        private decimal? _PartDefectQty3;//21
        private string _PartDefectName4;//22
        private decimal? _PartDefectQty4;//23
        private string _PartDefectName5;//24
        private decimal? _PartDefectQty5;//25
        private string _PartDefectName6;//26
        private decimal? _PartDefectQty6;//27
        private string _PartDefectName7;//28
        private decimal? _PartDefectQty7;//29
        private string _PartDefectName8;//30
        private decimal? _PartDefectQty8;//31
        private string _PartDefectName9;//32
        private decimal? _PartDefectQty9;//33
        private string _PartDefectName10;//34
        private decimal? _PartDefectQty10;//35
        private decimal? _PartDefectQtyOther;//36

        //短碼數量
        private decimal? _ActualQty = 0M;//37
        //Mould Trail
        private decimal? _MouldTrail = 0M;//38
        //不顏色
        private decimal? _FabricColor = 0M;//39
        #endregion

        #region Properties
        /// <summary>
        /// 公司
        /// </summary>
        public string Company
        {
            get
            {
                return this._Company;
            }
            set
            {
                if ((this._Company != value))
                {

                    this._Company = value;

                }
            }
        }


        /// <summary>
        /// ID
        /// </summary>
        public string System_Install_No
        {
            get
            {
                return this._System_Install_No;
            }
            set
            {
                if ((this._System_Install_No != value))
                {

                    this._System_Install_No = value;

                }
            }
        }

        /// <summary>
        /// 回料次数
        /// </summary>
        public int? MCount
        {
            get
            {
                return this._MCount;
            }
            set
            {
                if ((this._MCount != value))
                {

                    this._MCount = value;

                }
            }
        }

        /// <summary>
        /// 纸样长
        /// </summary>
        public decimal? Panel_Size1
        {
            get
            {
                return this._Panel_Size1;
            }
            set
            {
                if ((this._Panel_Size1 != value))
                {

                    this._Panel_Size1 = value;

                }
            }
        }
        /// <summary>
        /// 纸样宽
        /// </summary>
        public decimal? Panel_Size2
        {
            get
            {
                return this._Panel_Size2;
            }
            set
            {
                if ((this._Panel_Size2 != value))
                {

                    this._Panel_Size2 = value;

                }
            }
        }
        /// <summary>
        /// 物料宽度
        /// </summary>
        public decimal? Usable_Width
        {
            get
            {
                return this._Usable_Width;
            }
            set
            {
                if ((this._Usable_Width != value))
                {

                    this._Usable_Width = value;

                }
            }
        }

        /// <summary>
        /// -1物料erp
        /// </summary>
        public string ERP
        {
            get
            {
                return this._ERP;
            }
            set
            {
                if ((this._ERP != value))
                {

                    this._ERP = value;

                }
            }
        }

        /// <summary>
        /// -1物料供應商
        /// </summary>
        public string SupplierItemNo
        {
            get
            {
                return this._supplieritemno;
            }
            set
            {
                if ((this._supplieritemno != value))
                {

                    this._supplieritemno = value;

                }
            }
        }
        /// <summary>
        /// 0物料供應商
        /// </summary>
        public string Supplier
        {
            get
            {
                return this._Supplier;
            }
            set
            {
                if ((this._Supplier != value))
                {

                    this._Supplier = value;

                }
            }
        }
        /// <summary>
        /// 1供應商
        /// </summary>
        public string Supplier_Code
        {
            get
            {
                return this._Supplier_Code;
            }
            set
            {
                if ((this._Supplier_Code != value))
                {

                    this._Supplier_Code = value;

                }
            }
        }
        /// <summary>
        /// 2回料總數
        /// </summary>
        public decimal? TotalQty
        {
            get
            {
                return this._TotalQty;
            }
            set
            {
                if ((this._TotalQty != value))
                {

                    this._TotalQty = value;

                }
            }
        }
        /// <summary>
        /// 3拒收數量
        /// </summary>
        public decimal? RefuseQty
        {
            get
            {
                return this._RefuseQty;
            }
            set
            {
                if ((this._RefuseQty != value))
                {

                    this._RefuseQty = value;

                }
            }
        }
        /// <summary>
        /// 4拒收率
        /// </summary>
        public decimal? RefusePercent
        {
            get
            {
                return this._RefusePercent;
            }
            set
            {
                if ((this._RefusePercent != value))
                {

                    this._RefusePercent = value;

                }
            }
        }

        /// <summary>
        /// 5散佈型疵點名稱1
        /// </summary>
        public string SpreadDefectName1
        {
            get
            {

                return this._SpreadDefectName1;

            }
            set
            {
                if ((this._SpreadDefectName1 != value))
                {

                    this._SpreadDefectName1 = value;

                }
            }
        }

        /// <summary>
        /// 6散部型疵點數量1
        /// </summary>
        public decimal? SpreadDefectQty1
        {
            get
            {
                return this._SpreadDefectQty1;
            }
            set
            {
                if ((this._SpreadDefectQty1 != value))
                {

                    this._SpreadDefectQty1 = value;

                }
            }
        }
        /// <summary>
        /// 7散佈型疵點名稱2
        /// </summary>
        public string SpreadDefectName2
        {
            get
            {

                return this._SpreadDefectName2;

            }
            set
            {
                if ((this._SpreadDefectName2 != value))
                {

                    this._SpreadDefectName2 = value;

                }
            }
        }

        /// <summary>
        /// 8散部型疵點數量2
        /// </summary>
        public decimal? SpreadDefectQty2
        {
            get
            {
                return this._SpreadDefectQty2;
            }
            set
            {
                if ((this._SpreadDefectQty2 != value))
                {

                    this._SpreadDefectQty2 = value;

                }
            }
        }
        /// <summary>
        /// 9散佈型疵點名稱3
        /// </summary>
        public string SpreadDefectName3
        {
            get
            {

                return this._SpreadDefectName3;

            }
            set
            {
                if ((this._SpreadDefectName3 != value))
                {

                    this._SpreadDefectName3 = value;

                }
            }
        }

        /// <summary>
        /// 10散部型疵點數量3
        /// </summary>
        public decimal? SpreadDefectQty3
        {
            get
            {
                return this._SpreadDefectQty3;
            }
            set
            {
                if ((this._SpreadDefectQty3 != value))
                {

                    this._SpreadDefectQty3 = value;

                }
            }
        }
        /// <summary>
        /// 11散佈型疵點名稱4
        /// </summary>
        public string SpreadDefectName4
        {
            get
            {

                return this._SpreadDefectName4;

            }
            set
            {
                if ((this._SpreadDefectName4 != value))
                {

                    this._SpreadDefectName4 = value;

                }
            }
        }

        /// <summary>
        /// 12散部型疵點數量4
        /// </summary>
        public decimal? SpreadDefectQty4
        {
            get
            {
                return this._SpreadDefectQty4;
            }
            set
            {
                if ((this._SpreadDefectQty4 != value))
                {

                    this._SpreadDefectQty4 = value;

                }
            }
        }
        /// <summary>
        /// 13散佈型疵點名稱5
        /// </summary>
        public string SpreadDefectName5
        {
            get
            {

                return this._SpreadDefectName5;

            }
            set
            {
                if ((this._SpreadDefectName5 != value))
                {

                    this._SpreadDefectName5 = value;

                }
            }
        }

        /// <summary>
        /// 14散部型疵點數量5
        /// </summary>
        public decimal? SpreadDefectQty5
        {
            get
            {
                return this._SpreadDefectQty5;
            }
            set
            {
                if ((this._SpreadDefectQty5 != value))
                {

                    this._SpreadDefectQty5 = value;

                }
            }
        }

        /// <summary>
        /// 15其他散部型疵點數量
        /// </summary>
        public decimal? SpreadDefectQtyOther
        {
            get
            {
                return this._SpreadDefectQtyOther;
            }
            set
            {
                if ((this._SpreadDefectQtyOther != value))
                {

                    this._SpreadDefectQtyOther = value;

                }
            }
        }


        /// <summary>
        /// 16局部型疵點名稱1
        /// </summary>
        public string PartDefectName1
        {
            get
            {

                return this._PartDefectName1;

            }
            set
            {
                if ((this._PartDefectName1 != value))
                {

                    this._PartDefectName1 = value;

                }
            }
        }
        /// <summary>
        /// 17局部型疵點數量1
        /// </summary>
        public decimal? PartDefectQty1
        {
            get
            {
                return this._PartDefectQty1;
            }
            set
            {
                if ((this._PartDefectQty1 != value))
                {

                    this._PartDefectQty1 = value;

                }
            }
        }

        /// <summary>
        /// 18局部型疵點名稱2
        /// </summary>
        public string PartDefectName2
        {
            get
            {

                return this._PartDefectName2;

            }
            set
            {
                if ((this._PartDefectName2 != value))
                {

                    this._PartDefectName2 = value;

                }
            }
        }
        /// <summary>
        /// 19局部型疵點數量2
        /// </summary>
        public decimal? PartDefectQty2
        {
            get
            {
                return this._PartDefectQty2;
            }
            set
            {
                if ((this._PartDefectQty2 != value))
                {

                    this._PartDefectQty2 = value;

                }
            }
        }

        /// <summary>
        /// 20局部型疵點名稱1
        /// </summary>
        public string PartDefectName3
        {
            get
            {

                return this._PartDefectName3;

            }
            set
            {
                if ((this._PartDefectName3 != value))
                {

                    this._PartDefectName3 = value;

                }
            }
        }
        /// <summary>
        /// 21局部型疵點數量3
        /// </summary>
        public decimal? PartDefectQty3
        {
            get
            {
                return this._PartDefectQty3;
            }
            set
            {
                if ((this._PartDefectQty3 != value))
                {

                    this._PartDefectQty3 = value;

                }
            }
        }

        /// <summary>
        /// 22局部型疵點名稱4
        /// </summary>
        public string PartDefectName4
        {
            get
            {

                return this._PartDefectName4;

            }
            set
            {
                if ((this._PartDefectName4 != value))
                {

                    this._PartDefectName4 = value;

                }
            }
        }
        /// <summary>
        /// 23局部型疵點數量4
        /// </summary>
        public decimal? PartDefectQty4
        {
            get
            {
                return this._PartDefectQty4;
            }
            set
            {
                if ((this._PartDefectQty4 != value))
                {

                    this._PartDefectQty4 = value;

                }
            }
        }

        /// <summary>
        /// 24局部型疵點名稱5
        /// </summary>
        public string PartDefectName5
        {
            get
            {

                return this._PartDefectName5;

            }
            set
            {
                if ((this._PartDefectName5 != value))
                {

                    this._PartDefectName5 = value;

                }
            }
        }
        /// <summary>
        /// 25局部型疵點數量5
        /// </summary>
        public decimal? PartDefectQty5
        {
            get
            {
                return this._PartDefectQty5;
            }
            set
            {
                if ((this._PartDefectQty5 != value))
                {

                    this._PartDefectQty5 = value;

                }
            }
        }

        /// <summary>
        /// 26局部型疵點名稱6
        /// </summary>
        public string PartDefectName6
        {
            get
            {

                return this._PartDefectName6;

            }
            set
            {
                if ((this._PartDefectName6 != value))
                {

                    this._PartDefectName6 = value;

                }
            }
        }
        /// <summary>
        /// 27局部型疵點數量6
        /// </summary>
        public decimal? PartDefectQty6
        {
            get
            {
                return this._PartDefectQty6;
            }
            set
            {
                if ((this._PartDefectQty6 != value))
                {

                    this._PartDefectQty6 = value;

                }
            }
        }

        /// <summary>
        /// 28局部型疵點名稱7
        /// </summary>
        public string PartDefectName7
        {
            get
            {

                return this._PartDefectName7;

            }
            set
            {
                if ((this._PartDefectName7 != value))
                {

                    this._PartDefectName7 = value;

                }
            }
        }
        /// <summary>
        /// 29局部型疵點數量7
        /// </summary>
        public decimal? PartDefectQty7
        {
            get
            {
                return this._PartDefectQty7;
            }
            set
            {
                if ((this._PartDefectQty7 != value))
                {

                    this._PartDefectQty7 = value;

                }
            }
        }

        /// <summary>
        /// 30局部型疵點名稱8
        /// </summary>
        public string PartDefectName8
        {
            get
            {

                return this._PartDefectName8;

            }
            set
            {
                if ((this._PartDefectName8 != value))
                {

                    this._PartDefectName8 = value;

                }
            }
        }
        /// <summary>
        /// 31局部型疵點數量8
        /// </summary>
        public decimal? PartDefectQty8
        {
            get
            {
                return this._PartDefectQty8;
            }
            set
            {
                if ((this._PartDefectQty8 != value))
                {

                    this._PartDefectQty8 = value;

                }
            }
        }

        /// <summary>
        /// 32局部型疵點名稱9
        /// </summary>
        public string PartDefectName9
        {
            get
            {

                return this._PartDefectName9;

            }
            set
            {
                if ((this._PartDefectName9 != value))
                {

                    this._PartDefectName9 = value;

                }
            }
        }
        /// <summary>
        /// 33局部型疵點數量9
        /// </summary>
        public decimal? PartDefectQty9
        {
            get
            {
                return this._PartDefectQty9;
            }
            set
            {
                if ((this._PartDefectQty9 != value))
                {

                    this._PartDefectQty9 = value;

                }
            }
        }

        /// <summary>
        /// 34局部型疵點名稱10
        /// </summary>
        public string PartDefectName10
        {
            get
            {

                return this._PartDefectName10;

            }
            set
            {
                if ((this._PartDefectName10 != value))
                {

                    this._PartDefectName10 = value;

                }
            }
        }
        /// <summary>
        /// 35局部型疵點數量10
        /// </summary>
        public decimal? PartDefectQty10
        {
            get
            {
                return this._PartDefectQty10;
            }
            set
            {
                if ((this._PartDefectQty10 != value))
                {

                    this._PartDefectQty10 = value;

                }
            }
        }

        /// <summary>
        /// 36其他局部型疵點數量
        /// </summary>
        public decimal? PartDefectQtyOther
        {
            get
            {
                return this._PartDefectQtyOther;
            }
            set
            {
                if ((this._PartDefectQtyOther != value))
                {

                    this._PartDefectQtyOther = value;

                }
            }
        }
        /// <summary>
        /// 37 短碼數量
        /// </summary>
        public decimal? ActualQty
        {
            get
            {
                return this._ActualQty;
            }
            set
            {
                if ((this._ActualQty != value))
                {

                    this._ActualQty = value;

                }
            }
        }
        /// <summary>
        /// 38 Mould Trail
        /// </summary>
        public decimal? MouldTrail
        {
            get
            {
                return this._MouldTrail;
            }
            set
            {
                if ((this._MouldTrail != value))
                {

                    this._MouldTrail = value;

                }
            }
        }
        /// <summary>
        /// 39 不顏色
        /// </summary>
        public decimal? FabricColor
        {
            get
            {
                return this._FabricColor;
            }
            set
            {
                if ((this._FabricColor != value))
                {

                    this._FabricColor = value;

                }
            }
        }
        #endregion


        //Xsj20120717 為顯示百分比圖表而添加
        #region


        /// <summary>
        /// Xsj:不含長短碼的Defect總數
        /// </summary>
        public decimal? DefectAllQtyNoShortLength
        {
            get
            {
                return (this.SpreadDefAllQty ?? 0) + (this.PartDefectAllQty ?? 0) + (this.MouldTrail ?? 0) + (this.FabricColor ?? 0);
            }
        }


        /// <summary>
        /// Xsj:不含長短碼的Defect總數
        /// </summary>
        public decimal? DefectAllQty
        {
            get
            {
                return (this.SpreadDefAllQty ?? 0) + (this.PartDefectAllQty ?? 0) + (this.MouldTrail ?? 0) + (this.FabricColor ?? 0) - (this.ActualQty ?? 0);
            }
        }


        /// <summary>
        /// Xsj:SpreadDef的總數
        /// </summary>
        public decimal? SpreadDefAllQty
        {
            get
            {
                return (this.SpreadDefectQty1 ?? 0) + (this.SpreadDefectQty2 ?? 0) + (this.SpreadDefectQty3 ?? 0) + (this.SpreadDefectQty4 ?? 0) + (this.SpreadDefectQty5 ?? 0) + (this.SpreadDefectQtyOther ?? 0);
            }
        }


        /// <summary>
        /// Xsj:PartDef的總數
        /// </summary>
        public decimal? PartDefectAllQty
        {
            get
            {
                return (this.PartDefectQty1 ?? 0) + (this.PartDefectQty2 ?? 0) + (this.PartDefectQty3 ?? 0) + (this.PartDefectQty4 ?? 0) + (this.PartDefectQty5 ?? 0) + (this.PartDefectQty6 ?? 0)
                    + (this.PartDefectQty7 ?? 0) + (this.PartDefectQty8 ?? 0) + (this.PartDefectQty9 ?? 0) + (this.PartDefectQty10 ?? 0) + (this.PartDefectQtyOther ?? 0);
            }
        }




        /// <summary>
        /// Xsj:SpreadDef的百分表
        /// </summary>
        public decimal? SpreadDefectPercentage
        {
            get
            {
                decimal deductedQty = 0;
                decimal percentage = 0;
                decimal spreadDefAllQty = (this.SpreadDefAllQty ?? 0);
                decimal defectAllQtyNoShortLength = (this.DefectAllQtyNoShortLength ?? 0);
                decimal actaulQty = (this.ActualQty ?? 0);
                decimal defectAllQty = (this.DefectAllQty ?? 0);
                if (actaulQty > 0) //Xsj:存在長碼
                {
                    deductedQty = spreadDefAllQty - spreadDefAllQty / (defectAllQtyNoShortLength == 0 ? 1 : defectAllQtyNoShortLength) * actaulQty;
                    if (deductedQty <= 0)
                    {
                        percentage = 0;
                    }
                    else
                    {
                        percentage = deductedQty / (defectAllQty == 0 ? 1 : defectAllQty);
                    }
                }
                else //Xsj:短碼
                {
                    percentage = spreadDefAllQty / (defectAllQty == 0 ? 1 : defectAllQty);
                }
                return Math.Round(percentage, 4);
            }
        }

        /// <summary>
        /// Xsj:PartDef的百分表
        /// </summary>
        public decimal? PartDefectPercentage
        {
            get
            {
                decimal deductedQty = 0;
                decimal percentage = 0;
                decimal partDefAllQty = (this.PartDefectAllQty ?? 0);
                decimal defectAllQtyNoShortLengt = (this.DefectAllQtyNoShortLength ?? 0);
                decimal actaulQty = (this.ActualQty ?? 0);
                decimal defectAllQty = (this.DefectAllQty ?? 0);
                if ((this.ActualQty ?? 0) > 0) //Xsj:存在長碼
                {
                    deductedQty = partDefAllQty - partDefAllQty / (defectAllQtyNoShortLengt == 0 ? 1 : defectAllQtyNoShortLengt) * actaulQty;
                    if (deductedQty <= 0)
                    {
                        percentage = 0;
                    }
                    else
                    {
                        percentage = deductedQty / (defectAllQty == 0 ? 1 : defectAllQty);
                    }
                }
                else //Xsj:短碼
                {
                    percentage = partDefAllQty / (defectAllQty == 0 ? 1 : defectAllQty);
                }
                return Math.Round(percentage, 4);
            }
        }

        /// <summary>
        /// Xsj20120907:PartDefect和SpecialDefect合計
        /// </summary>
        public decimal? DefectPercentage
        {
            get
            {
                return (this.PartDefectPercentage ?? 0) + (this.SpreadDefectPercentage ?? 0);
            }
        }


        /// <summary>
        /// Xsj:PartDef的百分表
        /// </summary>
        public decimal? ShortLengthPercentage
        {
            get
            {
                decimal deductedQty = 0;
                decimal percentage = 0;
                decimal defectAllQtyNoShortLength = (this.DefectAllQtyNoShortLength ?? 0);
                decimal actaulQty = Math.Abs(this.ActualQty ?? 0);
                decimal defectAllQty = (this.DefectAllQty ?? 0);
                if ((this.ActualQty ?? 0) < 0) //Xsj:存在短碼
                {
                    percentage = actaulQty / (defectAllQty == 0 ? 1 : defectAllQty);
                }
                return Math.Round(percentage, 4);
            }
        }


        /// <summary>
        /// Xsj:MouldTrial的百分表
        /// </summary>
        public decimal? MouldTrialPercentage
        {
            get
            {
                decimal deductedQty = 0;
                decimal percentage = 0;
                decimal mouldTrialQty = (this.MouldTrail ?? 0);
                decimal defectAllQtyNoShortLength = (this.DefectAllQtyNoShortLength ?? 0);
                decimal actaulQty = (this.ActualQty ?? 0);
                decimal defectAllQty = (this.DefectAllQty ?? 0);

                if ((this.ActualQty ?? 0) > 0) //Xsj:存在長碼
                {
                    deductedQty = mouldTrialQty - mouldTrialQty / (defectAllQty == 0 ? 1 : defectAllQty) * actaulQty;
                    if (deductedQty <= 0)
                    {
                        percentage = 0;
                    }
                    else
                    {
                        percentage = deductedQty / (defectAllQty == 0 ? 1 : defectAllQty);
                    }
                }
                else //Xsj:短碼
                {
                    percentage = mouldTrialQty / (defectAllQty == 0 ? 1 : defectAllQty);
                }
                return Math.Round(percentage, 4);
            }
        }


        /// <summary>
        /// Xsj:OffColor的百分表
        /// </summary>
        public decimal? OffColorPercentage
        {
            get
            {
                decimal deductedQty = 0;
                decimal percentage = 0;
                decimal offColorQty = (this.FabricColor ?? 0);
                decimal defectAllQtyNoShortLength = (this.DefectAllQtyNoShortLength ?? 0);
                decimal actaulQty = (this.ActualQty ?? 0);
                decimal defectAllQty = (this.DefectAllQty ?? 0);
                if ((this.ActualQty ?? 0) > 0) //Xsj:存在長碼
                {
                    deductedQty = offColorQty - offColorQty / (defectAllQtyNoShortLength == 0 ? 1 : defectAllQtyNoShortLength) * actaulQty;
                    if (deductedQty <= 0)
                    {
                        percentage = 0;
                    }
                    else
                    {
                        percentage = deductedQty / (defectAllQty == 0 ? 1 : defectAllQty);
                    }
                }
                else //Xsj:短碼
                {
                    percentage = offColorQty / (defectAllQty == 0 ? 1 : defectAllQty);
                }
                return Math.Round(percentage, 4);
            }
        }

        public List<DefectPercentInfo> DefPercentageInfoList = new List<DefectPercentInfo>();


        /// <summary>
        /// Xsj:百分比信息類
        /// </summary>
        public class DefectPercentInfo
        {
            public string DefectType { get; set; }
            public decimal Percentage { get; set; }
        }

        #endregion


    }
}
