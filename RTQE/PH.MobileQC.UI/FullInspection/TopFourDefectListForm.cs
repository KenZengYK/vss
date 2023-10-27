using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class TopFourDefectListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        public TopFourDefectListForm()
        {
            InitializeComponent();
   
        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = db;
            this.BindingSource.DataSource = db.FourDefectCodes.OrderBy(dr => dr.Sort);
            this.EditorTypeName = typeof(TopFourDefectDetailForm).FullName;
        }

    }
}