using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using System.Data.Linq;


namespace PH.RWO.UI
{
    public partial class MRAttachForm : PH.Platform.UI.CS.UI3.SubAttachForm 
    {
        public MRAttachForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            
            base.DataBind();
            this.BindingSource.DataSource = (new DataHelper()).GetMIDcMaterial();
        }
        protected override void OKAndReturnCurrent()
        {
            this.objListGridView.PostEditor();

            foreach (MR Ie in this.BindingSource)
            {
                
                if (Ie.CheckFlag)
                {
                    PackagingMaterial Ld = new PackagingMaterial();                    
                    Ld.SuppRef = Ie.SuppRef;
                    Ld.MRCode = Ie.MaterialGroup;
                    //Ld.MRType = Ie.MaterialType;
                    Ld.PHMaterial  = Ie.MaterialCode;
                    Ld.PHUnit = Ie.SupplierUnit;
                    Ld.WastageOnCAC = Ie.WastageOnCAC;
                    Ld.AllInPrice = Ie.AllInPrice;
                    Ld.WastageOnCAC = Ie.MOQ;
                    Ld.Supplier = Ie.ERPSupplier;
                    Ld.Currency = Ie.Currency;
                    Ld.ExRate = Ie.ExchangeRate;
                 
                    (this.ListForm as StylePackingDetailListForm).BindingSource.Add(Ld);
                    Ie.CheckFlag = false;
                }
            }
            //this.DataContext.SubmitChanges();
            (this.ListForm as StylePackingDetailListForm).DataSource = ((this.PrevForm as StylePackingParentDetailForm).BindingSource.Current as Style).PackagingMaterials;
            //base.OKAndReturnCurrent();

            this.PrevForm.BringToFront();
            this.Close();
        }
    }
    
}
