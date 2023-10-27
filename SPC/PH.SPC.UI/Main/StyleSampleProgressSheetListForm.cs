using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleSampleProgressSheetListForm : PH.Platform.UI.CS.UI2.ListForm //PH.UI.UI2.ChildListForm
    {
        public StyleSampleProgressSheetListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(StyleSampleProgressSheetDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        public StyleSampleProgressSheetListForm(Style style)
        {
            InitializeComponent();
            this.DataSource = style.StyleSampleProgressSheets;
            this.EditorTypeName = typeof(StyleSampleProgressSheetDetailForm).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

     

    }
}
