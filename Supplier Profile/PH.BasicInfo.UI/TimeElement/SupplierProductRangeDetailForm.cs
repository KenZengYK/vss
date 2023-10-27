using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.BasicInfo.BO;
using PH.Platform.UI;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.AuthMgr.BO;
using PH.Platform.Misc.BO;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class SupplierProductRangeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public SupplierProductRangeDetailForm()
        {
            InitializeComponent();
        }

        private void MIDc_SupplierProductRangeDetailForm_Load(object sender, EventArgs e)
        {
            Misc_DataDictionaryByDataTypeList mdl = new Misc_DataDictionaryByDataTypeList();
            //MaterialGroup
            this.lookUpEdit1.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.MaterialGroup");
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "MaterialGroup", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));
        }
    }
}
