using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Linq;
using System.Data;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class FabricByIDReport : DevExpress.XtraReports.UI.XtraReport
    {

        PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    


        public FabricByIDReport(string Item_No, string StockinDate, string AuditStage)
        {
            InitializeComponent();

            string AMM = DateTime.Now.ToString("MMMM", new System.Globalization.CultureInfo("en-us")).Substring(0,3);
            string Add = DateTime.Now.Day.ToString();
            xrLabel2.Text = "Version: 7.7 " + "dd " + AMM + " " + Add;

            string Strsql = "exec Sp_IncomingMatQEResultReport '{0}','{1}','{2}'";
            Strsql = string.Format(Strsql, Item_No, StockinDate, AuditStage);
            List<IncomingMatQEResultReportClass> Alist = db.ExecuteDataSet(Strsql, new DataSet(), "opts").Tables[0].AsEnumerable().Select(dr => new IncomingMatQEResultReportClass
            {
                ItemCode = dr["ItemCode"].ToString(),
                ItemColorCode = dr["ItemColorCode"].ToString(),
                SuppItemRef = dr["SuppItemRef"].ToString(),
                SuppItemColorShade = dr["SuppItemColorShade"].ToString(),
                RefNo = dr["RefNo"].ToString(),
                IDNo = dr["IDNo"].ToString(),
                SuppRollNo = dr["SuppRollNo"].ToString(),
                SuppBatchNoNo = dr["SuppBatchNoNo"].ToString(),
                ActualWeight = dr["ActualWeight"].ToString(),
                StockinDate = dr["StockinDate"].ToString(),
                AuditDate = dr["AuditDate"].ToString(),
                //LengthatPackgList = dr["LengthatPackgList"].ToString(),
                MeasLength = dr["MeasLength"].ToString(),
                CutLengthForTesting = dr["CutLengthForTesting"].ToString(),
                //FinalLengthStockIn = dr["FinalLengthStockIn"].ToString(),
                DefectPointsnamecode1 = dr["DefectPointsnamecode1"].ToString(),
                PointsSystemA1 = dr["PointsSystemA1"].ToString(),
                PointsSystemB1 = dr["PointsSystemB1"].ToString(),
                PointsSystemC1 = dr["PointsSystemC1"].ToString(),
                PointsSystemD1 = dr["PointsSystemD1"].ToString(),
                IsPoints1 = dr["IsPoints1"].ToString(),
                DistanceFrom1 = dr["DistanceFrom1"].ToString(),
                DistanceTo1 = dr["DistanceTo1"].ToString(),
                Addl1 = dr["Addl1"].ToString(),
                Ttl1 = dr["Ttl1"].ToString(),
                shortWidth1 = dr["shortWidth1"].ToString(),
                DefectPointsnamecode2 = dr["DefectPointsnamecode2"].ToString(),
                PointsSystemA2 = dr["PointsSystemA2"].ToString(),
                PointsSystemB2 = dr["PointsSystemB2"].ToString(),
                PointsSystemC2 = dr["PointsSystemC2"].ToString(),
                PointsSystemD2 = dr["PointsSystemD2"].ToString(),
                IsPoints2 = dr["IsPoints2"].ToString(),
                DistanceFrom2 = dr["DistanceFrom2"].ToString(),
                DistanceTo2 = dr["DistanceTo2"].ToString(),
                Addl2 = dr["Addl2"].ToString(),
                Ttl2 = dr["Ttl2"].ToString(),
                shortWidth2 = dr["shortWidth2"].ToString(),
                DefectPointsnamecode3 = dr["DefectPointsnamecode3"].ToString(),
                PointsSystemA3 = dr["PointsSystemA3"].ToString(),
                PointsSystemB3 = dr["PointsSystemB3"].ToString(),
                PointsSystemC3 = dr["PointsSystemC3"].ToString(),
                PointsSystemD3 = dr["PointsSystemD3"].ToString(),
                IsPoints3 = dr["IsPoints3"].ToString(),
                DistanceFrom3 = dr["DistanceFrom3"].ToString(),
                DistanceTo3 = dr["DistanceTo3"].ToString(),
                Addl3 = dr["Addl3"].ToString(),
                Ttl3 = dr["Ttl3"].ToString(),
                shortWidth3 = dr["shortWidth3"].ToString(),
                DefectPointsnamecode4 = dr["DefectPointsnamecode4"].ToString(),
                PointsSystemA4 = dr["PointsSystemA4"].ToString(),
                PointsSystemB4 = dr["PointsSystemB4"].ToString(),
                PointsSystemC4 = dr["PointsSystemC4"].ToString(),
                PointsSystemD4 = dr["PointsSystemD4"].ToString(),
                IsPoints4 = dr["IsPoints4"].ToString(),
                DistanceFrom4 = dr["DistanceFrom4"].ToString(),
                DistanceTo4 = dr["DistanceTo4"].ToString(),
                Addl4 = dr["Addl4"].ToString(),
                Ttl4 = dr["Ttl4"].ToString(),
                shortWidth4 = dr["shortWidth4"].ToString(),
                DefectPointsnamecode5 = dr["DefectPointsnamecode5"].ToString(),
                PointsSystemA5 = dr["PointsSystemA5"].ToString(),
                PointsSystemB5 = dr["PointsSystemB5"].ToString(),
                PointsSystemC5 = dr["PointsSystemC5"].ToString(),
                PointsSystemD5 = dr["PointsSystemD5"].ToString(),
                IsPoints5 = dr["IsPoints5"].ToString(),
                DistanceFrom5 = dr["DistanceFrom5"].ToString(),
                DistanceTo5 = dr["DistanceTo5"].ToString(),
                Addl5 = dr["Addl5"].ToString(),
                Ttl5 = dr["Ttl5"].ToString(),
                shortWidth5 = dr["shortWidth5"].ToString(),
                DefectPointsnamecode6 = dr["DefectPointsnamecode6"].ToString(),
                PointsSystemA6 = dr["PointsSystemA6"].ToString(),
                PointsSystemB6 = dr["PointsSystemB6"].ToString(),
                PointsSystemC6 = dr["PointsSystemC6"].ToString(),
                PointsSystemD6 = dr["PointsSystemD6"].ToString(),
                IsPoints6 = dr["IsPoints6"].ToString(),
                DistanceFrom6 = dr["DistanceFrom6"].ToString(),
                DistanceTo6 = dr["DistanceTo6"].ToString(),
                Addl6 = dr["Addl6"].ToString(),
                Ttl6 = dr["Ttl6"].ToString(),
                shortWidth6 = dr["shortWidth6"].ToString(),
                DefectPointsnamecode7 = dr["DefectPointsnamecode7"].ToString(),
                PointsSystemA7 = dr["PointsSystemA7"].ToString(),
                PointsSystemB7 = dr["PointsSystemB7"].ToString(),
                PointsSystemC7 = dr["PointsSystemC7"].ToString(),
                PointsSystemD7 = dr["PointsSystemD7"].ToString(),
                IsPoints7 = dr["IsPoints7"].ToString(),
                DistanceFrom7 = dr["DistanceFrom7"].ToString(),
                DistanceTo7 = dr["DistanceTo7"].ToString(),
                Addl7 = dr["Addl7"].ToString(),
                Ttl7 = dr["Ttl7"].ToString(),
                shortWidth7 = dr["shortWidth7"].ToString(),
                DefectPointsnamecode8 = dr["DefectPointsnamecode8"].ToString(),
                PointsSystemA8 = dr["PointsSystemA8"].ToString(),
                PointsSystemB8 = dr["PointsSystemB8"].ToString(),
                PointsSystemC8 = dr["PointsSystemC8"].ToString(),
                PointsSystemD8 = dr["PointsSystemD8"].ToString(),
                IsPoints8 = dr["IsPoints8"].ToString(),
                DistanceFrom8 = dr["DistanceFrom8"].ToString(),
                DistanceTo8 = dr["DistanceTo8"].ToString(),
                Addl8 = dr["Addl8"].ToString(),
                Ttl8 = dr["Ttl8"].ToString(),
                shortWidth8 = dr["shortWidth8"].ToString(),
                DefectPointsnamecode9 = dr["DefectPointsnamecode9"].ToString(),
                PointsSystemA9 = dr["PointsSystemA9"].ToString(),
                PointsSystemB9 = dr["PointsSystemB9"].ToString(),
                PointsSystemC9 = dr["PointsSystemC9"].ToString(),
                PointsSystemD9 = dr["PointsSystemD9"].ToString(),
                IsPoints9 = dr["IsPoints9"].ToString(),
                DistanceFrom9 = dr["DistanceFrom9"].ToString(),
                DistanceTo9 = dr["DistanceTo9"].ToString(),
                Addl9 = dr["Addl9"].ToString(),
                Ttl9 = dr["Ttl9"].ToString(),
                shortWidth9 = dr["shortWidth9"].ToString(),
                DefectPointsnamecode10 = dr["DefectPointsnamecode10"].ToString(),
                PointsSystemA10 = dr["PointsSystemA10"].ToString(),
                PointsSystemB10 = dr["PointsSystemB10"].ToString(),
                PointsSystemC10 = dr["PointsSystemC10"].ToString(),
                PointsSystemD10 = dr["PointsSystemD10"].ToString(),
                IsPoints10 = dr["IsPoints10"].ToString(),
                DistanceFrom10 = dr["DistanceFrom10"].ToString(),
                DistanceTo10 = dr["DistanceTo10"].ToString(),
                Addl10 = dr["Addl10"].ToString(),
                Ttl10 = dr["Ttl10"].ToString(),
                shortWidth10 = dr["shortWidth10"].ToString(),
                MeasLineName1 = dr["MeasLineName1"].ToString(),
                MeasLineName2 = dr["MeasLineName2"].ToString(),
                MeasLineName3 = dr["MeasLineName3"].ToString(),
                MeasLine1 = dr["MeasLine1"].ToString(),
                MeasLine2 = dr["MeasLine2"].ToString(),
                MeasLine3 = dr["MeasLine3"].ToString(),
                MeasLine4 = dr["MeasLine4"].ToString(),
                MeasLine5 = dr["MeasLine5"].ToString(),
                MeasLine6 = dr["MeasLine6"].ToString(),
                MeasLine7 = dr["MeasLine7"].ToString(),
                MeasLine8 = dr["MeasLine8"].ToString(),
                MeasLine9 = dr["MeasLine9"].ToString(),
                MeasLine10 = dr["MeasLine10"].ToString(),
                MeasLine11 = dr["MeasLine11"].ToString(),
                MeasLine12 = dr["MeasLine12"].ToString(),
                MeasLine13 = dr["MeasLine13"].ToString(),
                MeasLine14 = dr["MeasLine14"].ToString(),
                MeasLine15 = dr["MeasLine15"].ToString(),
                MeasLine16 = dr["MeasLine16"].ToString(),
                MeasLine17 = dr["MeasLine17"].ToString(),
                MeasLine18 = dr["MeasLine18"].ToString(),
                MeasLine19 = dr["MeasLine19"].ToString(),
                MeasLine20 = dr["MeasLine20"].ToString(),
                MeasLine21 = dr["MeasLine21"].ToString(),
                MeasLine22 = dr["MeasLine22"].ToString(),
                MeasLine23 = dr["MeasLine23"].ToString(),
                UsableName1 = dr["UsableName1"].ToString(),
                UsableName2 = dr["UsableName2"].ToString(),
                UsableName3 = dr["UsableName3"].ToString(),
                Usable1 = dr["Usable1"].ToString(),
                Usable2 = dr["Usable2"].ToString(),
                Usable3 = dr["Usable3"].ToString(),
                Usable4 = dr["Usable4"].ToString(),
                Usable5 = dr["Usable5"].ToString(),
                Usable6 = dr["Usable6"].ToString(),
                Usable7 = dr["Usable7"].ToString(),
                Usable8 = dr["Usable8"].ToString(),
                Usable9 = dr["Usable9"].ToString(),
                Usable10 = dr["Usable10"].ToString(),
                Usable11 = dr["Usable11"].ToString(),
                Usable12 = dr["Usable12"].ToString(),
                Usable13 = dr["Usable13"].ToString(),
                Usable14 = dr["Usable14"].ToString(),
                Usable15 = dr["Usable15"].ToString(),
                Usable16 = dr["Usable16"].ToString(),
                Usable17 = dr["Usable17"].ToString(),
                Usable18 = dr["Usable18"].ToString(),
                Usable19 = dr["Usable19"].ToString(),
                Usable20 = dr["Usable20"].ToString(),
                Usable21 = dr["Usable21"].ToString(),
                Usable22 = dr["Usable22"].ToString(),
                Usable23 = dr["Usable23"].ToString(),
                Usable24 = dr["Usable24"].ToString(),
                Usable25 = dr["Usable25"].ToString(),
                Usable26 = dr["Usable26"].ToString(),
                Usable27 = dr["Usable27"].ToString(),
                EdgetoEdgeName1 = dr["EdgetoEdgeName1"].ToString(),
                EdgetoEdgeName2 = dr["EdgetoEdgeName2"].ToString(),
                EdgetoEdgeName3 = dr["EdgetoEdgeName3"].ToString(),
                EdgetoEdge1 = dr["EdgetoEdge1"].ToString(),
                EdgetoEdge2 = dr["EdgetoEdge2"].ToString(),
                EdgetoEdge3 = dr["EdgetoEdge3"].ToString(),
                EdgetoEdge4 = dr["EdgetoEdge4"].ToString(),
                EdgetoEdge5 = dr["EdgetoEdge5"].ToString(),
                EdgetoEdge6 = dr["EdgetoEdge6"].ToString(),
                EdgetoEdge7 = dr["EdgetoEdge7"].ToString(),
                EdgetoEdge8 = dr["EdgetoEdge8"].ToString(),
                EdgetoEdge9 = dr["EdgetoEdge9"].ToString(),
                EdgetoEdge10 = dr["EdgetoEdge10"].ToString(),
                EdgetoEdge11 = dr["EdgetoEdge11"].ToString(),
                EdgetoEdge12 = dr["EdgetoEdge12"].ToString(),
                EdgetoEdge13 = dr["EdgetoEdge13"].ToString(),
                EdgetoEdge14 = dr["EdgetoEdge14"].ToString(),
                EdgetoEdge15 = dr["EdgetoEdge15"].ToString(),
                EdgetoEdge16 = dr["EdgetoEdge16"].ToString(),
                EdgetoEdge17 = dr["EdgetoEdge17"].ToString(),
                EdgetoEdge18 = dr["EdgetoEdge18"].ToString(),
                EdgetoEdge19 = dr["EdgetoEdge19"].ToString(),
                EdgetoEdge20 = dr["EdgetoEdge20"].ToString(),
                EdgetoEdge21 = dr["EdgetoEdge21"].ToString(),
                EdgetoEdge22 = dr["EdgetoEdge22"].ToString(),
                EdgetoEdge23 = dr["EdgetoEdge23"].ToString(),
                EdgetoEdge24 = dr["EdgetoEdge24"].ToString(),
                EdgetoEdge25 = dr["EdgetoEdge25"].ToString(),
                EdgetoEdge26 = dr["EdgetoEdge26"].ToString(),
                EdgetoEdge27 = dr["EdgetoEdge27"].ToString(),

                //UsableMin = dr["UsableMin"].ToString()+" mm",
                EdgetoEdgeMin = dr["EdgetoEdgeMin"].ToString(),
                //shortWidth = dr["shortWidth"].ToString()+" mm",
                //shortWidthPer = dr["shortWidthPer"].ToString() +" %",
                Points_Hundred_SQM = dr["Points_Hundred_SQM"].ToString(),
                //AgreeWidth = dr["AgreeWidth"].ToString() +" mm",
                LossAdd = dr["LossAdd"].ToString(),
                LossTtl = dr["LossTtl"].ToString(),
                SaidIDResult = dr["SaidIDResult"].ToString(),
                IsSampleSize = dr["IsSampleSize"].ToString(),
                //IsSampleSize = db.Fabric_Insp_Headers.Where(dc => dc.System_Install_No.ToString() == dr["System_Install_No"].ToString()).Select(dc => dc.SampleSize??"").FirstOrDefault(),
                Wastage = dr["Wastage"].ToString(),
                AuditStage = dr["AuditStage"].ToString(),

                DefectPointsCount = dr["DefectPointsCount"].ToString(),
                DefectStdLossPer = dr["DefectStdLossPer"].ToString() +" %",


                Inspector = dr["Inspector"].ToString(),
                OtherOverallResult = dr["OtherOverallResult"].ToString(),
                colorMatchingResult = dr["colorMatchingResult"].ToString(),
                ElongationResult = dr["ElongationResult"].ToString(),
                MouldTrialResult = dr["MouldTrialResult"].ToString(),
                BondingResult = dr["BondingResult"].ToString(),
                LaminationResult = dr["LaminationResult"].ToString(),
                CutCurlingResult = dr["CutCurlingResult"].ToString(),
                               
                ShortLengthShow = dr["ShortLengthShow"].ToString(),
                PartII_MeasureResultShow = dr["PartII_MeasureResultShow"].ToString(),
                Numofwidthmeasure = dr["Numofwidthmeasure"].ToString(),

                PFlag = dr["PFlag"].ToString(),

                warehouse = dr["warehouse"].ToString(),
                ProjectNo = dr["ProjectNo"].ToString(),
                PO = dr["PO"].ToString(),
                HdoNo = dr["HdoNo"].ToString(),
                RollQty = dr["RollQty"].ToString(),
                SplitFlag = dr["SplitFlag"].ToString(),
                CutOffRollFlag = dr["CutOffRollFlag"].ToString(),
                Step1Pt100m2 = dr["Step1Pt100m2"].ToString(),

                Grade1To3Ttl = dr["Grade1To3Ttl"].ToString(),
                Grade4Ttl = dr["Grade4Ttl"].ToString(),

                AuditNo1 = dr["AuditNo1"].ToString()

            }).ToList();

            this.bindingSource1.DataSource = Alist;
            List = Alist;
        }
        List<IncomingMatQEResultReportClass> List = new List<IncomingMatQEResultReportClass>();
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {


            //if (List.Count == 0) return;
            //this.xrCheckBox5.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "AQL";
            //this.xrCheckBox4.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "Full";


            //this.xrCheckBox1.Checked = this.GetCurrentColumnValue("SaidIDResult").ToString() == "A" || this.GetCurrentColumnValue("SaidIDResult").ToString() == "";
            //this.xrCheckBox2.Checked = this.GetCurrentColumnValue("SaidIDResult").ToString() == "B";
            //this.xrCheckBox3.Checked = this.GetCurrentColumnValue("SaidIDResult").ToString() == "C";
            //this.xrCheckBox5.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "AQL";
            //this.xrCheckBox4.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "Full";

            //if (this.GetCurrentColumnValue("SaidIDResult").ToString() == "A") 
            //{
            //    this.radioButton1.Checked = this.GetCurrentColumnValue("SaidIDResult").ToString() == "A";
            //}

            //if (this.GetCurrentColumnValue("SaidIDResult").ToString() == "B")
            //{
            //    this.radioButton2.Checked = true;
            //}
            //if (this.GetCurrentColumnValue("SaidIDResult").ToString() == "C")
            //{
            //    this.radioButton3.Checked = true;
            //}

            //if (this.GetCurrentColumnValue("IsSampleSize").ToString() == "T")
            //{
            //    this.radioButton5.Checked = true;
            //}
            //if (this.GetCurrentColumnValue("IsSampleSize").ToString() != "T")
            //{
            //    this.radioButton4.Checked = true;
            //}

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (List.Count == 0) return;
            this.xrCheckBox5.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "Random";
            this.xrCheckBox4.Checked = this.GetCurrentColumnValue("IsSampleSize").ToString() == "Full";
        }





        //List<IncomingMatQEResultReportClass> AList = new List<IncomingMatQEResultReportClass>();
        //public List<IncomingMatQEResultReportClass> List(string ItemNo)
        // {


        //     List<Fabric_Insp_Header> ListHead = db.Fabric_Insp_Headers.Where(dr => dr.Item_No == ItemNo).ToList<Fabric_Insp_Header>();

        //     foreach(Fabric_Insp_Header AHeader in ListHead)
        //     {
        //         IncomingMatQEResultReportClass obj = new IncomingMatQEResultReportClass();

        //         obj.ItemCode = AHeader.Item_No;
        //         obj.ItemColorCode = AHeader.Item_No.Substring(9, 3);
        //         obj.SuppItemRef = AHeader.Supplier_Item_No;
        //         obj.SuppItemColorShade = AHeader.SupplierItemColor;

        //         obj.RefNo = AHeader.Supplier_Item_No;
        //         obj.IDNo = AHeader.Lot_Id;
        //         obj.SuppRollNo = AHeader.Supplich_Batch;
        //         obj.SuppBatchNoNo = AHeader.Roll_No;
        //         obj.ActualWeight = AHeader.Actual_Weight.ToString() ;
        //         obj.StockinDate = AHeader.Stock_In_Date;
        //         obj.AuditDate = "";

        //         obj.LengthatPackgList = Math.Round((decimal)AHeader.Actual_Length, 2).ToString();
        //         obj.MeasLength =(AHeader.Insp_Length + AHeader.PH_Sample).ToString();
        //         obj.CutLengthForTesting = AHeader.PH_Sample.ToString();
        //         obj.FinalLengthStockIn = Math.Round((decimal)AHeader.Insp_Length, 2).ToString();



        //         List<Fabric_Insp_DefectClass> AFabric_Insp_Defect = GetData(AHeader.Fabric_Insp_SpreadDefects.ToList<Fabric_Insp_SpreadDefect>(),AHeader.Fabric_Insp_PartDefects.ToList<Fabric_Insp_PartDefect>());


        //            for (int i = 1; i <= AFabric_Insp_Defect.Count; i++)
        //             {

        //                 Fabric_Insp_DefectClass AFabric_Insp_DefectObj = AFabric_Insp_Defect[i];

        //                 switch(i)
        //                 {
        //                     case 0:
        //                         {
        //                             obj.DefectPointsnamecode1 = AFabric_Insp_DefectObj.DefectPointsnamecode;
        //                             obj.IsPoints1 = AFabric_Insp_DefectObj.IsPoints;
        //                             obj.DistanceFrom1 = AFabric_Insp_DefectObj.DistanceFrom;
        //                             obj.DistanceTo1 = AFabric_Insp_DefectObj.DistanceTo; 

        //                             switch (AFabric_Insp_DefectObj.PointsSystem)
        //                               {
        //                                        case 1:
        //                                       { obj.PointsSystemA1 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                        case 2:
        //                                       { obj.PointsSystemB1 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                        case 3:
        //                                       { obj.PointsSystemC1 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                        case 4:
        //                                       { obj.PointsSystemD1 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }                                  

        //                               }       
        //                             break;
        //                         }

        //                     case 1:
        //                         {
        //                             obj.DefectPointsnamecode2 = AFabric_Insp_DefectObj.DefectPointsnamecode;
        //                             obj.IsPoints2 = AFabric_Insp_DefectObj.IsPoints;
        //                             obj.DistanceFrom2 = AFabric_Insp_DefectObj.DistanceFrom;
        //                             obj.DistanceTo2 = AFabric_Insp_DefectObj.DistanceTo;

        //                             switch (AFabric_Insp_DefectObj.PointsSystem)
        //                             {
        //                                 case 1:
        //                                     { obj.PointsSystemA2 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                 case 2:
        //                                     { obj.PointsSystemB2 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                 case 3:
        //                                     { obj.PointsSystemC2 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }
        //                                 case 4:
        //                                     { obj.PointsSystemD2 = AFabric_Insp_DefectObj.Defect_Degree_Count.ToString(); break; }

        //                             }
        //                             break;
        //                         }

        //                     case 2:
        //                         {
        //                             obj.DefectPointsnamecode3 = AFabric_Insp_DefectObj.DefectPointsnamecode;
        //                             obj.IsPoints3 = AFabric_Insp_DefectObj.IsPoints;
        //                             obj.DistanceFrom3 = AFabric_Insp_DefectObj.DistanceFrom;
        //                             obj.DistanceTo3 = AFabric_Insp_DefectObj.DistanceTo;

        //                             switch (AFabric_Insp_DefectObj.Defect_Deduce_Points)
        //                             {
        //                                 case 1:
        //                                     { obj.PointsSystemA3 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                                 case 2:
        //                                     {  obj.PointsSystemB3 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                                 case 3:
        //                                     { obj.PointsSystemC3 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break;}
        //                                 case 4:
        //                                     { obj.PointsSystemD3 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}

        //                             }
        //                             break;
        //                         }


        //                     case 3:
        //                         {
        //                             obj.DefectPointsnamecode4 = AFabric_Insp_PartDefect.Defect_Name;
        //                             obj.IsPoints4 = "N";
        //                             switch (AFabric_Insp_PartDefect.Defect_Deduce_Points)
        //                             {
        //                                 case 1:
        //                                     { obj.PointsSystemA4 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                                 case 2:
        //                                     { obj.PointsSystemB4 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break; }
        //                                 case 3:
        //                                     {  obj.PointsSystemC4 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break;}
        //                                 case 4:
        //                                     {  obj.PointsSystemD4 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break; }

        //                             }
        //                             break;
        //                         }


        //                     case 4:
        //                         {
        //                             obj.DefectPointsnamecode5 = AFabric_Insp_PartDefect.Defect_Name;
        //                             obj.IsPoints5 = "N";
        //                             switch (AFabric_Insp_PartDefect.Defect_Deduce_Points)
        //                             {
        //                                 case 1:
        //                                     { obj.PointsSystemA5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                                 case 2:
        //                                     { obj.PointsSystemB5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                                 case 3:
        //                                     { obj.PointsSystemC5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break;}
        //                                 case 4:
        //                                     { obj.PointsSystemD5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString();break;}
        //                             }
        //                             break;
        //                         }

        //                     case 5:
        //                         {
        //                             obj.DefectPointsnamecode6 = AFabric_Insp_PartDefect.Defect_Name;
        //                             obj.IsPoints6 = "N";
        //                             switch (AFabric_Insp_PartDefect.Defect_Deduce_Points)
        //                             {
        //                                 case 1:
        //                                     { obj.PointsSystemA5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break; }
        //                                 case 2:
        //                                     { obj.PointsSystemB5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break; }
        //                                 case 3:
        //                                     { obj.PointsSystemC5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break; }
        //                                 case 4:
        //                                     { obj.PointsSystemD5 = AFabric_Insp_PartDefect.Defect_Degree_Count.ToString(); break; }
        //                             }
        //                             break;
        //                         }


        //                 }

        //             }









        //     }



        //       return AList;
        //   }

        //public static List<Fabric_Insp_DefectClass> GetData(List<Fabric_Insp_SpreadDefect> SpreadDefect, List<Fabric_Insp_PartDefect> PartDefect) 
        //{
        //    List<Fabric_Insp_DefectClass> AList = new List<Fabric_Insp_DefectClass>();
        //    foreach (Fabric_Insp_SpreadDefect Spreadobj in SpreadDefect) 
        //    {
        //        Fabric_Insp_DefectClass obj = new Fabric_Insp_DefectClass();
        //        obj.DefectPointsnamecode = Spreadobj.Defect_Name;
        //        obj.IsPoints = "Y";
        //        obj.DistanceFrom = Spreadobj.From_Place.ToString();
        //        obj.DistanceTo = Spreadobj.To_Place.ToString();
        //        obj.PointsSystem = 4;
        //        obj.Defect_Degree_Count = "1";
        //        AList.Add(obj);
        //    }

        //    foreach (Fabric_Insp_PartDefect PartDefectobj in PartDefect)
        //    {
        //        Fabric_Insp_DefectClass obj = new Fabric_Insp_DefectClass();
        //        obj.DefectPointsnamecode = PartDefectobj.Defect_Name;
        //        obj.IsPoints = "N";
        //        obj.PointsSystem = PartDefectobj.Defect_Deduce_Points??4;
        //        obj.Defect_Degree_Count = PartDefectobj.Defect_Degree_Count.ToString();
        //        AList.Add(obj);
        //    }

        //    return AList;

        //}


    }





}
