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
    public partial class POColorSizeDetailDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {

        PH.POPC.BO.POColorSizeDetail m_pOColorSizeDetail = null;

        public POColorSizeDetailDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            m_pOColorSizeDetail = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            m_pOColorSizeDetail.ItemCode = m_pOColorSizeDetail.PODetail.ItemCode;


            this.m_pOColorSizeDetail.POSKUOperates.Where(p => p.HandleType == PH.POPC.BO.Common.BulkSubmission);

            this.poskuBulkSubmissionListForm1.EditorTypeName = typeof(POSKUBulkSubmissionDetailForm).FullName;
            this.poskuBulkSubmissionListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.BulkSubmission);
            this.poskuBulkSubmissionListForm1.AllowGridEdit = false;


            this.poskuColorStdListForm1.EditorTypeName = typeof(POSKUColorStdDetailForm).FullName;
            this.poskuColorStdListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.ColorStd);
            this.poskuColorStdListForm1.AllowGridEdit = false;

            this.poskuDipSubmitListForm1.EditorTypeName = typeof(POSKUDipSubmitDetailForm).FullName;
            this.poskuDipSubmitListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.DipSubmit);
            this.poskuDipSubmitListForm1.AllowGridEdit = false;

            //this.poskuLotListForm1.EditorTypeName = typeof(POSKULotDetailForm).FullName;
            //this.poskuLotListForm1.BindingSource.DataSource = GetData(Common.Lot);
            //this.poskuLotListForm1.AllowGridEdit = false;

            this.poskuTestStatusListForm1.EditorTypeName = typeof(POSKUTestStatusDetailForm).FullName;
            this.poskuTestStatusListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.TestStatus);
            this.poskuTestStatusListForm1.AllowGridEdit = false;

            this.poColorSizeSplitListForm1.EditorTypeName = typeof(POColorSizeSplitDetailForm).FullName;
            this.poColorSizeSplitListForm1.BindingSource.DataSource = this.m_pOColorSizeDetail.POWireBoneMatrixes;
            this.poColorSizeSplitListForm1.AllowGridEdit = true;

            //this.tpMatrix.PageVisible = m_pOColorSizeDetail.HaveWireBoneMatrix;

            if ((this.PrevForm as PH.POPC.UI.NewPO.POColorSizeDetailListForm) != null && (this.PrevForm as PH.POPC.UI.NewPO.POColorSizeDetailListForm).m_POInfo != null)
            {
                this.OnClickEdit();
            }
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);

        }
        protected override void SaveCurrent()
        {
            SetDefaultValue();
            UpdateColorShade();
            base.SaveCurrent();
        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            InitColorShade();

            this.garmentColorTextEdit.Properties.ReadOnly = false;
            this.Cobo_ColorShadeLable.Properties.ReadOnly = false;
            this.txtD_LC.Properties.ReadOnly = false;
            this.txtD_Remark.Properties.ReadOnly = false;
            this.txtD_CustOrderNo.Properties.ReadOnly = false;
            this.txtD_CustStyleNo.Properties.ReadOnly = false;
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
            POColorSizeDetailListForm Form = this.PrevForm as PH.POPC.UI.NewPO.POColorSizeDetailListForm;
            if (Form != null && Form.m_POInfo != null)
            {
                if (Form.m_POInfo.Pur is PH.POPC.BO.View_POPC_PUR)
                {
                    PH.POPC.BO.View_POPC_PUR p = (PH.POPC.BO.View_POPC_PUR)Form.m_POInfo.Pur;
                    if (p != null)
                    {
                        p.LC = this.m_pOColorSizeDetail.LC;
                        p.Remark = this.m_pOColorSizeDetail.Remark;
                        p.ColorShade = this.m_pOColorSizeDetail.ColorShade;
                        p.CustOrderNo = this.m_pOColorSizeDetail.CustOrderNo;
                        p.CustStyleNo = this.m_pOColorSizeDetail.CustStyleNo;
                        p.GarmentColor = this.m_pOColorSizeDetail.GarmentColor;
                    }
                }
                else if (Form.m_POInfo.Pur is PH.POPC.BO.POColorSizeDetail)
                {
                    PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)Form.m_POInfo.Pur;
                    if (p != null)
                    {
                        p.LC = this.m_pOColorSizeDetail.LC;
                        p.Remark = this.m_pOColorSizeDetail.Remark;
                        p.ColorShade = this.m_pOColorSizeDetail.ColorShade;
                        p.CustOrderNo = this.m_pOColorSizeDetail.CustOrderNo;
                        p.CustStyleNo = this.m_pOColorSizeDetail.CustStyleNo;
                        p.GarmentColor = this.m_pOColorSizeDetail.GarmentColor;
                    }
                }
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, Form.m_POInfo.POPCPage);
            }
        }

        private System.Data.Linq.EntitySet<PH.POPC.BO.POSKUOperate> GetData(string type)
        {
            System.Data.Linq.EntitySet<PH.POPC.BO.POSKUOperate> data = new System.Data.Linq.EntitySet<PH.POPC.BO.POSKUOperate>();
            var aa = (from a in this.m_pOColorSizeDetail.POSKUOperates
                      where a.HandleType == type
                      select a);
            foreach (var item in aa)
            {
                data.Add(item);
            }
            return data;
        }
        private void InitColorCode()
        {
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;
            //this._Color = from c in context.V_Colors where c.ItemCode == this.txtD_ItemCode.Text select c;
            //this.Comb_ColorCode.Properties.Items.Clear();
            //foreach (PH.POPC.BO.V_Color Item in this._Color)
            //{
            //    this.Comb_ColorCode.Properties.Items.Add(Item.ColorCode.Trim());
            //}
        }
        private void InitColorShade()
        {

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var Data = from c in context.POColorShades
                       where c.ColorCode == this.m_pOColorSizeDetail.ColorCode &&
                             c.ItemCode == m_pOColorSizeDetail.ItemCode &&
                             c.Company == m_pOColorSizeDetail.Company &&
                             c.Supplier == this.m_pOColorSizeDetail.Supplier &&
                             c.ColorType == 5
                       select c;
            this.Cobo_ColorShadeLable.Properties.Items.Clear();
            foreach (PH.POPC.BO.POColorShade item in Data)
            {
                this.Cobo_ColorShadeLable.Properties.Items.Add(item.ColorShade);
            }
        }
        private void UpdateColorShade()
        {

            PH.POPC.BO.POColorSizeDetail detailD = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            detailD.ColorShade = this.Cobo_ColorShadeLable.Text;
            if (string.IsNullOrEmpty(detailD.ColorShade) == false)
            {
                PH.POPC.BO.ColorShade colorShade = new PH.POPC.BO.ColorShade(detailD);
                colorShade.Update();
                if (this.Cobo_ColorShadeLable.Properties.Items.Contains(detailD.ColorShade) == false)
                {
                    this.Cobo_ColorShadeLable.Properties.Items.Add(detailD.ColorShade);
                }
            }
        }
        private void SetDefaultValue()
        {
            PH.POPC.BO.POColorSizeDetail detailD = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            detailD.ColorCode = string.IsNullOrEmpty(detailD.ColorCode) ? string.Empty : detailD.ColorCode;
            detailD.SizeCode = string.IsNullOrEmpty(detailD.SizeCode) ? string.Empty : detailD.SizeCode;
            detailD.FitCode = string.IsNullOrEmpty(detailD.FitCode) ? string.Empty : detailD.FitCode;
            if (detailD.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New && string.IsNullOrEmpty(detailD.SKU))
            {
                detailD.SKU = this.txtD_ItemCode.Text.Trim() + this.Comb_ColorCode.Text.Trim() + this.txtD_SizeCode.Text.Trim() + this.txtD_FitCode.Text.Trim();
            }
        }


    }
}
