using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2 ;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.DestinationPHKey
{
    public partial class PEParentChildFrm : ParentChildForm 
    {
        public PEParentChildFrm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            frameListFrm1.DataSource = (this.BindingSource.Current as ForPointDeliveryofDestinationPHKey).EndPointFactoryFrames;
            base.DataBind();
            frameListFrm1.EditorTypeName = typeof(FrameListEditFrm).FullName;
        }

        private void barBtnReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            
        }
    }
}
