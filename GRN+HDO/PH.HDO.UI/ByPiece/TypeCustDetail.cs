using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class TypeCustDetail : DetailForm
    {
        public TypeCustDetail()
        {
            InitializeComponent();           
        }



         BindingSource bsemp = new BindingSource();


        private void BindEmpInfo()
        {
          
            PH.PHGDB2.BO.PHGDB2DataContext _ctx = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            var _emplist = from p in _ctx.ByPiece_Employees where p.EmpId !=(this.ListForm as TypeCustList).IssueName && p.Flag==  (this.ListForm as TypeCustList).Flag  select p  ;
            bsemp.DataSource = _emplist;

            this.lueEmp.Properties.Columns.Clear();


            this.lueEmp.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
                new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 10, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

            this.lueEmp.Properties.AutoSearchColumnIndex = 0;
            this.lueEmp.Properties.DataSource = bsemp;
            this.lueEmp.Properties.ValueMember = "EmpId";
            this.lueEmp.Properties.DisplayMember = "EmpId";

            if (this.IsNew) 
            {
                DataTable tb_Customer = _ctx.GetCustomer();
                if (tb_Customer.Rows.Count > 0) 
                {
                    for (int i = 0; i < tb_Customer.Rows.Count; i++) 
                    {
                        CustomerCode.Items.Add(tb_Customer.Rows[i]["DataCode"].ToString());                        
                    }
                }
            }
           
            
        }


        protected override void SaveCurrent()
        {
            TypeDetail obj = this.BindingSource.Current as TypeDetail;
            obj.Flag = (this.ListForm as TypeCustList).Flag;
            base.SaveCurrent();
        }

        public override void DataBind()
        {
            base.DataBind();
            BindEmpInfo();         
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            edtRecId.Properties.ReadOnly = false;
        }

        private void lueEmp_EditValueChanged(object sender, EventArgs e)
        {
             PH.PHGDB2.BO.PHGDB2DataContext _ctx = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
             this.textEdit1.Text = _ctx.ByPiece_Employees.FirstOrDefault(p => p.EmpId == this.lueEmp.Text).EmpName;
        }

       
    }
}
