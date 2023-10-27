using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.Platform.BO;
using System.Data;

namespace PH.FabricInspection.BO
{
    public partial class DebitNote : BaseEntity
    {
        public decimal AmountShow
        {
            get
            {
                return (Price ?? 0) * (OverallClaim ?? 0);
            }
        }

        #region 报表用的字段
        public string SupplierShow { get; set; }
        public string PONoShow { get; set; }
        public string HDONoShow { get; set; }
        public string SupplierItemRefShow { get; set; }
        //public string InvoiceNoShow { get; set; }
        public decimal? PackingListQtyShow { get; set; }
        public string ProjectNoShow { get; set; }
        public string IDCreateDateShow { get; set; }
        public decimal? AuditSmplsQtyShow { get; set; }
        public string ERPItemCodeShow { get; set; }
        public string ERPItemColorCodeShow { get; set; }
        public DateTime? IDAuditDateShow { get; set; }
        public decimal? OverallClaimProposalShow { get; set; }

        public string Part1DefectResultShow { get; set; }
        public string Part1DefectClaimPerShow { get; set; }
        public decimal? Part1DefectClaimQtyShow { get; set; }

        public string Part2DefectResultShow { get; set; }
        public string Part2DefectClaimPerShow { get; set; }
        public decimal? Part2DefectClaimQtyShow { get; set; }

        public string Part3DefectResultShow { get; set; }
        public string Part3DefectClaimPerShow { get; set; }
        public decimal? Part3DefectClaimQtyShow { get; set; }

        public string OverAllDefectResultShow { get; set; }
        public decimal? OverAllDefectClaimPerShow { get; set; }
        public decimal? OverAllDefectClaimQtyShow { get; set; }
        public string UnitShow { get; set; }
        public string ProjectStr { get; set; }
        public string PoStr { get; set; }

        List<AuditResultClass> _CoreReasonsList = null;
        public List<AuditResultClass> CoreReasonsList
        {
            get
            {
                return _CoreReasonsList;
            }
        }
        #endregion

        public FabricInspectionDataContext db
        {
            get
            {
                if (this.CurrentDataContext == null)
                {
                    this.CurrentDataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                }

                return this.CurrentDataContext as FabricInspectionDataContext;
            }
        }

        public string GetSupplier(string SupplierCode)
        {
            string sqlstr = string.Format("select top(1) SupplierName from [PH.BasicInfo]..SupplierProfile where ERPSupplier ='{0}'", SupplierCode);
            return db.ExecuteDataSet(sqlstr, new DataSet(), "Opts").Tables[0].Rows[0]["SupplierName"].ToString(); ;
        }


        public string GetOverallResult(List<string> ResultList)
        {
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

        public void CalculateData()
        {

            switch ((this.AuditTeam ?? 0))
            {
                case 1: //Allover
                    _CoreReasonsList = new List<AuditResultClass>();
                    Fabric_Insp_Header AlloverObj = db.Fabric_Insp_Headers.FirstOrDefault(p => p.RefNo == this.AuditNo);

                    ProjectStr = CalculateProjectAndPO(db.Fabric_Insp_Headers.Where(p => p.RefNo == this.AuditNo).Select(dr => dr.ProjectNo).ToList());
                    PoStr = CalculateProjectAndPO(db.Fabric_Insp_Headers.Where(p => p.RefNo == this.AuditNo).Select(dr => dr.PO).ToList());

                    SupplierShow = GetSupplier(AlloverObj.Supplier_Code);
                    SupplierItemRefShow = AlloverObj.Supplier_Item_No;
                    UnitShow = AlloverObj.Unit;
                    //InvoiceNoShow = AlloverObj.InvoiceNo;
                    PackingListQtyShow = AlloverObj.TotalLengthByLot / (this.UnitConvertRate ?? 0);
                    IDAuditDateShow = AlloverObj.Create_Date;
                    AuditSmplsQtyShow = AlloverObj.TotalActualLengthByLot;
                    ERPItemCodeShow = AlloverObj.ItemCodeShow;
                    ERPItemColorCodeShow = AlloverObj.ColorCodeShow;

                    IDCreateDateShow = AlloverObj.Stock_In_DateShow.Replace('/', '-');

                    AuditResultClass Part1 = new AuditResultClass();
                    Part1.AuditPart = "Part I - Defect";
                    Part1.AuditResult = AlloverObj.Step1DefectResultByLot;
                    Part1.ClaimQty = (AlloverObj.PartIFinalClaimQty ?? 0) / (this.UnitConvertRate ?? 0);
                    Part1.ClaimPer = (PackingListQtyShow ?? 0) == 0 ? 0 : (AlloverObj.PartIFinalClaimQty ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(Part1);

                    AuditResultClass Part2 = new AuditResultClass();
                    Part2.AuditPart = "Part II - Measurement";
                    Part2.AuditResult = AlloverObj.PartII_MeasureResultShow;
                    Part2.ClaimQty = (AlloverObj.PartIIFinalClaimQty ?? 0) / (this.UnitConvertRate ?? 0);
                    Part2.ClaimPer = (PackingListQtyShow ?? 0) == 0 ? 0 : (AlloverObj.PartIIFinalClaimQty ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(Part2);

                    AuditResultClass Part3 = new AuditResultClass();
                    Part3.AuditPart = "Part III - Other Test";
                    Part3.AuditResult = AlloverObj.OtherOverallResult;
                    Part3.ClaimQty = (AlloverObj.PARTIIIFinalClaimQty ?? 0) / (this.UnitConvertRate ?? 0);
                    Part3.ClaimPer = (PackingListQtyShow ?? 0) == 0 ? 0 : (AlloverObj.PARTIIIFinalClaimQty ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(Part3);

                    OverAllDefectResultShow = GetOverallResult(_CoreReasonsList.Select(dr => dr.AuditResult).ToList());
                    OverAllDefectClaimQtyShow = (AlloverObj.OverAllClaimLength ?? 0) / (this.UnitConvertRate ?? 0);
                    OverAllDefectClaimPerShow = (PackingListQtyShow ?? 0) == 0 ? 0 : (AlloverObj.OverAllClaimLength ?? 0) / (PackingListQtyShow ?? 0);

                    break;

                case 2: //Band lace
                    _CoreReasonsList = new List<AuditResultClass>();
                    BandLaceHeader BandLaceObj = db.BandLaceHeaders.FirstOrDefault(p => p.AuditNo == this.AuditNo);

                    ProjectStr = CalculateProjectAndPO(db.BandLaceHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.ProjectNo).ToList());
                    PoStr = CalculateProjectAndPO(db.BandLaceHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.PONo).ToList());


                    SupplierShow = GetSupplier(BandLaceObj.SuppCode);
                    SupplierItemRefShow = BandLaceObj.SuppItemRef;
                    UnitShow = BandLaceObj.Unit;
                    // InvoiceNoShow = BandLaceObj.InvoiceNo;
                    PackingListQtyShow = BandLaceObj.PackingListLengthByLot / (this.UnitConvertRate ?? 0);
                    IDAuditDateShow = BandLaceObj.IDAuditDate;
                    AuditSmplsQtyShow = BandLaceObj.AuditSampleSizeQtyByLot;
                    ERPItemCodeShow = BandLaceObj.ItemCode;
                    ERPItemColorCodeShow = BandLaceObj.ColorCode;

                    IDCreateDateShow = BandLaceObj.IDCreateDate == null ? "" : Convert.ToString(BandLaceObj.IDCreateDate).Replace('/', '-');

                    AuditResultClass BPart1 = new AuditResultClass();
                    BPart1.AuditPart = "Part I - Defect";
                    BPart1.AuditResult = BandLaceObj.Part1DefectResultByLot;
                    BPart1.ClaimQty = (BandLaceObj.PartIFinalClaimQtyShow ?? 0) / (this.UnitConvertRate ?? 0);
                    BPart1.ClaimPer = PackingListQtyShow == 0 ? 0 : (BandLaceObj.PartIFinalClaimQtyShow ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BPart1);

                    AuditResultClass BPart2 = new AuditResultClass();
                    BPart2.AuditPart = "Part II - Measurement";
                    BPart2.AuditResult = BandLaceObj.Part2MeasureResultByLot;
                    BPart2.ClaimQty = (BandLaceObj.Part2FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BPart2.ClaimPer = PackingListQtyShow == 0 ? 0 : (BandLaceObj.Part2FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BPart2);

                    AuditResultClass BPart3 = new AuditResultClass();
                    BPart3.AuditPart = "Part III - Other Test";
                    BPart3.AuditResult = BandLaceObj.Part3TestingResultByLot;
                    BPart3.ClaimQty = (BandLaceObj.Part3FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BPart3.ClaimPer = PackingListQtyShow == 0 ? 0 : (BandLaceObj.Part3FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BPart3);

                    AuditResultClass BPart4 = new AuditResultClass();
                    BPart4.AuditPart = "Part IV - Specific Defects";
                    BPart4.AuditResult = BandLaceObj.Part4SpecificDefectResultByLot;
                    BPart4.ClaimQty = (BandLaceObj.Part4FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BPart4.ClaimPer = PackingListQtyShow == 0 ? 0 : (BandLaceObj.Part4FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BPart4);

                    OverAllDefectResultShow = GetOverallResult(_CoreReasonsList.Select(dr => dr.AuditResult).ToList());
                    OverAllDefectClaimQtyShow = (BandLaceObj.OverallProposaClaimlByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    OverAllDefectClaimPerShow = PackingListQtyShow == 0 ? 0 : (BandLaceObj.OverallProposaClaimlByLot ?? 0) / (PackingListQtyShow ?? 0);

                    break;

                case 3: //Elastic tape
                    _CoreReasonsList = new List<AuditResultClass>();
                    ElasticHeader ElasticObj = db.ElasticHeaders.FirstOrDefault(p => p.AuditNo == this.AuditNo);

                    ProjectStr = CalculateProjectAndPO(db.ElasticHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.ProjectNo).ToList());
                    PoStr = CalculateProjectAndPO(db.ElasticHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.PONo).ToList());

                    SupplierShow = GetSupplier(ElasticObj.SuppCode);
                    SupplierItemRefShow = ElasticObj.SuppItemRef;
                    UnitShow = ElasticObj.UnitShow;
                    // InvoiceNoShow = ElasticObj.InvoiceNo;
                    PackingListQtyShow = ElasticObj.PackingListLengthByLot / (this.UnitConvertRate ?? 0);
                    IDAuditDateShow = ElasticObj.IDAuditDate;
                    AuditSmplsQtyShow = ElasticObj.AuditSampleSizeQtyByLot;
                    ERPItemCodeShow = ElasticObj.ItemCode;
                    ERPItemColorCodeShow = ElasticObj.ColorCode;

                    IDCreateDateShow = ElasticObj.IDCreateDate == null ? "" : Convert.ToString(ElasticObj.IDCreateDate).Replace('/', '-');


                    AuditResultClass EPart1 = new AuditResultClass();
                    EPart1.AuditPart = "Part I - Defect";
                    EPart1.AuditResult = ElasticObj.Part1DefectResultByLot;
                    EPart1.ClaimQty = (ElasticObj.Part1FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    EPart1.ClaimPer = PackingListQtyShow == 0 ? 0 : (ElasticObj.Part1FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(EPart1);

                    AuditResultClass EPart2 = new AuditResultClass();
                    EPart2.AuditPart = "Part II - Measurement";
                    EPart2.AuditResult = ElasticObj.Part2MeasureResultByLot;
                    EPart2.ClaimQty = (ElasticObj.Part2FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    EPart2.ClaimPer = PackingListQtyShow == 0 ? 0 : (ElasticObj.Part2FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(EPart2);

                    AuditResultClass EPart3 = new AuditResultClass();
                    EPart3.AuditPart = "Part III - Other Test";
                    EPart3.AuditResult = ElasticObj.Part3TestingResultByLot;
                    EPart3.ClaimQty = (ElasticObj.Part3FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    EPart3.ClaimPer = PackingListQtyShow == 0 ? 0 : (ElasticObj.Part3FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(EPart3);

                    AuditResultClass EPart4 = new AuditResultClass();
                    EPart4.AuditPart = "Part IV - Specific Defects";
                    EPart4.AuditResult = ElasticObj.Part4SpecificDefectResultByLot;
                    EPart4.ClaimQty = (ElasticObj.Part4FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    EPart4.ClaimPer = PackingListQtyShow == 0 ? 0 : (ElasticObj.Part4FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(EPart4);

                    OverAllDefectResultShow = GetOverallResult(_CoreReasonsList.Select(dr => dr.AuditResult).ToList());
                    OverAllDefectClaimQtyShow = (ElasticObj.OverallProposaClaimlByLot) / (this.UnitConvertRate ?? 0);
                    OverAllDefectClaimPerShow = PackingListQtyShow == 0 ? 0 : (ElasticObj.OverallProposaClaimlByLot ?? 0) / (PackingListQtyShow ?? 0);

                    break;

                case 4: //Accessories
                    _CoreReasonsList = new List<AuditResultClass>();
                    AccessoryHeader AccessoryObj = db.AccessoryHeaders.FirstOrDefault(p => p.AuditNo == this.AuditNo);

                    ProjectStr = CalculateProjectAndPO(db.AccessoryHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.ProjectNO).ToList());
                    PoStr = CalculateProjectAndPO(db.AccessoryHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.PONO).ToList());

                    SupplierShow = GetSupplier(AccessoryObj.SuppCode);
                    SupplierItemRefShow = AccessoryObj.SuppRef;
                    UnitShow = "pc";
                    //InvoiceNoShow = AccessoryObj.InvoiceNo;
                    PackingListQtyShow = AccessoryObj.PackListQtyByLot / (this.UnitConvertRate ?? 0);
                    IDAuditDateShow = AccessoryObj.AuditDate;
                    AuditSmplsQtyShow = AccessoryObj.AQLAuditQtyByLot;
                    ERPItemCodeShow = AccessoryObj.ItemCode;
                    ERPItemColorCodeShow = AccessoryObj.ColorCode;

                    IDCreateDateShow = AccessoryObj.IDCreateDate == null ? "" : Convert.ToString(AccessoryObj.IDCreateDate).Replace('/', '-');

                    AuditResultClass APart1 = new AuditResultClass();
                    APart1.AuditPart = "Part I - Defect";
                    APart1.AuditResult = AccessoryObj.Part1ResultByLot;
                    APart1.ClaimQty = (AccessoryObj.Part1FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    APart1.ClaimPer = PackingListQtyShow == 0 ? 0 : (AccessoryObj.Part1FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(APart1);

                    AuditResultClass APart2 = new AuditResultClass();
                    APart2.AuditPart = "Part II - Measurement";
                    APart2.AuditResult = AccessoryObj.Part2ResultByLot;
                    APart2.ClaimQty = (AccessoryObj.Part2FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    APart2.ClaimPer = PackingListQtyShow == 0 ? 0 : (AccessoryObj.Part2FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(APart2);

                    AuditResultClass APart3 = new AuditResultClass();
                    APart3.AuditPart = "Part III - Other Test";
                    APart3.AuditResult = AccessoryObj.Part3TestingResultByLot;
                    APart3.ClaimQty = (AccessoryObj.Part3FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    APart3.ClaimPer = PackingListQtyShow == 0 ? 0 : (AccessoryObj.Part3FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(APart3);

                    AuditResultClass APart4 = new AuditResultClass();
                    APart4.AuditPart = "Part IV - Specific Defects";
                    APart4.AuditResult = AccessoryObj.Part4ResultByLot;
                    APart4.ClaimQty = (AccessoryObj.Part4ClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    APart4.ClaimPer = PackingListQtyShow == 0 ? 0 : (AccessoryObj.Part4ClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(APart4);

                    OverAllDefectResultShow = GetOverallResult(_CoreReasonsList.Select(dr => dr.AuditResult).ToList());
                    OverAllDefectClaimQtyShow = (AccessoryObj.OverallProposaClaimlByLot) / (this.UnitConvertRate ?? 0);
                    OverAllDefectClaimPerShow = PackingListQtyShow == 0 ? 0 : (AccessoryObj.OverallProposaClaimlByLot ?? 0) / (PackingListQtyShow ?? 0);

                    break;

                case 5: //Bra Cup
                    _CoreReasonsList = new List<AuditResultClass>();
                    BraCupHeader BraCupObj = db.BraCupHeaders.FirstOrDefault(p => p.AuditNo == this.AuditNo);

                    ProjectStr = CalculateProjectAndPO(db.BraCupHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.ProjectNO).ToList());
                    PoStr = CalculateProjectAndPO(db.BraCupHeaders.Where(p => p.AuditNo == this.AuditNo).Select(dr => dr.PONO).ToList());

                    SupplierShow = GetSupplier(BraCupObj.SuppCode);
                    SupplierItemRefShow = BraCupObj.SuppRef;
                    UnitShow = "pr";
                    //InvoiceNoShow = BraCupObj.InvoiceNo;
                    PackingListQtyShow = (BraCupObj.PackListQtyByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    IDAuditDateShow = BraCupObj.AuditDate;
                    AuditSmplsQtyShow = BraCupObj.AQLAuditQtyByLot;
                    ERPItemCodeShow = BraCupObj.ItemCode;
                    ERPItemColorCodeShow = BraCupObj.ColorCode;

                    IDCreateDateShow = BraCupObj.IDCreateDate == null ? "" : Convert.ToString(BraCupObj.IDCreateDate).Replace('/', '-');

                    AuditResultClass BraCupPart1 = new AuditResultClass();
                    BraCupPart1.AuditPart = "Part I - Defect";
                    BraCupPart1.AuditResult = BraCupObj.Part1ResultByLot;
                    BraCupPart1.ClaimQty = (BraCupObj.Part1FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BraCupPart1.ClaimPer = PackingListQtyShow == 0 ? 0 : (BraCupObj.Part1FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BraCupPart1);

                    AuditResultClass BraCupPart2 = new AuditResultClass();
                    BraCupPart2.AuditPart = "Part II - Measurement";
                    BraCupPart2.AuditResult = BraCupObj.Part2ResultByLot;
                    BraCupPart2.ClaimQty = (BraCupObj.Part2FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BraCupPart2.ClaimPer = PackingListQtyShow == 0 ? 0 : (BraCupObj.Part2FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BraCupPart2);

                    AuditResultClass BraCupPart3 = new AuditResultClass();
                    BraCupPart3.AuditPart = "Part III - Other Test";
                    BraCupPart3.AuditResult = BraCupObj.Part3TestingResultByLot;
                    BraCupPart3.ClaimQty = (BraCupObj.Part3FinalClaimByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    BraCupPart3.ClaimPer = PackingListQtyShow == 0 ? 0 : (BraCupObj.Part3FinalClaimByLot ?? 0) / (PackingListQtyShow ?? 0);
                    _CoreReasonsList.Add(BraCupPart3);

                    OverAllDefectResultShow = GetOverallResult(_CoreReasonsList.Select(dr => dr.AuditResult).ToList());
                    OverAllDefectClaimQtyShow = (BraCupObj.OverallProposaClaimlByLot ?? 0) / (this.UnitConvertRate ?? 0);
                    OverAllDefectClaimPerShow = PackingListQtyShow == 0 ? 0 : (BraCupObj.OverallProposaClaimlByLot ?? 0) / (PackingListQtyShow ?? 0);

                    break;
            }
        }



        public string CalculateProjectAndPO(List<string> VPro)
        {
            if (VPro.Count == 0) return "";

            List<string> AList = new List<string>();
            foreach (var Obj in VPro.Where(dr => dr != null))
            {
                AList.AddRange(Obj.Replace(Convert.ToChar(10).ToString(), "/").Replace(Convert.ToChar(13).ToString(), "/").Split('/'));
            }
            return String.Join("/", AList.Where(dr => dr != "").Distinct().OrderBy(p => p).ToArray());

        }
    }
}
