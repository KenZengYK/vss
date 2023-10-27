using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class ColorDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public ColorDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            PH.MIDc.BO.Color color = this.BindingSource.Current as PH.MIDc.BO.Color;
            if (color == null) return;


            this.colorSuppNameListForm1.BindingSource.DataSource = color.ColorSuppCustNames.Where(p => p.Flag == "Supp");
            this.colorCustNameListForm1.BindingSource.DataSource = color.ColorSuppCustNames.Where(p => p.Flag == "Cust");
        }


    }
}
