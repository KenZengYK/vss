using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
namespace PH.MIDc.UI
{
    public partial class SpecListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public Spec thisSpec
        {
            get {return  this.BindingSource.Current as Spec; }
        }

        public SpecListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(SpecDetailForm).FullName;
            this.RowChangeAutoSave = false;
            
        }

        void btnPrintSheet2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            Spec _thisSpec = this.BindingSource.Current as Spec;
            Detail d = (this.ParentForm as DetailDetailForm).BindingSource.Current as Detail;
            PrintHelper.PrintFormsSheet2(d, _thisSpec);
            this.Cursor = Cursors.Default;
        }

        void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
          
            ColorAllInfo rpt = new ColorAllInfo(thisSpec);
            rpt.ShowPreview();

        }
    }
}
