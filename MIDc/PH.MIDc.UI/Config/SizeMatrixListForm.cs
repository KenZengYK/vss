using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using System.Linq;

namespace PH.MIDc.UI.Config
{
    public partial class SizeMatrixListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public SizeMatrixListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();// new PH.Platform.Misc.BO.PHPlatformMiscDataContext();
            this.DataContext = context;
            this.DataSource = from dic in context.Misc_DataDictionaries
                              where dic.DataType == "PH.WO.SizeMatrix"
                              select dic;

            this.EditorTypeName = typeof(SizeMatrixDetailForm).FullName;

            base.DataBind();
        }

    }
}
