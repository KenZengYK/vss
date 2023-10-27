using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.DataQuery;

namespace PH.MIDc.UI.Other
{
    public partial class SpecAttachedListForm : PH.Platform .UI .CS .UI2 .ListForm 
    {
        public SpecAttachedListForm()
        {
            InitializeComponent();
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }
        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;

            string sqlStr = @"Select A.SuppRef,SampleOrderNo,MaterialType,MaterialCode,Status,Supplier from Detail A Inner Join 
                            MIDcUpFile B On A.SuppRef=B.SuppRef";
            this.BindingSource.DataSource = context.ExecuteQuery<PH.MIDc.BO.Detail>(sqlStr); 
 
        }
    }
}
