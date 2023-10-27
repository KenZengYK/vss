using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;
using DevExpress.XtraEditors.Controls;

namespace PH.MIDc.UI 
{
    public partial class CupDetailDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public CupDetailDetailForm()
        {
            InitializeComponent();
        }

        private void CupDetailDetailForm_Load(object sender, EventArgs e)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

            //Cup
            this.cupLookUpEdit.Properties.DataSource = from dictionaryData in context.Misc_DataDictionaries where dictionaryData.DataType == "PH.Cup" select dictionaryData;
            this.cupLookUpEdit.Properties.DisplayMember = "DataCode";
            this.cupLookUpEdit.Properties.ValueMember = "DataCode";
            LookUpColumnInfoCollection coll = this.cupLookUpEdit.Properties.Columns;
            coll.Add(new LookUpColumnInfo("DataCode", "Cup", 0));
            coll.Add(new LookUpColumnInfo("Description", "Description", 0));
        }
    }
}
