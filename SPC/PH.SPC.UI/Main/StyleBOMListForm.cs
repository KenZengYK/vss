using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using PH.Common.Report;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;
using System.Drawing.Drawing2D;

namespace PH.SPC.UI
{
    public partial class StyleBOMListForm : PH.Platform.UI.CS.UI2.ListForm //PH.UI.UI2.ChildListForm
    {
        public StyleBOMListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleBOMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public StyleBOMListForm(Style style)
        {
            InitializeComponent();
            this.DataSource = style.StyleBOMs;
            this.EditorTypeName = typeof(StyleBOMDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

    }
}
