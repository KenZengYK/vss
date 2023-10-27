using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.BasicInfo.BO;
using PH.Platform.Misc.BO;
using System.Linq;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class IncotermMasterDBDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
        public IncotermMasterDBDetailForm()
        {
            InitializeComponent();
            GetlookUpEditData();
            GetTransitModeData();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            txtTotalSupplier.Properties.ReadOnly = true;
        }

        void GetlookUpEditData()
        {
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitPoint").OrderBy(dr => dr.DataCode);

            lookUpEdit1.Properties.DisplayMember = "DataCode";
            lookUpEdit1.Properties.ValueMember = "DataCode";
            lookUpEdit1.Properties.DataSource = list;
        }

        void GetTransitModeData()
        {
            txtTransitMode.Properties.Items.Clear();
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(p => p.DataCode).OrderBy(dr => dr);
            txtTransitMode.Properties.Items.Add("");
            txtTransitMode.Properties.Items.AddRange(list.ToList());
        }

        private void lookUpEdit1_EditValueChanged(object sender, EventArgs e)
        {
            var list = MiscDB.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitPoint" && p.DataCode == this.lookUpEdit1.Text).FirstOrDefault();
            txtFullDesc.Text = list.DataName;
        }
    }
}
