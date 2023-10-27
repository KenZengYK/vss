using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI.Config
{
    public partial class ColorSuppNameListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public ColorSuppNameListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(ColorSuppNameDetailForm).FullName;
            //this.AllowGridEdit = true;
        }


        public override void SaveData()
        {
            ColorSuppCustName obj = this.BindingSource.Current as ColorSuppCustName;
            obj.Flag = "Supp";
            base.SaveData();
        }
    }
}
