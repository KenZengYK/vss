using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.BO;
using System.Reflection;

namespace PH.MIDc.UI
{
    public partial class SampleOrderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SampleOrderListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            this.EditorTypeName = typeof(SampleOrderDetailForm).FullName;

            //Xsj100811--格式化當前控件的所有時間編輯子控件的格式
            Controller.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

        }

        /// <summary>
        /// Xsj20120227:度應Jane Lai的要求，為滿足王生對操作的意見。在該窗體中顯示三種訂單的審核狀態資料：
        /// 1. ALL：不管訂單狀態是什麼，都顯示出來.
        /// 2. WIP：顯示訂單的Detail資料中，只要有一個款沒有被王太approved的，都顯示於此.
        /// 3. Done：顯示訂單的Detail資料中所有款都被王太approved的.
        /// </summary>
        private enum MIDStatus
        {
            ALL = 1,
            WIP = 2,
            Done = 3
        }

        private MIDStatus _currMIDStatus = MIDStatus.ALL;

        public override void DataBind()
        {

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;

            DateTime dt = new DateTime(2005, 1, 1);

            ////Xsj100811--從SampleOrder表中取數據 
            //this.BindingSource.DataSource = from a in context.SampleOrders
            //                                where a.CreateDate >= dt
            //                                select a;             
            //base.DataBind();


            //Xsj100811--從SampleOrder表中取數據 
            DateTime nowTime = DateTime.Now;
            long halfYearLong = 186L * 10000L * 1000L * 24L * 60L * 60L;
            DateTime beforeHalfyearDt = nowTime.Subtract(new TimeSpan(halfYearLong));


            switch (this._currMIDStatus)
            {
                case MIDStatus.ALL:
                    this.lbl_MIDStatus.Text = "ALL";
                    this.BindingSource.DataSource = from a in context.SampleOrders
                                                    where (_showAllData || a.CreateDate >= dt)
                                                    select a;
                    break;
                case MIDStatus.WIP:
                    //Xsj:WIP和HALT狀態 
                    this.lbl_MIDStatus.Text = "Outstanding";
                    this.BindingSource.DataSource = from a in context.SampleOrders
                                                    where (_showAllData || a.CreateDate >= dt) &&
                                                    a.CreateDate > beforeHalfyearDt &&
                                                    (a.Details.Count > 0 ? a.Details.Where(p => p.Status != "Drop").Count() != 0 : true) &&
                                                    (a.Details.Count > 0 ? a.Details.Where(p => p.MIDStatus == "TMID-WIP").Count() != 0 : true)
                                                    select a;
                    break;
                case MIDStatus.Done:
                    //Xsj:應王生的要求，將Done改為Finished。對應的狀態有：Approval,Hanger,Drop,Cxl:
                    //Approval：做了TMID-Completed,PMID-WIP,PMID-Completed的
                    //Hanger:Dep Proj的CreateDate距今半年以上的，不管處於什麼狀態都屬於Approval狀態。
                    //Drop:Dep Proj所有Item的Status都為Drop的。
                    //Cxl:Dep Proj所有Item都被刪除的（即是沒有Item的） 
                    this.lbl_MIDStatus.Text = "Finished";
                    this.BindingSource.DataSource = from a in context.SampleOrders
                                                    where (_showAllData || a.CreateDate >= dt) &&
                                                    (
                                                        //Hanger
                                                        a.CreateDate < beforeHalfyearDt
                                                        ||
                                                        //Cxl
                                                        (a.CreateDate < beforeHalfyearDt && a.Details.Count() == 0)
                                                        ||
                                                        //Drop
                                                        a.Details.Where(p => p.Status != "Drop").Count() == 0
                                                        ||
                                                        //Approval
                                                        a.Details.Where(p => p.MIDStatus == "TMID-WIP").Count() == 0
                                                    )
                                                    select a;
                    break;
            }
            base.DataBind();
        }

        #region Xsj20120227:獲取不同類別的訂單資料

        private void sBtn_Filter_Click(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                DevExpress.XtraEditors.SimpleButton sBtn = sender as DevExpress.XtraEditors.SimpleButton;
                switch (sBtn.Tag.ToString().ToUpper())
                {
                    case "ALL":
                        this._currMIDStatus = MIDStatus.ALL;
                        break;
                    case "WIP":
                        this._currMIDStatus = MIDStatus.WIP;
                        break;
                    case "DONE":
                        this._currMIDStatus = MIDStatus.Done;
                        break;

                }
                DataBind();
            }
            catch
            {
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        #endregion

        private bool _showAllData;

        private void lbl_Condition_DoubleClick(object sender, EventArgs e)
        {
            _showAllData = !_showAllData;
            lbl_Condition.ForeColor = _showAllData ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        public override DevExpress.Utils.OptionsLayoutGrid SetOptionLayout()
        {
            //return base.SetOptionLayout();
            DevExpress.Utils.OptionsLayoutGrid opts = new DevExpress.Utils.OptionsLayoutGrid();
            opts.StoreAllOptions = false; //default is false;
            opts.StoreAppearance = false; //default is false;
            opts.StoreVisualOptions = true; //default is true;
            opts.StoreDataSettings = true; //default is true;
            opts.Columns.StoreAllOptions = false; //default is false;
            opts.Columns.StoreAppearance = false; //default is false;
            opts.Columns.StoreLayout = true; //defautl value is true

            opts.Columns.AddNewColumns = true; //default is true
            opts.Columns.RemoveOldColumns = true; //default is true
            return opts;
        }

        private void objListGridView_CustomColumnSort(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnSortEventArgs e)
        {
            if (e.Column.FieldName == "SampleOrderNo")
            {
                try
                {
                    //SampleOrder so1 = e.Column.View.GetRow(e.RowHandle1) as SampleOrder;
                    //SampleOrder so2 = e.Column.View.GetRow(e.RowHandle2) as SampleOrder;

                    //int i1 = Convert.ToInt32(so1.SampleOrderNo);
                    //int i2 = Convert.ToInt32(so2.SampleOrderNo);

                    int i1 = Convert.ToInt32(e.Value1);
                    int i2 = Convert.ToInt32(e.Value2);

                    e.Handled = true;
                    e.Result = i1 > i2 ? 1 : (i1 == i2 ? 0 : -1);
                }
                catch
                {
                    string s1 = Convert.ToString(e.Value1);
                    string s2 = Convert.ToString(e.Value2);

                    e.Handled = true;
                    int i = string.Compare(s1, s2);
                    e.Result = i > 0 ? 1 : (i == 0 ? 0 : -1);

                }

            }
        }

        //private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    List<string> NoFindList = new List<string>();
        //    List<string> BigList = new List<string>();
        //    List<string> SmaillList = new List<string>();

        //    MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
        //    var lists = db.Details.Where(p => p.HsCode == "6004101000003");
        //    foreach (var obj in lists)
        //    {
        //        CompositionDetail d = obj.CompositionDetails.FirstOrDefault(p => p.Composition == "ELASTANE");
        //        if (d == null)
        //        {
        //            NoFindList.Add(obj.SampleOrderNo);
        //        }
        //        else if (d.Per >= 5)
        //        {
        //            BigList.Add(obj.SampleOrderNo);
        //            obj.HSCodeBD = "60041000";
        //        }
        //        else if (d.Per < 5)
        //        {
        //            SmaillList.Add(obj.SampleOrderNo);
        //            obj.HSCodeBD = "60062200";
        //        }
        //    }

        //    int a = NoFindList.Count();
        //    int b = BigList.Count();
        //    int c = SmaillList.Count();

        //    db.SubmitChanges();
        //}

        //private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    List<string> NoFindList = new List<string>();
        //    List<string> FabricMoldedCupList = new List<string>();
        //    List<string> FoamCupList = new List<string>();

        //    MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
        //    var lists = db.Details.Where(p => p.HsCode == "6212101000009");
        //    foreach (var obj in lists)
        //    {
        //        if (obj.Description.ToUpper().Contains("FABRIC MOLED CUP"))
        //        {
        //            FabricMoldedCupList.Add(obj.SampleOrderNo);
        //        }
        //        else if (obj.Description.ToUpper().Contains("FOAM CUP"))
        //        {
        //            FoamCupList.Add(obj.SampleOrderNo);
        //        }
        //        else
        //        {
        //            NoFindList.Add(obj.SampleOrderNo);
        //        }


        //    }

        //    int a = NoFindList.Count();
        //    int b = FabricMoldedCupList.Count();
        //    int c = FoamCupList.Count();

        //    //db.SubmitChanges();
        //}

        //private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    List<string> NoFindList = new List<string>();
        //    List<string> PlasticList = new List<string>();
        //    List<string> MetaList = new List<string>();

        //    MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
        //    var lists = db.Details.Where(p => p.HsCode == "8308100000012");
        //    foreach (var obj in lists)
        //    {
        //        CompositionDetail d = obj.CompositionDetails.FirstOrDefault(p => p.Composition.ToUpper().Contains("PLASTIC"));
        //        if (d != null)
        //        {
        //            PlasticList.Add(obj.SampleOrderNo);
        //            //obj.HSCodeBD = "60041000";
        //        }
        //        else
        //        {
        //            d = obj.CompositionDetails.FirstOrDefault(p => p.Composition.ToUpper().Contains("METAL"));
        //            if (d != null)
        //            {
        //                MetaList.Add(obj.SampleOrderNo);
        //                //obj.HSCodeBD = "60041000";
        //            }
        //            else
        //            {
        //                NoFindList.Add(obj.SampleOrderNo);
        //            }

        //        }

        //    }

        //    int a = NoFindList.Count();
        //    int b = PlasticList.Count();
        //    int c = MetaList.Count();

        //    // db.SubmitChanges();
        //}

        //private void barButtonItem5_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
        //    string Str = "";

        //    List<string> NoFindList = new List<string>();
        //    List<string> BigList = new List<string>();
        //    List<string> WovenPrintedList = new List<string>();
        //    List<string> WovenNonPrintedList = new List<string>();
        //    List<string> KnitPrintedList = new List<string>();
        //    List<string> KnitNonPrintedList = new List<string>();

        //    MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
        //    var lists = db.Details.Where(p => p.HsCode == "6004104000091");
        //    foreach (var obj in lists)
        //    {
        //        CompositionDetail d = obj.CompositionDetails.FirstOrDefault(p => p.Composition == "ELASTANE");

        //        if (d == null)
        //        {
        //            NoFindList.Add(obj.SampleOrderNo);
        //            continue;
        //        }

        //        if (d.Per >= 5)
        //        {
        //            BigList.Add(obj.SampleOrderNo);
        //            obj.HSCodeBD = "60041000";
        //        }
        //        else if (d.Per < 5)
        //        {
        //            Str = obj.Description.ToUpper();
        //            if (Str.Contains("WOVEN"))
        //            {
        //                if (Str.Contains("PRINT"))
        //                {
        //                    WovenPrintedList.Add(obj.SampleOrderNo);
        //                    obj.HSCodeBD = "54075400";
        //                }
        //                else
        //                {
        //                    WovenNonPrintedList.Add(obj.SampleOrderNo);
        //                    obj.HSCodeBD = "54075200";
        //                }

        //            }
        //            else if (Str.Contains("Knit"))
        //            {
        //                if (Str.Contains("PRINT"))
        //                {
        //                    KnitPrintedList.Add(obj.SampleOrderNo);
        //                    obj.HSCodeBD = "60063400";
        //                }
        //                else
        //                {
        //                    KnitNonPrintedList.Add(obj.SampleOrderNo);
        //                    obj.HSCodeBD = "60063200";
        //                }
        //            }
        //            else
        //            {
        //                NoFindList.Add(obj.SampleOrderNo);
        //            }
        //        }
        //    }

        //    int a = NoFindList.Count();
        //    int b = BigList.Count();
        //    int c = WovenPrintedList.Count();
        //    int x = WovenNonPrintedList.Count();
        //    int y = KnitPrintedList.Count();
        //    int z = KnitNonPrintedList.Count();

        //    db.SubmitChanges();
        //}
    }
}
