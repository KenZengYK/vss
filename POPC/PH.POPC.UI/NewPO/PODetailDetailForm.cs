using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    public partial class PODetailDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        private PH.POPC.BO.PODetail m_PODetail;
        public PODetailDetailForm()
        {
            InitializeComponent();

        }
        protected override void SaveCurrent()
        {

            base.SaveCurrent();
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);
        }
        public override void DataBind()
        {
            base.DataBind();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this.m_PODetail = this.BindingSource.Current as PH.POPC.BO.PODetail;

            this.poColorSizeDetailListForm1.EditorTypeName = typeof(POColorSizeDetailDetailForm).FullName;
            this.poColorSizeDetailListForm1.BindingSource.DataSource = this.m_PODetail.POColorSizeDetails;

            this.poConfirmListForm1.EditorTypeName = typeof(POConfirmDetailForm).FullName;
            this.poConfirmListForm1.BindingSource.DataSource = this.m_PODetail.POConfirms;


            PH.BasicInfo.BO.DimensionList list = new PH.BasicInfo.BO.DimensionList();
            List<PH.BasicInfo.BO.Dimension> aa = list.GetAllData().ToList();

            this.lookUpEditBuyerQtyDimensiion.Properties.DataSource = aa;
            this.lookUpEditSuppQtyDimensiion.Properties.DataSource = aa;
            if ((this.PrevForm as PH.POPC.UI.NewPO.PODetailListForm) != null && (this.PrevForm as PH.POPC.UI.NewPO.PODetailListForm).m_POInfo != null)
            {
                this.OnClickEdit();
            }

        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            this.lookUpEditBuyerQtyDimensiion.Properties.ReadOnly = false;
            this.lookUpEditSuppQtyDimensiion.Properties.ReadOnly = false;
            this.HaveSupplementSheetCheckEdit.Properties.ReadOnly = false;
            this.txtD_WorkOrderNo.Properties.ReadOnly = false;
        }

        protected override void OnClickSaveAndReturn()
        {
            base.OnClickSaveAndReturn();
            this.CloseTabPage();
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.CloseTabPage();
        }
        private void CloseTabPage()
        {
            PODetailListForm Form = this.PrevForm as PH.POPC.UI.NewPO.PODetailListForm;
            if (Form != null && Form.m_POInfo != null)
            {
                if (Form.m_POInfo.Pur is PH.POPC.BO.View_POPC_PUR)
                {
                    PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)Form.m_POInfo.Pur;
                    if (p != null)
                    {
                        p.SuppQtyDimension = this.m_PODetail.SuppQtyDimension;
                        p.OpenToProject = this.m_PODetail.OpenToProject.Value;
                        p.BuyerQtyDimension = this.m_PODetail.BuyerQtyDimension;
                        p.WorkOrderNo = this.m_PODetail.WorkOrderNo;
                    }
                }
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, Form.m_POInfo.POPCPage);
            }
        }


    }
}
