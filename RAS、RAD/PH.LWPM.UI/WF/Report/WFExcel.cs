using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using DevExpress.Data;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFExcel : Form
    {
        int TotalCount;
        public WFExcel()
        {
            InitializeComponent();
        }

        private void WFExcel_Load(object sender, EventArgs e)
        {
              WorkForceList Context = new WorkForceList();
              gridView1.BestFitColumns();
              gridView1.OptionsView.ColumnAutoWidth = false;

              this.bindingSource1.DataSource = Context.GetDataByCondition(string.Format("ClsName='{0}' and Inactive='0' and  (mtm='0' or mtm is null)", "dWF-Core Production"));
           
      
        }

        private void gridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                TotalCount = 0;

            }
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                if (e.FieldValue != null)
                {

                    TotalCount++;

                }
            }
            if (e.IsGroupSummary)
            {

                if (e.GroupLevel == 0)
                {
                    e.TotalValue = TotalCount;
                   
                }

             



            }
        }
    }
}
