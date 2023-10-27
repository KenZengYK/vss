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
    public partial class ShipmentLeadtimeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ShipmentLeadtimeDetailForm()
        {
            InitializeComponent();
        }

        private void MIDc_ShipmentLeadtimeDetailForm_Load(object sender, EventArgs e)
        {
            Misc_DataDictionaryByDataTypeList mdl = new Misc_DataDictionaryByDataTypeList();

            this.lookUpEdit1.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.MaterialGroup");
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "MaterialGroup", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //ShipMode
            this.lookUpEdit2.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.ShipMode");
            this.lookUpEdit2.Properties.DisplayMember = "DataCode";
            this.lookUpEdit2.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit2.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "ShipMode", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Factory
            this.lookUpEdit3.Properties.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.Factory");
            this.lookUpEdit3.Properties.DisplayMember = "DataCode";
            this.lookUpEdit3.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit3.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Factory", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            
        }

       
    }
}
