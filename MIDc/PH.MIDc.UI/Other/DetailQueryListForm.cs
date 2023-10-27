using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.MIDc.BO;
using System.Reflection;
using DevExpress.XtraGrid.Views.Grid;
using PH.Platform.UI.CS.DataQuery;
using PH.Platform.AuthMgr.BO;
using PH.Platform.BO;


namespace PH.MIDc.UI
{
    public partial class DetailQueryListForm : DetailListForm
    {
        #region
        private PH.MIDc.BO.MIDcDataContext _context;
        private List<Detail> Details;
        private bool IsHaveSave = false;//是否需要
        private DevExpress.Utils.WaitDialogForm dlg = null;
        #endregion

        public DetailQueryListForm()
        {
            InitializeComponent();
            Details = new List<Detail>();
            //this.AllowAddRow = false;
        }
        public DetailQueryListForm(string midcStatus)
            : this()
        {
            this.MIDStatus = midcStatus;
        }

        public override void DataBind()
        {
            //this.barShowDrop.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            _context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = _context;
            this.BindingSource.DataSource = typeof(Detail);
           
            PrepareQueryData();

            this.SetColumnVisibleByStatus();
            this.AllowAddRow = false;
            base.DataBind();

            //(result.View as GridView).OptionsView.NewItemRowPosition = NewItemRowPosition.None;
            //this.objListGridView.OptionsView.NewItemRowPosition = NewItemRowPosition.None;
        }

        void PrepareQueryData()
        {
            DataQueryParameter result = new DataQueryParameter();
            result.BoType = typeof(PH.MIDc.BO.Detail);
            result.View = this.objListGridView;
            result.DataContext = this.DataContext;
            //result.FixedWherePart = " MIDStatus <> 'TMID-WIP' ";

            bool NeedShowDropStatus = Convert.ToBoolean(this.barShowDrop.EditValue);
            if (NeedShowDropStatus)
            {
                result.FixedWherePart = " MIDStatus <> 'TMID-WIP'";
            }
            else
            {
                result.FixedWherePart = " MIDStatus <> 'TMID-WIP' and Status <> 'Drop'  ";
            }
            result.WarnRecord = 100;
            this.StartEnquiry(result);
        }

        private void SetColumnVisibleByStatus()
        {
            switch (MIDStatus)
            {
                case "Spec":

                    break;
                case "Photo":
                    break;
                case "ColorCode":
                    btnListColor.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                    break;
                case "PatternLace":
                    this.colPattern.Visible = this.colLace.Visible = true;
                    break;
                default:
                    break;
            }
        }

        public void CreateWaitDialog(string caption, string title)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }

        public void CreateWaitDialog(string caption, string title, Size size)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
        }

        public void SetWaitDialogCaption(string fCaption)
        {
            if (dlg != null)
                dlg.Caption = fCaption;
        }

        public void ReleaseWaitDialog()
        {
            if (dlg != null) dlg.Close();
        }

        private void SelectData()
        {
            /*
            CreateWaitDialog("Please wait..","Loading MIDc Data");
            try
            {
                this.objListGridControl.DataSource = null;
                _context = ContextBuilder.CreateContext<MIDcDataContext>();
                _context.CommandTimeout = 6000; 
                this.DataContext = _context;
                var data = from detail in _context.Details
                           where (detail.MIDStatus != "NonApproved")
                           select detail;

               
                this.objListGridControl.DataSource = data;
                this.DataSource = data;

                foreach (PH.MIDc.BO.Detail d in this.BindingSource)
                {
                    if (d.Selected)
                        d.Selected = false;
                }
            }
            finally
            {
                ReleaseWaitDialog();
            }
          
            return;

            //-----------------------------------------------------------
            string suppref = editSuppRef.Text;
            string supprefTemp = suppref.StartsWith("%") ? suppref.Substring(1, suppref.Length - 1) : suppref;
            supprefTemp = supprefTemp.EndsWith("%") ? supprefTemp.Substring(0, supprefTemp.Length - 1) : supprefTemp;

            string materialType = editMaterialType.Text;
            string materialCode = editMaterialCode.Text;
            string sampleOrder = this.editSampleOrder.Text;
            string supp = this.editSupplier.Text;
            string status = this.editStatus.Text;
            int midStatus = this.editMIDStatus.SelectedIndex;
            DateTime bdt = this.editCreateDateFrom.DateTime;
            DateTime edt = this.editCreateDateTo.DateTime;
            if (bdt == DateTime.MinValue) bdt = edt;
            if (edt == DateTime.MinValue) edt = bdt;

            this.DataContext = _context;
            var objs = from detail in _context.Details
                       where (string.IsNullOrEmpty(suppref)
                                  || (suppref.StartsWith("%") && suppref.EndsWith("%") && detail.SuppRef.IndexOf(supprefTemp)>-1)
                                  || (suppref.StartsWith("%") && detail.SuppRef.EndsWith(supprefTemp))
                                  || (suppref.EndsWith("%") && detail.SuppRef.StartsWith(supprefTemp))
                                  || (detail.SuppRef == suppref))
                              && (string.IsNullOrEmpty(materialType) || detail.MaterialType == materialType)
                              && (string.IsNullOrEmpty(materialCode) || (IsEndWith(materialCode) ? detail.SuppRef.StartsWith(strOption(materialCode)) : detail.MaterialCode == materialCode))//(string.IsNullOrEmpty(materialCode) || detail.MaterialCode.StartsWith(materialCode))
                              && (string.IsNullOrEmpty(sampleOrder) || detail.SampleOrderNo == sampleOrder)
                              && (string.IsNullOrEmpty(supp) || detail.Supplier == supp)
                              && (string.IsNullOrEmpty(status) || detail.Status == status)
                              && (bdt == DateTime.MinValue || (detail.CreateDate >= bdt && detail.CreateDate <= edt))
                              && !(detail.MIDStatus == "NonApproved")
                       select detail;
          

            bool tag = false;
            if (IsHaveSave)
            {
                foreach (Detail obj in objs)
                {
                    foreach (Detail d in Details)
                    {
                        if (d.SuppRef == obj.SuppRef)
                        {
                            tag = true;
                            break;
                        }
                    }
                    if (!tag)
                    {
                        Details.Add(obj);
                        tag = false;
                    }
                }
                this.DataSource = from c in Details select c;

            }
            else
            {
                this.DataSource = from c in objs select c;
            }

            if (this.objListGridView.RowCount == 0)
            {
                MessageBox.Show("沒有查詢出符合條件數據！", "提示!");

            }

            */
        }

        private bool IsEndWith(string str)
        {
            if (str.EndsWith("%"))
                return true;
            else
                return false;
        }

        private string strOption(string str)
        {

            if (string.IsNullOrEmpty(str))
                return "";

            if (str.EndsWith("%") && str.Length > 2)
                return str.Substring(0, str.Length - 1);
            else
                return str;
        }

        void DetailQueryListForm_Load(object sender, EventArgs e)
        {
            this.AllowGridEdit = true;
            //this.AllowAddRow = false;
            this.objListGridView.OptionsBehavior.Editable = true;

            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
            {
                col.OptionsColumn.AllowEdit = true;
                if (col.FieldName == "Selected")
                    col.OptionsColumn.ReadOnly = false;
                else
                    col.OptionsColumn.ReadOnly = true;

            }

            if (_context == null)
            {
                _context = ContextBuilder.CreateContext<MIDcDataContext>();
            }
            _context.CommandTimeout = 6000;

            //IList<PH.Platform.AuthMgr.BO.Auth_FunRight> Rightlist = null;

            //if (Rightlist.Where(p => p == "IsHaveSave").FirstOrDefault() != null)
            //    this.IsHaveSave = true;


            //PH.Platform.Misc.BO.PHPlatformMiscDataContext context = 
            //this.editStatus.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.Status" select dictionaryData;
            //this.editStatus.Properties.DisplayMember = "DataCode";
            //this.editStatus.Properties.ValueMember = "DataCode";
            //LookUpColumnInfoCollection coll = this.editStatus.Properties.Columns;
            //coll.Add(new LookUpColumnInfo("DataCode", "Status", 0));
            //coll.Add(new LookUpColumnInfo("Description", "Description", 0));

        }

        ///// <summary>
        ///// Function Right List
        ///// </summary>
        //public IList<PH.Platform.AuthMgr.BO.Auth_FunRight> FunctionRightList
        //{
        //    get
        //    {
        //        return PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(1041); 
        //    }
        //}
        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="funcname"></param>
        ///// <returns></returns>
        //private Auth_FunRight GetRight(string funcname)
        //{
        //    return FunctionRightList.Where(p => p.FunRight == funcname);
        //}

        void editSupplier_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

        }

        void editMaterialType_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

        }

        void simpleButton1_Click(object sender, EventArgs e)
        {
            // PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = _context;
            this.DataSource = from detail in _context.Details select detail;
            //this.DetailListForm1.BindingSource.ResetCurrentItem();
        }

        void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SelectData();
        }

        void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                SelectData();
            }
        }

        void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.DataContext = null;
            //this.DataSource = null;

            this.DataSource = from detail in _context.Details
                              where detail.SuppRef == "~@#$%^&*"
                              select detail;

            //this.DataSource = from detail in _context.Details
            //                  where (string.IsNullOrEmpty(suppref) || detail.SuppRef.StartsWith(suppref))                            
            //                  select detail;
            Details.Clear();

        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.objListGridView.OptionsView.NewItemRowPosition = NewItemRowPosition.None;
        }

        private void btnListColor_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.BindingSource.DataSource = null;
            string columns = @"[SampleOrderNo],[MaterialType],[MaterialCode],[SuppRef],[Status],[MIDStatus],[CreateDate],[PromoteUser],[PromoteDate],[Branded],
                                [Supplier],[Edging_Single],[Edging_DoubleScallops],[Commodity],[Pattern],[Lace],[Customer],[SpecialLabel],[SeasonNo],[RiskItem],
                                [Description],[Oeko],[ValueAdjustAddDyeing],[PriceIncrProtect],[UncertainQuality],[OthersBuffer],[WastageOnCAC],[Relaxtion],
                                [TargetPrice],[Gauge],[Composition],[Density],[GauagePerinch],[MinOrder],[MinColor],[MinStartProduct],[LastQtnRef],[LastQtnDate],
                                [QtnPriceValidityDays],[QtnPriceExpiryDate],[SubchargeOrder],[SubchargeShipMode],[DyeingMultiple],[PackUnit],[SubPackUnit],
                                [SubPackQty],[SubPackNo],[QAStatus],[YarnDays],[GeigeDays],[RunningDays],[ExclusiveBy],[LeadTimeHYCheck],[LeadTimeGeigeCheck],
                                [LeadTimeRunningCheck],[SupplierUnit],[PHUnit],[SupplierWidth],[UsableWidth],[MarkerWidth],[TubularWidth],[SupplierWidthS],
                                [UsableWidthS],[MarkerWidthS],[TubularWidthS],[WeightGmSqm],[WeightGmSqmS],[SuppM],[MarkerM],[TubularM],[RateToPHUnitBK],
                                [ScallopHeight],[PerCone],[Comments],[DataPreparedBy],[HangerDataPreparedBy],[Confirmed],[ConfirmedBy],[ConfirmDate],
                                [Approved],[ApprovedBy],[ApproveDate],[HangerPassed],[HangerPassedBy],[HangerPassedDate],[FormPassed],[FormPassedBy],
                                [FormPassedDate],[HsCode],[WeightHsCode],[ImageFile],[AllInPrice1],[SQMPrice1],[avgPrice_Supplier1],[AvgPrice_PH1],
                                [MaterialGroup],[DestinationPort],[RateToPHUnit1],[OrderShptLeadtime],[Photo],[TechWarp],[TechWept],[TechWarpF],
                                [TechWeptF],[DataPreparedDate],[Dimension],[LiabilityFollowUp],[HangerDataPreparedDate],[SizeMatrix],[Version],
                                [AmendmentNo],[Hanger],[YieldUsage],[SingleRangeSize],[UnitForSize],[IsPurchaseItem],[Operation],[IsMultiPrice],
                                [MultiPriceOption],[Liability],[LiabilityForCustomer],[CustomerAppointed],[PurchaseWidthOption],[PurchaseWidth],
                                [HasSpecialPrice],[HasCustFavorPrice],[HasVolumePrice],[HasPeriodPrice],[TMIDCompleted],[TMIDCompletedBy],
                                [TMIDCompletedDate],[PMIDWIP],[PMIDWIPBy],[PMIDWIPDate],[PMIDCompleted],[PMIDCompletedBy],[PMIDCompletedDate]";

            string sql = string.Format(@"select {0} from detail a1
                where exists
                (select b1.* from
                    (select distinct b.suppref
                    from dbo.detail b 
                    inner join ColorDetail a on a.suppref=b.suppref
                    where a.color<>'ALL' and midstatus<>'TMID-WIP'
                    and not exists (select * from SubColorDetail c where a.suppref=c.suppref and a.Color=c.Color)
                    ) b1
                where a1.suppref=b1.suppref
                ) ", columns);

            var details = _context.ExecuteQuery<Detail>(sql);
            //var aa = from a in _context.Details
            //         from b in a.ColorDetails
            //         //from c in _context.SubColorDetails
            //         where b.Color != "ALL" && a.MIDStatus != "TMID-WIP" && !b.SubColorDetails.Any()
            //         select a;
            this.BindingSource.DataSource = details;
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

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {

        }

        protected override void OnClickFind()
        {
            PrepareQueryData();
            base.OnClickFind();
        }

    }
}

