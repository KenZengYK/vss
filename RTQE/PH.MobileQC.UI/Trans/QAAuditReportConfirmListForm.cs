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
using DevExpress.XtraBars;
using PH.Platform.Common;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.MobileQC.UI.Trans
{
    public partial class QAAuditReportConfirmListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string ConfirmType;

        public QAAuditReportConfirmListForm()
        {
            InitializeComponent();
        }

        public QC_Master_Final CurrentQCMasterFinal
        {
            get
            {
                return this.BindingSource.Current as QC_Master_Final;
            }
        }

        /// <summary>
        /// 構造函數
        /// </summary>
        /// <param name="AConfirmType">審批類型: WsConfirm(車間確認)、QAConfirm(QA確認)、SIConfirm(SI確認)</param>
        public QAAuditReportConfirmListForm(string AConfirmType)
            : this()
        {
            this.ConfirmType = AConfirmType;
            this.barItemFactory.EditValue = PH.Platform.Common.SysParamHelper.Instance.Location;


            this.btnWsConfirm.Visibility = AConfirmType == "WsConfirm" ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.btnQAConfirm.Visibility = AConfirmType == "QAConfirm" ? BarItemVisibility.Always : BarItemVisibility.Never;
            this.btnSIConfirm.Visibility = AConfirmType == "SIConfirm" ? BarItemVisibility.Always : BarItemVisibility.Never;
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(QAAuditReportConfirmDetailForm).FullName;

            if (this.DataContext == null)
            {
                this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            }
            string SqlStr = string.Format("exec sp_GetQAAuditReportConfirmList '{0}', '{1}'", this.ConfirmType, this.barItemFactory.EditValue.ToString());
            this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).ExecuteQuery<QC_Master_Final>(SqlStr);
        }

        private void btnQuery_ItemClick(object sender, ItemClickEventArgs e)
        {
            this.DataBind();
        }


        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
        }

        public void btnWsConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.CurrentQCMasterFinal == null)
            {
                return;
            }

            this.CurrentQCMasterFinal.WsConfirm = SysParamHelper.Instance.UserID;
            (this.DataContext as MobileQCDataContext).SubmitChanges();
        }

        public void btnQAConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.CurrentQCMasterFinal == null)
            {
                return;
            }

            this.CurrentQCMasterFinal.QAConfirm = SysParamHelper.Instance.UserID;
            (this.DataContext as MobileQCDataContext).SubmitChanges();
        }

        public void btnSIConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (this.CurrentQCMasterFinal == null)
            {
                return;
            }

            ChoiceImproveActionPlanForm frmChoice = new ChoiceImproveActionPlanForm();
            if (frmChoice.ShowDialog() == DialogResult.OK)
            {
                GridView grid = frmChoice.SelectGridView;
                DataRowView dr = null;
                int Index = 1;
                string Str = "";

                for (int i = 0; i < grid.DataRowCount; i++)
                {
                    dr = (DataRowView)grid.GetRow(i);
                    if (Convert.ToBoolean(dr["CheckFlag"]))
                    {
                        Str += Index.ToString() + ". " + dr["NameCN"].ToString() + " " + dr["NameEN"].ToString() + Environment.NewLine;
                        Index++;
                    }
                }

                this.CurrentQCMasterFinal.ImproveActionPlan = Str;
                this.CurrentQCMasterFinal.SIConfirm = SysParamHelper.Instance.UserID;
                (this.DataContext as MobileQCDataContext).SubmitChanges();
            }

        }


    }
}
