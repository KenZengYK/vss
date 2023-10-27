using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.Linq;
using PH.Platform.Misc.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Setup
{
    public partial class ProductCodeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ProductCodeListForm()
        {
            InitializeComponent();
        }

        public string DictionaryType { get; set; }

        public ProductCodeListForm(string dictionaryType)
        {
            this.DictionaryType = dictionaryType;
            InitializeComponent();
        }

        PHPlatformMiscDataContext db = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();

        public override void DataBind()
        {
            base.DataBind();
            if (this.DataContext == null) 
            {
                this.DataContext = db;
            }

            this.BindingSource.DataSource = db.Misc_DataDictionaries.Where(dr => dr.DataType == DictionaryType).ToList();

            this.EditorTypeName = typeof(ProductCodeDetailForm).FullName;
            objListGridView.BestFitColumns();    
        
        }
    }
}
