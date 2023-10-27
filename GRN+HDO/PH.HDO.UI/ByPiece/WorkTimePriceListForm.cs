using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;
using PH.Platform.BO;


namespace PH.HDO.UI.ByPiece
{
    public partial class WorkTimePriceListForm : ListForm
    {
        public WorkTimePriceListForm()
        {
            InitializeComponent();
        }

        public int Flag;
        public WorkTimePriceListForm(string Flag)
        {
            InitializeComponent();
            this.Flag =Convert.ToInt32(Flag);
        }

        PHGDB2DataContext Context = ContextBuilder.CreateContext<PHGDB2DataContext>();
        public override void DataBind()
        {
            this.DataContext = Context;
            this.BindingSource.DataSource = Context.ByPiece_PriceCounts;
            //this.EditorTypeName = typeof(WorkTimeApplicationDetailForm).FullName;
            this.AllowGridEdit = true;
           
            this.BsEmp.DataSource = Context.ByPiece_Employees;
            base.DataBind();
        
        }
        //ByPiece_PriceCount a = this.BindingSource.Current as ByPiece_PriceCount;
        private void repositoryItemDateEdit1_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            //object aa = repositoryItemDateEdit1.EditValue;
           
            repositoryItemDateEdit2.MinValue = DateTime.Parse("2018-10-10");
            repositoryItemDateEdit2.MaxValue = DateTime.Parse("2018-10-31");
      
           
        }

        private void repositoryItemDateEdit1_EditValueChanged(object sender, EventArgs e)
        {
            repositoryItemDateEdit2.MinValue = DateTime.Parse("2018-10-10");
            repositoryItemDateEdit2.MaxValue = DateTime.Parse("2018-10-31");

            ByPiece_PriceCount obj=new ByPiece_PriceCount();
            string a = obj.GetStartTime().ToString();
        }

    }
}