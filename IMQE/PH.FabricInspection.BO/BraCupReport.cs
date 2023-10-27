using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data;

namespace PH.FabricInspection.BO
{
    public partial class BraCupHeader
    {
        public string DefectCodeDetailTop1Show { get; set; }
        public string DefectCodeDetailTop2Show { get; set; }
        public string DefectCodeDetailTop3Show { get; set; }
        public string DefectCodeDetailTop4Show { get; set; }
        public string DefectCodeDetailTop5Show { get; set; }
        public string DefectCodeDetailTop6Show { get; set; }
        public string TotalDefectCountShow { get; set; }




        public string DefectCodeTop1Show { get; set; }
        public string DefectCodeTop2Show { get; set; }
        public string DefectCodeTop3Show { get; set; }
        public string DefectCodeTop4Show { get; set; }
        public string DefectCodeTop5Show { get; set; }
        public string DefectCodeTop6Show { get; set; }

        public string Part1ResultByLotShow { get { return "-"; } }
        public string Part2ResultByLotShow { get { return "-"; } }
        public string Part3TestingResultByLotShow { get { return "-"; } }
        public string SingleSz { get { return "-"; } }
        public string CupSzUnderPkgLis { get { return "-"; } }


        public string ReviewedByShow
        {
            get
            {
                return ByLots.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Shelley Zhang" : "Obaidur";
            }
        }


        public string ApprovedByShow
        {
            get
            {
                return ByLots.Select(dr => dr.Whse).FirstOrDefault() == "RM" ? "Daisy Yin" : "Ken Lee";
            }
        }

        public string ItemIDNOShow
        {
            get
            {
                if (!string.IsNullOrEmpty(this.ItemIDNO))
                {
                    int Location = this.ItemIDNO.IndexOf('-', 0);
                    if (Location != -1 && (Location + 1) < ItemIDNO.Length)
                    {
                        string FirstStr = ItemIDNO.Substring(0, Location + 1);
                        string LastStr = ItemIDNO.Substring(Location + 1, ItemIDNO.Length - (Location + 1));
                        return FirstStr + "\r\n" + LastStr;
                    }
                    else
                    {
                        return this.ItemIDNO;
                    }
                }
                else { return this.ItemIDNO; }
            }
        }


        string[] DetailDefectItemNames = new string[]
        { 
            "Item id#\r\n(multiple SKU)",
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "Ttl"
        };

        string[] DetailDefectFieldNames = new string[]
        { 
            "ItemIDNOShow",
            "DefectCodeDetailTop1Show",
            "DefectCodeDetailTop2Show",
            "DefectCodeDetailTop3Show",
            "DefectCodeDetailTop4Show",
            "DefectCodeDetailTop5Show",
            "DefectCodeDetailTop6Show",
            "TotalDefectCountShow"               
        };

        /// <summary>
        /// 得到IMQE Result Sheet - BarCup MaterialDefect
        /// </summary>
        /// <returns></returns>
        public List<BraCupAuditReportMaterialDefectTable> GetBarCupMaterialDefectTable(string AuditNo)
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            }
            var AHeaderList = (this.CurrentDataContext as FabricInspectionDataContext).BraCupHeaders.Where(dr => dr.AuditNo == this.AuditNo).ToList();

            int PageCount = (int)Math.Ceiling(AHeaderList.Count() / 12m);//int PageDetailsCount = (int)Math.Ceiling(this.AccessoryAuditDetails.Count() / 12m); //每页显示个打横的栏位

            //string[] ItemNameType = ARptType == "BraCup" ? ItemNames : AItemNames;
            //string[] FieldNamesType = ARptType == "BraCup" ? FieldNames : AFieldNames;

            List<BraCupAuditReportMaterialDefectTable> Lists = new List<BraCupAuditReportMaterialDefectTable>();

            int SkipSize = 0;
            int TakeSize = 12;
            for (int page = 1; page <= PageCount; page++) //总共有PageCount页
            {
                var OnePageDetailLists = AHeaderList.Skip(SkipSize).Take(TakeSize).ToList();
                SkipSize += 12;

                foreach (var detail in OnePageDetailLists)
                {
                    detail.CalculateDefectDetailInfo(); //先計算出每個ID的疵點信息，Top 1 ~ Top 6和疵点总数
                }

                //新增一页
                for (int i = 0; i < DetailDefectItemNames.Count(); i++)
                {
                    BraCupAuditReportMaterialDefectTable obj = new BraCupAuditReportMaterialDefectTable();
                    obj.PageNO = page;
                    obj.SeqNo = i + 1;
                    obj.LeftItemName = DetailDefectItemNames[i];
                    obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[0], null) : null;
                    obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[1], null) : null;
                    obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[2], null) : null;
                    obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[3], null) : null;
                    obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[4], null) : null;
                    obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[5], null) : null;
                    obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[6], null) : null;
                    obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[7], null) : null;
                    obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[8], null) : null;
                    obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[9], null) : null;
                    obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[10], null) : null;
                    obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[11], null) : null;

                    //obj.Total = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(DetailDefectFieldNames[i]).GetValue(OnePageDetailLists[11], null) : null;

                    Lists.Add(obj);
                }
            }
            return Lists;
        }

        /// <summary>
        /// 得到IMQE Result Sheet - BarCup的数据
        /// </summary>
        /// <returns></returns>
        public List<BraCupAuditReportDetailTable> GetBarCupReportTable(string AuditNo)
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            }

            var AHeaderList = (this.CurrentDataContext as FabricInspectionDataContext).BraCupHeaders.Where(dr => dr.AuditNo == this.AuditNo).ToList();

            int PageCount = (int)Math.Ceiling(AHeaderList.Count() / 12m); //每页显示个打横的栏位

            //string[] ItemNameType = ARptType == "BraCup" ? ItemNames : AItemNames;
            //string[] FieldNamesType = ARptType == "BraCup" ? FieldNames : AFieldNames;
            //int AType = ARptType == "BraCup" ? 27 : 23;

            string[] ItemNameType = ItemNames;
            string[] FieldNamesType = FieldNames;
            //int AType =  27;

            var ALLDetailList = AHeaderList;
            foreach (var detail in AHeaderList)
            {
                detail.CalculateDefectInfo(); //先計算出每個ID的疵點信息，Top 1 ~ Top 5和疵点总数
                //detail.CalculateCasingInfo();
            }

            List<BraCupAuditReportDetailTable> Lists = new List<BraCupAuditReportDetailTable>();

            int SkipSize = 0;
            int TakeSize = 12;
            for (int page = 1; page <= PageCount; page++) //总共有PageCount页
            {

                var OnePageDetailLists = ALLDetailList.Skip(SkipSize).Take(TakeSize).ToList();
                List<BraCupHeader> AList = ALLDetailList.ToList();
                SkipSize += 12;

                //新增一页
                for (int i = 0; i < ItemNameType.Count(); i++)
                {
                    BraCupAuditReportDetailTable obj = new BraCupAuditReportDetailTable();
                    obj.PageNO = page;
                    obj.SeqNo = i + 1;
                    //obj.Flag = i < AType ? 1 : 2;
                    obj.Flag = 1;
                    obj.LeftItemName = ItemNameType[i];
                    obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[0], null) : null;
                    obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[1], null) : null;
                    obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[2], null) : null;
                    obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[3], null) : null;
                    obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[4], null) : null;
                    obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[5], null) : null;
                    obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[6], null) : null;
                    obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[7], null) : null;
                    obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[8], null) : null;
                    obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[9], null) : null;
                    obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[10], null) : null;
                    obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(FieldNamesType[i]).GetValue(OnePageDetailLists[11], null) : null;
                    obj.Total = CalcTotal(FieldNamesType[i], AList);
                    Lists.Add(obj);
                }
            }
            return Lists;
        }

        public string CalcTotal(string AColumName, List<BraCupHeader> AList)
        {
            string total = "";
            int calculate = 0;
            switch (AColumName)
            {
                //Audit info. 部分
                case "ItemIDNOShow":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.ItemIDNOShow)).Select(dr => dr.ItemIDNOShow).Distinct().Count().ToString();
                    break;
                case "ProjectNO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.ProjectNO)).Select(dr => dr.ProjectNO).Distinct().Count().ToString();
                    break;
                case "PONO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.PONO)).Select(dr => dr.PONO).Distinct().Count().ToString();
                    break;
                case "CasingPullCaseNo":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.CasingPullCaseNo)).Select(dr => dr.CasingPullCaseNo).Distinct().Count().ToString();
                    break;
                case "IndPackNO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.IndPackNO)).Select(dr => dr.IndPackNO).Distinct().Count().ToString();
                    break;
                case "AuditQty":
                    total = "-";
                    break;

                //  I (max shown 4 Tops)
                //SKU based on cross cup grpg
                case "CupSzUnderPkgLis":
                    string[] AmyArray;
                    string AStr = "";
                    var AAuditSKUCrossCupList = AList.Where(dr => !string.IsNullOrEmpty(dr.AuditSKUCrossCup)).Select(dr => dr.AuditSKUCrossCup).ToList();
                    foreach (var Obj in AAuditSKUCrossCupList)
                    {
                        AStr = AStr + Obj.Trim() + "/";
                    }
                    AmyArray = AStr.Split('/');
                    total = AmyArray.Where(dr => dr != "").Distinct().Count().ToString();
                    break;

                case "AuditSKUCrossCup":
                    string[] myArray;
                    string Str = "";
                    var AuditSKUCrossCupList = AList.Where(dr => !string.IsNullOrEmpty(dr.AuditSKUCrossCup)).Select(dr => dr.AuditSKUCrossCup).ToList();
                    foreach (var Obj in AuditSKUCrossCupList)
                    {
                        Str = Str + Obj.Trim() + "/";
                    }
                    myArray = Str.Split('/');
                    total = myArray.Where(dr => dr != "").Distinct().Count().ToString();
                    break;
                //Audited SKU (filter by cross cup grpg)
                case "AuditSKU":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.AuditSKU)).Select(dr => dr.AuditSKU).Distinct().Count().ToString();
                    break;
                //Audit Smpl Sz* (cross cup grpg)
                case "AQLAuditQty":
                    total = AList.Select(dr => dr.AQLAuditQty).Sum().ToString();
                    break;
                //Defect Qty* (For ref.)
                case "DefectQty":
                    total = AList.Select(dr => dr.DefectQty).Sum().ToString();
                    break;
                //Mat'l Defect cde* (Top 1)
                case "DefectCodeTop1Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 0 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 2)
                case "DefectCodeTop2Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 1 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 3)
                case "DefectCodeTop3Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 2 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 4)
                case "DefectCodeTop4Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 3 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 5)
                case "DefectCodeTop5Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 4 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 6)
                case "DefectCodeTop6Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 5 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //Ttl Mat'l Defects*
                case "DefectCount":
                    total = AList.Select(dr => dr.DefectCount).Sum().ToString();
                    break;
                //Mat'l defect AQL RESULT*
                case "DefectResultByID":
                    //List<string> ADefectResultByID = AList.Select(dr => dr.DefectResultByID).ToList();
                    //int BCount = ADefectResultByID.Where(dr => dr == "B").Count();
                    //total = BCount > 0 ? "B" : "A";
                    total = "-";
                    break;
                //Rejected Qty to be Claimed*
                case "RejectQty":
                    total = AList.Select(dr => dr.RejectQty).Sum().ToString();
                    break;
                //Part I - Defect Exam. RESULT        
                case "Part1ResultByLotShow":
                    List<string> APart1DefectRESULT = AList.Select(dr => dr.Part1ResultByLot).ToList();
                    int PBCount = APart1DefectRESULT.Where(dr => dr == "B").Count();
                    total = PBCount > 0 ? "B" : "A";
                    break;

                //II
                //Pull Case's Pkg list Qty * (mult. SKU)
                case "CasingPackListQty":
                    var ACasingPackListQty = AList.Select(dr => new { dr.CasingPackListQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = ACasingPackListQty.Select(dr => dr.CasingPackListQty).Sum().ToString();
                    break;
                //Pull Case's label Qty *
                case "CasingLabelQty":
                    var ACasingLabelQty = AList.Select(dr => new { dr.CasingLabelQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = ACasingLabelQty.Select(dr => dr.CasingLabelQty).Sum().ToString();
                    break;
                //Diff *
                case "CasingDiffQty":
                    var ACasingDiffQty = AList.Select(dr => new { dr.CasingDiffQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = ACasingDiffQty.Select(dr => dr.CasingDiffQty).Sum().ToString();
                    break;
                //Pkg list Qty *(cross cup grpg)
                case "PackListQty":
                    var APackListQty = AList.Select(dr => new { dr.PackListQty, dr.AuditSKUCrossCup }).Distinct().ToList();
                    total = APackListQty.Select(dr => dr.PackListQty).Sum().ToString();
                    //total = AList.Select(dr => dr.PackListQty).Sum().ToString();
                    break;
                //Counted Qty*
                case "CountQty":
                    //var ACountQty = AList.Select(dr => new { dr.CountQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    //total = ACountQty.Select(dr => dr.CountQty).Sum().ToString();
                    total = AList.Select(dr => dr.CountQty).Sum().ToString();
                    break;
                //Diff *
                case "CountDiffQty":
                    //var ACountDiffQty = AList.Select(dr => new { dr.CountDiffQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    //total = ACountDiffQty.Select(dr => dr.CountDiffQty).Sum().ToString();
                    total = AList.Select(dr => dr.CountDiffQty).Sum().ToString();
                    break;
                //Count RESULT under Pull Case *
                case "CountResult":
                    total = "-";
                    break;
                //Part II -Count RESULT**
                case "Part2ResultByLotShow":
                    List<string> APart2ResultByLot = AList.Select(dr => dr.Part2ResultByLot).ToList();
                    int BAPart2ResultByLot = APart2ResultByLot.Where(dr => dr == "B").Count();
                    total = BAPart2ResultByLot > 0 ? "B" : "A";
                    break;

                // III
                //Shade Grpg from Color Team, if any
                case "ColorShade":
                    total = "-";
                    break;
                //Other Test RESULT under Pull Case *
                case "ColorShadeResult":
                    total = "-";
                    break;
                //Part III -Other Test RESULT**
                case "Part3TestingResultByLotShow":
                    List<string> APart3TestingResultByLot = AList.Select(dr => dr.Part3TestingResultByLot).ToList();
                    int BAPart3TestingResultByLot = APart3TestingResultByLot.Where(dr => dr == "B").Count();
                    total = BAPart3TestingResultByLot > 0 ? "B" : "A";
                    break;

                default: total = "";
                    break;
            }
            return total;
        }

        string[] ItemNames = new string[]
        { 
           // Audit info. 部分
            "Item id#(multiple SKU)\r\n ",
            "Proj#",
            "PO#",
            "Pull Carton#",
            "Pull iPack#",
            "Audit Qty Size",

            // I (max shown 4 Tops)
            "Cup/Sz under Pkg List **", //New Colums
            "Cup/Sz under Pull iPack *\r\n ",
            "Sz Grpg (cross sz/single sz)",  //New Colums
            "Pkg list Qty fig. * (cross cup Sz. grpg)",
            "Audited SKU (filter by cross cup Sz. grpg)",           
            "Audit Smpl Quantum under Pull iPack *",
            "Rejected Item id Qty under Pull iPack *",
            "Seq.1) Defect Point cde",
            "Seq.2) Defect Point cde",
            "Seq.3) Defect Point cde",
            "Seq.4) Defect Point cde",
            "Seq.5) Defect Point cde",
            "Seq.6) Defect Point cde",
            "Defect Ttl Pts *",
            "Defect Exam. RESULT under Pull iPacks *",
            //"Rejected item id Qty to be Claimed *",
            "Part I - Defect Exam. RESULT **",

            // II
            "Pull Carton's pkg list Qty fig. * (mult. SKU) :-",
            //"a) Pull case's label Qty fig. *",
            //"Diff *",
           
            "Pull carton's Counted Qty *",
            "Diff *",
            "Count RESULT under Pull Carton *",
            "Part II -Count RESULT**",

            // III
            "Shade Grpg from Color Team, if any",
            "Other Test RESULT under Pull Carton *",
            "Part III - Other Test RESULT **",          
        };

        string[] FieldNames = new string[]
        { 

            //Audit info. 部分
            "ItemIDNOShow",
            "ProjectNO",
            "PONO",
            "CasingPullCaseNo",
            "IndPackNO",
            "AuditQty",

            //I (max shown 4 Tops)
            "CupSzUnderPkgLis",
            "AuditSKUCrossCup",
            "SingleSz",
            "PackListQty",
            "AuditSKU",          
            "AQLAuditQty",
            "DefectQty",
            "DefectCodeTop1Show", 
            "DefectCodeTop2Show",
            "DefectCodeTop3Show",
            "DefectCodeTop4Show",
            "DefectCodeTop5Show",
            "DefectCodeTop6Show",
            "DefectCount",
            "DefectResultByID",
            //"RejectQty",
            "Part1ResultByLotShow",//"Part1DefectRESULT",


            //II
            "CasingPackListQty",
            //"CasingLabelQty",
            //"CasingDiffQty",

            
            "CountQty",
            "CountDiffQty",

            "CountResult",

            "Part2ResultByLotShow",
            
           // III
           "ColorShade",
           "ColorShadeResult",

           "Part3TestingResultByLotShow",

        };

        public void CalculateDefectInfo()
        {

            //TotalDefectCountShow = this.AccessoryDefects.Select(p => p.DefectCode).Distinct().Count().ToString();

            var DefectLists = this.BraCupDefects.GroupBy(p => p.DefectCode)
                                .Select(g => new
                                {
                                    DefectCode = g.Key,
                                    SumDefectQty = g.Sum(p => p.Qty)
                                })
                                 .OrderByDescending(p => p.SumDefectQty).ToList();

            DefectCodeTop1Show = "Non";
            DefectCodeTop2Show = "-";
            DefectCodeTop3Show = "-";
            DefectCodeTop4Show = "-";
            DefectCodeTop5Show = "-";
            DefectCodeTop6Show = "-";
            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) DefectCodeTop1Show = DefectLists[i - 1].DefectCode;
                else if (i == 2) DefectCodeTop2Show = DefectLists[i - 1].DefectCode;
                else if (i == 3) DefectCodeTop3Show = DefectLists[i - 1].DefectCode;
                else if (i == 4) DefectCodeTop4Show = DefectLists[i - 1].DefectCode;
                else if (i == 5) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
                else if (i == 6) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
            }
        }

        public void CalculateDefectDetailInfo()
        {


            TotalDefectCountShow = this.BraCupDefects.Select(p => p.DefectCode).Distinct().Count().ToString();
            var DefectLists = this.BraCupDefects.GroupBy(p => new { p.DefectCode, p.DefectName, p.Qty })
                                .Select(g => new
                                {
                                    DefectCode = g.Key.DefectCode,
                                    DefectName = g.Key.DefectName,
                                    Qty = g.Key.Qty
                                })
                                 .OrderByDescending(p => p.Qty).ToList();

            DefectCodeDetailTop1Show = "Non";
            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) DefectCodeDetailTop1Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
                else if (i == 2) DefectCodeDetailTop2Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
                else if (i == 3) DefectCodeDetailTop3Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
                else if (i == 4) DefectCodeDetailTop4Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
                else if (i == 5) DefectCodeDetailTop5Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
                else if (i == 6) DefectCodeDetailTop6Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName + "\r\n" + "Qty : " + DefectLists[i - 1].Qty;
            }



        }

        #region BraCupResultNoticeRpeport 報表相關計算字段
        public FabricInspectionDataContext db
        {
            get
            {
                return ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //if (this.CurrentDataContext == null)
                //{
                //    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                //}

                //return this.CurrentDataContext as FabricInspectionDataContext;
            }
        }


        List<BraCupHeader> _ByLots;
        public List<BraCupHeader> ByLots
        {
            get
            {
                //if (_ByLots == null)
                //{
                //    _ByLots = db.BraCupHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                //}
                _ByLots = db.BraCupHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                return _ByLots;
            }
        }


        public string AQLAuditQtyByLotRange
        {
            get
            {

                int? RangeMin = ByLots.Select(dr => dr.AQLAuditQty ?? 0).Min();
                int? RangeMax = ByLots.Select(dr => dr.AQLAuditQty ?? 0).Max();
                return string.Format("{0} ~ {1}", RangeMin, RangeMax);
            }
        }

        public string AQL25StandardQtyByLotRange
        {
            get
            {

                int? RangeMin = ByLots.Select(dr => dr.AQL25StandardQty ?? 0).Min();
                int? RangeMax = ByLots.Select(dr => dr.AQL25StandardQty ?? 0).Max();
                return string.Format("{0} ~ {1}", RangeMin, RangeMax);
            }
        }

        public string IssueDate
        {
            get
            {
                return DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        public string RNNo
        {
            get
            {
                if (AuditNo.HasValue)
                {
                    return string.Format("{0}-{1}", AuditNo.ToString().Substring(2), AOverallResultShow);
                }

                return "";
            }
        }

        public string SuppName
        {
            get
            {
                string SqlStr = string.Format("select top 1 ShortName from [PH.BasicInfo]..SupplierProfile where ERPSupplier = '{0}'", SuppCode);
                DataTable dt = db.ExecuteDataTable(SqlStr, "Opts");
                if (dt == null || dt.Rows.Count == 0)
                {
                    return "";
                }
                return dt.Rows[0]["ShortName"].ToString();

            }
        }

        public int? AQL25StandardQtyByLotShow
        {
            get
            {
                if (!AQL25StandardQty.HasValue) return null;
                return ByLots.Select(dr => dr.AQL25StandardQty).Sum();
            }
        }


        public int? SpotDefectPointQtyByLotShow
        {
            get
            {
                if (!SpotDefectPointQty.HasValue) return null;
                return ByLots.Select(dr => dr.SpotDefectPointQty).Sum();
            }
        }

        //public decimal? ConcedePercent
        //{
        //    get
        //    {
        //        if (!PackingListLengthByLot.HasValue) return null;
        //        return (ConcedeQtyByLot ?? 0) / (PackingListLengthByLot ?? 0);
        //    }
        //}

        public decimal? Part1ClaimPercent
        {
            get
            {
                if (!PackListQtyByLot.HasValue) return null;
                return (Part1FinalClaimByLot ?? 0) / (PackListQtyByLot ?? 0);
            }
        }

        public decimal? Part2ClaimPercent
        {
            get
            {
                if (!PackListQtyByLot.HasValue) return null;
                return (Part2FinalClaimByLot ?? 0) / (PackListQtyByLot ?? 0);
            }
        }

        public decimal? Part3ClaimPercent
        {
            get
            {
                if (!PackListQtyByLot.HasValue) return null;
                return (Part3FinalClaimByLot ?? 0) / (PackListQtyByLot ?? 0);
            }
        }


        public decimal? OverClaimPercent
        {
            get
            {
                if (!PackListQtyByLot.HasValue) return null;
                return (OverallProposaClaimlByLot ?? 0) / (PackListQtyByLot ?? 0);
            }
        }

        public string AOverallResultGradeShow
        {
            get
            {

                List<string> ResultList = new List<string>();
                ResultList = ByLots.Select(dr => dr.OverallResult).ToList();

                if (ResultList.Where(p => p == "C").Count() > 0)
                {
                    return "C";
                }
                else if (ResultList.Where(p => p == "B").Count() > 0)
                {
                    return "B";
                }

                else if (ResultList.Where(p => p == "A").Count() > 0)
                {
                    return "A";
                }
                else if (ResultList.Where(p => p == "A+").Count() > 0)
                {
                    return "A+";
                }
                else { return "A-"; }
            }
        }

        public string AOverallResultShow
        {
            get
            {

                List<string> ResultList = new List<string>();
                ResultList.Add(Part1ResultByLot);
                ResultList.Add(Part2ResultByLot);
                ResultList.Add(Part3TestingResultByLot);


                if (ResultList.Where(p => p == "C").Count() > 0)
                {
                    return "C";
                }
                else if (ResultList.Where(p => p == "B").Count() > 0)
                {
                    return "B";
                }

                else if (ResultList.Where(p => p == "A").Count() > 0)
                {
                    return "A";
                }
                else if (ResultList.Where(p => p == "A+").Count() > 0)
                {
                    return "A+";
                }
                else { return "A-"; }
            }
        }


        public NoticeReportTypes NoticeReportType { get; set; }
        public List<CoreReasonsClass> CoreReasonsList
        {
            get
            {
                IQueryable<BraCupHeader> CoreDataList = ByLots.AsQueryable();
                if (this.NoticeReportType == NoticeReportTypes.RejectNotice)
                {
                    CoreDataList = ByLots.Where(p => p.OverallResult != "A+" && p.OverallResult != "A").AsQueryable<BraCupHeader>();
                }

                return CoreDataList.GroupBy(p => new
                {
                    Grade = ((p.OverallResult == "A+" || p.OverallResult == "A") ? "A" : p.OverallResult),
                    ReasonGrp = p.OverallResultReasonGroup,
                    CoreReasonsSummary = p.OverallResultCoreDefecName,
                    WhichPart = string.IsNullOrEmpty(p.OverallResultReasonPart) ? "" : p.OverallResultReasonPart
                })
                .Select(g => new CoreReasonsClass
                {
                    Grade = g.Key.Grade,
                    ReasonGrp = g.Key.ReasonGrp,
                    CoreReasonsSummary = g.Key.CoreReasonsSummary,
                    WhichPart = g.Key.WhichPart,
                    OccurredAuditRoll = g.Count()
                })
                .OrderBy(p => p.Grade).ThenBy(p => p.OccurredAuditRoll).ThenBy(p => p.CoreReasonsSummary).ToList();
            }
        }


        #endregion


    }

    public class BraCupAuditReportDetailTable
    {
        public int Flag { get; set; } //用来区分Casing（）与Material（）

        //Material
        public int PageNO { get; set; }
        public int SeqNo { get; set; }
        public string LeftItemName { get; set; }
        public object DataItem1 { get; set; }
        public object DataItem2 { get; set; }
        public object DataItem3 { get; set; }
        public object DataItem4 { get; set; }
        public object DataItem5 { get; set; }
        public object DataItem6 { get; set; }
        public object DataItem7 { get; set; }
        public object DataItem8 { get; set; }
        public object DataItem9 { get; set; }
        public object DataItem10 { get; set; }
        public object DataItem11 { get; set; }
        public object DataItem12 { get; set; }
        public object Total { get; set; }

    }

    public class BraCupAuditReportMaterialDefectTable
    {
        public int PageNO { get; set; }
        public int SeqNo { get; set; }
        public string LeftItemName { get; set; }
        public object DataItem1 { get; set; }
        public object DataItem2 { get; set; }
        public object DataItem3 { get; set; }
        public object DataItem4 { get; set; }
        public object DataItem5 { get; set; }
        public object DataItem6 { get; set; }
        public object DataItem7 { get; set; }
        public object DataItem8 { get; set; }
        public object DataItem9 { get; set; }
        public object DataItem10 { get; set; }
        public object DataItem11 { get; set; }
        public object DataItem12 { get; set; }
        public object Total { get; set; }
    }

    public class BraCupiAuditFormReportResult
    {
        public int PageNO { get; set; }
        public int RecordNO { get; set; }
        public BraCupHeader BraCupHeaderObj { get; set; }


        public string ItemIDNOShow
        {
            get
            {
                return this.BraCupHeaderObj.ItemIDNO.Replace("-S", "-\r\nS");
            }
        }


        // Audit info.
        public string ProjectNO { get { return this.BraCupHeaderObj.ProjectNO; } }
        public string PONO { get { return this.BraCupHeaderObj.PONO; } }
        public string CasingPullCaseNo { get { return this.BraCupHeaderObj.CasingPullCaseNo; } }
        public string IndPackNO { get { return this.BraCupHeaderObj.IndPackNO; } }
        public string AuditQty { get { return this.BraCupHeaderObj.AuditQty; } }

        // I
        public string AuditFullSizeDiffByLotShow { get { return "-"; } }
        public string AuditSKUCrossCup { get { return this.BraCupHeaderObj.AuditSKUCrossCup; } }
        public string SimpleCupORCrossCupShow { get { return this.BraCupHeaderObj.SimpleCupORCrossCupShow; } }
        public int? PackListQtyByCrossCup { get { return this.BraCupHeaderObj.PackListQtyByCrossCup; } }
        public string AuditSKU { get { return this.BraCupHeaderObj.AuditSKU; } }
        public int? AQLAuditQty { get { return this.BraCupHeaderObj.AQLAuditQty; } }
        public int? AQL25StandardQty { get { return this.BraCupHeaderObj.AQL25StandardQty; } }
        public int? SpotDefectPointQty { get { return this.BraCupHeaderObj.SpotDefectPointQty; } }


        public string DefectCodeTop1Show { get; set; }
        public string DefectCodeTop2Show { get; set; }
        public string DefectCodeTop3Show { get; set; }
        public string DefectCodeTop4Show { get; set; }
        public string DefectCodeTop5Show { get; set; }
        public string DefectCodeTop6Show { get; set; }
        public string TotalDefectCountShow { get; set; }

        public string Part1Result { get { return this.BraCupHeaderObj.Part1Result; } }
        public int? PackListQty { get { return this.BraCupHeaderObj.PackListQty; } }
        public string Part1ResultByLot { get { return "-"; } }

        // II
        public int? CasingLabelQty { get { return this.BraCupHeaderObj.CasingLabelQty; } }
        public int? CasingDiffQty { get { return this.BraCupHeaderObj.CasingDiffQty; } }
        public string CasingResultByLot { get { return this.BraCupHeaderObj.CasingDiffPercent < 0 ? "B" : "A"; } }
        public string Part2ResultByLot { get { return "-"; } }

        // III
        public string ColorShade { get { return this.BraCupHeaderObj.ColorShade; } }
        public string ColorShadeResult { get { return this.BraCupHeaderObj.ColorShadeResult; } }
        public string Part3TestingResultByLot { get { return "-"; } }

        //Total
        public string TotalShow(string AFieldSeq, List<BraCupHeader> Alist)
        {
            return NewCalcTotal(AFieldSeq, Alist);
        }


        public void CalculateDefectInfo()
        {

            TotalDefectCountShow = this.BraCupHeaderObj.BraCupDefects.Select(p => p.DefectCode).Distinct().Count().ToString();

            var DefectLists = this.BraCupHeaderObj.BraCupDefects.GroupBy(p => p.DefectCode)
                                .Select(g => new
                                {
                                    DefectCode = g.Key,
                                    SumDefectQty = g.Sum(p => p.Qty)
                                })
                                 .OrderByDescending(p => p.SumDefectQty).ToList();

            DefectCodeTop1Show = "Non";
            DefectCodeTop2Show = "-";
            DefectCodeTop3Show = "-";
            DefectCodeTop4Show = "-";
            DefectCodeTop5Show = "-";
            DefectCodeTop6Show = "-";
            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) DefectCodeTop1Show = DefectLists[i - 1].DefectCode;
                else if (i == 2) DefectCodeTop2Show = DefectLists[i - 1].DefectCode;
                else if (i == 3) DefectCodeTop3Show = DefectLists[i - 1].DefectCode;
                else if (i == 4) DefectCodeTop4Show = DefectLists[i - 1].DefectCode;
                else if (i == 5) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
                else if (i == 6) DefectCodeTop5Show = DefectLists[i - 1].DefectCode;
            }
        }

        public string NewCalcTotal(string AFieldSeq, List<BraCupHeader> AList)
        {
            string total = "";
            int calculate = 0;
            switch (AFieldSeq)
            {
                //Audit info. 部分
                case "ItemIDNOShow":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.ProjectNO)).Select(dr => dr.ItemIDNOShow).Distinct().Count().ToString();
                    break;

                // ProjectNO  
                case "ProjectNO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.ProjectNO)).Select(dr => dr.ProjectNO).Distinct().Count().ToString();
                    break;

                // PONO    
                case "PONO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.PONO)).Select(dr => dr.PONO).Distinct().Count().ToString();
                    break;

                // CasingPullCaseNo
                case "CasingPullCaseNo":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.CasingPullCaseNo)).Select(dr => dr.CasingPullCaseNo).Distinct().Count().ToString();
                    break;

                // IndPackNO 
                case "IndPackNO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.IndPackNO)).Select(dr => dr.IndPackNO).Distinct().Count().ToString();
                    break;

                //AuditQty 
                case "AuditQty":
                    total = "-";
                    break;

                //  I 
                // AuditFullSizeDiffByLotShow 
                case "AuditFullSizeDiffByLotShow":
                    total = System.Math.Abs(AList.Select(dr => dr.AuditFullSizeDiffByLotShow).FirstOrDefault()).ToString();
                    break;
                //AuditSKUCrossCup
                case "AuditSKUCrossCup":
                    string[] AmyArray;
                    string AStr = "";
                    var AAuditSKUCrossCupList = AList.Where(dr => !string.IsNullOrEmpty(dr.AuditSKUCrossCup)).Select(dr => dr.AuditSKUCrossCup).ToList();
                    foreach (var Obj in AAuditSKUCrossCupList)
                    {
                        AStr = AStr + Obj.Trim() + "/";
                    }
                    AmyArray = AStr.Split('/');
                    total = AmyArray.Where(dr => dr != "").Distinct().Count().ToString();
                    break;

                //SimpleCupORCrossCupShow 
                case "SimpleCupORCrossCupShow":
                    total = "-";
                    break;

                //PackListQtyByCrossCup 
                case "PackListQtyByCrossCup":
                    total = AList.Select(dr => dr.PackListQtyByCrossCup).Sum().ToString();
                    break;

                //AuditSKU 
                case "AuditSKU":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.AuditSKU)).Select(dr => dr.AuditSKU).Distinct().Count().ToString();
                    break;

                //AQLAuditQty 
                case "AQLAuditQty":
                    total = AList.Select(dr => dr.AQLAuditQty).Sum().ToString();
                    break;

                //AQL25StandardQty 
                case "AQL25StandardQty":
                    total = AList.Select(dr => dr.AQL25StandardQty).Sum().ToString();
                    break;

                //SpotDefectPointQty
                case "SpotDefectPointQty":
                    total = AList.Select(dr => dr.SpotDefectPointQty).Sum().ToString();
                    break;

                //DefectCodeTop1Show 
                case "DefectCodeTop1Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 0 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //DefectCodeTop2Show 
                case "DefectCodeTop2Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 1 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                // DefectCodeTop3Show 
                case "DefectCodeTop3Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 2 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //DefectCodeTop4Show 
                case "DefectCodeTop4Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 3 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //DefectCodeTop5Show 
                case "DefectCodeTop5Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 4 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //DefectCodeTop6Show 
                case "DefectCodeTop6Show":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 5 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;

                //Ttl Mat'l Defects*
                case "TotalDefectCountShow":
                    foreach (BraCupHeader AAObj in AList)
                    {
                        int Acount = AAObj.BraCupDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + Acount;
                    }
                    total = calculate.ToString();
                    break;

                // Part1Result 
                case "Part1Result":
                    total = "-";
                    break;


                // PackListQty
                case "PackListQty":
                    var APackListQtyByLot = AList.Select(dr => new { dr.PackListQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = APackListQtyByLot.Select(dr => dr.PackListQty).Sum().ToString();
                    break;


                //Part1ResultByLot
                case "Part1ResultByLot":
                    total = this.BraCupHeaderObj.Part1ResultByLot;
                    break;


                // II
                // CasingLabelQty
                case "CasingLabelQty":
                    total = AList.Select(dr => dr.CasingLabelQty).Sum().ToString();
                    break;

                // CasingDiffQty
                case "CasingDiffQty":
                    total = AList.Select(dr => dr.CasingDiffQty).Sum().ToString();
                    break;

                // CasingResultByLot 
                case "CasingResultByLot":
                    total = "-";
                    break;

                // Part2ResultByLot  
                case "Part2ResultByLot":
                    total = this.BraCupHeaderObj.Part2ResultByLot;
                    break;

                // III
                case "ColorShade":
                    total = "-";
                    break;

                case "ColorShadeResult":
                    total = "-";
                    break;

                case "Part3TestingResultByLot":
                    total = this.BraCupHeaderObj.Part3TestingResultByLot;
                    break;

                default: total = "";
                    break;
            }
            return total;
        }





    }

}
