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
using PH.BasicInfo.BO;
using PH.Platform.Misc.BO;
namespace PH.BasicInfo.UI.TimeElement
{
    public partial class MIDcTransitDetailForm : DetailForm
    {
        public MIDcTransitDetailForm()
        {
            InitializeComponent();

        }

        private void MIDcTransitDetailForm_Load(object sender, EventArgs e)
        {
            //Xsj101230:初始化incoterms列表
            var ITs = (this.DataContext as BasicInfoDataContext).Incoterms.ToList();
                ITs.Insert(0, new Incoterm());
                incotermsLookUpEdit.Properties.DataSource = ITs;

            //Xsj101230:初始化pointofDestinationLookUpEdit
            var FPs = (this.DataContext as BasicInfoDataContext).ForPointDeliveryofDestinationPHKeys.ToList();
                FPs.Insert(0, new ForPointDeliveryofDestinationPHKey());
                pointofDestinationLookUpEdit.Properties.DataSource = FPs;

            //Xsj101230:初始化 TransitMode
            var SFs = (this.DataContext as BasicInfoDataContext).SupplierFactories.Where(P => P.ERPSupplier == (this.BindingSource.Current as MIDcTransit).ERPSupplier).ToList();
            SFs.Insert(0,new SupplierFactory());         
            transitModeComboBoxEdit.Properties.Items.AddRange(ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TransitMode").Select(S=>S.DataName).ToArray());
            
            //Xsj101230:初始化FromEffectivedDate
            if ((this.BindingSource.Current as MIDcTransit).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                (this.BindingSource.Current as MIDcTransit).FromEffectivedDate = DateTime.Now;
            }
        }


        //Xsj101230:點擊保存近銨
        protected override void OnClickSave()
        {
            if (ValidationSaveCondition())
            {
                return;
            }
            base.OnClickSave();
        }
        protected override void OnClickSaveAndReturn()
        {
            if (ValidationSaveCondition())
            {
                return;
            }
            base.OnClickSaveAndReturn();
        } 

        //Xsj101230:驗證是否已輸入"廠別"
        private Boolean ValidationSaveCondition()
        {
            if ((this.BindingSource.Current as MIDcTransit).BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                if (pHFactoriesComboBoxEdit.Text.Trim() == string.Empty)
                {
                    if (MessageBox.Show("Please input\"Factory\"！！", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
 

        private void pointofDestinationLookUpEdit_EditValueChanged(object sender, EventArgs e)
        {
            string address =Convert.ToString(pointofDestinationLookUpEdit.EditValue).Trim();
            pointofDestinationENMemoEdit.Text = Convert.ToString(pointofDestinationLookUpEdit.Text);

        }
  



    }
}
