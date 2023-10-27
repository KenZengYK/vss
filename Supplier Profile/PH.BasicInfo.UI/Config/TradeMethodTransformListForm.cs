using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Config
{
    public partial class TradeMethodTransformListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public TradeMethodTransformListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(TradeMethodTransformDetailForm).FullName;
        }


        public override void DataBind()
        {
            //在此設置DataSource和context。
            TradeMethodTransformList tl = new TradeMethodTransformList();
            this.DataContext = tl.CurrentDataContext;
            this.BindingSource.DataSource = tl.GetAllTradeMethodTransform();
            base.DataBind();
        }
    }
}
