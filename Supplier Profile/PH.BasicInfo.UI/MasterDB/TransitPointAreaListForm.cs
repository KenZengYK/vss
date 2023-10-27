using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;
using PH.Platform.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class TransitPointAreaListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public TransitPointAreaListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.BindingSource.DataSource = (DataContext as BasicInfoDataContext).TransitPointAreas.OrderBy(p => p.SeqNo);

            this.EditorTypeName = typeof(TransitPointAreaDetailForm).FullName;
        }

        //public override void ProcessBORight()
        //{
        //    base.ProcessBORight();
        //}
    }
}
