using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.UI
{
    public partial class StylePackingParentDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm 
    {
        public StylePackingParentDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            this.stylePackingDetailListForm1.DataSource = (this.BindingSource.Current as PH.RWO.BO.Style).PackagingMaterials;
            base.DataBind();
            this.stylePackingDetailListForm1.AttachTypeName = typeof(MRAttachForm).FullName;
            this.stylePackingDetailListForm1.AllowGridEdit = true;

            GetCheckCmbItem();
            
        }
        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            GetCheckCmbItem();
        }
        protected override void OnClickEdit()
        {            
            base.OnClickEdit();
            GetCheckCmbItem();
        }


        void GetCheckCmbItem()
        {
            var CurStyle = this.BindingSource.Current as PH.RWO.BO.Style;
            if (CurStyle == null) return;
            this.stylePackingDetailListForm1.chkcmbColor.Items.Clear();
            this.stylePackingDetailListForm1.chkcmbSize.Items.Clear();
            this.stylePackingDetailListForm1.chkcmbCup.Items.Clear();
            if (!string.IsNullOrEmpty(CurStyle.ColorRange))
            {  foreach (string item in CurStyle.ColorRange.Split(','))
                {
                    this.stylePackingDetailListForm1.chkcmbColor.Items.Add(item);
                }
            }

            if (!string.IsNullOrEmpty(CurStyle.SizeRange))
            {  foreach (string item in CurStyle.SizeRange.Split(','))
                {
                    this.stylePackingDetailListForm1.chkcmbSize.Items.Add(item);
                }
            }

            if (!string.IsNullOrEmpty(CurStyle.CupRange))
            {  foreach (string item in CurStyle.CupRange.Split(','))
                {
                    this.stylePackingDetailListForm1.chkcmbCup.Items.Add(item);
                }
            }
           
        }

        private void barBtnPM_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Report.PackagingMaterialRpt rpt = new PH.RWO.UI.Report.PackagingMaterialRpt(this.DataContext as PH.RWO.BO.RWOSOPCDataContext,this.BindingSource.Current as PH.RWO.BO.Style);
            rpt.ShowPreview();
        }

        private void barBtnCostAnglysis_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            (new PH.RWO.UI.Report.COSTANALYSISCERTIFICATE(this.BindingSource.Current as PH.RWO.BO.Style)).ShowPreview();
            
        }
    }
}
