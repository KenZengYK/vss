using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.UI.WF;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MasterDB
{
    public partial class RECRoleEditForm : BaseCodeEditForm
    {
        public RECRoleEditForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.txtREC.Properties.Items.Clear();
            var RECList = (this.DataContext as RAPLQDataContext).BaseCodes.Where(p => p.Type == "RECName").Select(p => p.Code).ToArray();
            foreach (var obj in RECList)
            {
                this.txtREC.Properties.Items.Add(obj);
            }
        }

        private void edtDepartment_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            AppointedDepartmentalForm frmDept = new AppointedDepartmentalForm();
            if (frmDept.ShowDialog() == DialogResult.OK)
            {
                BaseCode obj = this.BindingSource.Current as BaseCode;
                if (obj != null)
                {
                    if (string.IsNullOrEmpty(obj.Type))
                    {
                        obj.Type = "cbbRecrole";
                    }

                    obj.ExtraField1 = frmDept.ChoiceDepartmentalRowIDs;
                }
                //this.edtDepartmentRowID.Text = frmDept.ChoiceDepartmentalRowIDs;
            }

        }

        private void txtREC_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        {
            this.txtREC.Text = this.txtREC.Text.ToString().Replace(" ", "");
        }

    }
}
