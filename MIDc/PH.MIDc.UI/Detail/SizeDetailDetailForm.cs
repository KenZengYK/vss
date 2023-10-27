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
    public partial class SizeDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public SizeDetailDetailForm()
        {
            InitializeComponent();
        }

        private void SizeDetailDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //Size
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.MIDc.Size" select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "DataCode";
            this.lookUpEdit1.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Size", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));

            ////MaterialType
            //this.lookUpEdit2.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries  where dictionaryData.DataType == "PH.MIDc.MaterialType" select dictionaryData;
            //this.lookUpEdit2.Properties.DisplayMember = "DataCode";
            //this.lookUpEdit2.Properties.ValueMember = "DataCode";
            //coll = this.lookUpEdit2.Properties.Columns;
            //coll.Add(new LookUpColumnInfo("DataCode", "MaterialType", 0));
            //coll.Add(new LookUpColumnInfo("Description", "Description", 0));
        }
    }
}
