using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB5
{
    public partial class LB5MatchingLogListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string Factory;
        string LineCode;
        string Project;
        string WO;
        string RWO;
        string QN;
        string Color;

        public LB5MatchingLogListForm()
        {
            InitializeComponent();
        }

        public LB5MatchingLogListForm(string AFactory, string ALineCode, string AProject, string AWO, string ARWO, string AQN, string AColor)
        {
            InitializeComponent();

            Factory = AFactory;
            LineCode = ALineCode;
            Project = AProject;
            WO = AWO;
            RWO = ARWO;
            QN = AQN;
            Color = AColor;
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<RAPLQDataContext>();
            var lists = (this.DataContext as RAPLQDataContext).LB5MatchingLogs.Where(p => p.Factory == Factory && p.LineCode == LineCode &&
                p.j_NO == Project && p.J2_job == WO && p.Rwo == RWO && p.Qn == QN && p.Bcolor == Color).OrderByDescending(p => p.Seq);

            this.BindingSource.DataSource = lists;
        }
    }
}
