using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.MobileQC.UI
{
    public partial class DefectSummaryList : PH.Platform.UI.CS.UI2.ListForm
    {
        public DefectSummaryList()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
        }


        public override void DataBind()
        {
          //  base.DataBind();

            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            //this.DataSource = typeof(DefectSummaryResult); //StyleLineQCStatResult
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.Count == 0)
                return;
            string dateinfo = DateFrom + " ~ " + DateTo;
            DailyAuditSummyRpt rpt = new DailyAuditSummyRpt(SummaryList1,dateinfo);
            rpt.ShowPreviewDialog();
        }

        public string Factory, Line, DateFrom, DateTo;
        //IEnumerable<DefectSummaryResult> SummaryList;
        List<DefectSummaryResult> SummaryList1;

        //protected override void OnClickFind()
        //{
        //    base.OnClickFind();
        //}

        protected override void OnClickFind()
        {

            try
            {
                DefectSummaryCondition frmCondition = new DefectSummaryCondition(this);
                frmCondition.StartPosition = FormStartPosition.CenterScreen;
                if (frmCondition.ShowDialog() == DialogResult.OK)
                {
                    this.DataContext.CommandTimeout = 60 * 30;
                    // this._Line = frmCondition.Line;
                    //this._Style = frmCondition.Style;
                    string langid = PH.Platform.Common.SysParamHelper.Instance.LangID;
                    string sqlcmd = string.Format("EXEC Proc_DefectSummyByDay '{0}', '{1}', '{2}', '{3}', '{4}'", Factory, Line, this.DateFrom,this.DateTo, langid);
                    SummaryList1 = new List<DefectSummaryResult>();
                    MobileQCDataContext context = this.DataContext as MobileQCDataContext;

                  //  var hh = context.ExecuteQuery<DefectSummaryResult>(sqlcmd);

                    SummaryList1 = SqlDataHelper.GetDefectSummary(Factory, Line, this.DateFrom, this.DateTo, langid);   //context.ExecuteQuery<DefectSummaryResult>(sqlcmd).ToList<DefectSummaryResult>();
                    this.BindingSource.DataSource = null;
                    this.BindingSource.DataSource = SummaryList1;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
