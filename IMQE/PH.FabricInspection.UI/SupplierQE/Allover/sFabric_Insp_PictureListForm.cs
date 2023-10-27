using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.FabricInspection.UI.SupplierQE.Allover
{
    public partial class sPictureListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public sPictureListForm()
        {
            InitializeComponent();
        }


        public override void DataBind()
        {
            this.objListGridView.OptionsBehavior.Editable = true;
        } 

        private void rItemHLinkEdit_ImgA_DoubleClick(object sender, EventArgs e)
        {
            //FabricInspection.BO.Fabric_Insp_Picture fiPic = this.BindingSource.Current as FabricInspection.BO.Fabric_Insp_Picture;
            //if (fiPic.Img_A.PicPath == null)
            //{
            //    return;
            //}
            
            //FrmImageViewer frmImgViewer=new FrmImageViewer ();
            //frmImgViewer.ImgPath = fiPic.Img_A.PicPath.ToString();
            //frmImgViewer.ShowDialog();
        }

        private void rItemHLinkEdit_ImgB_DoubleClick(object sender, EventArgs e)
        {

            //FabricInspection.BO.Fabric_Insp_Picture fiPic = this.BindingSource.Current as FabricInspection.BO.Fabric_Insp_Picture;
            //if (fiPic.Img_B.PicPath == null)
            //{
            //    return;
            //}

            //FrmImageViewer frmImgViewer = new FrmImageViewer();
            //frmImgViewer.ImgPath = fiPic.Img_B.PicPath.ToString();
            //frmImgViewer.ShowDialog();
        } 
    }
}
