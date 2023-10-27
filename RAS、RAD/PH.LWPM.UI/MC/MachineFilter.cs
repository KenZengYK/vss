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

namespace PH.LWPM.UI.MC
{
    public partial class MachineFilter : DevExpress.XtraEditors.XtraForm
    {
        public MachineFilter()
        {
            InitializeComponent();
        }
        public sbyte SummaryFlg
        {
            get
            {
                if (Ot_WithSummary.Checked)
                    return 1;
                else if (Ot_withoutSummary.Checked)
                    return 2;
                else if (Ot_summaryOnly.Checked)
                    return 3;
                else
                    return 0;

            }
        }
        public RAPLQDataContext Context { get; set; }
        private void WorkFilter_Load(object sender, EventArgs e)
        {
            this.T_Factory.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Name).ToArray());
            this.L_MCType.Properties.DataSource = Context.BaseCodes.Where(P => P.Type == "METHODTYPE");
            this.T_Location.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "Location").Select(S => S.Name).ToArray());
            this.T_Class.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "DEPTGROUP").Select(S => S.Name).ToArray());
            this.T_wsss.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "ShopName").Select(S => S.Name).ToArray());
        }

        private void L_MCType_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            if (this.L_MCType.GetColumnValue("Name") != null)
                this.T_Desc.Text = this.L_MCType.GetColumnValue("Name").ToString().TrimEnd();
        }

        private void c_ok_Click(object sender, EventArgs e)
        {

        }
       
    }
}