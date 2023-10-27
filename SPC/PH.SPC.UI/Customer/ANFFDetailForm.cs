using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.SPC1.UI
{
    public partial class ANFFDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ANFFDetailForm()
        {
            InitializeComponent();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
        //public override void DataBind()
        //{
          
        //    try
        //    {
        //        base.OnBindingDataSource();
        //    }
        //    catch (Exception e)
        //    {
        //        MessageBox.Show(e.Message);
        //    }
        //}

        //protected override void OnBindingDataSource()
        //{
        //    try
        //    {
        //        base.OnBindingDataSource();
        //    }
        //    catch (Exception e)
        //    {
        //        MessageBox.Show(e.Message);
        //    }
        //}

    }
}
