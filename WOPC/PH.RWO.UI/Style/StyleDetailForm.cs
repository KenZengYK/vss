using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class StyleDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        string _Para;
        Style _Style;
        public StyleDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            this._Style = this.BindingSource.Current as PH.RWO.BO.Style;

            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }
        }

        protected override void SaveCurrent()
        {
            if (this.DataContext.GetChangeSet().Updates.Count > 0)
            {
                if (this._Para == "CUT")
                {
                    this._Style.CuttingConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    this._Style.CuttingDate = DateTime.Now.Date;
                }
                else if (this._Para == "GCD")
                {
                    this._Style.MaterialConfirm = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
                    this._Style.MaterialDate = DateTime.Now.Date;
                }
            }
            base.SaveCurrent();
        }


        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.materialConfirmTextEdit.Properties.ReadOnly = true;
            this.materialDateDateEdit.Properties.ReadOnly = true;
            this.cuttingDateDateEdit.Properties.ReadOnly = true;
            this.cuttingConfirmTextEdit.Properties.ReadOnly = true;
        }

        private void StyleDetailForm_Load(object sender, EventArgs e)
        {
            string para = ((this.PrevForm) as StyleListForm).Para;
            if (string.IsNullOrEmpty(para)) para = string.Empty;
            para = para.ToUpper();
            this._Para = para;
            this.tapMaterial1.PageVisible = para.Contains("GCD");
            this.tapCutting2.PageVisible = para.Contains("CUT");
            //this.tapOA.PageVisible = para.Contains("OA");
            //this.tapTest.PageVisible = para.Contains("TEST");
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as StyleListForm) != null && (this.PrevForm as StyleListForm).ParentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as StyleListForm).ParentPage);
            }

        }
        protected override void OnClickSaveAndReturn()
        {
            //SetValue();
            base.OnClickSaveAndReturn();
            CloseCurrentPage();
        }
        private void CloseCurrentPage()
        {
            bool bOK = (this.PrevForm as StyleListForm) != null && (this.PrevForm as StyleListForm).ParentPage != null;
            if (bOK)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as StyleListForm).ParentPage);
            }
        }
    }
}
