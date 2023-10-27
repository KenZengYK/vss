using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.UI.MC.Report;
using PH.Platform.UI.CS;
using PH.LWPM.UI.WF.Report;
using System.Collections;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC
{
    public partial class SummyByRegionFilter2 : BaseForm
    {
        public SummyByRegionFilter2()
        {
            InitializeComponent();
        }

        private void SummyByRegionFilter_Load(object sender, EventArgs e)
        {
            this.T_factory.Properties.Items.Add("GROUP");
            this.T_factory.Properties.Items.Add("CHINA");
            this.T_factory.Properties.Items.Add("Off-shore");
           // this.T_factory.Properties.Items.AddRange(context.Machines.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            printReport();
        }


        private void printReport()
        {

            //if (this.rbMC.Checked == true && this.T_factory.Text.Trim() == "GROUP")
            //{
                //MCTypeSummyByRegionRpt mbr = new MCTypeSummyByRegionRpt("GROUP");
                //mbr.ShowPreviewDialog();
            //}
            //if (this.rbMC.Checked == true && this.T_factory.Text.Trim() == "CHINA")
            //{
            //    MCTypeSummyByRegionRpt_CN mbr = new MCTypeSummyByRegionRpt_CN("CHINA");
            //    mbr.ShowPreviewDialog();
            //}
            //if (this.rbMC.Checked == true && this.T_factory.Text.Trim() == "Off-shore")
            //{
            //    MCTypeSummyByRegionRpt_OS mbr = new MCTypeSummyByRegionRpt_OS("Off-shore");
            //    mbr.ShowPreviewDialog();
            //}
            if (this.rbMC.Checked)
            {
                MCTypeSummyByRegionRpt mbr = new MCTypeSummyByRegionRpt("GROUP");
                mbr.ShowPreviewDialog();
            }
            else
            {
                WFTypeSummyByRegionRpt wbr = new WFTypeSummyByRegionRpt();
                wbr.ShowPreviewDialog();
            }
        }

        private void btnOK1_Click(object sender, EventArgs e)
        {
          //if (this.rbMcByGrp.Checked)
          //  {
          //      MCSummyByGroupRpt mbr = new MCSummyByGroupRpt();
          //      mbr.ShowPreviewDialog();
            
          //  }

          //if (this.rbSummyDept.Checked)
          //{
              string reg="0";
              if (cbbFactory.Text=="GROUP")
                  reg ="3";
              else if (cbbFactory.Text=="CHINA")
                  reg="1";
              else if (cbbFactory.Text=="Off-shore")
                  reg="2";

              string strfac = this.cbbFactory.Text + "@" + allfactory[cbbFactory.Text]+"@"+reg;
              if (reg == "0")
              {
                  MCSummyByDepartRpt mbr = new MCSummyByDepartRpt(strfac);
                  mbr.ShowPreviewDialog();
              }
              else
              {
                  MCSummyByRegionRpt mbr1 = new MCSummyByRegionRpt(strfac);
                  mbr1.ShowPreviewDialog();
              }

             

          //}
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        Dictionary<string, string> allfactory;
        private void tabPage2_Enter(object sender, EventArgs e)
        {
            this.cbbFactory.Properties.Items.Clear();
            //context.BaseCodes.Where(P => P.Type= "Factory")(S => S.Factory).Distinct().to.ToArray()
            //IEnumerable<> aa=  

            //this.cbbFactory.Properties.Items.Add("GROUP");
            //this.cbbFactory.Properties.Items.Add("CHINA");
            //this.cbbFactory.Properties.Items.Add("Off-shore");

            allfactory = (from a in context.BaseCodes 
                          where a.Type=="factory"
                            select new { a.Code, a.Description }                          
                         ).ToDictionary(c => c.Code, c => c.Description);

            allfactory.Add("GROUP", "PH Group");
            allfactory.Add("CHINA", "CHINA Region - PH Group");
            allfactory.Add("Off-shore", "Off-shoe - PH Group");


            foreach (string item in allfactory.Keys)            
            {
                cbbFactory.Properties.Items.Add(item);
            }

            this.cbbFactory.SelectedIndex = 0;
        }

        private void btnPrintPart2_Click(object sender, EventArgs e)
        {
            MCSummyByGroupRpt mbr = new MCSummyByGroupRpt();
            mbr.ShowPreviewDialog();
        }

    }
}
