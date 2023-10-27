using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI3;
using DevExpress.XtraBars;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class ContractItemList : ListForm
    {

        ContractInfo cif;
        public ContractItemList()
        {
            InitializeComponent();
            this.barBtnOpen.Visibility = BarItemVisibility.Never;
        }

        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();
            List<ContractAttach> _lst = ((this.ParentForm as ContractDetailA).ListForm as ContractSetting).CurrentList;
            cif= (this.ParentForm as ContractDetailA).BindingSource.Current as ContractInfo;
            //HDODataContext hdoctx =this.DataContext as HDODataContext;
            HDODataContext hdoctx = (this.ParentForm).DataContext as HDODataContext;
            AttachListForm frm = new AttachListForm(this,cif, hdoctx, _lst);
            frm.StartPosition = FormStartPosition.CenterScreen;
            DialogResult dgr = frm.ShowDialog();
            if (dgr == DialogResult.OK)
            {

                hdoctx.SubmitChanges();

                //hdoctx = ContextBuilder.CreateContext<HDODataContext>();
                //(this.ParentForm).DataContext = hdoctx;
                //this.DataContext = hdoctx;

                //objListGridControl.BeginInit();
                //this.BindingSource.DataSource = null;
                //this.BindingSource.DataSource = cif.ContractInfoDetails;
                //objListGridControl.EndInit();

                (this.ParentForm as ContractDetailA).BindingSource.DataSource = cif;
                
                (this.ParentForm as ContractDetailA).DataBind();
                //this.objListGridView.RefreshData();
               // objListGridControl.RefreshDataSource();

            }


        }

        protected override void OnClickDelete()
        {
            //base.OnClickDelete();
            DialogResult dgr = MessageBox.Show("確定要刪除選擇的數據嗎?", "刪除確認", MessageBoxButtons.YesNo);
            if (dgr == DialogResult.Yes)
            {
                //Dictionary<ContractInfoDetail> aa = this.GetCheckData<ContractInfoDetail>();
                Dictionary<int,ContractInfoDetail> dict = this.GetCheckData<ContractInfoDetail>();
                cif = (this.ParentForm as ContractDetailA).BindingSource.Current as ContractInfo;
                foreach (KeyValuePair<int, ContractInfoDetail> kvp in dict)
                {
                    cif.ContractInfoDetails.Remove(kvp.Value);
                }

                this.DataContext.SubmitChanges();
                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = cif.ContractInfoDetails; 

            
            }
        }



    }
}
