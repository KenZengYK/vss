using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class GetDataForm : DevExpress.XtraEditors.XtraForm
    {
        public GetDataForm()
        {
            InitializeComponent();
        }

        ProjectListForm CallForm;
        public GetDataForm(ProjectListForm theForm)
            : this()
        {
            CallForm = theForm;
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (this.txtSalesOrderNo.Text.Length > 7)
            {
                MessageBox.Show("Only can input 7 chars!");
                return;
            }
            if (this.txtSalesOrderNo.Text.Length == 0)
            {
                MessageBox.Show("Pls input Sales Order No!");
                return;
            }
            CallForm.cono = this.txtCompany.Text;
            CallForm.ordn = this.txtSalesOrderNo.Text.ToUpper();
            this.Close();
        }
    }
}
