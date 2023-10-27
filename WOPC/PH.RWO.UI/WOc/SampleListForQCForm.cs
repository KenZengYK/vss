using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;

namespace PH.RWO.UI
{
    public partial class SampleListForQCForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public SampleListForQCForm()
        {
            InitializeComponent();

            xtraTabControl1.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this.xtraTabControl1.SelectedTabPage = this.tpExfty;

            InitDateShowMode();
        }
        public DateTime ExftyBegin { get { return this.deExftyBegin.DateTime; } }
        public DateTime ExftyEnd { get { return this.deExftyEnd.DateTime; } }

        private void btnBack_Click(object sender, EventArgs e)
        {
            this.xtraTabControl1.SelectedTabPage = this.tpExfty;

        }

        private void btnGetData_Click(object sender, EventArgs e)
        {
            GetData();
        }

        private void btn2Xls_Click(object sender, EventArgs e)
        {
            Export2Xls();
        }


        private void GetData()
        {
            if (this.ExftyBegin == DateTime.MinValue || this.ExftyEnd == DateTime.MinValue)
            {
                MessageBox.Show("Must input Ex-fty date.");
                return;
            }

#if Platform2014
                PH.Platform.UI.CS.WaitFormHelper.ShowWaitForm();
#else
            this.Cursor = Cursors.WaitCursor;
#endif

            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();


            this.pivotSample.DataSource = null;
            this.bindingSource1.DataSource = null;

            var wos = from a in context.WorkOrderSamples
                      where a.SampleType != null && a.SampleType != ""
                      && a.WorkOrderSKU.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted >= this.ExftyBegin && a.WorkOrderSKU.WorkOrderColor.WorkOrder.LCLExFtyShipCompleted < this.ExftyEnd.AddDays(1)
                      select a;

            this.bindingSource1.DataSource = wos;
            this.pivotSample.DataSource = this.bindingSource1;
            this.fieldSampleQty.Caption = string.Format("Ex-fty date: from {0:yyyy-MM-dd} to {1:yyyy-MM-dd}", this.ExftyBegin, this.ExftyEnd);
            this.xtraTabControl1.SelectedTabPage = this.tpPivot;

#if Platform2014
                    PH.Platform.UI.CS.WaitFormHelper.CloseWaitForm();
#else
            this.Cursor = Cursors.Default;
#endif
        }
        private void Export2Xls()
        {
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.FileName = string.Format("Sample List [{0:yyyy-MM-dd} to {1:yyyy-MM-dd}]", this.ExftyBegin, this.ExftyEnd);
            dlg.DefaultExt = "xls";
            dlg.Filter = "Excel files|*.xls";
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                //DevExpress.XtraPrinting.XlsExportOptions opt = new DevExpress.XtraPrinting.XlsExportOptions();
                this.pivotSample.ExportToXls(dlg.FileName);
                MessageBox.Show("Export Success!");
            }
        }

        private void InitDateShowMode()
        {

#if Platform2014
            this.deExftyBegin.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
            this.deExftyEnd.Properties.CalendarView = DevExpress.XtraEditors.Repository.CalendarView.Default;
#else
            this.deExftyBegin.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
            this.deExftyEnd.Properties.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
#endif
        }

    }
}
