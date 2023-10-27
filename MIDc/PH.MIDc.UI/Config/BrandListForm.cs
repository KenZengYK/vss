using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;

namespace PH.MIDc.UI.Config
{
    public partial class BrandListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BrandListForm()
        {
            InitializeComponent();
        }

        PH.MIDc.BO.MIDcDataContext context = ContextBuilder.CreateContext<MIDcDataContext>();

        public override void DataBind()
        {  
            this.DataContext = context;
            this.BindingSource.DataSource = context.Brands.OrderBy(dr => dr.BrandCode);
            this.EditorTypeName = typeof(BrandDetailForm).FullName;
            base.DataBind();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MIDc.BO.MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
            this.BindingSource.DataSource = null;

            string SqlStr = "exec sp_ImportBrands";
            int ACount = db.ExecuteDataSet(SqlStr, new DataSet(), "Opts").Tables[0].Rows.Count;
            string MessageStr  =string.Format("Added '{0}' Imformations",ACount);
            this.BindingSource.DataSource = null;
            this.BindingSource.DataSource = db.Brands.OrderBy(dr=>dr.BrandCode);


            objListGridControl.DataSource = this.BindingSource;
            objListGridControl.Refresh();
            MessageBox.Show(MessageStr, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
           
            
           
            //context.Brands.InsertAllOnSubmit();
        }
    }
}
