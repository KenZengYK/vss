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
using PH.Common.Report;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class SampleOrderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        private SampleOrder _sampleOrder
        {
            get { return (SampleOrder)this.BindingSource.Current; }

        }

        public SampleOrderDetailForm()
        {
            InitializeComponent();
            this.DetailListForm1.EditorTypeName = typeof(DetailDetailForm).FullName;

        }

        protected override void OnClickEdit()
        {
            Controller.BindingControls(this.headerTitleBar, this.BindingSource);
            base.OnClickEdit();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.DetailListForm1.objListGridView.OptionsBehavior.Editable = true;
        }

        protected override void OnClickSaveAndReturn()
        {

            if (string.IsNullOrEmpty(_sampleOrder.SampleOrderNo))
            {
                //Xsj100813:調用序號生成方法
                _sampleOrder.SampleOrderNo = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderNo");// PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.MIDc.SampleOrder");

            }

            base.OnClickSaveAndReturn();

        }

        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            if (string.IsNullOrEmpty(_sampleOrder.SampleOrderNo))
            {
                _sampleOrder.SampleOrderNo = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.MIDc.SampleOrderNo");// PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.MIDc.SampleOrder");

            }

            base.SaveCurrent();
        }

        protected override void OnClickCancel()
        {

            // this.editSampleOrder.Leave -= new System.EventHandler(this.editSampleOrder_Leave);

            //Xsj100812:新增狀態下點擊取消按鈕,將清除裏插入的新記錄
            if (this.DataContext.GetChangeSet().Inserts.Contains(this.BindingSource.Current))
            {
                this.DataContext.GetTable<SampleOrder>().DeleteOnSubmit(this.BindingSource.Current as SampleOrder);
                this.BindingSource.Remove(this.BindingSource.Current);
                if (this.PrevForm != null)
                    this.PrevForm.BringToFront();
                return;
            }

            base.OnClickCancel();
        }

        /// <summary>
        /// Xsj100813:設置窗體的狀態
        /// </summary>
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.DetailListForm1.btnCopyAsNew.Enabled = this.DetailListForm1.btnClone.Enabled = this.IsEditting;
            if (this.IsNew)
                this.DetailListForm1.btnCopyAsNew.Enabled = this.DetailListForm1.btnClone.Enabled = false;
            this.editSampleOrder.Properties.ReadOnly = true;
        }

        /// <summary>
        /// Xsj100812:綁定數據源
        /// </summary>
        public override void DataBind()
        {
            this.DetailListForm1.EditorTypeName = typeof(DetailDetailForm).FullName;
            this.DetailListForm1.BindingSource.DataSource = this._sampleOrder.Details.Where(dr=>dr.Status !="Drop");
            //this.DetailListForm1.BindingSource.DataSource = this._sampleOrder.Details; 

            base.DataBind();
        }

        public void CurSaveData()
        {
            base.SaveData();
        }

        /// <summary>
        /// Xsj100812:綁定指定控件的預設值
        /// </summary>
        private void BindComboxData()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext sysDataContext = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            PH.BasicInfo.BO.BasicInfoDataContext basicInfoDataContext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>(); //new PH.BasicInfo.BO.BasicInfoDataContext();

            PH.MIDc.BO.MIDcDataContext midcDc = ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

            //Supplier
            SampleOrder sOrder = this.BindingSource.Current as SampleOrder;
            if (sOrder.BOWorkMode != PH.Platform.BO.Interface.WorkMode.New)
            {
                //Xsj20120418(補）：從SuppProfile中請取現有供應商的編號

                DateTime st = DateTime.Now;
                //this.lookUpEdit_Supp.Properties.DataSource = from supplier in basicInfoDataContext.SupplierProfiles
                //                                             select supplier;
                var suppList1 = (from val in midcDc.V_GetSupplierProfiles
                                 select val).ToList();


                DateTime et = DateTime.Now;

                System.Diagnostics.Debug.WriteLine(st.Ticks.ToString());
                System.Diagnostics.Debug.WriteLine(et.Ticks.ToString());
                System.Diagnostics.Debug.WriteLine((et.Ticks - st.Ticks).ToString());

                this.lookUpEdit_Supp.Properties.DataSource = suppList1;
            }
            else
            {
                #region Xsj2012-06-25為優化速度而注釋掉以下代碼並添加新代碼
                DateTime st = DateTime.Now;

                //List<PH.BasicInfo.BO.SupplierProfile> suppList = (from supplier in basicInfoDataContext.SupplierProfiles
                //                                                  select supplier).ToList();
                /////Xsj20120418(補）：新增資料時，不允許選擇已作刪除標志的供應商信息
                //List<PH.BasicInfo.BO.SupplierProfile> suppList1 = (from supplier in suppList
                //                                                   where (supplier.SupplierStatusDescription != null && supplier.SupplierStatusDescription.ToUpper() != "TO-DROP") && (!(supplier.DeleteFlag ?? false))
                //                                                   select supplier).ToList();



                var suppList1 = (from val in midcDc.V_GetSupplierProfiles
                                 where !(val.DeleteFlag ?? false) && val.SupplierStatusDescription.ToUpper() != "TO-DROP"
                                 select val).ToList();

                DateTime et = DateTime.Now;

                System.Diagnostics.Debug.WriteLine(st.Ticks.ToString());
                System.Diagnostics.Debug.WriteLine(et.Ticks.ToString());
                System.Diagnostics.Debug.WriteLine((et.Ticks - st.Ticks).ToString());

                #endregion


                this.lookUpEdit_Supp.Properties.DataSource = suppList1;
            }
            this.lookUpEdit_Supp.Properties.DisplayMember = "Supplier";
            this.lookUpEdit_Supp.Properties.ValueMember = "Supplier";
            LookUpColumnInfoCollection LookUpColumn = this.lookUpEdit_Supp.Properties.Columns;

            LookUpColumnInfo col0 = new LookUpColumnInfo("Supplier", "Supplier", 30);
            LookUpColumn.Add(col0);
            LookUpColumnInfo col = new LookUpColumnInfo("SupplierName", "Supplier Name", 100);
            LookUpColumn.Add(col);
            LookUpColumnInfo col2 = new LookUpColumnInfo("ERPSupplier", "ERPSupplier", 30);
            LookUpColumn.Add(col2);
            LookUpColumnInfo col3 = new LookUpColumnInfo("SupplierStatusDescription", "Status", 40);
            LookUpColumn.Add(col3);

            //Season
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in sysDataContext.Misc_DataDictionaries
                                                     where dictionaryData.DataType == "PH.MIDc.Season"
                                                     select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Season", 40));
            coll.Add(new LookUpColumnInfo("DataName", "Year", 40, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.Descending));
            coll.Add(new LookUpColumnInfo("Description", "Description", 120));

            //Xsj20120418:應王生的要求，依用戶選擇的SupplierCode動態生成"Byr Prod Site"下拉內容
            //this.comboBoxEdit_PHFactories.Properties.Items.Clear();
        }

        private bool isExistSampleOrderPo()
        {
            bool result = true;
            if (IsNew)
            {
                PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
                var aa = from bb in context.SampleOrders
                         where bb.SampleOrderNo == _sampleOrder.SampleOrderNo
                         select bb;

                foreach (SampleOrder obj in aa)
                {
                    MessageBox.Show("此SampleOrder已存在");
                    result = false;
                }


            }

            //Xsj20120604:嘗試改善數據庫連接穩定性而添加
            #region
            return result;
            #endregion

        }

        private void DoSupplierChanged(string oldSupplier, string newSupplier, bool bValid)
        {
            //if (oldSupplier == newSupplier) return;

            //if (bValid)
            //{
            //    PHISSupplierQuery query = new PHISSupplierQuery(newSupplier);
            //    MIDc_SupplierProfile supp = Controller.MIDcDB.Get<MIDc_SupplierProfile>(query);

            //    if (supp == null)
            //    {
            //        MessageBox.Show(string.Format("Supplier:{0} not found!", newSupplier), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
            //    }
            //}
            //this._sampleOrder.Supplier = newSupplier;
            //this._sampleOrder.GetSupplierProfile(this._sampleOrder.Supplier, Controller.MIDcDB);
            //this._sampleOrder.GetCurrency(this._sampleOrder.Currency, Controller.MIDcDB);
            //this.BindingSource.ResetCurrentItem();

            //foreach (MIDc_Detail d in this._sampleOrder.Details)
            //{
            //    if (d.Supplier != oldSupplier) continue;
            //    d.Supplier = newSupplier;
            //    d.Save(Controller.MIDcDB);
            //}
        }

        void SampleOrderDetailForm_Load(object sender, EventArgs e)
        {
            //Xsj100812:綁定指定編輯控件的預設值
            BindComboxData();
            //Xsj100812:用遞歸方式來綁定指定數據源的控件值
            Controller.BindingControls(this.headerTitleBar, this.BindingSource);
            //Xsj100812:用遞歸方式來格式化日期控件的值
            Controller.DateTimeFormatterControls(this.headerTitleBar, "yyyy'/'MM'/'dd");

            //Xsj20120612：為了解決數據庫的穩定性而添加
            this.comboBoxEdit_PHFactories.TextChanged += new EventHandler(comboBoxEdit_PHFactories_TextChanged);
            this.lookUpEdit_Supp.TextChanged += new EventHandler(lookUpEdit_Supp_TextChanged);

        }

        void editSupplier_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter) return;
            string newSupplier = this.editSampleOrder.Text;

            DoSupplierChanged(this._sampleOrder.Supplier, newSupplier, true);
        }

        //Xsj2011-03-18:打印Material DVP Summary報表
        void PrintSampleOrder_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.DetailListForm1.PostGridData();

            bool haveSelect = false;
            foreach (Detail d in this._sampleOrder.Details)
            {
                if (d.Selected)
                {
                    haveSelect = true;
                    break;
                }
            }
            if (!haveSelect)
            {
                MessageBox.Show("最少要選擇一個物料!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;

            }

            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            var aa = from a in context.SampleOrders
                     where a.SampleOrderNo == _sampleOrder.SampleOrderNo
                     select a;
            List<Detail> ds = _sampleOrder.Details.ToList();
            foreach (SampleOrder s in aa)
            {
                foreach (Detail d in s.Details)
                {
                    if (!haveSelect) d.Selected = true;
                    else
                    {
                        Detail d1 = ds.Find(delegate(Detail d2) { return d.SuppRef == d2.SuppRef; });
                        if (d1 != null) d.Selected = d1.Selected;
                    }
                }
            }
            List<SampleOrder> samples = aa.ToList();

            this.Cursor = Cursors.WaitCursor;
            //Xsj2011-03-11:打印報表
            //PrintHelper.PrintSampleOrder(samples);
            //注释掉上面的旧报表,打印如下新报表
            PH.MIDc.BackEnd.MaterialDvpSummaryRept MatlDvpSummaryRept = new PH.MIDc.BackEnd.MaterialDvpSummaryRept();
            //MatlDvpSummaryRept.DataSource = samples;
            MatlDvpSummaryRept.bindingSource1.DataSource = samples;
            if (e.Item.Tag != null && e.Item.Tag.ToString() == "ConnectPrint")
            {
                MatlDvpSummaryRept.AfterPrint += new EventHandler(MatlDvpSummaryRept_AfterPrint);
            }

            MatlDvpSummaryRept.ShowPreview();
            this.Cursor = Cursors.Default;

        }

        void MatlDvpSummaryRept_AfterPrint(object sender, EventArgs e)
        {
            PH.MIDc.BackEnd.MaterialDvpSummaryRept MatlDvpSummaryRept = sender as PH.MIDc.BackEnd.MaterialDvpSummaryRept;

            //Xsj20110927:实现MaterialDvpSummaryRept报表后面追加打印MaterialIdentityCertificateReport报表

            //List<PH.MIDc.BO.SampleOrder> sampleOrdrList = MatlDvpSummaryRept.bindingSource1.List as List<SampleOrder>;
            //foreach (PH.MIDc.BO.SampleOrder itemSampleOrder in sampleOrdrList)
            //{
            //    foreach (PH.MIDc.BO.Detail d in itemSampleOrder.Details)
            //    {
            //        if (!d.Selected) continue;
            //        MIDcDataContext dc = this.DataContext as MIDcDataContext;
            //        PH.MIDc.BackEnd.MaterialIdentityCertificateReport r = new PH.MIDc.BackEnd.MaterialIdentityCertificateReport();
            //        var aatt = from a in dc.Details
            //                   where a.SuppRef == d.SuppRef
            //                   select a;
            //        r.DataSource = aatt;
            //        r.CreateDocument();
            //        foreach (DevExpress.XtraPrinting.Page itemPage in r.Pages)
            //        {
            //            MatlDvpSummaryRept.Pages.Add(itemPage);
            //        }
            //    }
            //}

            PH.MIDc.BO.SampleOrder itemSampleOrder = this._sampleOrder;
            List<PH.MIDc.BO.Detail> dList = itemSampleOrder.Details.OrderByDescending(p => p.CreateDate).ToList();
            foreach (PH.MIDc.BO.Detail d in dList)
            {
                if (!d.Selected) continue;
                MIDcDataContext dc = this.DataContext as MIDcDataContext;
                PH.MIDc.BackEnd.MaterialIdentityCertificateReport r = new PH.MIDc.BackEnd.MaterialIdentityCertificateReport();
                var aatt = from a in dc.Details
                           where a.SuppRef == d.SuppRef
                           select a;
                r.DataSource = aatt;
                r.CreateDocument();
                foreach (DevExpress.XtraPrinting.Page itemPage in r.Pages)
                {
                    MatlDvpSummaryRept.Pages.Add(itemPage);
                }
            }
        }

        void lookUpEdit2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                lookUpEdit1.Focus();
            }
        }


        private void lookUpEdit_Supp_TextChanged(object sender, EventArgs e)
        {
            RefreshByrProdSite();
        }

        private void comboBoxEdit_PHFactories_TextChanged(object sender, EventArgs e)
        {
            this.BindingSource.EndEdit();
            PH.MIDc.BO.SampleOrder sOrder = this.BindingSource.Current as PH.MIDc.BO.SampleOrder;
            sOrder.RiseSupplierChanging();
        }


        //Xsj:依選擇的Supplier,刷新comboBoxEdit_PHFactories可選項
        private void RefreshByrProdSite()
        {
            PH.MIDc.BO.SampleOrder sOrder = this.BindingSource.Current as PH.MIDc.BO.SampleOrder;
            //this.comboBoxEdit_PHFactories.EditValue = "SL";
            this.BindingSource.EndEdit();
            string supplierCode = sOrder.Supplier;

            this.comboBoxEdit_PHFactories.Properties.Items.Clear();
            PH.BasicInfo.BO.BasicInfoDataContext basicInfoDataContext = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            PH.BasicInfo.BO.SupplierProfile currSProfile = basicInfoDataContext.SupplierProfiles.Where(p => p.Supplier == supplierCode).FirstOrDefault();
            if (currSProfile != null)
            {
                string[] phFactories = currSProfile.IncontermsTransits.Select(p => p.PHFactories).Distinct().ToArray();
                foreach (string Item in phFactories)
                {
                    this.comboBoxEdit_PHFactories.Properties.Items.Add(Item);
                    if (Item == "SL" && sOrder.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
                    {
                        this.comboBoxEdit_PHFactories.SelectedItem = Item;
                    }
                }
                if (this.comboBoxEdit_PHFactories.SelectedItem == null)
                {
                    MessageBox.Show("當前Suppler沒有維護[SupplierProfile的6P]資料，請確認。", "缺少6P資料", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }

            //Xsj120612:為解決數據庫的穩定性而注釋掉
            sOrder.RiseSupplierChanging();


        } 


    }
}
