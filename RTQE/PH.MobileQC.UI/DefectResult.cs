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

using PH.UI.UI1;

namespace PH.MobileQC.UI
{
    public partial class DefectResult : PH.UI.UI1.SingleListForm
    {
        MobileQCDataContext context = new MobileQCDataContext();

        public DefectResult()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(DefectDetail).FullName;
        }

        private void DefectResult_Load(object sender, EventArgs e)
        {
           
            this.DataContext = context;            
            this.DataSource = from d in context.QC_Defects where d.Defect_Type==5 select d;
            //this.BindGridControl();

        }

        //private void BindGridControl()
        //{
        //    this.objListGridControl.DataSource = from d in context.QC_Defects
        //                                         select new
        //                                         {
        //                                             d.Defect_Type,
        //                                             Defect_Type_Zh = d.Defect_Type == 1 ? "瑕疵" : d.Defect_Type == 2 ? "瑕疵部位" : d.Defect_Type == 3 ? "瑕疵處理" : d.Defect_Type == 4 ? "瑕疵預防" : d.Defect_Type == 5 ? "QC結果" : "空",
        //                                             d.Defect_Code,
        //                                             d.Defect_Spec
        //                                         };
        //}


        protected override void OnClickOpen()
        {
            //this.CurBindingSource.MoveFirst();
            //if(this.CurBindingSource.List.Count != this.objListGridView.DataRowCount)
            //{
            //    this.BindGridControl();
            //}
            //for (int i = 0; i < this.objListGridView.GetSelectedRows().First(); i++)
            //{
            //    this.CurBindingSource.MoveNext();
            //}
            
            base.OnClickOpen();
        }

        

        
    }
}
