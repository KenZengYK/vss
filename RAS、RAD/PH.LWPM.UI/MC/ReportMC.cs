using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Linq;

using PH.Platform.UI.CS.UI0;
using PH.LWPM.UI.MC.Report;
using PH.LWPM.UI.Report;

namespace PH.LWPM.UI.MC
{


    public partial class ReportMC : PH.Platform.UI.CS.UI0.BlankForm
    {
        public ReportMC()
        {
            InitializeComponent();
        }

        string _Deployment;

        //有三種參數: All, Deployment, NonDeployment
        public ReportMC(string ADeployment)
        {
            InitializeComponent();
            _Deployment = ADeployment;
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void ReportMC_Load(object sender, EventArgs e)
        {
            //AddCheckbox();
            string[] Factories = new string[] { "ALL Regions", "China", "SL", "RX", "Bangladesh", "CL" };
            this.T_factory.Properties.Items.AddRange(Factories);

            //this.T_factory.Properties.Items.Add("GROUP");
            //this.T_factory.Properties.Items.Add("CHINA");
            //this.T_factory.Properties.Items.Add("Bangladesh");  //Off-shore


            //// this.T_factory.Properties.Items.AddRange(RAPLQDataContext.context.Machines.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());
            ////this.T_factory.Properties.Items.AddRange(context.Machines.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());

            //this.T_factory.Properties.Items.AddRange(context.BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code).Distinct().ToArray());
            ////             where a.Type == "factory"
            ////             select new { a.Code, a.Description }
            ////).ToDictionary(c => c.Code, c => c.Description);
        }

        //string jobnatrue;
        private void c_ok_Click(object sender, EventArgs e)
        {
            //string ChoiceCost = GetChoiceCostStr();
            if (this.T_factory.EditValue == null || string.IsNullOrEmpty(this.T_factory.EditValue.ToString()))
            {
                MessageBox.Show("Please choice factory!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            //if (string.IsNullOrEmpty(ChoiceCost))
            //{
            //    MessageBox.Show("Please choice cost!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            //SummarysHWByGroupReport rptHWSummary = new SummarysHWByGroupReport(this.T_factory.EditValue.ToString(), ChoiceCost + ",", this._Deployment); //"Head Office Cost", "Factory Cost"
            sHWListReport rptHWSummary = new sHWListReport(this.T_factory.EditValue.ToString(), this._Deployment); //"Head Office Cost", "Factory Cost"
            rptHWSummary.ShowPreview();

            //int count = 0;
            //string parm = T_factory.Text.Trim();


            ////count = getCountWF(getFtys(parm));
            //jobnatrue = GetStrNatureNew();
            //try
            //{
            //    //if (count > 0)
            //    //{
            //    if (string.IsNullOrEmpty(jobnatrue))
            //        MessageBox.Show("Please choice job natrue!");
            //    else
            //        printReport();
            //    //}
            //    //else
            //    //{
            //    //    MessageBox.Show("Not Data!");
            //    //}
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show("Messages:" + ex.ToString());
            //}


        }

        //private string[] getFtys(string para)
        //{
        //    string[] ftys;
        //    switch (para.Trim().ToUpper())
        //    {
        //        case "OFF-SHORE":
        //            para = "OFFSHORE";
        //            ftys = context.TEMP_REGIONs.Where(p => p.REGION == para).Select(p => p.FTY.Trim()).ToArray();
        //            break;
        //        case "CHINA":
        //            para = "CHINA";
        //            ftys = context.TEMP_REGIONs.Where(p => p.REGION == para).Select(p => p.FTY.Trim()).ToArray();
        //            break;
        //        case "GROUP":
        //            para = "GROUP";
        //            ftys = context.TEMP_REGIONs.Where(p => p.FTY != null).Select(p => p.FTY.Trim()).ToArray();
        //            break;
        //        default:
        //            ftys = context.TEMP_REGIONs.Where(p => p.FTY == para).Select(p => p.FTY.Trim()).ToArray();
        //            break;
        //    }


        //    return ftys;
        //}

        //private string GetChoiceCostStr()
        //{
        //    StringBuilder str = new StringBuilder();
        //    //int i = 0;
        //    //foreach (CheckBox item in this.panel1.Controls)
        //    //{
        //    //    if (item.Checked == true)
        //    //    {
        //    //        i++;
        //    //    }
        //    //}
        //    //int ii = 0;
        //    foreach (CheckBox item in this.panel1.Controls)
        //    {

        //        if (item.Checked == true)
        //        {
        //            str.Append(item.Text.Trim()).Append(",");
        //        }


        //    }
        //    if (str.Length > 1)
        //        str = str.Remove(str.Length - 1, 1);

        //    return str.ToString();
        //}



        //private void AddCheckbox()
        //{
        //    var q = context.BaseCodes.Where(s => s.Type == "MCPart").Select(s => s.Name.Trim() ?? string.Empty);
        //    HashSet<Control> hs = new HashSet<Control>();
        //    foreach (var item in q)
        //    {
        //        CheckBox cb = new CheckBox();
        //        cb.Text = item.ToString();
        //        cb.Checked = true;
        //        int i = hs.Count() + 1;
        //        cb.Location = new Point(0, i * 22);
        //        cb.Size = new System.Drawing.Size(324, 16);
        //        hs.Add(cb);
        //    }
        //    foreach (var item in hs)
        //    {
        //        this.panel1.Controls.Add(item);
        //    }
        //}


        //private int getCountWF(string[] Ftys)
        //{
        //    int count = 0;
        //    string[] ClsNames = context.BaseCodes.Where(p => p.Type == "MCClass").Select(s => s.Name).ToArray();
        //    count = context.Machines.Where(p => p.Factory != null && Ftys.Contains(p.Factory) && (ClsNames).Contains(p.Class)).Count();
        //    return count;
        //}
        //private void printReport()
        //{

        //    //if (this.rbChineseDept.Checked == true && this.T_factory.Text.Trim() != "")
        //    //{
        //    //    Report.MCDeptSummaryForChineseReport mcd = new PH.LWPM.UI.MC.Report.MCDeptSummaryForChineseReport(this.T_factory.Text.Trim());
        //    //    mcd.ShowPreviewDialog();
        //    //}

        //    if (this.rbChineseType.Checked == true && this.T_factory.Text.Trim() != "")
        //    {
        //        // Report.MCTypeSummaryForChineseReport mct = new PH.LWPM.UI.MC.Report.MCTypeSummaryForChineseReport(this.T_factory.Text.Trim());
        //        Report.MCTypeSummaryForChineseReport mct = new PH.LWPM.UI.MC.Report.MCTypeSummaryForChineseReport(this.T_factory.Text.Trim(), this.jobnatrue);
        //        mct.ShowPreviewDialog();
        //    }
        //}

        private void chkAll_CheckedChanged(object sender, EventArgs e)
        {
            foreach (CheckBox item in this.panel1.Controls)
            {

                item.Checked = chkAll.Checked;

            }
        }
    }
}
