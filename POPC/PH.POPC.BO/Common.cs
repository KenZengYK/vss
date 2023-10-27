using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace PH.POPC.BO
{
    public class DB
    {

        #region AS400 DB connection
        private static AS400Interface.IDataAccess _AS400DB;
        public static AS400Interface.IDataAccess AS400DB
        {
            get
            {
                if (_AS400DB == null)
                {
                    string as400url = GetSettings();
                    _AS400DB = (AS400Interface.IDataAccess)Activator.GetObject(typeof(AS400Interface.IDataAccess), as400url);
                }
                return _AS400DB;
            }
        }
        private static string GetSettings()
        {
            int AS400ServerPort = 14100;
            string AS400ServerName = "As400Server";
            string AS400ServerIP = "10.2.1.242";//202.173.254.125:vss2005.sl.phgmt.com.hk:10.2.1.242
            return string.Format("tcp://{0}:{1}/{2}",
                AS400ServerIP,
                AS400ServerPort,
                AS400ServerName);
        }
        #endregion

        //private SqlConnection _con = null;
        private static SqlConnection ConInit()
        {
            POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            SqlConnection con = new SqlConnection(context.Connection.ConnectionString);
            try
            {
                con.Open();
                return con;
            }
            catch
            {
                return null;
            }
        }
        public static DataTable GetDataTable(string sql)
        {
            using (SqlConnection con = ConInit())
            {
                if (con == null) return null;
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandTimeout = 600;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        public static DataSet GetDataSet(string sql)
        {
            using (SqlConnection con = ConInit())
            {
                if (con == null) return null;
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
                //List<object> dd = new List<object>();

            }
        }
    }


    public enum POType
    {
        PO = 1,
        POSticker = 2,
        //Xsj20110322:MIDc Sample Po Order
        MIDcPO = 3
    }


    public class CodeAndDesc
    {
        public string Code
        {
            get;
            set;
        }
        public string Description
        {
            get;
            set;
        }
    }

    public class CodeAndDesc2
    {
        public string ReportTypeCode
        {
            get;
            set;
        }
        public string Description
        {
            get;
            set;
        }
    }

    public class CodeAndDesc1
    {
        public string MaterialCategory
        {
            get;
            set;
        }
        public string Description
        {
            get;
            set;
        }
    }

    public class Common
    {
        public static readonly string VirtualColorCode = "ZZZZ";

        public const string SampleApproval = "SampleApproval";
        public const string BulkSubmission = "BulkSubmission";
        public const string ColorStd = "ColorStd";
        public const string DipSubmit = "DipSubmit";
        public const string Lot = "Lot";
        public const string TestStatus = "TestStatus";
        public const string SaveInfo = "Data have been Saved";


        public const string LadDipDictionary = "PH.POPC.LadDip";
        public const string BulkDictionary = "PH.POPC.Bulk";
        public const string OrderOptionDictionary = "PH.POPC.OrderOption";

        //Xsj20151014：Change Follow Code
        public const string ClassCodeDictionary = "PH.PO.ClassCode";
        //public const string ClassCodeDictionary = "PH.BasicInfo.TradeMethod";

        public const string ReplenishmentDictionary = "PH.PO.Replenishment";

    }

    public class POPCEnquiryCondition
    {
        //由David加入以下3個屬性 2020-09-24
        public string PurchaseOfficer { get; set; }
        public string PHDGOrPYHK { get; set; }
        public string SuppCodeOrCustCode { get; set; }

        //由David加入以下屬性 2022-07-22
        public string MaterialStandby { get; set; }


        public POPCEnquiryCondition()
        {
            Company = "P1";
        }
        public POPCSortBy SortBy { get; set; }
        public POPCAnalysisSortBy AnalysisSortBy { get; set; }

        public string Company { get; set; }
        public int POStatus { get; set; }
        public string Factory { get; set; }


        //public string Team { get; set; }
        private string _Team;
        public string Team
        {
            get { return _Team; }
            set
            {
                _Team = value;
                if (!string.IsNullOrEmpty(_Team)) _Team = _Team.Trim();
                string[] ss = _Team.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                Teams = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    Teams[i] = s;
                }
                //Suppliers = ss;
            }
        }
        public string[] Teams { get; set; }

        private string _Supplier;
        public string Supplier
        {
            get { return _Supplier; }
            set
            {
                _Supplier = value;
                if (!string.IsNullOrEmpty(_Supplier)) _Supplier = _Supplier.Trim();
                string[] ss = _Supplier.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                Suppliers = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    Suppliers[i] = s;
                }
                //Suppliers = ss;
            }
        }
        public string[] Suppliers { get; set; }

        private string _EndCustCode;
        public string EndCustCode
        {
            get { return _EndCustCode; }
            set
            {
                _EndCustCode = value;
                if (!string.IsNullOrEmpty(_EndCustCode)) _EndCustCode = _EndCustCode.Trim();
                string[] ss = _EndCustCode.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                EndCustCodes = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    EndCustCodes[i] = s;
                }
                //EndCustCodes = ss;
            }
        }
        public string[] EndCustCodes { get; set; }

        private string _PONO;
        public string PONO
        {
            get { return _PONO; }
            set
            {
                _PONO = value;
                if (!string.IsNullOrEmpty(_PONO)) _PONO = _PONO.Trim();
                string[] ss = _PONO.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                PONOs = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    PONOs[i] = s;
                }
            }
        }
        public string[] PONOs { get; set; }

        public string ProjectFrom { get; set; }
        public string ProjectTo { get; set; }

        private string _SuppRef;
        public string SuppRef
        {
            get { return _SuppRef; }
            set
            {
                _SuppRef = value;
                if (!string.IsNullOrEmpty(_SuppRef)) _SuppRef = _SuppRef.Trim();
                string[] ss = _SuppRef.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                SuppRefs = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    SuppRefs[i] = s;
                }
            }
        }
        public string[] SuppRefs { get; set; }

        private string _ColorCode;
        public string ColorCode
        {
            get { return _ColorCode; }
            set
            {
                _ColorCode = value;
                if (!string.IsNullOrEmpty(_ColorCode)) _ColorCode = _ColorCode.Trim();
                string[] ss = _ColorCode.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                ColorCodes = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    ColorCodes[i] = s;
                }
            }
        }
        public string[] ColorCodes { get; set; }

        public string Coordinator { get; set; }

        //public int? OrderClass { get; set; }
        private string _OrderClass;
        public string OrderClass
        {
            get { return _OrderClass; }
            set
            {
                _OrderClass = value;
                if (!string.IsNullOrEmpty(_OrderClass)) _OrderClass = _OrderClass.Trim();
                string[] ss = _OrderClass.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);

                System.Collections.ArrayList al = new System.Collections.ArrayList();
                foreach (var s1 in ss)
                {
                    string s = s1.Trim();
                    if (s == "Default")
                        al.Add(1);
                    else if (s == "Re-dyeing")
                        al.Add(2);
                    else if (s == "Sample Yardage")
                        al.Add(3);
                    else if (s == "Processing PO")
                    {
                        al.Add(4);
                        al.Add(8);
                    }
                    else if (s == "Service Order")
                        al.Add(6);
                }
                OrderClasses = (int?[])al.ToArray(typeof(int?));
            }
        }
        public int?[] OrderClasses { get; set; }

        public bool Flowup { get; set; }

        private string _MaterialGroup;
        public string MaterialGroup
        {
            get { return _MaterialGroup; }
            set
            {
                _MaterialGroup = value;
                if (!string.IsNullOrEmpty(_MaterialGroup)) _MaterialGroup = _MaterialGroup.Trim();
                string[] ss = _MaterialGroup.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                MaterialGroups = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    MaterialGroups[i] = s;
                }
            }
        }
        public string[] MaterialGroups { get; set; }
        public string[] MaterialTypes
        {
            get
            {
                string[] mats;
                if (!string.IsNullOrEmpty(this.MaterialGroup))
                {
                    PH.MIDc.BO.MIDcDataContext mcontext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                    var mm = from m in mcontext.MaterialTypes
                             where this.MaterialGroups.Contains(m.MaterialGroup)
                             select m;
                    int i = 0;
                    mats = new string[mm.Count()];
                    foreach (var m in mm)
                    {
                        mats[i] = m.MaterialType1;
                        i++;
                    }
                }
                else
                {
                    mats = new string[0];
                }
                return mats;
            }
        }

        public DateTime IssueDateFrom { get; set; }
        public DateTime IssueDateTo { get; set; }
        public DateTime DeliveryDateFrom { get; set; }
        public DateTime DeliveryDateTo { get; set; }
        public DateTime ExftyDateFrom { get; set; }
        public DateTime ExftyDateTo { get; set; }
        public DateTime PointDestFrom { get; set; }
        public DateTime PointDestTo { get; set; }

        #region In advance

        public string BrandName { get; set; }
        public string LDStatus { get; set; }
        public DateTime SuppddFrom { get; set; }
        public DateTime SuppddTo { get; set; }
        #endregion

        #region Notepad

        private string _sender { get; set; }
        public string Sender
        {
            get { return _sender; }
            set
            {
                _sender = value;
                if (!string.IsNullOrEmpty(_sender)) _sender = _sender.Trim();
                string[] ss = _sender.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                Senders = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    Senders[i] = s;
                }
            }
        }
        public string[] Senders { get; set; }

        public bool? IsInternal { get; set; }
        public int? Classification { get; set; }

        #endregion

        #region Advice Note

        public DateTime InvoiceDate { get; set; }
        public string InvoiceNo { get; set; }


        private string _adviceNote;
        public string AdviceNote
        {
            get { return _adviceNote; }
            set
            {
                _adviceNote = value;
                if (!string.IsNullOrEmpty(_adviceNote)) _adviceNote = _adviceNote.Trim();
                string[] ss = _adviceNote.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                AdviceNotes = new string[ss.Length];
                for (int i = 0; i < ss.Length; i++)
                {
                    string s = ss[i].Trim();
                    AdviceNotes[i] = s;
                }
            }
        }
        public string[] AdviceNotes { get; set; }

        public CompareTypeI ComTypeI { get; set; }
        public CompareTypeII ComTypeII { get; set; }

        #endregion


        //由David加入 2022-06-02
        public bool Level2LabDipRejStatus { get; set; }
        public bool Level2BulkColorRejStatus { get; set; }
        public bool Level2OtherLabTestRejStatus { get; set; }

        //由David加入 2022-08-10
        public string Dashboard { get; set; }
    }
    public enum POPCSortBy
    {
        //EndCustProject = 0,
        //SuppPO = 1
        ProjectItemCode = 0, //By Our Project No. (then by Item Code)
        ItemCodeProject = 1,//By Our Item Code (then by Proj No.)
        SuppDeliveryDate = 2,//By Supp Code (then by PO Del Date)

        BuyerCode = 3  //By Buyer Cde (then by Proj. No.) 由David增加 2022-06-02
    }
    public enum POPCAnalysisSortBy
    {
        Month = 0, //Delivery Date
        Year = 1,//Delivery Date
        Supplier = 2,//By Supp Code
        Customer = 3//By End Customer
    }

}
