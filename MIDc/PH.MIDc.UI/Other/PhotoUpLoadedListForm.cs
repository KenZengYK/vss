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

namespace PH.MIDc.UI
{
    public partial class PhotoUpLoadedListForm : PH.Platform .UI .CS .UI2 .ListForm 
    {
        public PhotoUpLoadedListForm()
        {
            InitializeComponent(); 
            this.objListGridView.OptionsBehavior.AutoPopulateColumns = false;
        }
        public override void DataBind()
        {
            PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = context;

            string sqlStr = @"Select SuppRef,SampleOrderNo,MaterialType,MaterialCode,Status,Supplier from Detail Where Photo is not null"; 
            this.BindingSource.DataSource = context.ExecuteQuery<Detail>(sqlStr); 

        } 
    }
}
