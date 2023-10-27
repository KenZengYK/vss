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
    public partial class ShipmentLeadtimeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ShipmentLeadtimeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(ShipmentLeadtimeDetailForm).FullName;
            this.Load += new EventHandler(ShipmentLeadtimeListForm_Load);
        }

        void ShipmentLeadtimeListForm_Load(object sender, EventArgs e)
        {
            if (!DesignMode)
            {

                //this.
                this.AllowGridEdit = true;
                this.objListGridView.OptionsNavigation.EnterMoveNextColumn = true;  //this.AllowKeyPress == true
                Misc_DataDictionaryByDataTypeList mdl = new Misc_DataDictionaryByDataTypeList();
                //MaterialGroup

                this.repositoryItemLookUpEdit1.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.MaterialGroup");
                this.repositoryItemLookUpEdit1.Properties.DisplayMember = "DataCode";
                this.repositoryItemLookUpEdit1.Properties.ValueMember = "DataCode";
                LookUpColumnInfoCollection coll = this.repositoryItemLookUpEdit1.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Composition", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));

                //MaterialGroup
                this.repositoryItemLookUpEdit2.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.ShipMode");
                this.repositoryItemLookUpEdit2.Properties.DisplayMember = "DataCode";
                this.repositoryItemLookUpEdit2.Properties.ValueMember = "DataCode";
                coll = this.repositoryItemLookUpEdit2.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Composition", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));

                //MaterialGroup
                this.repositoryItemLookUpEdit3.DataSource = mdl.GetAllMisc_DataDictionaryByDataType("PH.MIDc.Factory");
                this.repositoryItemLookUpEdit3.Properties.DisplayMember = "DataCode";
                this.repositoryItemLookUpEdit3.Properties.ValueMember = "DataCode";
                coll = this.repositoryItemLookUpEdit3.Columns;
                coll.Add(new LookUpColumnInfo("DataCode", "Composition", 0));
                coll.Add(new LookUpColumnInfo("Description", "Description", 0));
            }

        }

    }
}
