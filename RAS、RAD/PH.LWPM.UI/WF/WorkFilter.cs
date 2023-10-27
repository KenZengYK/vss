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

namespace PH.LWPM.UI.WF
{
    public partial class WorkFilter : DevExpress.XtraEditors.XtraForm
    {
        public WorkFilter()
        {
            InitializeComponent();
        }
        public RAPLQDataContext Context { get; set; }
        private void WorkFilter_Load(object sender, EventArgs e)
        {
            this.T_factory.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Name).ToArray());
            //this.T_line.AutoCompleteCustomSource.AddRange(Context.BaseCodes.Where(P => P.Type == "LINECODE").Select(S => S.Name).ToArray());
            //this.T_line.AutoCompleteCustomSource.AddRange(Context.WorkForces.Select(S => S.LineCode).Distinct().OrderBy(E=>E).ToArray());
            this.T_Area.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "AREA").Select(S => S.Name).ToArray());
           // this.T_Area.Properties.Items.AddRange(Context.WorkForces.Select(S => S.Area).Distinct().OrderBy(E => E).ToArray());
            this.T_WorkerTyle.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "TYPE").Select(S => S.Name).ToArray());
           // this.T_WorkerTyle.Properties.Items.AddRange(Context.WorkForces.Select(S => S.WorkerType).Distinct().OrderBy(E => E).ToArray());
            this.T_location.Properties.Items.AddRange(Context.BaseCodes.Where(P => P.Type == "Location").Select(S => S.Name).ToArray());
            //this.T_location.Properties.Items.AddRange(Context.WorkForces.Select(S => S.Location).Distinct().OrderBy(E=>E).ToArray());
        }

       
    }
}