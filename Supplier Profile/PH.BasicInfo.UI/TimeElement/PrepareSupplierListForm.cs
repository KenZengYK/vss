using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;
using PH.Platform.Misc.BO;
using PH.BasicInfo.BackEnd.TimeElement.Report;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class PrepareSupplierListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PrepareSupplierListForm()
        {
            InitializeComponent();
            //this.EditorTypeName = typeof(SupplierDetailForm).FullName;
            foreach (DevExpress.XtraGrid.Columns.GridColumn Col in this.objListGridView.Columns)
            {
                if (Col.FieldName.ToUpper() != "FLAG")
                {
                    Col.OptionsColumn.AllowEdit = false;
                }
            }
        }

        public override void DataBind()
        {
            SupplierProfileList SPDataList = new SupplierProfileList();
            this.DataContext = SPDataList.CurrentDataContext;

            //由David修改取数条件, 只取Status为：Check的记录 2023-01-12
            this.BindingSource.DataSource = SPDataList.GetDataByCondition("isnull(DeleteFlag, 0) = 0 and Active = 3 and isnull(CheckFlag, '') = ''").ToList();
            //this.BindingSource.DataSource = SPDataList.GetDataByCondition("DeleteFlag=0 or DeleteFlag is null").ToList();

            base.DataBind();
            this.EditorTypeName = typeof(SupplierDetailForm).FullName;
            PHPlatformMiscDataContext BasicInfoDataContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            SupplierGrpLookUpEdit.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierGrp").OrderBy(E => E.DataCode);
            WidthSpecLookUpEdit.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.WidthSpec").OrderBy(E => E.DataCode);

            repositoryItemLookUpEdit1.Properties.DataSource = BasicInfoDataContext.Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.SupplierStatus").OrderBy(E => E.DataCode);
        }

        protected override void OnClickDelete()
        {
            (this.BindingSource.Current as SupplierProfile).DeleteFlag = true;
            (this.DataContext as BasicInfoDataContext).SubmitChanges();
            objListGridView.DeleteRow(this.BindingSource.Position);
            //base.OnClickDelete();
        }

        private void objListGridView_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName == "Active")
            {
                //1= active; 2=N-active; 3= to drop;  4= others
                string s = e.Value == null ? "" : Convert.ToString(e.Value);
                switch (s)
                {
                    case "Y1":
                        e.DisplayText = "A-Main";//1
                        break;
                    case "Y2":
                        e.DisplayText = "A-Normal";//1
                        break;
                    case "N1":
                        e.DisplayText = "N-active";//2
                        break;
                    case "N2":
                        e.DisplayText = "To-Drop";//3
                        break;
                    case "N3":
                        e.DisplayText = "Others";//4
                        break;
                    default:
                        break;
                }
            }
        }

        private void barBtnPCNPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierProfilePOPCNReport();
            //Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            //Xsj100824:注釋掉以上代碼，添加以下代碼,用於控制只打印當前選定行---Start
            if (this.objListGridView.GetSelectedRows().Count() == 0)
            {
                MessageBox.Show("請選擇你想要列印的列！", "系統提示", MessageBoxButtons.OK);
                return;
            }
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";
            Rpt.WhereCondition = Sql;
            //----End
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();

        }

        private void barBtnPCNPOSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.PCNAndPOSupplementSheetRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.PCNAndPOSupplementSheetRpt();
            //Rpt.DataContext = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            //string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            SupplierProfile sProfile = this.BindingSource.Current as SupplierProfile;
            if (sProfile == null || sProfile.ERPSupplier == null) return;
            string Sql = " ERPSupplier='" + sProfile.ERPSupplier + "'";

            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where ERPSupplier in (select ERPSupplier from IncontermsTransit) and (" + Sql + ")" : "Where ERPSupplier in (select ERPSupplier from IncontermsTransit)";
            Rpt.ShowPreviewDialog();
        }

        private void barBtnGrp_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersRpt();
            //Rpt.context = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;
            Rpt.context = ContextBuilder.CreateContext<BasicInfoDataContext>();
            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = "where (AssociatePartner = 1)";
            Rpt.ShowPreviewDialog();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersGroupRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.SupplierWithAffiliatePartnersGroupRpt();
            Rpt.context = this.DataContext as PH.BasicInfo.BO.BasicInfoDataContext;

            string Sql = Fun.GetGridViewFilterCondition(objListGridView);
            Rpt.WhereCondition = !string.IsNullOrEmpty(Sql) ? "where (" + Sql + ")" : "";

            Rpt.ShowPreviewDialog();
        }

        /// <summary>
        /// Xsj100924:Prepare[Action]事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                this.objListGridView.CloseEditor();
                this.objListGridView.UpdateCurrentRow();
                this.BindingSource.EndEdit();
                BasicInfoDataContext BasicInfoDataContext = this.DataContext as BasicInfoDataContext;
                List<SupplierProfile> SuppProfList = this.BindingSource.DataSource as List<SupplierProfile>;
                if (SuppProfList == null) return;
                SuppProfList = SuppProfList.Where(P => P.Flag == true).ToList();
                if (SuppProfList.Count == 0)
                {
                    return;
                }

                if (SuppProfList.Count > 1)
                {
                    MessageBox.Show("只能勾選一個供應商", "System Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                if (MessageBox.Show("你確定要[Prepare]選定內容嗎？", "System Note", MessageBoxButtons.OKCancel) != DialogResult.OK)
                {
                    return;
                }

                //由David注释以下代码 2023-01-12

                ////寫更新歷史記錄表(SupplierCycleHistory)
                //List<SupplierProfile> updateSupProList = SuppProfList.Where(P => !string.IsNullOrEmpty(P.ConfirmPerson)).ToList(); 
                //foreach (SupplierProfile item in updateSupProList)
                //{
                //    SupplierCycleHistory newSupplierCycleHistory = new SupplierCycleHistory();
                //    newSupplierCycleHistory.ActionDate  = DateTime.Now.ToString() + DateTime.Now.Millisecond.ToString();
                //    newSupplierCycleHistory.ERPSupplier = item.ERPSupplier;
                //    newSupplierCycleHistory.PreparePerson = item.PreparePerson;
                //    newSupplierCycleHistory.PrepareDate = item.PrepareDate;
                //    newSupplierCycleHistory.ConfirmPerson = item.ConfirmPerson;
                //    newSupplierCycleHistory.ConfirmDate = item.ConfirmDate;
                //    newSupplierCycleHistory.ApprovalPerson = item.ApprovalPerson;
                //    newSupplierCycleHistory.ApprovalDate = item.ApprovalDate; 
                //    BasicInfoDataContext.SupplierCycleHistories.InsertOnSubmit(newSupplierCycleHistory);
                //}
                ////BasicInfoDataContext.SubmitChanges();

                foreach (SupplierProfile item in SuppProfList)
                {
                    //将上一次Update的信息保存到Last中(王生要求加入Last Prepare、Last Confirm、Last Approval)， 由David加入 2023-01-12
                    item.LastPreparePerson = item.PreparePerson;
                    item.LastPrepareDate = item.PrepareDate;
                    item.LastConfirmPerson = item.ConfirmPerson;
                    item.LastConfirmDate = item.ConfirmDate;
                    item.LastApprovalPerson = item.ApprovalPerson;
                    item.LastApprovalDate = item.ApprovalDate;

                    item.PreparePerson = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    item.PrepareDate = DateTime.Now;

                    item.ConfirmPerson = null;
                    item.ConfirmDate = null;

                    item.ApprovalPerson = null;
                    item.ApprovalDate = null;

                    item.CheckFlag = "WaitConfirm"; //由David加入 2023-01-16
                }
                this.DataContext.SubmitChanges();

                Notify.SendEmail(SysParamHelper.Instance.UserID, "Prepare", SuppProfList, ""); //发送邮件，由David增加 2023-02-06

                MessageBox.Show("Set the choosed rows to prepare status Success!", "System Note", MessageBoxButtons.OK);
            }
            catch (Exception ex)
            {
                if (ex.Message == "Row not found or changed.")
                {
                    MessageBox.Show("當前行內容已被並發性更改,請重新鉤選,然後點擊[Action]操作.", "操作失敗", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    DataBind();
                }
                else
                {
                    MessageBox.Show("Set the choosed rows to prepare status Is False!\r\n錯誤信息:" + ex.ToString(), "操作失敗", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

        }

        /// <summary>
        /// Xsj100923:重取數據
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DataBind();
        }

    }
}
