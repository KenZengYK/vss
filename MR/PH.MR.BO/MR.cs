
namespace PH.MR.BO
{

    using PH.Platform.BO;
    using System;
    using System.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using PH.Platform.Common;
    using System.Xml.Linq;
    using System.Collections.Generic;

    public class FRNMsterHelper : BaseEntityList<FRN_MasterInfo, MRDataContext>
    {

        public string GetMRDBConnection()
        {

            string _str = string.Empty;
            MRDataContext mrd1 = this.CurrentDataContext as MRDataContext;
            string sqlstr = "select BOConnectionString from [PH.Platform.AuthMgr].dbo.auth_file where filename='PH.MR.BO.dll'";
            DataTable db = mrd1.ExecuteDataTable(sqlstr, "Auth_File");

            if (db != null && db.Rows.Count > 0)
            {

                //Type.GetType("dd")
                //Auth_File af = AuthFile.Single<Auth_File>();
                string boconnection = db.Rows[0]["boconnectionstring"] != null ? db.Rows[0]["boconnectionstring"].ToString() : "";

                if (String.IsNullOrEmpty(boconnection))
                {
                    // MessageBox.Show("BO的數據庫連接串配置為空,請開發員檢查Auth_File中," + assname + "的配置是否正確!", "錯誤", MessageBoxButtons.OK, MessageBoxIcon.Error);

                    string errmsg = "PH.MR.BO的數據庫連接串配置為空,請開發員檢查配置是否正確!";
                    throw new Exception(errmsg);

                }
                _str = @"Data Source={0};Initial Catalog=PH.MR;User ID={1};pwd={2}";
                //StringEncryptHelper seh = new StringEncryptHelper();

                //將得到的BOConnectiongString進行解密
                string strconn = StringEncryptHelper.DecryptDES(boconnection);
                string[] strsplit = { "Initial Catalog=", "User ID=", "Password=" };
                string[] str = strconn.Split(strsplit, StringSplitOptions.None);
                //string _database = str[1];
                string _userid = str[2];
                string _password = str[3];

                string filepath = System.AppDomain.CurrentDomain.BaseDirectory + "PH.Platform.AuthMgr.UI.dll.config";
                XDocument doc = XDocument.Load(filepath);
                string node = string.Empty;

                //從配置文件PH.Platform.AuthMgr.UI.dll.config中取得datasource信息
                string _datasource = (from d in doc.Descendants("add")
                                      where d.Attribute("key").Value == "DataSource"
                                      select new
                                      {
                                          value = d.Attribute("value").Value
                                      }).FirstOrDefault().value;

                _str = string.Format(_str, _datasource, _userid, _password);

            }

            return _str;
        }

    }

    partial class MRDataContext
    {

    }

    public class WoRwoQn
    {
        public WoRwoQn()
        {
            this.SELECT = true;
        }
        public bool SELECT { get; set; }
        public double? JOBN { get; set; }
        public string WORKORDER { get; set; }
        public string RWO { get; set; }
        public string QN { get; set; }
    }

    partial class FRN_MasterInfo : BaseEntity
    {

    }

    partial class FRN_DetailInfo : BaseEntity
    {
        public decimal Wastage_Qty
        {
            get
            {
                return decimal.Round((FRN_YY.GetValueOrDefault() * Wastage_Per.GetValueOrDefault()) / 100, 2, MidpointRounding.AwayFromZero);
            }

        }

        public decimal FRN_Total
        {
            get
            {
                return decimal.Round(FRN_YY.GetValueOrDefault() + this.Wastage_Qty, 2, MidpointRounding.AwayFromZero);
            }

        }

        public decimal Diff_Qty
        {
            get
            {
                //return decimal.Round(this.Original_YY.GetValueOrDefault() - this.FRN_Total, 2, MidpointRounding.AwayFromZero);
                return decimal.Round(this.FRN_Total - this.Original_YY.GetValueOrDefault(), 2, MidpointRounding.AwayFromZero);
            }

        }
        public decimal Diff_Per
        {
            get
            {
                if (this.FRN_Total == 0)
                    return 0;
                else
                    return decimal.Round(this.Diff_Qty * 100 / this.FRN_Total, 2, MidpointRounding.AwayFromZero);
            }

        }

        public decimal Erp_InputQty
        {
            get
            {

                if (this.Color_Qty.GetValueOrDefault() == 0)
                    return 0;
                else
                {
                    return decimal.Round((this.FRN_Total * 1000 * (1.0m - this.Wastage_Per.GetValueOrDefault() * 0.01m)) / this.Color_Qty.GetValueOrDefault(), 2, MidpointRounding.AwayFromZero);
                }

            }

        }

        public string MatType
        {

            get
            {

                return this.ItemCode.Substring(0, 3);
            }
        }

        //[Column(Storage = "_FRN_YY", DbType = "Decimal(18,3)")]
        //public System.Nullable<decimal> FRN_YY
        //{
        //    get
        //    {
        //         return decimal.Round(this._FRN_YY.GetValueOrDefault(),2,MidpointRounding.AwayFromZero);
        //    }
        //    set
        //    {
        //        if ((this._FRN_YY != value))
        //        {
        //            this.OnFRN_YYChanging(value);
        //            this.SendPropertyChanging();
        //            this._FRN_YY = decimal.Round(value.GetValueOrDefault(),2,MidpointRounding.AwayFromZero);
        //            this.SendPropertyChanged("FRN_YY");
        //            this.OnFRN_YYChanged();
        //        }
        //    }
        //}
    }

    partial class AnticipantMR : BaseEntity
    {
        public decimal OutstandingQty
        {
            get
            {
                return decimal.Round(this.MR_Qty.GetValueOrDefault() - this.Res_stock.GetValueOrDefault() -
                    this.Res_redye.GetValueOrDefault() - this.Res_PO.GetValueOrDefault(), 3, MidpointRounding.AwayFromZero);
            }

        }


        public decimal ACountValue
        {
            get
            {
                return Math.Round((MR_Qty ?? 0) * (UPX ?? 0), 3);
            }

        }


        public decimal MatValue
        {
            get
            {
                return decimal.Round(this.MR_Qty.GetValueOrDefault() * this.UPX.GetValueOrDefault(), 3, MidpointRounding.AwayFromZero);
            }

        }


        public string OperDate
        {
            get
            {
                return string.IsNullOrEmpty(this.DT) ? "" : DT.Substring(0, 4) + "-" + DT.Substring(4, 2) + "-" + DT.Substring(6, 2);
            }
        }
        public string TopWo
        {
            get;
            set;
        }
        public int SortId
        { get; set; }

    }


    public class FRN_Head
    {
        public string ProjectNo { get; set; }

        public string SaleOrder { get; set; }

        public string ConfirmDate { get; set; }

        public string FRNNO { get; set; }

        public string FRNDate { get; set; }

        public string Method { get; set; }

        public string Reson { get; set; }

        public string PlanMasterDate { get; set; }

        public string PreparedBy { get; set; }

        public string MarkerManager { get; set; }

        public string OAManager { get; set; }
    }
    public class FRNReport
    {

        //public string ProjectNo { get; set; }

        //public string SaleOrder { get; set; }

        //public string ConfirmDate { get; set; }

        //public string FRNNO { get; set; }

        //public string FRNDate { get; set; }

        //public string Method { get; set; }

        //public string Reson { get; set; }

        //public string PlanMasterDate { get; set; }

        //public string PreparedBy { get; set; }

        //public string MarkerManager { get; set; }

        //public string OAManager { get; set; }

        //public System.Guid _MasterID;

        //public System.Guid _DetailID;


        public string WorkOrder { get; set; }

        public string ItemCode { get; set; }

        public string ColorCode { get; set; }

        public string StyleNo { get; set; }

        public string DeliveryDate { get; set; }

        public string Ex_FtyDate { get; set; }

        public string SupplierItem { get; set; }

        public int WO_Qty { get; set; }

        public int Color_Qty { get; set; }

        public decimal FRN_YY { get; set; }

        public decimal Wastage_Per { get; set; }

        public decimal Original_YY { get; set; }


        public decimal Wastage_Qty { get; set; }
        public decimal FRN_Total { get; set; }
        public decimal Diff_Qty { get; set; }
        public decimal Diff_Per { get; set; }
        public decimal Erp_InputQty { get; set; }

    }


    public class AMRComparers : IEqualityComparer<AnticipantMR>
    {

        public bool Equals(AnticipantMR p1, AnticipantMR p2)
        {
            if (p1.Workorderno == p2.Workorderno && p1.Style_color == p2.Style_color
                && p1.Itemno == p2.Itemno && p1.Item_color == p2.Item_color)
            {
                return true;
            }
            return false;
        }

        public int GetHashCode(AnticipantMR obj)
        {
            throw new NotImplementedException();
        }
    }

    public partial class AnticipantMR_HSCodeHeader : BaseEntity
    {
    }

    public partial class AnticipantMR_HSCodeDetail : BaseEntity
    {
    }


    public partial class AnticipantMR_Packing : BaseEntity
    {
    }
    public partial class MRStyleWeightCompare_Packing : BaseEntity
    {
        /// <summary>
        /// Xsj:Weight Compare Percent
        /// </summary>
        public decimal WeightOverValue
        {
            get
            {
                decimal val = (this.Weight_packing - (this.Weight_MR ?? 0)) / ((this.Weight_MR ?? 0) > 0 ? (this.Weight_MR ?? 0) : 1) * 100;
                return val;
            }
        }

        public string WeightOverPercent
        {
            get
            {
                decimal val = WeightOverValue;
                return val.ToString("#,##0.##") + "%";
            }
        }

        public decimal Weight_packing
        {
            get
            {
                decimal val = 0;
                if ((this.WorkQty ?? 0) > 0)
                {
                    val = (this.StyleTotalWeight ?? 0) / (this.WorkQty ?? 1);
                }
                return val;
            }
        }
    }

    // Xsj20160603:Add for HS Issue WorkOrder ----------------------------
    public partial class HSWOIssueMaterialType
    {
        public bool IsSelected
        {
            get;
            set;
        }
        public string Styleno
        {
            get;
            set;
        }
        public string HSTypeName
        {
            get;
            set;
        }
        public string Projectno
        {
            get;
            set;
        }
        public string Workorderno
        {
            get;
            set;
        }
        public string Fty
        {
            get;
            set;
        }
        public int HSItemSeq
        {
            get;
            set;
        }
        public string HSItemCode
        {
            get;
            set;
        }
        public string HSItemMaterialName
        {
            get;
            set;
        }
        public string HSItemMemo
        {
            get;
            set;
        }
        public DateTime? ExFtyDate
        {
            get;
            set;
        }
    }

    public partial class P_GetHSWOIssueSummary_Result
    {
        public string Factory
        {
            get;
            set;
        }
        public int HSCodeSeq
        {
            get;
            set;
        }
        public string HSCode
        {
            get;
            set;
        }
        public string HSName
        {
            get;
            set;
        }
        public decimal IssueWeight_RMB
        {
            get;
            set;
        }
        public decimal IssueWeight_Other
        {
            get;
            set;
        }
        public string HScontractNO
        {
            get;
            set;
        }

        public bool IsHasContractNO
        {
            get
            {
                return this.HScontractNO == null || this.HScontractNO.Trim() == "";
            }
        }
    }


    /// <summary>
    /// 海關收貨數據
    /// </summary>
    public partial class ReciveListResult
    {
        public string FTY
        {
            get;
            set;
        }
        public int HSCodeSeq
        {
            get;
            set;
        }
        public string HSCode
        {
            get;
            set;
        }
        public string HSName
        {
            get;
            set;
        }

        public string HScontractNO
        {
            get;
            set;
        }

        public int ReciveQty
        {
            get;
            set;
        }

        public bool IsHasContractNO
        {
            get
            {
                return this.HScontractNO == null || this.HScontractNO.Trim() == "";
            }
        }
    }

    /// <summary>
    /// 海關收貨明細數據
    /// add by joseph for report 17/3/30
    /// </summary>
    public partial class ReciveWoDetailt
    {
        public string FTY
        {
            get;
            set;
        }
        public string HScontractNO
        {
            get;
            set;
        }

        public int? HSCodeSeq
        {
            get;
            set;
        }
        public string HSCode
        {
            get;
            set;
        }
        public string HSName
        {
            get;
            set;
        }

        public string WO
        { get; set; }

        public string ProjectNo
        { get; set; }

        public string StyleNo
        { get; set; }

        public int ReciveQty
        {
            get;
            set;
        }

    }


    public partial class HSWOIssueHeader : BaseEntity
    {
    }

    public partial class HSWOIssueDetail : BaseEntity
    {
    }

    public partial class HSContractHeader : BaseEntity
    {
        public int WOCount
        {
            get
            {
                int val = 0;
                if (this.HSContractDetails != null)
                {
                    val = this.HSContractDetails.Count;
                }
                return val;
            }
        }
    }

    public partial class HSContractDetail : BaseEntity
    {
        public string HSContractNO
        {
            get
            {
                return this.HSContractHeader.HScontractNO;
            }
        }

        private StyleHSCodeInfoHelper StyleHSCodeInfo
        {
            get
            {
                if (this._StyleHSCodeInfo == null)
                {
                    this._StyleHSCodeInfo = StyleHSCodeInfoHelper.GetStyleHSCodeInfo(this.WorkNO);
                }
                return this._StyleHSCodeInfo;
            }
        }
        private StyleHSCodeInfoHelper _StyleHSCodeInfo;

        public string StyleHSCodeSeq
        {
            get
            {
                if (this._styleHSCodeSeq == null && this.StyleHSCodeInfo != null)
                {
                    this._styleHSCodeSeq = this._StyleHSCodeInfo.HSCodeSeq;
                }
                return this._styleHSCodeSeq;
            }
        }
        private string _styleHSCodeSeq;

        public string StyleHSCode
        {
            get
            {
                if (this._styleHSCode == null && this.StyleHSCodeInfo != null)
                {
                    this._styleHSCode = this._StyleHSCodeInfo.HSCode;
                }
                return this._styleHSCode;
            }
        }
        private string _styleHSCode;

        public string StyleHSName
        {
            get
            {
                if (this._styleHSName == null && this.StyleHSCodeInfo != null)
                {
                    this._styleHSName = this._StyleHSCodeInfo.HSName;
                }
                return this._styleHSName;
            }
        }
        private string _styleHSName;


        public DateTime? DeliveryDate
        {
            get
            {
                if (this._deliveryDate == null)
                {
                    PH.RWO.BO.WorkOrder bo = HSContractHeader.RwoDcn.WorkOrders.Where(p => p.WorkOrderNo == this.WorkNO).FirstOrDefault();
                    if (bo != null)
                    {
                        _deliveryDate = bo.LCLExFtyShipCompleted;
                    }
                }
                return _deliveryDate;
            }
        }
        private DateTime? _deliveryDate;


        public int? WOQty
        {
            get
            {
                if (this._woqty == null)
                {
                    List<PH.RWO.BO.WorkOrderSKU> bos = HSContractHeader.RwoDcn.WorkOrderSKUs.Where(p => p.WorkOrderNo == this.WorkNO && (p.DespatchQty ?? 0) > 0).ToList();
                    if (bos.Count > 0)
                    {
                        this._woqty = bos.Sum(p => p.DespatchQty ?? 0);
                    }
                }
                return this._woqty;
            }
        }
        private int? _woqty;

        public int? WOExtQty
        {
            get
            {
                if (this._woextqty == null && this.HSContractHeader.ExFtyQtyDt != null)
                {
                    decimal txt = (from val in this.HSContractHeader.ExFtyQtyDt.AsEnumerable()
                                   where val.Field<string>("WO") == this.WorkNO
                                   select val.Field<decimal>("Ex_QTY")).FirstOrDefault();
                    this._woextqty = (int)txt;
                }
                return this._woextqty;
            }
        }
        private int? _woextqty;

        public int? WOBalanceQty
        {
            get
            {
                return (this.WOQty ?? 0) - (this.WOExtQty ?? 0);
            }
        }
    }

    public partial class HSContractHeader
    {
        public static PH.RWO.BO.RWOSOPCDataContext RwoDcn
        {
            get
            {
                if (_rwoDcn == null)
                {
                    _rwoDcn = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
                }
                return _rwoDcn;
            }
        }
        private static PH.RWO.BO.RWOSOPCDataContext _rwoDcn;

        //Xsj:20170407工單的走貨記錄
        public DataTable ExFtyQtyDt
        {
            get
            {
                if (_exFtyQtyDt == null)
                {
                    _exFtyQtyDt = new DataTable();
                    PH.MR.BO.MRDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                    cmd.CommandTimeout = 10000;
                    cmd.CommandText = "P_GetHSContractExFtyQty";
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@HSContractID", SqlDbType.NVarChar, 20);
                    cmd.Parameters["@HSContractID"].Value = this.HSContractID;
                    cmd.Connection = dcon.Connection as System.Data.SqlClient.SqlConnection;

                    System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
                    dap.SelectCommand = cmd;
                    dap.Fill(_exFtyQtyDt);
                }
                return _exFtyQtyDt;
            }
        }
        public DataTable _exFtyQtyDt;
    }

    public partial class StyleHSCodeInfoHelper
    {
        public string HSCodeSeq
        {
            get;
            set;
        }

        public string HSCode
        {
            get;
            set;
        }

        public string MidcHSCode
        {
            get;
            set;
        }

        public string HSName
        {
            get;
            set;
        }

        public string HSDesc
        {
            get;
            set;
        }

        public string HSUnit
        {
            get;
            set;
        }

        private static PH.MR.BO.MRDataContext _dcon;
        public static PH.MR.BO.MRDataContext Dcon
        {
            get
            {
                if (_dcon == null)
                {
                    _dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
                }
                return _dcon;
            }
        }

        public static StyleHSCodeInfoHelper GetStyleHSCodeInfo(string WONO)
        {
            StyleHSCodeInfoHelper styleHSCodeInfoBO = new StyleHSCodeInfoHelper();

            PH.MR.BO.MRDataContext dct = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandTimeout = 10000;
            cmd.CommandText = "P_GetStyleHsCodeInfoByWONO";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@WONO", SqlDbType.NVarChar, 20);
            cmd.Parameters["@WONO"].Value = WONO;
            cmd.Connection = dct.Connection as System.Data.SqlClient.SqlConnection;

            DataTable dt = new DataTable();
            System.Data.SqlClient.SqlDataAdapter dap = new System.Data.SqlClient.SqlDataAdapter();
            dap.SelectCommand = cmd;
            dap.Fill(dt);

            if (dt != null && dt.Rows.Count > 0)
            {
                styleHSCodeInfoBO = (from v in dt.AsEnumerable()
                                     select new StyleHSCodeInfoHelper
                                     {
                                         HSCodeSeq = v["HSCodeSeq"].ToString(),
                                         HSCode = v["HSCode"].ToString(),
                                         MidcHSCode = v["MidcHSCode"].ToString(),
                                         HSName = v["HSName"].ToString(),
                                         HSDesc = v["HSDesc"].ToString(),
                                         HSUnit = v["HSUnit"].ToString()
                                     }).FirstOrDefault();
            }

            return styleHSCodeInfoBO;
        }


    }

    public partial class StyleSizeWeight : BaseEntity
    {
    }


    public class FinalMRReportQueryProjectClass
    {
        public bool IsChecked { get; set; }
        public string ProjectNo { get; set; }
        public string Status { get; set; }
        public string IsCompleted { get; set; }
    }

    public class FinalMRReportClass
    {
        public string ProjectNo { get; set; }
        public string Status { get; set; }
        public string SortofMat { get; set; }
        public string SupplierMatRef { get; set; }
        public string PHArticle { get; set; }
        public string Colour { get; set; }
        public string Size { get; set; }
        public decimal Quantity { get; set; }
        public string Unit { get; set; }
        public string Remark { get; set; }

    }
    //------------------------------End-----------------------------------
}
