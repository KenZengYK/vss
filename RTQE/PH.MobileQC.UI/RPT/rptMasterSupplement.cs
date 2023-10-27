using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class rptMasterSupplement : DevExpress.XtraReports.UI.XtraReport
    {
        public rptMasterSupplement()
        {
            InitializeComponent();
        }

        public rptMasterSupplement(List<Proc_MasterList> rptdata)
        {
            InitializeComponent();
            this.bsSupp.DataSource = rptdata;
        }


        string _factory = "", _style = "", _procedure = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            Proc_MasterList pm = this.GetCurrentRow() as Proc_MasterList;
            if (pm == null)
                return;
            if (_factory!=pm.Factory||_style!=pm.Style||_procedure!=pm.W_procedure)
            {
               _factory=pm.Factory;_style =pm.Style;_procedure =pm.W_procedure;
                xrProcedure.Text =pm.W_procedure;
                xrProcedure.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
            }
            else
            {
                xrProcedure.Text ="";
                // xrProcedure.Borders = (DevExpress.XtraPrinting.BorderSide)DevExpress.XtraPrinting.BorderSide.All;
                xrProcedure.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
            }
            

            if (pm.QCRoleCode.Contains("QA"))
                xrTable2.BackColor = Color.Yellow;
            else
                xrTable2.BackColor = Color.Transparent;

            xrProcedure.BackColor = Color.White;



        }

    }
}
