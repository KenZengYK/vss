using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.HDO.BO;

namespace PH.HDO.UI.Contract
{
    public partial class FrmContractSelect : Form
    {

        
        ContractFullInfo ParentCtrl;
        List<int> SelectIds=new List<int>();
        List<SelectedItem> AllItems =new List<SelectedItem>();
        public FrmContractSelect(ContractFullInfo parent)
        {
            InitializeComponent();
            ParentCtrl = parent;
            BindContract();
        }
        private void BindContract()
        {
            //this.context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            HDODataContext hdoctx = ParentCtrl.DataContext as HDODataContext;
            var q = from c in hdoctx.ContractInfos
                    select new 
                    {
                        c.ContractNo,c.CraId
                    };

          //  this.lueContract.Properties.DataSource = from a in q orderby a.ContractNo select a;
          //  ckbContract.Properties.
            
            foreach (var item in q)
            {
                this.ckbContract.Properties.Items.Add(item.ContractNo);
                SelectedItem sitem = new SelectedItem();
                sitem.ContractNo = item.ContractNo.Trim();
                sitem.CraId = item.CraId;
                AllItems.Add(sitem);

            }


            //LookUpColumnInfoCollection coll = this.lue_Line.Properties.Columns;
            //this.lue_Line.Properties.DataSource = from a in q orderby a.Line select a;
            //this.lue_Line.Properties.DisplayMember = "Line";
            //this.lue_Line.Properties.ValueMember = "Line";
            //coll.Add(new LookUpColumnInfo("Line", "Line", 0));    

            /*
             
             
                // 5.Project.
                var objsProject = (from c in this._lsQCMaster
                                   where (c.WorkShop == this.WorkShop || this.WorkShop == "") &&
                                         (c.Factory == this.Factory || this.Factory == "") &&
                                         (c.Style == this.Style || this.Style == "") &&
                                         (c.Customer == this.Customer || this.Customer == "") &&
                                          c.Project != null
                                   orderby c.Project //dong
                                   select new { Project = c.Project }).Distinct();
                foreach (var item in objsProject)
                    this.edtProject.Properties.Items.Add(item.Project); 
             
             */


        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            
            //this.ParentCtrl.ContractSelect = ckbContract.Text;
            if (!string.IsNullOrEmpty(ckbContract.Text))
            {
                string[] _arycontract =ckbContract.Text.Split(new char[] { ',' });
                SelectIds.Clear();

                for(int i=0;i<_arycontract.Length;i++)
                {
                   string _contract =_arycontract[i];
                   // SelectedItem sti =  AllItems.Where(p=>p.ContractNo.Trim()==_contract).FirstOrDefault();
                   //var ss = from a in AllItems where a.ContractNo == _contract select a;
                   //SelectedItem sti = ss.FirstOrDefault();
                   //if (sti != null)
                   //    SelectIds.Add(sti.CraId);

                   foreach (SelectedItem _item in AllItems)
                   {
                       if (_item.ContractNo.Trim() == _contract.Trim())
                           SelectIds.Add(_item.CraId);
                   }

                 
                
                }

                this.ParentCtrl.ContractSelect = SelectIds;
            }
         //   this.Close();
            
          
        }
    }


    public class SelectedItem
    {
        public string ContractNo
        {
            get;
            set;
        }

        public int CraId
        {
            get;
            set;
        }

    }
}
