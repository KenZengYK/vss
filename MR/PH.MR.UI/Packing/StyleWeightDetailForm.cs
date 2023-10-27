using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MR.UI.Packing
{
    public partial class StyleWeightDetailForm : PH.Platform.UI.CS.BaseDetailForm
    {
        public StyleWeightDetailForm()
        {
            InitializeComponent();
        } 

        public override void EditCurrent()
        {
            base.EditCurrent();
            InitCtrl();
        }

        private void InitCtrl()
        {
            PH.MR.BO.MRStyleWeightCompare_Packing bo = this.BindingSource.Current as PH.MR.BO.MRStyleWeightCompare_Packing;
            if (bo != null && bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                this.salesOrderButtonEdit.Properties.Buttons[0].Enabled = true;
            }
            else
            {
                this.salesOrderButtonEdit.Properties.Buttons[0].Enabled = false;
            }
            this.salesOrderButtonEdit.Properties.ReadOnly = true;
            this.projectNOTextEdit.Properties.ReadOnly = true;
            this.styleNOTextEdit.Properties.ReadOnly = true;
            this.weight_MRSpinEdit.Properties.ReadOnly = true;
            this.weightOverPercentTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
            this.updateCountSpinEdit.Properties.ReadOnly = true;
        }
 

        private void salesOrderButtonEdit_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PH.MR.BO.MRStyleWeightCompare_Packing bo = this.BindingSource.Current as PH.MR.BO.MRStyleWeightCompare_Packing;
            if (bo == null)
            {
                return;
            }

            StyleChooseForm styleChooseFrm = new StyleChooseForm();
            if (styleChooseFrm.ShowDialog() == DialogResult.OK)
            {
                bo.SalesOrder = styleChooseFrm.CurrStyleBO.SalesOrder;
                bo.ProjectNO = styleChooseFrm.CurrStyleBO.ProjectNO;
                bo.StyleNO = styleChooseFrm.CurrStyleBO.StyleNO;
            }

        }

        protected override void OnClickSave()
        {
            PH.MR.BO.MRStyleWeightCompare_Packing bo = this.BindingSource.Current as PH.MR.BO.MRStyleWeightCompare_Packing;
            if (bo == null)
            {
                return;
            }
            if (bo.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                bo.UpdateCount = (bo.UpdateCount ?? 0) + 1;
            }
            base.OnClickSave();
        }

        private void weight_packingSpinEdit_EditValueChanged(object sender, EventArgs e)
        {
            PH.MR.BO.MRStyleWeightCompare_Packing bo = this.BindingSource.Current as PH.MR.BO.MRStyleWeightCompare_Packing;
            if (bo == null)
            {
                return;
            }

            this.weightOverPercentTextEdit.Refresh();

        }
    }
}
