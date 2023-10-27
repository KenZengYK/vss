using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraGrid;
using System.Data.Linq.SqlClient;


namespace PH.LWPM.UI.LB5
{
    public partial class LB5PListFrm : ListForm
    {

        public string OptionType = "A";
        public string MCParam = "";
        public LB5PListFrm()
        {
            InitializeComponent();
            //ConditionsAdjustment();
        }

        public LB5PListFrm(string opttype, string AMCParam)
        {
            InitializeComponent();
            OptionType = opttype;
            MCParam = AMCParam;
        }

        //public LB5PListFrm(string aa, string bb)
        //{
        //    InitializeComponent();

        //}

        protected override void OnClickOpen()
        {
            WPMaster ma = this.BindingSource.Current as WPMaster;

            (new LB5.ProcessForm(ma, this.DataContext as RAPLQDataContext)).ShowDialog();
            base.OnClickOpen();
        }

        public override void DataBind()
        {
            // (new ProcessForm()).ShowDialog();                          
            //  GetData("(flag like '%s%' and IsConfirmed='1') ");           
            //GetData("( (flag like '%s%' or flag='') and IsConfirmed='1') ");           


            ////由David修改 2018-07-25
            //GetData("( (flag like '%s%') and IsConfirmed='1') ");


            //由David改写 2019-01-19
            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            string SqlStr = string.Format("exec sp_GetStep5QN 's', '{0}'", OptionType);
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).ExecuteQuery<WPMaster>(SqlStr);

            base.DataBind();
            this.EditorTypeName = typeof(LB5ChildFrmM).FullName;

        }

        private void barBtnHistory_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            string SqlStr = string.Format("exec sp_GetStep5QN 'x', '{0}'", OptionType);
            this.BindingSource.DataSource = (this.DataContext as RAPLQDataContext).ExecuteQuery<WPMaster>(SqlStr);

            //GetData("(flag like '%x%' and IsConfirmed='1')");

        }

        private void barBtnResume_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.DataBind();

            //GetData("(flag like '%s%' and IsConfirmed='1') ");

        }
        //private void GetData(string SqlCondition)
        //{
        //    WPMasterList WpContext = new WPMasterList();
        //    WpContext.CurrentDataContext.CommandTimeout = 8000;
        //    this.BindingSource.DataSource = WpContext.GetDataByCondition(SqlCondition);
        //    this.DataContext = WpContext.CurrentDataContext;
        //}

        //private void ConditionsAdjustment()
        //{
        //    StyleFormatCondition cn;           
        //    cn = new StyleFormatCondition(FormatConditionEnum.Equal, objListGridView.Columns["YNHaveLB5Data"], null, true);
        //    cn.Appearance.BackColor = Color.Red;
        //    cn.ApplyToRow = true;
        //    objListGridView.FormatConditions.Add(cn);


        //}


        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //RAPLQDataContext Context = ContextBuilder.CreateContext<RAPLQDataContext>();
            //var MList = from wp in Context.WPMasters where SqlMethods.Like(wp.Flag, "%s%") && wp.Factory == "SL" select wp;
            //foreach (WPMaster mr in MList)
            //{
            //    DataTable InterBaseTb = DBAccess.GetInterBaseTable(string.Format("SELECT PLINE, SEQ, CFKSRQ, J_NO, J2_JOB, ARTNO, CFWCRQ, FLAG3, CSTYLE, FCCS, TPLANT, RWO,SCQTY,ZJS,JHL,TSHOP,ACOL,CWO,TMU FROM TBLSHEDULE WHERE (PLINE ='{0}') AND (CSTYLE ='{1}') AND (TPLANT = '{2}') AND (RWO = '{3}') AND (FCCS = '{4}') AND (J_NO = '{5}') AND (J2_JOB = '{6}') and (ACOL='{7}') and CFKSRQ is not null", mr.LineCode.TrimEnd(), mr.CustStyleCode.TrimEnd(), mr.Factory.TrimEnd(), mr.Rwo.TrimEnd(), mr.Qn.TrimEnd(), mr.j_NO.TrimEnd(), mr.J2_job.TrimEnd(), mr.Bcolor.TrimEnd()));
            //    if (InterBaseTb.Rows.Count > 0)
            //    {
            //        string RAP_flag = mr.Flag != null ? mr.Flag.TrimEnd() : string.Empty;
            //        string IB_flag = InterBaseTb.Rows[0]["flag3"].ToString().TrimEnd();
            //        if (RAP_flag != IB_flag)
            //        {
            //            mr.Flag = IB_flag;
            //        }
            //    }
            //}
            //Context.SubmitChanges();
        }

        private void btnLog_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (BindingSource.Current == null)
            {
                return;
            }

            WPMaster obj = this.BindingSource.Current as WPMaster;
            this.CreateProgramForm(typeof(LB5MatchingLogListForm), "WF Log", true,
                new object[] { obj.Factory, obj.LineCode, obj.j_NO, obj.J2_job, obj.Rwo, obj.Qn, obj.Bcolor }, null);
        }

        //private void btnProposalWorksheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{
            //if (this.BindingSource.Current == null)
            //{
            //    return;
            //}

            //Step5DeploymentReArrangingParamForm frmParam = new Step5DeploymentReArrangingParamForm();
            //if (frmParam.ShowDialog() == DialogResult.OK)
            //{
            //    RAPLQDataContext db = this.DataContext as RAPLQDataContext;

            //    this.CreateProgramForm(typeof(ProposalWorkSheetForm), "Step 5 Proposal Worksheet", true, new object[] { db, frmParam.Factory, frmParam.Language }, null);
            //}



        //}





    }
}
