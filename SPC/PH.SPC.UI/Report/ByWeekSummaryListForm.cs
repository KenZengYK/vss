using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.SPC.BO;
using DevExpress.XtraBars;

namespace PH.SPC.UI.Report
{
    public partial class ByWeekSummaryListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ByWeekSummaryListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<PH.SPC.BO.SPCDataContext>();
            this.barBtnFind.Visibility = BarItemVisibility.Always;
            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        protected override void OnClickFind()
        {
            //base.OnClickFind();
            PH.SPC.BO.SPCDataContext db = this.DataContext as PH.SPC.BO.SPCDataContext;
            ByWeekSummaryConditionForm frmCondition = new ByWeekSummaryConditionForm(db);
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
                waitform.Show();
                try
                {
                    string SqlStr = "exec sp_ByWeekSummaryReport '{0}', '{1}', '{2}'";
                    SqlStr = string.Format(SqlStr, frmCondition.StartDate.Date, frmCondition.DueDate, frmCondition.Customer);
                    this.BindingSource.DataSource = db.ExecuteQuery<ByWeekSummaryReportResult>(SqlStr);
                }
                finally
                {
                    waitform.Close();
                }
            }
        }
    }
}
