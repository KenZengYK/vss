using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;
using System.Diagnostics;
using DevExpress.XtraPrinting;

namespace PH.LWPM.UI.MC
{
    public partial class QuatationPhaseForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public QuatationPhaseForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            DataTable dt = db.ExecuteDataTable("exec SP_Budgeting1", "QuatationTable");
            this.gridQuatation.DataSource = dt;

            this.gridView1.BestFitColumns();
        }

        private void barBtnItemExportExcel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Excel文件|*.xls";
            saveFileDialog.FileName = "QuatationList" + DateTime.Now.ToString("yyyyMMdd") + ".xls";
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.gridView1.ExportToExcelOld(saveFileDialog.FileName);
                if (MessageBox.Show("導出成功，是否打開?", "提示", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    Process.Start(saveFileDialog.FileName);
                }
            }
        }


    }
}
