using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptWorkShopAnalysis_Group_V1 : DevExpress.XtraReports.UI.XtraReport
    {
        string Flag = "";
        public rptWorkShopAnalysis_Group_V1()
        {
            InitializeComponent();
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        string QueryDate,Factory,ToDate;

        public rptWorkShopAnalysis_Group_V1(string execdate)
        {
            InitializeComponent();
            QueryDate = execdate;
            //BindField();
            PrepareData();
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        public rptWorkShopAnalysis_Group_V1(string execdate,string factory)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000004");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            QueryDate = execdate;     
            Factory = factory;
            PrepareData();
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

        public rptWorkShopAnalysis_Group_V1(string execdate, string dateto, string factory, string flag)
        {
            InitializeComponent();
            ReportHelper reportHelper = new ReportHelper("00000004");
                xrVerName.Text = reportHelper.ReportInfo.VerName;
                xrVerText.Text = reportHelper.ReportInfo.VerContext;
                xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
                xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
                xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            QueryDate = execdate;
            ToDate = dateto;
            Factory = factory;
            Flag = flag;
            PrepareData();
            //if (flag == "A")
            //{
            //    xrLabel1.Text = "工場巡審考表現分析報告 - 巡審定";
            //    xrLabel4.Text = "Workshop Mobile Examine Performance Analysis Report - Mobile Audit";
            //}
            //else
            //{
            //    xrLabel1.Text = "工場巡審考表現分析報告 - 巡審查";
            //    xrLabel4.Text = "Workshop Mobile Examine Performance Analysis Report - Mobile Inspection";
            //}
            if (flag == "A")
            {
                xrLabel1.Text = "評估工場在工序表現 - 巡審定";
                xrLabel4.Text = "Evaluate WS at Opt. Perf. - Mobile Audit";
            }
            else
            {
                xrLabel1.Text = "評估工場在工序表現 - 巡審查";
                xrLabel4.Text = "Evaluate WS at Opt. Perf. - Mobile Inspection";
            }
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }


        private void BindField()
        {

            this.xrTableCell13.DataBindings.Add("Text", this.DataSource, "Workshop");
            this.xrLevel.DataBindings.Add("Text", this.DataSource, "Level");

            this.xrTableCell15.DataBindings.Add("Text", this.DataSource, "AllPassQty", "{0:0.#}");
            this.xrTableCell16.DataBindings.Add("Text", this.DataSource, "OneFailQty", "{0:0.#}");
            this.xrTableCell17.DataBindings.Add("Text", this.DataSource, "TwoFailQty", "{0:0.#}");
            this.xrTableCell18.DataBindings.Add("Text", this.DataSource, "ThreeFailQty", "{0:0.#}");
            this.xrTableCell19.DataBindings.Add("Text", this.DataSource, "FourFailQty", "{0:0.#}");
            this.xrTableCell20.DataBindings.Add("Text", this.DataSource, "FiveFailQty", "{0:0.#}");
            this.xrTableCell21.DataBindings.Add("Text", this.DataSource, "SixFailQty", "{0:0.#}");
            this.xrTableCell22.DataBindings.Add("Text", this.DataSource, "SevenFailQty", "{0:0.#}");
            this.xrTableCell23.DataBindings.Add("Text", this.DataSource, "FailTotalQty", "{0:0.#}");

            this.xrTableCell28.DataBindings.Add("Text", this.DataSource, "AllChkQty", "{0:0.#}");  //審查(定)總數
        
        }

        public void PrepareData()
        {
            
            List<Proc_WorkShopAnalysiskResult> lst = SqlDataHelper.GetWorkShopAnalyData(QueryDate,this.ToDate,Factory,Flag);
        
            IEnumerable<Proc_WorkShopAnalysiskResult> query = null;
            //query = from r in lst orderby r.GroupBase descending, r.Cal_Per descending select r;
            query = from r in lst select r;

            //ArrayList sortitems = new ArrayList();
            int i = 0, _groupbase = 0;
            double _value = 0;

            foreach (Proc_WorkShopAnalysiskResult item in query)
            {
                if (_groupbase != item.GroupBase)
                {
                    i = 1; _value = 0;
                    _groupbase = item.GroupBase;
                    item.Level = 1;
                }

                else
                {
                    if (_value != item.Cal_Per)
                    {
                        i++;
                        item.Level = i;
                    }
                    else
                        item.Level = i;

                    _value = item.Cal_Per;
                }

            }
            

            this.bsWsAnaly.DataSource = lst;


            //lst.Sort((x, y) =>
            //{
            //    int value = x.GroupBase.CompareTo(y.GroupBase);
            //    if (value == 0)
            //    {
            //        value = x.Level.CompareTo(y.Level);
            //        if (value == 0)
            //            return 0;
            //        if (value < 0)
            //            return 1;
            //        else
            //            return 0;
            //    }

            //    return value;
            //});

        }



        int _t1 = 0, _t2 = 0, _t3 = 0, _t4 = 0, _t5 = 0, _t6 = 0, _t7 = 0, _allpassqty = 0, _allchkqty = 0;

        int _firstpasstime = 0, _firstchktime = 0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_WorkShopAnalysiskResult awr = this.GetCurrentRow() as Proc_WorkShopAnalysiskResult;
            if (awr == null) return;

            _t1 = _t1 + awr.OneFailQty;
            _t2 = _t2 + awr.TwoFailQty;
            _t3 = _t3 + awr.ThreeFailQty;
            _t4 = _t4 + awr.FourFailQty;
            _t5 = _t5 + awr.FiveFailQty;
            _t6 = _t6 + awr.SixFailQty;
            _t7 = _t7 + awr.SevenFailQty;

            _allchkqty = _allchkqty + awr.AllChkQty;

            _allpassqty = _allpassqty + awr.AllPassQty;

            _firstpasstime = _firstpasstime + awr.FirstPassTime;
            _firstchktime = _firstchktime + awr.FirstChkTime;
            //首通率計算
            double bb = Convert.ToDouble(awr.FirstPassTime * 100.00 / (awr.FirstChkTime == 0 ? 1 : awr.FirstChkTime));
            //xrTableCell24.Text = String.Format("{0:F}", bb) + "%";


            //double aa = Convert.ToDouble(awr.ReauditTimes * 100.00 / awr.AllTimes);

            double aa = Convert.ToDouble(awr.AllPassQty * 100.00 /( (awr.AllPassQty + awr.FailTotalQty) == 0 ? 1 : (awr.AllPassQty + awr.FailTotalQty)));

            //this.xrPer.Text = String.Format("{0:F}", aa) + "%";

           // xrTableCell28.Text = awr.AllChkQty.ToString(); //總審定(查)次數

            //xrTableCell28.Text = awr.AllChkQty.ToString();


          //  xrPer.Text = awr.Cal_Per.ToString() + "%";

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            this.xrPassTtl.Text = _allpassqty.ToString();
            this.xrOneTtl.Text = _t1.ToString();
            this.xrTwoTtl.Text = _t2.ToString();
            this.xrThreeTtl.Text = _t3.ToString();
            this.xrFourTtl.Text = _t4.ToString();
            this.xrFiveTtl.Text = _t5.ToString();
            this.xrSixTtl.Text = _t6.ToString();
            this.xrSevenTtl.Text = _t7.ToString();
            int _failttl = _t1 + _t2 + _t3 + _t4 + _t5 + _t6 + _t7;

            this.xrFailTtl.Text = _failttl.ToString(); 
           // this.xrFailTtl.Text = (_allchkqty - _allpassqty).ToString();

            if (this._allpassqty + _failttl == 0)
                this.xrPerTtl.Text = "0";
            else
            {
                double aa = Convert.ToDouble(_allpassqty * 100.00 / (this._allpassqty + _failttl));
                this.xrPerTtl.Text = String.Format("{0:F}", aa) + "%";
            }

            //xrTableCell29.Text = (_failttl + _allpassqty).ToString(); //_allchkqty.ToString();

            //分組統計首通率
            double cc = Convert.ToDouble(_firstpasstime * 100.00 /this._firstchktime);
            xrTableCell30.Text = String.Format("{0:F}", cc) + "%";

        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            _t1 = 0; _t2 = 0; _t3 = 0; _t4 = 0; _t5 = 0; _t6 = 0; _t7 = 0; _allpassqty = 0;
            _firstpasstime = 0; _firstchktime = 0;
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_WorkShopAnalysiskResult awr = this.GetCurrentRow() as Proc_WorkShopAnalysiskResult;
            if (awr == null) return;
            int _gb = awr.GroupBase;
            string m = "";
            if (_gb == 7)
                m = "七";
            else if (_gb == 5)
                m = "五";
            else if (_gb == 2)
                m = "二";
            else if (_gb == 3)
                m = "三";
            else if (_gb == 4)
                m = "四";
            else if (_gb == 6)
                m = "六";

            //this.xrTableCell4.Text = "合格\r\n(全"+m+"件)";
            //this.xrTableCell4.Font = new System.Drawing.Font("华文楷体", 8.25F, System.Drawing.FontStyle.Bold);

            //if (Flag == "A")
            //    xrTableCell34.Text = "巡審定總次數\r\nMobile Examine";
            //else
            //    xrTableCell34.Text = "巡審查總次數\r\nMobile Examine";
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.xrDT.Text = QueryDate;

            xrFac.Text = Factory;
            xrDT.Text = QueryDate + " ~ "+ToDate ;

            //if (Flag == "A")
            //{
            //    xrLabel1.Text = "工場表現分析報告 - 巡審定";
       
            //}
            //else
            //{
            //    xrLabel1.Text = "工場表現分析報告 - 巡審查";
            //}
        }

        private void rptWorkShopAnalysis_Group_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }




    //class ObjectPropertyCompare<T> : System.Collections.Generic.IComparer<T>
    //{

    //    private PropertyDescriptor _property;
    //    public PropertyDescriptor property
    //    {
    //        get { return _property; }
    //        set { _property = value; }
    //    }



    //    private ListSortDirection _direction;
    //    public ListSortDirection direction
    //    {
    //        get { return _direction; }
    //        set { _direction = value; }
    //    }

    //    public ObjectPropertyCompare()
    //    { }

    //    public ObjectPropertyCompare(PropertyDescriptor prop, ListSortDirection direction)
    //    {
    //        _property = prop;
    //        _direction = direction;
    //    }

    //    public int Compare(T x, T y)
    //    {

    //        object xValue = x.GetType().GetProperty(property.Name).GetValue(x, null);
    //        object yValue = y.GetType().GetProperty(property.Name).GetValue(y, null);

    //        int returnValue;

    //        if (xValue == null && yValue == null)
    //        {
    //            returnValue = 0;
    //        }
    //        else if (xValue == null)
    //        {
    //            returnValue = -1;
    //        }
    //        else if (yValue == null)
    //        {
    //            returnValue = 1;
    //        }
    //        else if (xValue is IComparable)
    //        {
    //            returnValue = ((IComparable)xValue).CompareTo(yValue);
    //        }
    //        else if (xValue.Equals(yValue))
    //        {
    //            returnValue = 0;
    //        }
    //        else
    //        {
    //            returnValue = xValue.ToString().CompareTo(yValue.ToString());
    //        }

    //        if (direction == ListSortDirection.Ascending)
    //        {
    //            return returnValue;
    //        }
    //        else
    //        {
    //            return returnValue * -1;
    //        }

    //    }
    //}


    //public class BindingCollection<T> : BindingList<T>
    //{
    //    protected override bool SupportsSortingCore
    //    {
    //        get { return true; }
    //    }

    //    protected override bool SupportsSearchingCore
    //    {
    //        get { return true; }
    //    }

    //    private bool isSortedCore = true;
    //    protected override bool IsSortedCore
    //    {
    //        get
    //        {
    //            return isSortedCore;
    //        }
    //    }

    //    private ListSortDirection sortDirectionCore = ListSortDirection.Ascending;
    //    protected override ListSortDirection SortDirectionCore
    //    {
    //        get
    //        {
    //            return sortDirectionCore;
    //        }
    //    }

    //    private PropertyDescriptor sortPropertyCore = null;
    //    protected override PropertyDescriptor SortPropertyCore
    //    {
    //        get
    //        {
    //            return sortPropertyCore;
    //        }
    //    }

    //    protected override void ApplySortCore(PropertyDescriptor prop, ListSortDirection direction)
    //    {
    //        List<T> items = this.Items as List<T>;

    //        if (items != null)
    //        {
    //            ObjectPropertyCompare<T> pc = new ObjectPropertyCompare<T>(prop, direction);
    //            items.Sort(pc);
    //            isSortedCore = true;
    //            sortDirectionCore = direction;
    //            sortPropertyCore = prop;
    //        }
    //        else
    //        {
    //            isSortedCore = false;
    //        }

    //        this.OnListChanged(new ListChangedEventArgs(ListChangedType.Reset, -1));
    //    }

    //    protected override void RemoveSortCore()
    //    {
    //        isSortedCore = false;
    //        this.OnListChanged(new ListChangedEventArgs(ListChangedType.Reset, -1));
    //    }
    //}

    ///**************************************************************************/


    //public class SortableBindingList<T> : BindingList<T>
    //{
    //    private readonly Dictionary<Type, PropertyComparer<T>> comparers;
    //    private bool isSorted;
    //    private ListSortDirection listSortDirection;
    //    private PropertyDescriptor propertyDescriptor;
 
    //    public SortableBindingList()
    //        : base(new List<T>())
    //    {
    //        this.comparers = new Dictionary<Type, PropertyComparer<T>>();
    //    }
 
    //    public SortableBindingList(IEnumerable<T> enumeration)
    //        : base(new List<T>(enumeration))
    //    {
    //        this.comparers = new Dictionary<Type, PropertyComparer<T>>();
    //    }
 
    //    protected override bool SupportsSortingCore
    //    {
    //        get { return true; }
    //    }
 
    //    protected override bool IsSortedCore
    //    {
    //        get { return this.isSorted; }
    //    }
 
    //    protected override PropertyDescriptor SortPropertyCore
    //    {
    //        get { return this.propertyDescriptor; }
    //    }
 
    //    protected override ListSortDirection SortDirectionCore
    //    {
    //        get { return this.listSortDirection; }
    //    }
 
    //    protected override bool SupportsSearchingCore
    //    {
    //        get { return true; }
    //    }
 
    //    protected override void ApplySortCore(PropertyDescriptor property, ListSortDirection direction)
    //    {
    //        List<T> itemsList = (List<T>)this.Items;
 
    //        Type propertyType = property.PropertyType;
    //        PropertyComparer<T> comparer;
    //        if (!this.comparers.TryGetValue(propertyType, out comparer))
    //        {
    //            comparer = new PropertyComparer<T>(property, direction);
    //            this.comparers.Add(propertyType, comparer);
    //        }
 
    //        comparer.SetPropertyAndDirection(property, direction);
    //        itemsList.Sort(comparer);
 
    //        this.propertyDescriptor = property;
    //        this.listSortDirection = direction;
    //        this.isSorted = true;
 
    //        this.OnListChanged(new ListChangedEventArgs(ListChangedType.Reset, -1));
    //    }
 
    //    protected override void RemoveSortCore()
    //    {
    //        this.isSorted = false;
    //        this.propertyDescriptor = base.SortPropertyCore;
    //        this.listSortDirection = base.SortDirectionCore;
 
    //        this.OnListChanged(new ListChangedEventArgs(ListChangedType.Reset, -1));
    //    }
 
    //    protected override int FindCore(PropertyDescriptor property, object key)
    //    {
    //        int count = this.Count;
    //        for (int i = 0; i < count; ++i)
    //        {
    //            T element = this[i];
    //            if (property.GetValue(element).Equals(key))
    //            {
    //                return i;
    //            }
    //        }
 
    //        return -1;
    //    }
    //}

    //public class PropertyComparer<T> : IComparer<T>
    //{
    //    private readonly IComparer comparer;
    //    private PropertyDescriptor propertyDescriptor;
    //    private int reverse;

    //    public PropertyComparer(PropertyDescriptor property, ListSortDirection direction)
    //    {
    //        this.propertyDescriptor = property;
    //        Type comparerForPropertyType = typeof(Comparer<>).MakeGenericType(property.PropertyType);
    //        this.comparer = (IComparer)comparerForPropertyType.InvokeMember("Default", BindingFlags.Static | BindingFlags.GetProperty | BindingFlags.Public, null, null, null);
    //        this.SetListSortDirection(direction);
    //    }

    //    #region IComparer<T> Members

    //    public int Compare(T x, T y)
    //    {
    //        return this.reverse * this.comparer.Compare(this.propertyDescriptor.GetValue(x), this.propertyDescriptor.GetValue(y));
    //    }

    //    #endregion

    //    private void SetPropertyDescriptor(PropertyDescriptor descriptor)
    //    {
    //        this.propertyDescriptor = descriptor;
    //    }

    //    private void SetListSortDirection(ListSortDirection direction)
    //    {
    //        this.reverse = direction == ListSortDirection.Ascending ? 1 : -1;
    //    }

    //    public void SetPropertyAndDirection(PropertyDescriptor descriptor, ListSortDirection direction)
    //    {
    //        this.SetPropertyDescriptor(descriptor);
    //        this.SetListSortDirection(direction);
    //    }
    //}


}
