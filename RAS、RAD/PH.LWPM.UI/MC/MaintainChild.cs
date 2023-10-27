using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;

namespace PH.LWPM.UI.MC
{
    public partial class MaintainChild : DetailForm
    {
        Boolean AddnewFlg;
        public MaintainChild()
        {
            InitializeComponent();
        }
  

        protected override void OnClickSave()
        {
    
            if ((this.BindingSource.Current as FactoryLines).BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {

                    (this.BindingSource.Current as FactoryLines).Type = (this.ListForm as Maintain).McWfType.Trim().ToString();
         
            }
            if ((this.BindingSource.Current as FactoryLines).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
              
                (this.BindingSource.Current as FactoryLines).Type = (this.ListForm as Maintain).McWfType.Trim().ToString();
            }
            base.OnClickSave();
            
        }

        protected override void OnClickSaveAndReturn()
        {
            (this.BindingSource.Current as FactoryLines).Type = (this.ListForm as Maintain).McWfType.Trim().ToString();
            base.OnClickSaveAndReturn();
        }
        private void MaintainChild_Load(object sender, EventArgs e)
        {
            if ((this.BindingSource.Current as FactoryLines).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                AddnewFlg = (this.BindingSource.Current as FactoryLines).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New ? true : false;

            }
        }

        private Boolean ValidationSaveCondition(string mcid)
        {

            if (mcid == string.Empty)
            {
                if (MessageBox.Show("Please input \"Machine ID\"¡I¡I", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                {
                    return true;
                }
            }
         
            return false;
        }

    
    }
}
