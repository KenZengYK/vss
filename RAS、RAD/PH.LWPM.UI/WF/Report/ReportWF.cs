using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.Platform.Common;
using System.Diagnostics;
using PH.LWPM.UI.Report;

namespace PH.LWPM.UI.WF.Report
{
    public partial class ReportWF : PH.Platform.UI.CS.UI0.BlankForm
    {

        public ReportWF()
        {
            InitializeComponent();
            //AddCheckbox();
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        //WF and M/C

        private void ReportWF_Load(object sender, EventArgs e)
        {
            // selectBind();
            //this.T_factory.Properties.Items.Add("GROUP");
            //this.T_factory.Properties.Items.Add("CHINA");
            //this.T_factory.Properties.Items.Add("Off-shore");
            //this.T_factory.Properties.Items.AddRange(context.WorkForces.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());

            //this.T_factory.Properties.Items.AddRange(context.WorkForces.Where( P.Factory != "" &&
            //    !P.MTM.GetValueOrDefault() && !(P.InActive ?? false) ).Select(S => S.Factory).Distinct().ToArray());
            //this.T_DeptGroup.Properties.Items.AddRange(context.BaseCodes.Where(P => P.Type == "WFClass").Select(S => S.Name).ToArray());

            //IsPprojection=0 and Inactive='0' and (ReDate is null or ReDate > getdate()) and  (mtm='0' or mtm is null)

            //            string SqlStr = @"select distinct Factory 
            //                              from Workforce 
            //                              where isnull(IsProjection, 0) = 0 and isnull(Inactive, 0)= 0 and (ReDate is null or ReDate > getdate()) and isnull(MTM, 0)= 0 order by Factory";

            //            var lists = context.ExecuteQuery<string>(SqlStr).ToList();
            //            this.T_factory.Properties.Items.AddRange(lists);

            //            string UserId = SysParamHelper.Instance.UserID;

            //            if (UserId == "yuguo")
            //            {

            //                button1.Visible = true;
            //            }

            string[] Factories = new string[] { "ALL Regions", "China", "HK", "SL", "RX", "Bangladesh", "CL" };
            this.T_factory.Properties.Items.AddRange(Factories);
        }

        private void c_ok_Click(object sender, EventArgs e)
        {
            ////int count = 0;
            //string parm = T_factory.Text.Trim();

            //string[] arg1 = GetStrNatureGroupNew();
            ////count = getCountWF(getFtys(parm), arg1);//PH.LWPM.UI.InterfaceFile.ShareClass.GetCountwf(getFtys(parm), arg1);
            ////if (count > 0)
            ////{
            //printReport(GetStrNatureNew());
            ////}
            ////else
            ////{
            ////    MessageBox.Show("Not Data!");
            ////}

            //改用新做的報表
            if (this.T_factory.EditValue == null || string.IsNullOrEmpty(this.T_factory.EditValue.ToString()))
            {
                MessageBox.Show("Please choice factory!", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            WFListReport rptWFList = new WFListReport(T_factory.Text.Trim());
            rptWFList.ShowPreview();

        
        }
        //private int getCountWF(string[] Ftys, string[] arg)
        //{
        //    int count = 0;
        //    string[] ClsNames = context.BaseCodes.Where(p => p.Type == "WFClass").Select(s => s.Name).ToArray();
        //    count = context.WorkForces.Where(p => p.Factory != null && Ftys.Contains(p.Factory) && (arg).Contains(p.WFPart) && p.InActive == false && (ClsNames).Contains(p.ClsName) && (p.MTM == false || p.MTM == null)).Count();
        //    return count;
        //}
        //private string[] getFtys(string para)
        //{
        //    string[] ftys = new string[1] { this.T_factory.EditValue.ToString() };
        //    switch (para.Trim())
        //    {
        //        case "Off-shore":
        //            para = "OFFSHORE";
        //            ftys = context.TEMP_REGIONs.Where(p => p.REGION == para).Select(p => p.FTY.Trim()).ToArray();
        //            break;
        //        case "CHINA":
        //            para = "CHINA                                             ";
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
        private void printReport(string arg1)
        {
            //if (this.rdbWFJobTitle.Checked == true && this.T_factory.Text.Trim() != "")
            //{

            Report.dWFSummaryRpt dwf = new PH.LWPM.UI.WF.Report.dWFSummaryRpt(this.T_factory.Text.Trim(), "EN", arg1);
            dwf.ShowPreviewDialog();
            //}
            //else
            //{
            //    if (this.rdbWFDept.Checked == true && this.T_factory.Text.Trim() != "")
            //    {
            //        Report.WFSummaryTotalRpt wst = new PH.LWPM.UI.WF.Report.WFSummaryTotalRpt(this.T_factory.Text.Trim(), this.T_DeptGroup.Text.Trim(), "EN", arg1);
            //        wst.ShowPreviewDialog();
            //    }

            //}
            //if (this.rdbWFJobTitle.Checked == false && this.rdbWFDept.Checked == false)
            //{
            //    MessageBox.Show("Not Data!");
            //}




        }
        //private void AddCheckbox()
        //{
        //    //var q = context.TEMP_REGIONs.Where(s => s.JobType == "All").Select(s => s.JobNature.Trim() ?? string.Empty);
        //    //var q = context.TEMP_REGIONs.Where(s => s.JobType == "New").Select(s => s.JobNature.Trim() ?? string.Empty);
        //    var q = context.TEMP_REGIONs.Where(s => s.JobType == "New");


        //    HashSet<Control> hs = new HashSet<Control>();
        //    foreach (var item in q)
        //    {
        //        CheckBox cb = new CheckBox();
        //        cb.Checked = true;
        //        //cb.Text = item.ToString();
        //        cb.Text = item.JobNature;      //显示的Cost
        //        cb.Tag = item.ActualJobNature; //真实的Cost

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
        private string GetStrChxNature()
        {
            string str = "All";

            if (this.chxSD.Checked == true && this.chxPI.Checked == true)
            {

                str = "All";
            }
            if (this.chxSD.Checked == true && this.chxPI.Checked == false)
            {
                str = context.TEMP_REGIONs.Where(p => p.TEMP_REGION_ID == 2).Select(s => s.JobNature).SingleOrDefault();// "dWF - Sewing Direct";
            }
            if (this.chxSD.Checked == false && this.chxPI.Checked == true)
            {
                str = context.TEMP_REGIONs.Where(p => p.TEMP_REGION_ID == 1).Select(s => s.JobNature).SingleOrDefault();// "iWF - Production Indirect";
            }
            if (this.chxSD.Checked == false && this.chxPI.Checked == false)
            {
                str = "Not Data!";
            }
            return str.ToString();
        }

        //private string GetStrNatureNew()
        //{
        //    StringBuilder str = new StringBuilder();
        //    int i = 0;
        //    foreach (CheckBox item in this.panel1.Controls)
        //    {
        //        if (item.Checked == true)
        //        {
        //            i++;
        //        }
        //    }
        //    int ii = 0;
        //    foreach (CheckBox item in this.panel1.Controls)
        //    {

        //        if (item.Checked == true)
        //        {
        //            //str.Append(item.Text.Trim());
        //            str.Append(item.Tag.ToString());
        //            ii++;
        //            if (ii < i)
        //            {
        //                str.Append(",");
        //            }
        //        }


        //    }
        //    return str.ToString();
        //}
        //private string[] GetStrNatureGroupNew()
        //{


        //    int i = 0;
        //    foreach (CheckBox item in this.panel1.Controls)
        //    {
        //        if (item.Checked == true)
        //        {
        //            i++;
        //        }

        //    }
        //    string[] Natures = new string[i];
        //    int ii = 0;

        //    foreach (CheckBox item in this.panel1.Controls)
        //    {

        //        if (item.Checked == true)
        //        {
        //            Natures[ii] = item.Text.Trim();

        //            ii++;

        //        }


        //    }
        //    return Natures;
        //}
        private void button1_Click(object sender, EventArgs e)
        {

            //ProcessStartInfo IEproc = new ProcessStartInfo("IExplore.exe");
            //IEproc.Arguments = "http://10.2.1.240/RAP/";
            //Process proc = new Process();
            //proc.StartInfo = IEproc;
            //proc.Start();


            //test
            //Formtest report_gsd = new Formtest();
            //report_gsd.Show();

        }

        private void ClsNameAll_CheckedChanged(object sender, EventArgs e)
        {
            if (ClsNameAll.Checked == true)
            {
                foreach (CheckBox item in this.panel1.Controls)
                {
                    item.Checked = true;
                }
            }
            else
            {
                foreach (CheckBox item in this.panel1.Controls)
                {
                    item.Checked = false;
                }

            }

        }




    }
}
