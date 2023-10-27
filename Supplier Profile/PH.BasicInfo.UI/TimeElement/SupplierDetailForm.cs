using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;
using PH.Platform.Misc.BO;
using PH.BasicInfo.BackEnd.TimeElement.Report;


namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SupplierDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region
        private SupplierProfile _SupplierProfile
        {
            get
            {
                return (this.BindingSource.Current as SupplierProfile);

            }
        }

        //Xsj20110406:用于标识是否是POPC还是MIDc的维护功能
        public string CurrSupplierType { get; set; }


        private List<SupplierProductRange> SaveSupplierProductRange;
        private string isCanAutoInsertTag = "no";
        private string MaterialGroup = "";

        #endregion
        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            if (ClsFun.GetUserRight(this.MenuID, "EditGreenTxt"))
            {
                Txt_Address.Properties.ReadOnly = false;
                Txt_alphaSequenceField.Properties.ReadOnly = false;
                Txt_CreateDate.Properties.ReadOnly = false;
                Txt_Currency.Properties.ReadOnly = false;
                Txt_Fax.Properties.ReadOnly = false;
                Txt_PostCode.Properties.ReadOnly = false;
                Txt_SupplierName.Properties.ReadOnly = false;
                Txt_TEL.Properties.ReadOnly = false;
                dimensionNoTextEdit.Properties.ReadOnly = false;
                itemColorTextEdit.Properties.ReadOnly = false;
                supplierGroupTextEdit.Properties.ReadOnly = false;
            }
            else
            {
                Txt_Address.Properties.ReadOnly = true;
                Txt_alphaSequenceField.Properties.ReadOnly = true;
                Txt_CreateDate.Properties.ReadOnly = true;
                Txt_Currency.Properties.ReadOnly = true;
                Txt_Fax.Properties.ReadOnly = true;
                Txt_PostCode.Properties.ReadOnly = true;
                Txt_SupplierName.Properties.ReadOnly = true;
                Txt_TEL.Properties.ReadOnly = true;
                dimensionNoTextEdit.Properties.ReadOnly = true;
                itemColorTextEdit.Properties.ReadOnly = true;
                supplierGroupTextEdit.Properties.ReadOnly = true;
            }

        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();

        }
        public override void DataBind()
        {
            //指定子表數據源
            //this.ShipmentLeadtimeListForm1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).ShipmentLeadtimes; //ShipmentLeadtimes;
            //this.ShipmentLeadtimeListForm1.EditorTypeName = typeof(ShipmentLeadtimeDetailForm).FullName;
            this.dimensionDetailListForm1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).MaterialTypeDimensions;
            this.dimensionDetailListForm1.EditorTypeName = typeof(DimensionDetailForm).FullName;
            this.SupplierProductRangeListForm1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).SupplierProductRanges;  //SupplierProductRanges;
            this.SupplierProductRangeListForm1.EditorTypeName = typeof(SupplierProductRangeDetailForm).FullName;

            //Xsj101026:添加Performance的數據源
            this.performanceListForm1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).Performances;  //performanceListForm;
            this.performanceListForm1.EditorTypeName = typeof(PerformanceDetailForm).FullName;

            //this.childListx1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).IncontermsTransits.Where(S=>S.ToEffectivedDate==null || S.ToEffectivedDate>=DateTime.Now);

            //根据父页面的菜单参数，决定是POPC还是MIDc的维护功能，从而决定显示xtraTabPage7(POPC)还是xtraTabPage10(MIDc)
            SupplierListForm supListFrm = this.PrevForm as SupplierListForm;

            if (supListFrm != null)
            {
                this.CurrSupplierType = supListFrm.SupplierType;
                if (string.IsNullOrEmpty(this.CurrSupplierType))
                {
                    //POPC
                    this.childListx1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).IncontermsTransits;
                    this.childListx1.EditorTypeName = typeof(ChildListXEditFrm).FullName;
                    this.childListx1.SuppLookUpEdit.DataSource = (this.BindingSource.Current as SupplierProfile).SupplierFactories;
                    this.xtraTabPage7.PageVisible = true;
                    this.xtraTabPage10.PageVisible = false;
                }
                else if (this.CurrSupplierType.ToUpper() == "MIDC")
                {
                    //MIDc
                    this.childListx2.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).IncontermsTransitForMIDcs;
                    this.childListx2.EditorTypeName = typeof(ChildListXEditFrm).FullName;
                    this.childListx2.SuppLookUpEdit.DataSource = (this.BindingSource.Current as SupplierProfile).SupplierFactories;
                    this.xtraTabPage7.PageVisible = false;
                    this.xtraTabPage10.PageVisible = true;
                }
            }

            this.suppListForm1.DataSource = (this.BindingSource.Current as SupplierProfile).SupplierFactories;
            this.transitModeListForm1.DataSource = (this.BindingSource.Current as SupplierProfile).TransitModeTransitPointChanges;
            base.DataBind();
            this.transitModeListForm1.EditorTypeName = typeof(TransitModeDetailForm).FullName;
            this.suppListForm1.EditorTypeName = typeof(SupplierFactoryDetailForm).FullName;
            deliveryTermsLookUpEdit.Properties.DataSource = (this.DataContext as BasicInfoDataContext).Incoterms;
            widthSpecLookUpEdit.Properties.DataSource = (this.DataContext as BasicInfoDataContext).POFormNos.OrderBy(p => p.SeqNo);

            //Xsj101230:添加TransitMode功能
            //this.miDcTransitListForm1.DataSource = (this.BindingSource.Current as SupplierProfile).MIDcTransits;
            //this.miDcTransitListForm1.EditorTypeName =  typeof(MIDcTransitDetailForm).FullName; 

            //設置可以修改Invoice Matching DDD和Payment Terms DDD增加多少天的權限
            Auth_FunRight SetDDDDaysRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "SetDDDDays");
            invoiceMatchingDDDAddDaysLabel.Visible = paymentDDDAddDaysLabel.Visible = invoiceMatchingDDDAddDaysSpinEdit.Visible = paymentDDDAddDaysSpinEdit.Visible = (SetDDDDaysRight != null);

        }
        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            (this.BindingSource.Current as SupplierProfile).DeleteFlag = true;
            (this.BindingSource.Current as SupplierProfile).DeletedBy = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            (this.DataContext as BasicInfoDataContext).SubmitChanges();
        }

        public SupplierDetailForm()
        {
            InitializeComponent();

            PHPlatformMiscDataContext BasicInfoDataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            supplierGrpLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGrp").OrderBy(E => E.DataCode);
            //widthSpecLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec").OrderBy(E => E.DataCode);

            activeLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierStatus").OrderBy(E => E.DataCode);
            businessNatureLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.BusinessNature").OrderBy(E => E.DataCode);
            MultiplepxpolicylookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.Multiplepxpolicy").OrderBy(E => E.DataCode);
            shipModeComboBoxEdit.Properties.Items.AddRange(BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TransitMode").Select(S => S.DataName).ToArray());

            supplierGroupLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGroup").OrderBy(E => E.DataCode);

            //Xsj20151005:add for china custom
            //tradeMethodLookUpEdit.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TradeMethod").OrderBy(E => E.DataCode);

            //由David修改 2022-04-21
            BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
            tradeMethodLookUpEdit.Properties.DataSource = db.TradeMethods.OrderBy(p => p.SeqNo);

            //由David增加 2023-02-06
            txtSupplierGroupMainDiff.Properties.Items.Clear();
            var CoGroupMainDiffList = db.CoGroupMainDiffs.OrderBy(p => p.SeqNo).Select(p => p.Description);
            foreach (var obj in CoGroupMainDiffList)
            {
                txtSupplierGroupMainDiff.Properties.Items.Add(obj);
            }
        }

        protected override void OnClickCancel()
        {
            this.textEdit1.Focus();
            ReturnSaveSupplierProductRange();//this._SupplierProfile.MaterialGroup = SaveMaterilGroup;
            base.OnClickCancel();

        }

        protected override void SaveCurrent()
        {
            Controller.PostGridValue(this.SupplierProductRangeListForm1.objListGridView);
            //Controller.PostGridValue(this.ShipmentLeadtimeListForm1.objListGridView);
            this.BindingSource.EndEdit();


            //修改BankCharge或StockInterest时自动计算EstInterest, 由David加入 2023-02-03
            SupplierProfile obj = this.BindingSource.Current as SupplierProfile;
            obj.EstInterest = (obj.BankCharge ?? 0) + (obj.StockInterest ?? 0);
            this.BindingSource.ResetCurrentItem();

            if ((obj.Rank ?? 0) == 0) obj.Rank = null;

            obj.ReplaceEmptyStringToNullValue();
            //if (string.IsNullOrEmpty(obj.SupplierGroup)) obj.SupplierGroup = null;



            base.SaveCurrent();

        }

        protected override void OnClickSaveAndReturn()
        {
            Controller.PostGridValue(this.SupplierProductRangeListForm1.objListGridView);
            //Controller.PostGridValue(this.ShipmentLeadtimeListForm1.objListGridView);
            base.OnClickSaveAndReturn();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            //Xsj100924:銷定Processing頁簽的輸入狀態
            LockProcessingCtrl();
        }


        //Xsj100924:銷定Processing頁簽的輸入狀態
        private void LockProcessingCtrl()
        {
            this.txtPreparePerson.Properties.ReadOnly = true;
            this.txtPrepareDate.Properties.ReadOnly = true;
            this.txtConfirmPerson.Properties.ReadOnly = true;
            this.txtConfirmDate.Properties.ReadOnly = true;
            this.txtApprovalPerson.Properties.ReadOnly = true;
            this.txtApprovalDate.Properties.ReadOnly = true;

            this.txtLastPreparePerson.Properties.ReadOnly = true;
            this.txtLastPrepareDate.Properties.ReadOnly = true;
            this.txtLastConfirmPerson.Properties.ReadOnly = true;
            this.txtLastConfirmDate.Properties.ReadOnly = true;
            this.txtLastApprovalPerson.Properties.ReadOnly = true;
            this.txtLastApprovalDate.Properties.ReadOnly = true;
        }


        private void ReturnSaveSupplierProductRange()
        {
            int count = this.SupplierProductRangeListForm1.BindingSource.Count;
            for (int i = 0; i < count; i++)
            {
                this.SupplierProductRangeListForm1.BindingSource.RemoveAt(0);//.Remove(obj);            
            }

            foreach (SupplierProductRange obj in this.SaveSupplierProductRange)
            {
                SupplierProductRange newobj = new SupplierProductRange();
                newobj.MaterialGroup = obj.MaterialGroup;
                newobj.ProductRange = obj.ProductRange;
                newobj.IsSelect = obj.IsSelect;
                this.SupplierProductRangeListForm1.BindingSource.Add(newobj);
            }
            this._SupplierProfile.MaterialGroup = this.MaterialGroup;
            this.textEdit1.Focus();

        }

        void MIDc_SupplierProfileDetailForm_Load(object sender, EventArgs e)
        {
            SaveSupplierProductRange = new List<SupplierProductRange>();
            MaterialGroup = this._SupplierProfile.MaterialGroup;
            foreach (SupplierProductRange obj in this._SupplierProfile.SupplierProductRanges)   //SupplierProductRanges
            {
                SupplierProductRange newobj = new SupplierProductRange();
                newobj.MaterialGroup = obj.MaterialGroup;

                newobj.ProductRange = obj.ProductRange;
                newobj.IsSelect = obj.IsSelect;
                SaveSupplierProductRange.Add(newobj);

            }

            CurrenciesList cl = new CurrenciesList();
            //Currency
            this.Txt_Currency.Properties.DataSource = cl.GetAllCurrencies();
            this.Txt_Currency.Properties.DisplayMember = "Currency1";
            this.Txt_Currency.Properties.ValueMember = "Currency1";
            LookUpColumnInfoCollection coll = this.Txt_Currency.Properties.Columns;
            coll.Add(new LookUpColumnInfo("Currency1", "Currency", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            Misc_DataDictionaryByDataTypeList mdl = new Misc_DataDictionaryByDataTypeList();
            var lists = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.PaymentTerms").ToList();
            lists.Insert(0, null);
            this.lookUpEdit2.Properties.DataSource = lists;
            this.lookUpEdit2.Properties.DisplayMember = "DataCode";
            this.lookUpEdit2.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit2.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "PaymentTerms", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            lookUpEditUnofficialPaymentTerms.Properties.DataSource = lists;
            lookUpEditUnofficialPaymentTerms.Properties.DisplayMember = "DataCode";
            lookUpEditUnofficialPaymentTerms.Properties.ValueMember = "DataCode";
            coll = lookUpEditUnofficialPaymentTerms.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "PaymentTerms", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Payment method
            this.lookUpEdit5.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.POPC.PaymentMethod");
            this.lookUpEdit5.Properties.DisplayMember = "DataCode";
            this.lookUpEdit5.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit5.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "PaymentCode", 0));
            coll.Add(new LookUpColumnInfo("DataName", "Description", 0));

            //MaterialGroup
            this.com_MaterialGroup.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.MaterialGroup");
            this.com_MaterialGroup.Properties.DisplayMember = "DataCode";
            this.com_MaterialGroup.Properties.ValueMember = "DataCode";
            coll = this.com_MaterialGroup.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "MaterialGroup", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));


            this.com_MaterialGroup.GotFocus += new EventHandler(com_MaterialGroup_GotFocus);
            this.com_MaterialGroup.EditValueChanged += new EventHandler(com_MaterialGroup_EditValueChanged);
            this.com_MaterialGroup.LostFocus += new EventHandler(com_MaterialGroup_LostFocus);


            dimensionLookUpEdit.Properties.DataSource = (this.DataContext as BasicInfoDataContext).Dimensions.OrderBy(E => E.Seq);

            //Xsj100924:鎖定Processing頁簽的輸入
            LockProcessingCtrl();

        }

        void com_MaterialGroup_GotFocus(object sender, EventArgs e)
        {
            isCanAutoInsertTag = "ok";
        }

        void com_MaterialGroup_LostFocus(object sender, EventArgs e)
        {
            isCanAutoInsertTag = "no";
        }

        //void btnTranslate2POPC_Click(object sender, EventArgs e)
        //{
        //    PH.BasicInfo.BO.BasicInfoDataContext context = ContextBuilder.CreateContext<BasicInfoDataContext>();
        //    foreach (ShipmentLeadtime lt in this._SupplierProfile.ShipmentLeadtimes)   //ShipmentLeadtimes
        //    {
        //        string sql = string.Format("exec [PH.POPC]..sp_updateLeadtime_single '{0}','{1}','{2}','{3}',{4}",
        //            lt.ERPSupplier, lt.MaterialGroup, lt.ShipMode, lt.Factory, lt.Leadtime);
        //        context.ExecuteCommand(sql);
        //    }
        //    MessageBox.Show("OK.");

        //}       

        void com_MaterialGroup_EditValueChanged(object sender, EventArgs e)
        {
            this.SupplierProductRangeListForm1.BindingSource.DataSource = (this.BindingSource.Current as SupplierProfile).SupplierProductRanges.Where(P => P.MaterialGroup == com_MaterialGroup.Text);
        }

        private void barBtnERP_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SupplierProfile CurSupp = this.BindingSource.Current as SupplierProfile;
            var ERPList = (this.DataContext as BasicInfoDataContext).GetERPSupplier(this.Txt_ERPCode.Text);
            foreach (GetERPSupplierResult ep in ERPList)
            {
                CurSupp.SupplierName = ep.ERPSupplierName.Trim();
                CurSupp.Address = string.Format("{0} {1} {2} {3} {4}", ep.Address1.Trim(), ep.Address2.Trim(), ep.Address3.Trim(), ep.Address4.Trim(), ep.Address5.Trim()).Trim();
                CurSupp.AlphaSequenceField = ep.AlphaSequenceField.Trim();
                CurSupp.Currency = ep.Currency.Trim();
                CurSupp.PaymentMethod = ep.PaymentMethod.Trim();
                //CurSupp.PaymentTerms = ep.PaymentTermsDays.ToString();
                CurSupp.Fax = ep.FAX.Trim();
                CurSupp.PostCode = ep.PostCode1.Trim();
                CurSupp.TEL = ep.TEL.Trim();
                //CurSupp.Country = ep.CountryCode.Trim();                
            }
        }

        private void btnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SupplierProfile curSupp = this.BindingSource.Current as SupplierProfile;
            if (curSupp == null) return;
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport();
            Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            string Sql = string.Format("ERPSupplier='{0}'", curSupp.ERPSupplier);
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();
        }

        private void widthSpecLookUpEdit_Closed(object sender, ClosedEventArgs e)
        {
            POFormNo obj = (this.DataContext as BasicInfoDataContext).POFormNos.FirstOrDefault(p => p.SeqNo == this.widthSpecLookUpEdit.EditValue.ToString());
            txtPOFormType.Text = obj == null ? null : obj.Code;
        }


        //private void lookUpEdit2_CustomDisplayText(object sender, CustomDisplayTextEventArgs e)
        //{
        //    //if (string.IsNullOrEmpty(e.DisplayText))
        //    //{
        //    //    SupplierProfile obj = this.BindingSource.Current as SupplierProfile;
        //    //    if (obj != null)
        //    //        e.DisplayText = obj.PaymentTerms;
        //    //}
        //}


    }
}
