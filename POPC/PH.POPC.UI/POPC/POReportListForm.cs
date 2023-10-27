using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class POReportListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POReportListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POReportDetailForm).FullName;
        }

        private void POReportListForm_Load(object sender, EventArgs e)
        {

            List<PH.POPC.BackEnd.Report> reports = PH.POPC.BackEnd.Common.Reports();
            foreach (PH.POPC.BackEnd.Report item in reports)
            {
                DevExpress.XtraEditors.Controls.ImageComboBoxItem newitem = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                newitem.Value = item.ReportCode;
                newitem.Description = item.ReportDesc;
                this.repositoryItemImageComboBox1.Items.Add(newitem);
            }
         
        }
    }
}
