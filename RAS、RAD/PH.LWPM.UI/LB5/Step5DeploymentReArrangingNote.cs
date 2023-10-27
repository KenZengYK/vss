using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using System.Data.Linq;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB5
{
    public partial class Step5DeploymentReArrangingNote : Form
    {
        public Step5DeploymentReArrangingNote()
        {
            InitializeComponent();

            this.PrepareData();
        }

        void PrepareData()
        {
            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsProcessedStage.DataSource = db.BaseCodes.Where(p => p.Type == "ProcessingStage").OrderBy(p => p.SortID);
            this.bsRearrangingType.DataSource = db.BaseCodes.Where(p => p.Type == "RFlag").OrderBy(p => p.SortID);
        }
    }
}
