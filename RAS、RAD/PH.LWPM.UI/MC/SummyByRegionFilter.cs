using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS;
using PH.LWPM.UI.WF.Report;
using PH.LWPM.UI.MC.Report;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC
{
    public partial class SummyByRegionFilter : BaseForm
    {
        public SummyByRegionFilter()
        {
            InitializeComponent();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //WFTypeSummyByRegionRpt wbr = new WFTypeSummyByRegionRpt();
            //wbr.ShowPreviewDialog();
            this.PrintReport();
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        Dictionary<string, string> allfactory;

        private void rbtPart1_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtPart1.Checked)
            {

                //rbMF.Checked = false;
                //rbtFamilyType.Checked = false;
                //rbtPart2.Checked = false;

                this.cbbFactory.Enabled = true;
                this.cbbFactory.Properties.Items.Clear();
                //context.BaseCodes.Where(P => P.Type= "Factory")(S => S.Factory).Distinct().to.ToArray()
                //IEnumerable<> aa=  

                //this.cbbFactory.Properties.Items.Add("GROUP");
                //this.cbbFactory.Properties.Items.Add("CHINA");
                //this.cbbFactory.Properties.Items.Add("Off-shore");
                
                allfactory = (from a in context.BaseCodes
                              where a.Type == "factory"
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
            else this.cbbFactory.Enabled = false;
        }


        void PrintReport()
        {
            if (rbMF.Checked)
            {
                WFTypeSummyByRegionRpt wbr = new WFTypeSummyByRegionRpt();
                wbr.ShowPreviewDialog();
            }
            else if (rbtFamilyType.Checked)
            {
                MCTypeSummyByRegionRpt mbr = new MCTypeSummyByRegionRpt("GROUP");
                mbr.ShowPreviewDialog();            
            }
            else if (rbtPart1.Checked)
            {

                string reg = "0";
                if (cbbFactory.Text == "GROUP")
                    reg = "3";
                else if (cbbFactory.Text == "CHINA")
                    reg = "1";
                else if (cbbFactory.Text == "Off-shore")
                    reg = "2";

                string strfac = this.cbbFactory.Text + "@" + allfactory[cbbFactory.Text] + "@" + reg;
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
            }
            else if (rbtPart2.Checked)
            {
                MCSummyByGroupRpt mbr = new MCSummyByGroupRpt();
                mbr.ShowPreviewDialog();            
            }
        }

        private void panel1_Leave(object sender, EventArgs e)
        {
            //this.rbtPart1.Checked = false;
            //cbbFactory.Enabled = false;
        }
    }
}
