using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views;
using PH.MobileQC.BO;

//using PH.UI.UI1;

namespace PH.MobileQC.UI
{
    public partial class DefectPrevent : PH.Platform.UI.CS.UI2.ListForm //PH.UI.UI1.SingleListForm
    {
        MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();

        public DefectPrevent()
        {
            InitializeComponent();
           
        }
 
        public override void DataBind()
        {
            
            this.DataContext = context;     
            this.DataSource = from d in context.QC_Defects where d.Defect_Type==4 select d;
            this.EditorTypeName = typeof(DefectPreventDetailForm).FullName;

            base.DataBind();
        }

        protected override void OnClickOpen()
        {
            //this.BindingSource.MoveFirst();
            //if(this.BindingSource.List.Count != this.objListGridView.DataRowCount)
            //{
            //    this.BindGridControl();
            //}
            //for (int i = 0; i < this.objListGridView.GetSelectedRows().First(); i++)
            //{
            //    this.BindingSource.MoveNext();
            //}
            
            base.OnClickOpen();
        }     

        
    }
}
