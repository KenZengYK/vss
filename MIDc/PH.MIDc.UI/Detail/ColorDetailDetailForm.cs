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
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ColorDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ColorDetailDetailForm()
        {
            InitializeComponent();
        }

        private void ColorDetailDetailForm_Load(object sender, EventArgs e)
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();

            //Color
            this.lookUpEdit1.Properties.DataSource = from dictionaryData in context.Colors  select dictionaryData;
            this.lookUpEdit1.Properties.DisplayMember = "Color1";
            this.lookUpEdit1.Properties.ValueMember = "Color1";
            LookUpColumnInfoCollection coll = this.lookUpEdit1.Properties.Columns;
            coll.Add(new LookUpColumnInfo("Color1", "Color", 0));
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
