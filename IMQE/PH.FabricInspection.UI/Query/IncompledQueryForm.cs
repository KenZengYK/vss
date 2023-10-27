using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.FabricInspection.UI.BandLace;
using PH.FabricInspection.UI.Elastic;
using PH.FabricInspection.UI.BraCup;
using PH.FabricInspection.UI.Accessory;

namespace PH.FabricInspection.UI.Query
{
    public partial class IncompledQueryForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        public IncompledQueryForm()
        {
            InitializeComponent();

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var CategoryList = db.ActionLogSubjectCategories.Where(p => p.OID != 2).OrderBy(p => p.SeqNo).Select(p => p.ShortName).ToList();
            txtCategory.Properties.Items.Clear();
            txtCategory.Properties.Items.AddRange(CategoryList);
            txtCategory.SelectedIndex = 0;
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            int Category = txtCategory.SelectedIndex;

            if (Category == 0) //Allover
            {
                this.CreateProgramForm(typeof(MasterListForm), txtCategory.Text + " - Incompleted", true, new object[] { true }, null);
            }
            else if (Category == 1) //Band Lance
            {
                this.CreateProgramForm(typeof(BandLaceHeaderListForm), txtCategory.Text + " - Incompleted", true, new object[] { true }, null);
            }
            else if (Category == 2) //Elastic tape
            {
                this.CreateProgramForm(typeof(ElasticHeaderListForm), txtCategory.Text + " - Incompleted", true, new object[] { true }, null);
            }
            else if (Category == 3) //Bra Cup
            {
                this.CreateProgramForm(typeof(BraCupHeaderListForm), txtCategory.Text + " - Incompleted", true, new object[] { true }, null);
            }
            else if (Category == 4) //Accessory
            {
                this.CreateProgramForm(typeof(AccessoryHeaderListForm), txtCategory.Text + " - Incompleted", true, new object[] { true }, null);
            }
        }
    }
}
