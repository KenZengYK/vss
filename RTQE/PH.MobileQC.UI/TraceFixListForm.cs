using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.Misc.BO;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;


namespace PH.MobileQC.UI
{
    public partial class TraceFixListForm : ListForm
    {
        public TraceFixListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            PHPlatformMiscDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            this.DataContext = mdc;
            this.DataSource = from d in mdc.Misc_DataDictionaries where d.DataType == "PH.MobileQC.DefectFix" select d;
            this.EditorTypeName = typeof(TraceFixDetailForm).FullName;

            base.DataBind();
        }

        private void BindDefect()
        { 
        
        }


    }
}
