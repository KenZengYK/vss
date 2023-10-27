using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class DetailListFormForChangeConfirm : DetailListForm
    {
        //當前窗體顯示的數據是屬於那種的更改類別
        public string ChangeType
        {
            get;
            set;
        }
        //當前窗體顯示的數據所屬於更改類別的狀態標識
        public string Status
        {
            get;
            set;
        }


        public DetailListFormForChangeConfirm()
        {
            InitializeComponent();

        }

        public DetailListFormForChangeConfirm(string ChangeType, string Status)
            : base(ChangeType)
        {
            InitializeComponent();
            this.ChangeType = ChangeType;
            this.Status = Status;
            this.btnAction.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            this.barButtonItem2.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.bBtn_SuppCodeCompare.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        public override void DataBind()
        {
            this.AllowAddRow = false;
            this.AllowGridEdit = false;
            PH.MIDc.BO.MIDcDataContext dc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            this.DataContext = dc;
            if (this.Status == MIDcUpdateConfirmStatus.Prepare.ToString())
            {
                //switch (ChangeType)
                //{
                //case "PriceChange":
                //    this.BindingSource.DataSource = from valA in dc.Details
                //                                    join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                    where (valB.Status == null || valB.Status.ToString() != "Submit") && valB.ChangeType.IndexOf("1") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("1") == -1)
                //                                    select valA;
                //    break;
                //case "WidthChange":
                //    this.BindingSource.DataSource = from valA in dc.Details
                //                                    join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                    where (valB.Status == null || valB.Status.ToString() != "Submit") && valB.ChangeType.IndexOf("2") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("2") == -1)
                //                                    select valA;
                //    break;
                //case "MCQorMOQChanged":
                //    this.BindingSource.DataSource = from valA in dc.Details
                //                                    join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                    where (valB.Status == null || valB.Status.ToString() != "Submit") && valB.ChangeType.IndexOf("3") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("3") == -1)
                //                                    select valA;
                //    break;
                //case "OtherChanged":
                //    this.BindingSource.DataSource = from valA in dc.Details
                //                                    join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                    where (valB.Status == null || valB.Status.ToString() != "Submit") && valB.ChangeType.IndexOf("4") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("4") == -1)
                //                                    select valA;
                //    break;
                //}

                //Xsj20120302:為了邏輯的合理性，和操作的簡便性，注釋掉上面的邏輯，統一在一個界面顯示不能原因的審核信息
                this.BindingSource.DataSource = from valA in dc.Details
                                                join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                                                where (valB.Status == null || valB.Status.ToString() == MIDcUpdateConfirmStatus.Prepare.ToString())
                                                select valA;
            }
            else
            {
                //switch (ChangeType)
                //{
                //    case "PriceChange":
                //        this.BindingSource.DataSource = from valA in dc.Details
                //                                        join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                        where (valB.Status != null && valB.Status.ToString() == "Submit") && valB.ChangeType.IndexOf("1") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("1") == -1)
                //                                        select valA;
                //        break;
                //    case "WidthChange":
                //        this.BindingSource.DataSource = from valA in dc.Details
                //                                        join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                        where (valB.Status != null && valB.Status.ToString() == "Submit") && valB.ChangeType.IndexOf("2") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("2") == -1)
                //                                        select valA;
                //        break;
                //    case "MCQorMOQChanged":
                //        this.BindingSource.DataSource = from valA in dc.Details
                //                                        join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                        where (valB.Status != null && valB.Status.ToString() == "Submit") && valB.ChangeType.IndexOf("3") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("3") == -1)
                //                                        select valA;
                //        break;
                //    case "OtherChanged":
                //        this.BindingSource.DataSource = from valA in dc.Details
                //                                        join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                //                                        where (valB.Status != null && valB.Status.ToString() == "Submit") && valB.ChangeType.IndexOf("4") != -1 && (valB.ConfirmType == null || valB.ConfirmType.IndexOf("4") == -1)
                //                                        select valA;
                //        break;
                //}

                //Xsj20120302:為了邏輯的合理性，和操作的簡便性，注釋掉上面的邏輯，統一在一個界面顯示不能原因的審核信息
                this.BindingSource.DataSource = from valA in dc.Details
                                                join valB in dc.DetailChangeConfirms on (valA.SuppRef + "@" + valA.Version.ToString()) equals (valB.SuppRef + "@" + valB.Version.ToString())
                                                where (valB.Status != null && valB.Status.ToString() == MIDcUpdateConfirmStatus.Submit.ToString())
                                                select valA;
            }

        }

        //審核工業
        protected override void Action()
        {
            this.objListGridView.PostEditor();
            this.objListGridView.CloseEditor();
            this.objListGridView.UpdateCurrentRow();
            this.BindingSource.EndEdit();

            //Xsj:獲取已鉤選的數據
            var aa = from PH.MIDc.BO.Detail val in this.BindingSource.List
                     where val.Selected
                     select val;
            if (aa.Count() == 0) return;

            if (MessageBox.Show("Do you want to Submit these materials?", "System Note", MessageBoxButtons.OKCancel) != DialogResult.OK)
            {
                return;
            }

            //PH.MIDc.BO.Detail currDetail = this.BindingSource.Current as PH.MIDc.BO.Detail;
            //if (currDetail == null) return;

            try
            {
                foreach (PH.MIDc.BO.Detail detailItem in aa)
                {
                    PH.MIDc.BO.DetailChangeConfirm currDetailChangeConfirm = detailItem.DetailChangeConfirms.Where(p => p.Version == p.Detail.Version).FirstOrDefault();
                    if (currDetailChangeConfirm == null) continue;
                    //發送審核
                    if (this.Status == MIDcUpdateConfirmStatus.Prepare.ToString())
                    {
                        currDetailChangeConfirm.Status = MIDcUpdateConfirmStatus.Submit.ToString();
                    }
                    else
                    {
                        //switch (this.ChangeType)
                        //{
                        //    case "PriceChange":
                        //        currDetailChangeConfirm.ConfirmType = currDetailChangeConfirm.ConfirmType + ",1";
                        //        break;
                        //    case "WidthChange":
                        //        currDetailChangeConfirm.ConfirmType = currDetailChangeConfirm.ConfirmType + ",2";
                        //        break;
                        //    case "MCQorMOQChanged":
                        //        currDetailChangeConfirm.ConfirmType = currDetailChangeConfirm.ConfirmType + ",3";
                        //        break;
                        //    case "OtherChanged":
                        //        currDetailChangeConfirm.ConfirmType = currDetailChangeConfirm.ConfirmType + ",4";
                        //        break;
                        //}
                        //Xsj20120302:為了邏輯的合理性，和操作的簡便性，注釋掉上面的邏輯，統一在一個界面顯示不能原因的審核信息
                        currDetailChangeConfirm.ConfirmType = currDetailChangeConfirm.ChangeType;
                        currDetailChangeConfirm.Status = MIDcUpdateConfirmStatus.Approval.ToString();
                        currDetailChangeConfirm.ConfirmUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                        currDetailChangeConfirm.ConfirmDate = DateTime.Now;
                    }
                }
                //Xsj:以下放置郵件通知
                switch (this.Status)
                {
                    case "Prepare":
                        Notify.DetailChangeConfirmSendEmail(NotifyStatus.MIDcUpdatePrepare, aa.ToList());
                        break;
                    case "Approval":
                        Notify.DetailChangeConfirmSendEmail(NotifyStatus.MIDcUpdateApproval, aa.ToList());
                        break;
                }

                this.DataContext.SubmitChanges();
                //重取數據刷界面
                DataBind();
            }
            catch (Exception ex)
            {
            }

        }

        private void DetailListFormForChangeConfirm_Load(object sender, EventArgs e)
        {

            //Xsj:顯示版本及升級版本的原因
            this.objListGridView.Columns["Version"].Visible = true;
            this.objListGridView.Columns["RiseVersionReason"].Visible = true;

            //Xsj:添加右鍵菜單，顯示單價信息
            System.Windows.Forms.ContextMenu cMenu = new ContextMenu();
            cMenu.MenuItems.Add(new MenuItem("顯示單價信息", ShowPriceCompare_Click));
            this.objListGridControl.ContextMenu = cMenu;
           
            //this.objListGridControl.ContextMenu.MenuItems.Add(new MenuItem("顯示單價信息", ShowPriceCompare_Click));
            foreach (DevExpress.XtraGrid .Columns .GridColumn  item in this.objListGridView.Columns)
            {
                if (item.FieldName != "Selected")
                {
                    item.OptionsColumn.ReadOnly = true;
                }
            }

        }


        #region 應JaneLai和王生的討論結果，添加更改單價時的確認動作
        // Xsj:顯示 
        private void barBtn_ShowPriceCompare_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                ShowPriceForConfirmForm showPriceformConfirm = new ShowPriceForConfirmForm();
                PH.MIDc.BO.Detail detail = this.BindingSource.Current as PH.MIDc.BO.Detail;
                showPriceformConfirm.CurrDetail = detail;
                showPriceformConfirm.ShowDialog();
                this.objListGridView.RefreshRow(this.objListGridView.FocusedRowHandle);
            }
            catch
            {
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void ShowPriceCompare_Click(object sender, EventArgs e)
        {
            barBtn_ShowPriceCompare_ItemClick(null, null);
        }
        #endregion
    }
}
