using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class DepartmentListForm : BaseCodeListForm
    {
        public DepartmentListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(DepartmentEditForm).FullName;
        }

        public override void OnClickPrint()
        {
            //base.OnClickPrint();

            BaseCodeReport rptDepartment = new BaseCodeReport(this.objListGridView.FilteredList(), "Department");
            rptDepartment.ShowPreview();  

            //DepartmentReport rptDepartment = new DepartmentReport(this.objListGridView.FilteredList());
            //rptDepartment.ShowPreview();
        }
    }
}
