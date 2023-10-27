using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using PH.POPC.BO;
using PH.MIDc.BO;
using System.Text.RegularExpressions;
using System.Data;

namespace PH.FabricInspection.BO
{
    public partial class AccessoryHeader : BaseEntity
    {

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

        public string PartIInotapplicable { get { return "n.a."; } }
        public string Part1DefectRESULT { get { return "A"; } }
        public string Part2MeasurementRESULT { get { return "A"; } }
        public string Part3MeasurementRESULT { get { return "A"; } }

        public int TotalDefectDetailShow
        {
            get
            {
                return this.AccessoryDefects.Select(p => p.DefectCode).Distinct().Count();
            }
        }

        public void CalculateDefectInfo()
        {

            //TotalDefectCountShow = this.AccessoryDefects.Select(p => p.DefectCode).Distinct().Count().ToString();

            var DefectLists = this.AccessoryDefects.GroupBy(p => p.DefectCode)
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

        //public string TotalDefectCountShow { get; set; }
        public string DefectCodeTop1Show { get; set; }
        public string DefectCodeTop2Show { get; set; }
        public string DefectCodeTop3Show { get; set; }
        public string DefectCodeTop4Show { get; set; }
        public string DefectCodeTop5Show { get; set; }
        public string DefectCodeTop6Show { get; set; }


        public void CalculateDefectDetailInfo()
        {
            var DefectLists = this.AccessoryDefects.GroupBy(p => new { p.DefectCode, p.DefectName })
                                .Select(g => new
                                {
                                    DefectCode = g.Key.DefectCode,
                                    DefectName = g.Key.DefectName,
                                    SumDefectQty = g.Sum(p => p.Qty)
                                })
                                 .OrderByDescending(p => p.SumDefectQty).ToList();

            DefectCodeDetailTop1Show = "Non";
            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) DefectCodeDetailTop1Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
                else if (i == 2) DefectCodeDetailTop2Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
                else if (i == 3) DefectCodeDetailTop3Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
                else if (i == 4) DefectCodeDetailTop4Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
                else if (i == 5) DefectCodeDetailTop5Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
                else if (i == 6) DefectCodeDetailTop6Show = DefectLists[i - 1].DefectCode + "\r\n" + DefectLists[i - 1].DefectName;
            }



        }
        // public string ItemIDNOShow
        // { 
        //     get {
        //     if (!string.IsNullOrEmpty(this.ItemIDNO))
        //     {
        //         int Location = this.ItemIDNO.IndexOf('-', 0);
        //         if (Location != -1 && (Location + 1) < ItemIDNO.Length)
        //         {
        //             string FirstStr = ItemIDNO.Substring(0, Location + 1);
        //             string LastStr = ItemIDNO.Substring(Location + 1, ItemIDNO.Length - (Location + 1));
        //             return FirstStr + "\r\n" + LastStr;
        //         }
        //         else
        //         {
        //             return this.ItemIDNO;
        //         }
        //     }
        //     else { return this.ItemIDNO; }
        //     }
        //}

        public string DefectCodeDetailTop1Show { get; set; }
        public string DefectCodeDetailTop2Show { get; set; }
        public string DefectCodeDetailTop3Show { get; set; }
        public string DefectCodeDetailTop4Show { get; set; }
        public string DefectCodeDetailTop5Show { get; set; }
        public string DefectCodeDetailTop6Show { get; set; }

        public void CalculateCasingInfo()
        {
            List<AccessoryCasingDefect> CasingList = this.AccessoryCasingDefects.ToList();
            CasingDefectCodeTop1Show = "Non";
            var DefectLists = CasingList.GroupBy(p => p.DefectCode)
                                .Select(g => new
                                {
                                    DefectCode = g.Key,
                                    SumDefectQty = g.Sum(p => p.DefectQty)
                                })
                                 .OrderByDescending(p => p.SumDefectQty).ToList();

            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) CasingDefectCodeTop1Show = DefectLists[i - 1].DefectCode;
                else if (i == 2) CasingDefectCodeTop2Show = DefectLists[i - 1].DefectCode;
            }

        }

        public void CalculateCasingDDefectInfo()
        {
            TotalCasingDefectShow = this.AccessoryDefects.Select(p => p.DefectCode).Distinct().Count().ToString();
            var DefectLists = this.AccessoryDefects.GroupBy(p => new { p.DefectCode, p.DefectNameCN, p.DefectNameEN })
                               .Select(g => new
                               {
                                   DefectCode = g.Key.DefectCode,
                                   DefectNameCN = g.Key.DefectNameCN,
                                   DefectNameEN = g.Key.DefectNameEN,
                                   SumDefectQty = g.Sum(p => p.Qty)
                               })
                                .OrderByDescending(p => p.SumDefectQty).ToList();

            CasingDefectCodeTop1Show = "Non";
            for (int i = 1; i <= DefectLists.Count(); i++)
            {
                if (i == 1) CasingDefectCodeTop1Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
                else if (i == 2) CasingDefectCodeTop2Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
                else if (i == 3) CasingDefectCodeTop3Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
                else if (i == 4) CasingDefectCodeTop4Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
                else if (i == 5) CasingDefectCodeTop5Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
                else if (i == 6) CasingDefectCodeTop6Show = DefectLists[i - 1].DefectCode + " " + DefectLists[i - 1].DefectNameCN + "\r\n" + DefectLists[i - 1].DefectNameEN;
            }


        }
        public string TotalCasingDefectShow { get; set; }

        public string CasingDefectCodeTop1Show { get; set; }
        public string CasingDefectCodeTop2Show { get; set; }
        public string CasingDefectCodeTop3Show { get; set; }
        public string CasingDefectCodeTop4Show { get; set; }
        public string CasingDefectCodeTop5Show { get; set; }
        public string CasingDefectCodeTop6Show { get; set; }


        public string Part1ResultByLotShow { get { return "-"; } }
        public string Part2ResultByLotShow { get { return "-"; } }
        public string Part3TestingResultByLotShow { get { return "-"; } }
        public string SingleSz { get { return "New Colums"; } }

        public decimal? ProWeightQtyShow { get { return Math.Round((this.ProWeightQty ?? 0), 0); } }
        public decimal? PullBoxWeightShow { get { return Math.Round((this.PullBoxWeight ?? 0), 3); } }
        public decimal? SampleQuantumWeightShow { get { return Math.Round((this.SampleQuantumWeight ?? 0), 3); } }

        //因界面需求，去David提供的算法，20210623
        public decimal? LengthDiffShow { get { return (ProWeightQty ?? 0) == 0 ? null : (Math.Round(ProWeightQty ?? 0, 0) - PackListQty); } }
        public string LengthPercentByLotShow { get { return "-"; } }
        public string Part4ResultByLotShow { get { return "-"; } }
        public string CountResultShow { get { return LengthDiffShow >= 0 ? "A" : "B"; } }

        string[] CasingDefectItemNames = new string[]
        { 
            "Case#",
            "1",
            "2",
            "3",       
            "Ttl"
        };

        string[] CasingDefectFieldNames = new string[]
        { 
            "CasingPullCaseNo",
            "CasingDefectCodeTop1Show",
            "CasingDefectCodeTop2Show",
            "CasingDefectCodeTop3Show",           
            "CasingTotalDefectQty"

        };

        string[] AItemNames = new string[]
        {
            //Audit info 部分
            "Item id#(Single SKU)",
            "Proj#",
            "PO#",
            "Pull Box#",
            //"Ind. pack#",
            "Audit Qty Size",

             //I (max shown 4 Tops)           
            "Audit Smpl Quantum *",
            "Acc. Limit *",
            "Defect Ttl Pts (u/m by pc)",
            "Seq.1) Defect Point cde /desc.\r\n ",
            "Seq.2) Defect Point cde /desc.\r\n ",
            "Seq.3) Defect Point cde /desc.\r\n ",
            "Seq.4) Defect Point cde /desc.\r\n ",
            "Seq.5) Defect Point cde /desc.\r\n ",
            "Seq.6) Defect Point cde /desc.\r\n ",
            "Defect Ttl Pts *",
            "Defect Exam. RESULT under Pull Box *",
            //"Rejected item id Qty to be Claimed *",
            "Pull Box's pkg list Qty *",
            "Part I - Defect Exam. RESULT **",

            //II
            //"Agreed usable width range**",
            //"Meas. usable width (narrowest) *",
            //"Deviation *",

            //"Pull case's pkg list Qty fig. * :-",
            //"a) Pull case's label Qty fig. *",
            //"Diff *",

            ////"Pkg list Qty *",
            //"b) Pull case's counted pcs. *",
            //"Diff *",
            "Pro-weight Qty (pc) *",
            "Pro-weight by Pull box  (kg) *",
            "Pro-weight by Smpl Quantum  (kg) *",
            "Diff *",
            "Diff % **",

            "Measure RESULT under Pull Box *",
            "Part II - Measure RESULT **",

            //III
            "Shade Grpg by Color Team, if any",
            "Testing RESULT under Pull Box *",
            "Part III - Testing RESULT **",
          

            // IV
            "Agreed usable width range **",
            "Meas. usable width (narrowest) *",
            "Deviation *",
            "PART IV - Specific Specification **"
        };

        string[] AFieldNames = new string[]
        {
            //Audit info 部分
            "ItemIDNO",
            "ProjectNO",
            "PONO",
            "CasingPullCaseNo",
            //"IndPackNO",
            "AuditQty",

            //I (max shown 6 Tops)    
            "AQLAuditQty",
            "AQL25StandardQty",
            "DefectQty",
            "CasingDefectCodeTop1Show",
            "CasingDefectCodeTop2Show",
            "CasingDefectCodeTop3Show",
            "CasingDefectCodeTop4Show",
            "CasingDefectCodeTop5Show",
            "CasingDefectCodeTop6Show",

            "DefectCount",
            "DefectResultByID",
            //"RejectQty", 
            "PackListQty",
            "Part1ResultByLotShow",//"Part1DefectRESULT",

            //II
            //"AgreedUsableWidthRange",
            //"EdgeToEdgeWidth",
            //"EdgeToEdgeWidthDiff",

            //"CasingPackListQty",
            //"CasingLabelQty",
            //"CasingDiffQty",

            ////"PackListQty",
            //"CountQty",
            //"CountDiffQty",
            "ProWeightQtyShow",
            "PullBoxWeightShow",
            "SampleQuantumWeightShow",
            "LengthDiffShow",
            "LengthPercentByLotShow",
            "CountResultShow",
            "Part2ResultByLotShow",
            
            // III
            "ColorShade",
            "ColorShadeResult",
            "Part3TestingResultByLotShow",

            // IV
            "AgreedUsableWidthRange",
            "EdgeToEdgeWidth",
            "EdgeToEdgeWidthDiff",
            "Part4ResultByLotShow"

        };





        /// <summary>
        /// 得到IMQE Result Sheet -  Accessories 報表信息
        /// </summary>
        /// <returns></returns>
        public List<AccessoryAuditReportTable> GetAccessoryAuditReportTable(string AuditNo)
        {
            if (this.CurrentDataContext == null)
            {
                this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            }
            var AHeaderList = (this.CurrentDataContext as FabricInspectionDataContext).AccessoryHeaders.Where(dr => dr.AuditNo == this.AuditNo).ToList();

            int PageCount = (int)Math.Ceiling(AHeaderList.Count() / 4m);//int PageDetailsCount = (int)Math.Ceiling(this.AccessoryAuditDetails.Count() / 12m); //每页显示个打横的栏位

            List<AccessoryAuditReportTable> Lists = new List<AccessoryAuditReportTable>();

            int SkipSize = 0;
            int TakeSize = 4;
            for (int page = 1; page <= PageCount; page++) //总共有PageCount页
            {
                var OnePageDetailLists = AHeaderList.Skip(SkipSize).Take(TakeSize).ToList();
                List<AccessoryHeader> AList = AHeaderList.ToList();
                SkipSize += 4;

                foreach (var detail in OnePageDetailLists)
                {
                    detail.CalculateCasingDDefectInfo(); //先計算出每個ID的疵點信息，Top 1 ~ Top 6疵点
                }

                //新增一页
                for (int i = 0; i < AItemNames.Count(); i++)
                {
                    AccessoryAuditReportTable obj = new AccessoryAuditReportTable();
                    obj.PageNO = page;
                    obj.SeqNo = i + 1;
                    obj.LeftItemName = AItemNames[i];
                    obj.DataItem1 = OnePageDetailLists.Count >= 1 ? OnePageDetailLists[0].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[0], null) : null;
                    obj.DataItem2 = OnePageDetailLists.Count >= 2 ? OnePageDetailLists[1].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[1], null) : null;
                    obj.DataItem3 = OnePageDetailLists.Count >= 3 ? OnePageDetailLists[2].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[2], null) : null;
                    obj.DataItem4 = OnePageDetailLists.Count >= 4 ? OnePageDetailLists[3].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[3], null) : null;
                    obj.DataItem5 = OnePageDetailLists.Count >= 5 ? OnePageDetailLists[4].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[4], null) : null;
                    obj.DataItem6 = OnePageDetailLists.Count >= 6 ? OnePageDetailLists[5].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[5], null) : null;
                    obj.DataItem7 = OnePageDetailLists.Count >= 7 ? OnePageDetailLists[6].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[6], null) : null;
                    obj.DataItem8 = OnePageDetailLists.Count >= 8 ? OnePageDetailLists[7].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[7], null) : null;
                    obj.DataItem9 = OnePageDetailLists.Count >= 9 ? OnePageDetailLists[8].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[8], null) : null;
                    obj.DataItem10 = OnePageDetailLists.Count >= 10 ? OnePageDetailLists[9].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[9], null) : null;
                    obj.DataItem11 = OnePageDetailLists.Count >= 11 ? OnePageDetailLists[10].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[10], null) : null;
                    obj.DataItem12 = OnePageDetailLists.Count >= 12 ? OnePageDetailLists[11].GetType().GetProperty(AFieldNames[i]).GetValue(OnePageDetailLists[11], null) : null;

                    obj.Total = ACalcTotal(AFieldNames[i], AList);

                    Lists.Add(obj);
                }
            }
            return Lists;
        }


        public string ACalcTotal(string AColumName, List<AccessoryHeader> AList)
        {
            string total = "";
            int calculate = 0;

            switch (AColumName)
            {
                //Audit info. 部分
                case "ItemIDNO":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.ItemIDNO)).Select(dr => dr.ItemIDNO).Distinct().Count().ToString();
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


                //  I (max shown 6 Tops)
                ////Audited SKU (filter by cross cup grpg)
                //case "AuditSKU":
                //    total = AList.Where(dr=>!string.IsNullOrEmpty(dr.AuditSKU) ).Select(dr => dr.AuditSKU).Distinct().Count().ToString();
                //    break;
                ////Audit Smpl Sz* (cross cup grpg)
                //case "TotalAQLAuditQty":
                //    //total = AList.Select(dr => dr.TotalAQLAuditQty).Sum().ToString();
                //    total = AList.Select(dr => dr.AQLAuditQtyByLot).Sum().ToString();
                //    break;

                case "AQLAuditQty":
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.AQLAuditQty.ToString())).Select(dr => dr.AQLAuditQty).Sum().ToString();
                    break;
                //Audit Smpl Sz* (cross cup grpg)
                case "AQL25StandardQty":
                    //total = AList.Select(dr => dr.TotalAQLAuditQty).Sum().ToString();
                    total = AList.Where(dr => !string.IsNullOrEmpty(dr.AQL25StandardQty.ToString())).Select(dr => dr.AQL25StandardQty).Sum().ToString();
                    break;

                //Defect Qty* (For ref.)
                case "DefectQty":
                    total = AList.Select(dr => dr.DefectQty).Sum().ToString();
                    break;
                //Mat'l Defect cde* (Top 1)
                case "CasingDefectCodeTop1Show":

                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 0 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 2)
                case "CasingDefectCodeTop2Show":

                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 1 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 3)
                case "CasingDefectCodeTop3Show":
                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 2 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 4)
                case "CasingDefectCodeTop4Show":
                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 3 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 5)
                case "CasingDefectCodeTop5Show":
                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
                        calculate = calculate + (Acount > 4 ? 1 : 0);
                    }
                    total = calculate.ToString();
                    break;
                //Mat'l Defect cde* (Top 6)
                case "CasingDefectCodeTop6Show":
                    foreach (AccessoryHeader AAObj in AList)
                    {
                        int Acount = AAObj.AccessoryDefects.Where(dr => !string.IsNullOrEmpty(dr.DefectCode)).Count();
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
                case "ProWeightQtyShow":
                    var AProWeightQty = AList.Select(dr => new { dr.ProWeightQty, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = AProWeightQty.Select(dr => Math.Round(dr.ProWeightQty ?? 0, 0)).Sum().ToString();
                    break;

                case "PullBoxWeightShow":
                    var APullBoxWeight = AList.Select(dr => new { dr.PullBoxWeight, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = APullBoxWeight.Select(dr => Math.Round(dr.PullBoxWeight ?? 0, 3)).Sum().ToString();
                    break;

                case "LengthDiffShow":
                    var ALengthDiff = AList.Select(dr => new { dr.LengthDiffShow, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = ALengthDiff.Select(dr => dr.LengthDiffShow).Sum().ToString();
                    break;

                case "SampleQuantumWeightShow":
                    var ASampleQuantumWeight = AList.Select(dr => new { dr.SampleQuantumWeight, dr.CasingPullCaseNo }).Distinct().ToList();
                    total = ASampleQuantumWeight.Select(dr => Math.Round(dr.SampleQuantumWeight ?? 0, 3)).Sum().ToString();
                    break;


                case "LengthPercentByLotShow":

                    total = AList.Select(dr => Math.Round((LengthPercentByLot ?? 0) * 100, 3)).Distinct().FirstOrDefault().ToString();
                    break;




                //Pull Case's Pkg list Qty *
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
                    //var APackListQty = AList.Select(dr => new { dr.PackListQty, dr.AuditSKU }).Distinct().ToList();
                    //total = APackListQty.Select(dr => dr.PackListQty).Sum().ToString();                   
                    total = AList.Select(dr => dr.PackListQty).Sum().ToString();
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
                case "CountResultShow":
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

                // IV 
                //Agreed usable width range**
                case "AgreedUsableWidthRange":
                    total = "-";
                    break;
                //Meas. usable width (narrowest) *
                case "EdgeToEdgeWidth":
                    total = "-";
                    break;
                //Deviation *
                case "EdgeToEdgeWidthDiff":
                    total = "-";
                    break;

                case "Part4ResultByLotShow":
                    total = AList.Select(dr => dr.Part4ResultByLot).FirstOrDefault();
                    break;

                default: total = "";
                    break;
            }
            return total;
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


        List<AccessoryHeader> _ByLots;
        public List<AccessoryHeader> ByLots
        {
            get
            {
                //if (_ByLots == null)
                //{
                //    _ByLots = db.AccessoryHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                //}
                _ByLots = db.AccessoryHeaders.Where(p => p.AuditNo == AuditNo && p.AuditStage == AuditStage).ToList();
                return _ByLots;
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

        public decimal? Part4ClaimByLotPercent
        {
            get
            {
                if (!PackListQtyByLot.HasValue) return null;
                return (Part4ClaimByLot ?? 0) / (PackListQtyByLot ?? 0);
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
                ResultList.Add(Part4ResultByLot);

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
                IQueryable<AccessoryHeader> CoreDataList = ByLots.AsQueryable();
                if (this.NoticeReportType == NoticeReportTypes.RejectNotice)
                {
                    CoreDataList = ByLots.Where(p => p.OverallResult != "A+" && p.OverallResult != "A").AsQueryable<AccessoryHeader>();
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


    public partial class AccessoryCasingDefect : BaseEntity
    {
        public string DefectName
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                var obj = (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode)
                    .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

                if (obj == null) return "";

                string DefectName = null;
                DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;

                return DefectName;
            }
        }
    }


    public partial class AccessoryDefect : BaseEntity
    {
        public string DefectName
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                var obj = (this.CurrentDataContext as FabricInspectionDataContext).PHQCDefects.Where(p => p.PHDefectCode == this.DefectCode)
                    .Select(p => new { p.DefectThaiName, p.DefectEnglishName, p.DefectChineseName }).FirstOrDefault();

                if (obj == null) return "";

                string DefectName = null;
                DefectName = obj.DefectEnglishName + "\r\n" + obj.DefectChineseName;

                return DefectName;
            }
        }
    }

    public class AccessoryAuditReportDetailTable
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

    public class AccessoryAuditReportTable
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


    public class AccessoryAuditReportMaterialTable
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

}
