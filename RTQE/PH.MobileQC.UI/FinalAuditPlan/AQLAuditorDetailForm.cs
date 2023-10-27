using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FinalAuditPlan
{
    public partial class AQLAuditorDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public AQLAuditorDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            PrepareData();
        }

        List<FtyWsLine> Lists;
        void PrepareData()
        {
            string SqlStr = "select * from openquery(interbase, 'select distinct tplant,tshop,pline from tblline where lactive=1')";
            DataTable dt = (DataContext as MobileQCDataContext).ExecuteDataTable(SqlStr, "dt");
            Lists = dt.AsEnumerable().Select(dr => new FtyWsLine
            {
                Fty = dr["tplant"].ToString(),
                Ws = dr["tshop"].ToString(),
                Line = dr["pline"].ToString()
            }).Where(p => !p.Ws.StartsWith("SC")).ToList();

            txtFty.Properties.Items.Clear();
            txtFty.Properties.Items.AddRange(Lists.Select(p => p.Fty).Distinct().ToList());

            this.txtAuditor.Properties.Items.Clear();
            this.txtAuditor.Properties.Items.AddRange((DataContext as MobileQCDataContext).QC_QCUsers.Where(p => !(p.IsDisable ?? false)).Select(p => p.UserCode).Distinct().ToList());

            this.txtAuditorByCust.Properties.Items.Clear();
            this.txtAuditorByCust.Properties.Items.AddRange((DataContext as MobileQCDataContext).QC_QCUsers.Where(p => !(p.IsDisable ?? false)).Select(p => p.UserCode).Distinct().ToList());

            GetCustData();

            ProcessWs();
            ProcessLine();
        }

        void ProcessWs()
        {
            if (string.IsNullOrEmpty(this.txtFty.Text))
            {
                txtWs.Properties.Items.Clear();
                return;
            }

            txtWs.Properties.Items.Clear();
            txtWs.Properties.Items.AddRange(Lists.Where(p => p.Fty == this.txtFty.Text).Select(p => p.Ws).Distinct().ToList());
            txtWs.Text = "";
            txtLine.Text = "";
        }

        void ProcessLine()
        {
            if (string.IsNullOrEmpty(this.txtWs.Text))
            {
                txtLine.Properties.Items.Clear();
                return;
            }

            txtLine.Properties.Items.Clear();
            txtLine.Properties.Items.AddRange(Lists.Where(p => p.Fty == this.txtFty.Text && p.Ws == this.txtWs.Text).Select(p => p.Line).Distinct().ToList());
        }

        private void txtFty_SelectedValueChanged(object sender, EventArgs e)
        {
            ProcessWs();
        }

        private void txtWs_SelectedValueChanged(object sender, EventArgs e)
        {
            ProcessLine();
        }

        void GetCustData()
        {
            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

            //應David “更新MIDC Cust code”郵件2022/05/13 15:14中小燕子的要求，改成下方數據源
            string SqlStr = "select distinct Customer from [PH.RWO1]..CustomerCode";
            DataTable dtCustomer = context.ExecuteDataTable(SqlStr, "dtCustomer");
            txtCust.Properties.Items.Clear();
            this.txtCust.Properties.Items.Add("");
            foreach (DataRow dr in dtCustomer.Rows)
            {
                this.txtCust.Properties.Items.Add(dr["Customer"].ToString());
            }
        }


    }
}
