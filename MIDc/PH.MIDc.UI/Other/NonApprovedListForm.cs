using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class NonApprovedListForm : DetailListForm
    {
        public NonApprovedListForm()
        {
            InitializeComponent();            
        }

        private void NonApprovedListForm_Load(object sender, EventArgs e)
        {
             //在此設置DataSource和context。
            PH.MIDc.BO.MIDcDataContext context = new PH.MIDc.BO.MIDcDataContext();
            this.DataContext = context;
            this.DataSource = from detail in context.Details where detail.MIDStatus ==  "NonApproved" select detail;
            this.AllowGridEdit = true;
            this.objListGridView.OptionsBehavior.Editable = true;
            //this.IsCopyAsNew = false;
            foreach (DevExpress.XtraGrid.Columns.GridColumn col in this.objListGridView.Columns)
            {
                col.OptionsColumn.AllowEdit = true;
                if (col.FieldName == "Selected")
                    col.OptionsColumn.ReadOnly = false;
                else
                    col.OptionsColumn.ReadOnly = true;

            }
        }
    }
}
