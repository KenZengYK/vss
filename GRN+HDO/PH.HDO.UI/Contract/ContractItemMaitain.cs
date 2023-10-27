using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class ContractItemMaitain : ListForm
    {
        public ContractItemMaitain()
        {
            InitializeComponent();
        }

        ContractInfo cif;
        protected override void OnClickAddNew()
        {

            List<ContractAttach> _lst = ((this.ParentForm as ContractDetailA).ListForm as ContractSetting).CurrentList;
            cif = (this.ParentForm as ContractDetailA).BindingSource.Current as ContractInfo;
            //HDODataContext hdoctx =this.DataContext as HDODataContext;
            HDODataContext hdoctx = (this.ParentForm).DataContext as HDODataContext;
            AttachMaterialList frm = new AttachMaterialList(this, cif, hdoctx);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                hdoctx.SubmitChanges();

                (this.ParentForm as ContractDetailA).BindingSource.DataSource = cif;

                (this.ParentForm as ContractDetailA).DataBind();

            }


        }
    }
}
