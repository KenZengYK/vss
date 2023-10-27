using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using DevExpress.XtraBars;

namespace PH.SPC.UI
{
    public partial class SampleOrderDetailForm : PH.UI.UI2.ParentChildForm
    {
        public SampleOrderDetailForm()
        {
            InitializeComponent();

            _editTypeList.Add("LARD", typeof(frmSPCList));
            _editTypeList.Add("ETAM", typeof(frmETAMList));
            _editTypeList.Add("M&S", typeof(frmMSList));
            _editTypeList.Add("SARA", typeof(frmSARAList));
        }        

        internal StyleListForm _frmStyle;
        internal SampleOrder _sampleOrder;
        

        bool _spcFormCreated = false;

        protected override void BindingDataSource()
        {
            base.BindingDataSource();
            _sampleOrder = this.BindingSource.Current as SampleOrder;

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);
            OODBController.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            //this.textEdit1.DataBindings.Add("Text", this.BindingSource, "SampleOrderID");

            /*******************************************/
            //?定數据
            /*******************************************/
            //this.txtSampleOrder.DataBindings.Add("Text", this.BindingSource, "SampleOrderID");
            //this.txtProjectID.DataBindings.Add("Text", this.BindingSource, "ProjectID");
            //this.txtCustomerID.DataBindings.Add("Text", this.BindingSource, "CustomerID");
            //this.txtFactoryDirector.DataBindings.Add("Text", this.BindingSource, "FactoryDirector");
            //this.txtCharge.DataBindings.Add("Text", this.BindingSource, "Charge");
            //this.txtConfirm.DataBindings.Add("Text", this.BindingSource, "Confirm");
            //this.txtTable.DataBindings.Add("Text", this.BindingSource, "Table");

            //this.frmStyle1.datas .DataSource = ((SampleOrder)this.BindingSource.Current).Styles;
            //this.frmStyleList1.DataSource = ((SampleOrder)this.BindingSource.Current).Styles;

            _frmStyle = new StyleListForm(_sampleOrder);
            _frmStyle.Dock = DockStyle.Fill;
            _frmStyle.Show();
            _frmStyle._sampleOrderEdit = this;
            this.xtraTabPage1.Controls.Add(_frmStyle);

            if (!string.IsNullOrEmpty(_sampleOrder.CustomerID))
            {
                if (_editTypeList.ContainsKey(_sampleOrder.CustomerID))
                {
                    CreateCustomerSPC();
                }
            }
            

            this.SelectPage(this.xtraTabPage1);
        }

        SortedList<string, Type> _editTypeList = new SortedList<string, Type>();
       

        public void CreateCustomerSPC()
        {
            if (_spcFormCreated)
                return;

            if (!_editTypeList.ContainsKey(_sampleOrder.CustomerID))
                return;

            if (_sampleOrder.Styles.Count == 0)
                return;

            DevExpress.XtraTab.XtraTabPage newTab = this.xtraTabControl1.TabPages.Add();
            newTab.Text = "SPC-" + _sampleOrder.CustomerID;

            Control c = (Control)Activator.CreateInstance(_editTypeList[_sampleOrder.CustomerID], new object[] { _sampleOrder });
            c .Parent = newTab;
            c.Dock = DockStyle.Fill;
            c.Visible = true;

            _spcFormCreated = true;
        }    

        private void txtCustomerID_Validating(object sender, CancelEventArgs e)
        {
            if (txtCustomerID.Properties.Items.IndexOf(txtCustomerID.Text) == -1)
            {
                e.Cancel = true;
            }
        }

        private void txtCustomerID_InvalidValue(object sender, DevExpress.XtraEditors.Controls.InvalidValueExceptionEventArgs e)
        {
            e.ErrorText = "客戶編號輸入錯誤！";
        }

        public override void FillToolbar()
        {
            base.FillToolbar();
            FillCompleteButton();
        }

        private void FillCompleteButton()
        {
            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");

            ToolbarManager.AddButton("btnCompleteItem", "Complete", null, "Complete", new DevExpress.XtraBars.ItemClickEventHandler(btnCompleteItemClick));
            ToolbarManager.AddButton("btnUnCompleteItem", "UnComplete", null, "UnComplete", new DevExpress.XtraBars.ItemClickEventHandler(btnUnCompleteItemClick));

            if (_sampleOrder.IsComplete)
                ToolbarManager.RemoveButton("btnCompleteItem");
            else
                ToolbarManager.RemoveButton("btnUnCompleteItem");
        }

        public override void ClearToolbar()
        {
            this.ToolbarManager.RemoveButton("btnCompleteItem");
            this.ToolbarManager.RemoveButton("btnUnCompleteItem");

            base.ClearToolbar();
        }

        void btnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_sampleOrder == null)
                return;
            if (!ChildIsComplete())
            {
                MessageBox.Show("還有【Style】沒有Complete!");
                return;
            }

            _sampleOrder.IsDirty = true;
            _sampleOrder.CompleteDate = DateTime.Now.ToString();
            _sampleOrder.IsComplete = true;

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);

            _frmStyle.Invalidate();
            _frmStyle.SetSampleOrder(_sampleOrder);

            FillCompleteButton();
        }

        bool ChildIsComplete()
        {
            foreach (Style style in _sampleOrder.Styles)
            {
                if (!style.IsComplete)
                    return false;
            }
            return true;
        }


        void btnUnCompleteItemClick(object sender, ItemClickEventArgs e)
        {
            if (_sampleOrder == null)
                return;

            _sampleOrder.IsDirty = true;
            _sampleOrder.CompleteDate = null;
            _sampleOrder.IsComplete = false;

            Save();

            PH.Common.UI.TutorialControlBase.BindingControls(this, this.BindingSource);

            _frmStyle.SetSampleOrder(_sampleOrder);

            FillCompleteButton();            
        }

        protected override void DeleteCurrent()
        {
            if (this._sampleOrder.IsComplete)
            {
                MessageBox.Show("不能修改和刪除已完成之Sample Order!");
                return;
            }
            base.DeleteCurrent();
        }

        public override void EditCurrent()
        {
            if (this._sampleOrder.IsComplete)
            {
                MessageBox.Show("不能修改和刪除已完成之Sample Order!");
                return;
            }

            base.EditCurrent();

            this.isCompletedCheckBox.Enabled = false;
            this.txtCompleteDate.Enabled = false;
        }

        public override void Save()
        {
            //實現辦單號生成演算法
            _sampleOrder = this.BindingSource.Current as SampleOrder;
            if (string.IsNullOrEmpty(_sampleOrder.SampleOrderID))
            {
                string Str = PH.Common.Sequences.Maker.Controller.PHCommonSequenceHelper.GetSequenceStr("PH.OA.SPC.SampleOrderID");

                _sampleOrder.SampleOrderID = "SPC" + _sampleOrder.CustomerID + Str;
                //MessageBox.Show(_sampleOrder.SampleOrderID);
            }
            if (!this.IsNew) _sampleOrder.IsDirty = true;
            base.Save();
        }

        protected override void SaveCurrent()
        {
            //實現辦單號生成演算法
            _sampleOrder = this.BindingSource.Current as SampleOrder;
            if (string.IsNullOrEmpty(_sampleOrder.SampleOrderID))
            {
                string Str = PH.Common.Sequences.Maker.Controller.PHCommonSequenceHelper.GetSequenceStr("PH.OA.SPC.SampleOrderID");

                _sampleOrder.SampleOrderID = "SPC" + _sampleOrder.CustomerID + Str;
                //MessageBox.Show(_sampleOrder.SampleOrderID);
            }
            if (!this.IsNew) _sampleOrder.IsDirty = true;
            base.SaveCurrent();
        }

     

    }
}
