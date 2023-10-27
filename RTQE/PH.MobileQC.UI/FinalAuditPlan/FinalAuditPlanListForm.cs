using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FinalAuditPlan
{
    public partial class FinalAuditPlanListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public FinalAuditPlanListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            
            
            base.DataBind();
            if (DataContext == null)
            {
                DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }
            DateTime MaxTime = (DataContext as MobileQCDataContext).FinalAuditPlanLists.Select(dr => dr.QNDate??Convert.ToDateTime("2000-01-01")).Max();
            BindingSource.DataSource = (DataContext as MobileQCDataContext).FinalAuditPlanLists.Where(dr => dr.QNDate >= MaxTime.AddDays(-2) && dr.QNDate <= MaxTime).OrderBy(dr => dr.Factory).ThenBy(dr => dr.QNDate).ThenBy(dr => dr.WO);
              
            objListGridView.RefreshData();
            objListGridView.OptionsBehavior.Editable = true;
            PrepareData();
        }

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();
            
            PH.Platform.AuthMgr.BO.Auth_FunRight obj = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Edit");
            if (obj != null)
            {
                this.AllowGridEdit = true;
                BindingSource.DataSource = (DataContext as MobileQCDataContext).FinalAuditPlanLists.OrderBy(dr=>dr.Factory);
            }
            else 
            {
                this.colIsCompleted.OptionsColumn.AllowEdit = false;
            }
        }


        public override void SaveData()
        {

            this.BindingSource.EndEdit();
            //FinalAuditPlanList obj = this.BindingSource.Current as FinalAuditPlanList;
            //obj.Operator = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            //obj.OperationDate = DateTime.Now;
            base.SaveData();

            //this.txtID.Properties.ReadOnly = true; 
        }


        void PrepareData()
        {
            repositoryItemComboBox_Auditor.Items.Clear();
            DataTable dt = (DataContext as MobileQCDataContext).ExecuteDataTable("select UserCode from dbo.QC_QCUser", "dt");
            //DataTable dt = (DataContext as MobileQCDataContext).ExecuteDataTable("select UserID from dbo.Auth_User where isnull(Expired, 0) = 0", "dt");
            foreach (DataRow dr in dt.Rows)
            {
                repositoryItemComboBox_Auditor.Items.Add(dr["UserCode"].ToString());
            }          



        }

        private void objListGridView_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            DataContext.SubmitChanges();
        }

        private void btnImportQN_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GetDateByFtyForm frm = new GetDateByFtyForm();
             DialogResult dlg = frm.ShowDialog();
             if (dlg == DialogResult.OK)
             { 
                 //frm.Fty
                 string Sql = "exec sp_GetAQLDataFromInterbase '{0}','{1}' ";
                // string Sql = "exec sp_GetAQLDataFromInterbase '{0}'";
                 Sql = string.Format(Sql, frm.Fty, frm.QN);
                 try
                {
                    Cursor = Cursors.WaitCursor;
                    (DataContext as MobileQCDataContext).ExecuteNonQuery(Sql);
                    DataBind();
                }
                finally
                {
                    Cursor = Cursors.Default;
               }

             }


            //if (MessageBox.Show("是否確認導入數據?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            //    return;
              
            //try
            //{
            //    Cursor = Cursors.WaitCursor;
            //    (DataContext as MobileQCDataContext).ExecuteNonQuery("exec sp_GetAQLDataFromInterbase");
            //    DataBind();
            //}
            //finally
            //{
            //    Cursor = Cursors.Default;
            //}
        }

        private void repositoryItemCheckEdit_IsCompleted_CheckedChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.CheckEdit Obj = sender as DevExpress.XtraEditors.CheckEdit;
           
            FinalAuditPlanList obj = this.BindingSource.Current as FinalAuditPlanList;
            obj.Operator = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            obj.OperationDate = DateTime.Now;
            
            
        }
    }
}
