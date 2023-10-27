using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.QCExamPlan
{
    public partial class SelectStyleForm : Form
    {
        public SelectStyleForm()
        {
            InitializeComponent();

            this.PrepareData();
        }

        void PrepareData()
        {
            //LineBalanceIIDataContext BOO2DB = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            //var lists = BOO2DB.StyleMasters.Where(p => (p.Statu ?? 1) == 1).Select(p => new StyleInfo() { KHKH = p.KHKH, PHKH = p.PHKH, Factory = p.Factory, CPLB = p.CPLB });

            //if (!this.chkShowAllStyle.Checked)
            //{
            //    MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            //    string SqlStr = "exec sp_ExamPlanCustStyleList";
            //    var CustStyleLists = db.ExecuteQuery<QC_ExamPlanCustStyle>(SqlStr).Select(p => p.CustStyle).ToList();

            //    lists = lists.Where(p => CustStyleLists.Contains(p.KHKH));
            //}
            //this.bsStyle.DataSource = lists;

            string SqlStr = string.Format("exec sp_ExamPlanCanSelectStyleList {0}", this.chkShowAllStyle.Checked ? 1 : 0);
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.bsStyle.DataSource = db.ExecuteQuery<StyleInfo>(SqlStr);
        }

        private void chkShowAllStyle_CheckedChanged(object sender, EventArgs e)
        {
            this.PrepareData();
        }

        public string CustCode
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.CustNo;
            }
        }

        public string CustStyle
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.KHKH;
            }
        }

        public string PHStyle
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.PHKH;
            }
        }

        public string Facotry
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.Factory;
            }
        }

        public string WorkShop
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.WorkShop;
            }
        }

        public string StyleType
        {
            get
            {
                StyleInfo obj = this.bsStyle.Current as StyleInfo;
                return obj == null ? "" : obj.CPLB;
            }
        }

    }

    public class StyleInfo
    {
        public string CustNo { get; set; }
        public string KHKH { get; set; }
        public string PHKH { get; set; }
        public string Factory { get; set; }
        public string CPLB { get; set; }
        public string WorkShop { get; set; }
    }
}
