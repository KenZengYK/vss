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

namespace PH.LWPM.UI.WF
{
    public partial class SelectDepartmentalForm : Form
    {
        public SelectDepartmentalForm(string AFactory)
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();

            var lists = db.DepartalSorts.Where(p => p.Active == true);

            if (string.IsNullOrEmpty(AFactory))
            {
                this.bsDepartal.DataSource = lists.OrderBy(p => p.SeqNo);
            }
            else if (AFactory == "HK")
            {
                this.bsDepartal.DataSource = lists.Where(p => p.HKOFFICE ?? false == true).OrderBy(p => p.SeqNo);
            }
            else if (AFactory == "SL")
            {
                this.bsDepartal.DataSource = lists.Where(p => (p.SLSALES ?? false == true) || (p.SLMAIN ?? false == true)).OrderBy(p => p.SeqNo);
            }
            else if (AFactory == "RX")
            {
                this.bsDepartal.DataSource = lists.Where(p => (p.GGSALES ?? false == true) || (p.RXFACT ?? false == true)).OrderBy(p => p.SeqNo);
            }
            else if (AFactory == "GG")
            {
                this.bsDepartal.DataSource = lists.Where(p => p.GGFACT ?? false == true).OrderBy(p => p.SeqNo);
            }
            else if (AFactory == "CL")
            {
                this.bsDepartal.DataSource = lists.Where(p => (p.CGSALES ?? false == true) || (p.CGFACT ?? false == true)).OrderBy(p => p.SeqNo);
            }
        }

        public DepartalSort SelectDepartmental
        {
            get
            {
                return this.bsDepartal.Current as DepartalSort;
            }
        }

    }
}
