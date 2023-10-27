using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors.Controls;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class ShipmentLeadtimeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ShipmentLeadtimeDetailForm()
        {
            InitializeComponent();
        }

        private void ShipmentLeadtimeDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext < PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //MaterialGroup
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.MaterialGroup" select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "MaterialGroup", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //ShipMode
            this.lookUpEdit2.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.ShipMode" select dictionaryData;
            this.lookUpEdit2.Properties.DisplayMember = "DataCode";
            this.lookUpEdit2.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit2.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "ShipMode", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            //Factory
            this.lookUpEdit3.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.Factory" select dictionaryData;
            this.lookUpEdit3.Properties.DisplayMember = "DataCode";
            this.lookUpEdit3.Properties.ValueMember = "DataCode";
            coll = this.lookUpEdit3.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Factory", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            this.textEdit1.Properties.ReadOnly = true;
        }
    }
}
