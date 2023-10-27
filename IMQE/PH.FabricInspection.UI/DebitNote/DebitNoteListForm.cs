using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.FabricInspection.BO;
using System.IO;

namespace PH.FabricInspection.UI.DebitNote
{
    public partial class DebitNoteListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public DebitNoteListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).DebitNotes
                .Where(p => p.CreateDate >= DateTime.Now.AddYears(-1))
                .OrderByDescending(p => p.DNNo);
            this.EditorTypeName = typeof(DebitNoteDetailForm).FullName;
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.FabricInspection.BO.DebitNote obj = this.BindingSource.Current as PH.FabricInspection.BO.DebitNote;
            if (obj == null) return;
            DebitNoteReport Rpt = new DebitNoteReport(obj);
            Rpt.ShowPreview();
        }

    }
}
