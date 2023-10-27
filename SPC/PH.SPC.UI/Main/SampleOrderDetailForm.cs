using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;
using DevExpress.XtraBars;
using PH.Platform.BO;
using PH.Platform.Common;

namespace PH.SPC.UI
{
    public partial class SampleOrderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region
        bool _spcFormCreated = false;
        internal StyleListForm _frmStyle;
        SortedList<string, Type> _editTypeList = new SortedList<string, Type>();

        private PH.SPC.BO.SampleOrder CurSampleOrder
        {
            get
            {
                return this.BindingSource.Current as PH.SPC.BO.SampleOrder;
            }
        }

        #endregion

        public SampleOrderDetailForm()
        {
            InitializeComponent();
            //BandCombox();
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            this._frmStyle = styleListForm1;
            styleListForm1.EditorTypeName = typeof(StyleDetailForm).FullName;
        }

        public override void DataBind()
        {
            base.DataBind();
            //int Stage = (this.ListForm as SampleOrderListForm).Stage;
            //if (Stage == 0)
            //{
            //this.styleListForm1.BindingSource.DataSource = CurSampleOrder.Styles;
            //}
            //else
            //{
            //    this.styleListForm1.BindingSource.DataSource = CurSampleOrder.Styles.Where(p => p.Stage == Stage);
            //}
            this.styleListForm1.BindingSource.DataSource = CurSampleOrder.Styles;
            PrepareData();
        }

        void PrepareData()
        {
            //this.BindingSource.EndEdit();

            SampleOrder obj = this.BindingSource.Current as SampleOrder;
            //if (obj == null || string.IsNullOrEmpty(obj.CustomerID) || string.IsNullOrEmpty(obj.Factory))
            //{
            //    return;
            //}

            List<GetCustomerSampleOrderSortResult> lists = (this.DataContext as SPCDataContext).GetCustomerSampleOrderSort(obj.CustomerID, obj.Factory, obj.StageCode).ToList<GetCustomerSampleOrderSortResult>();
            //this.txtSampleType.Properties.DataSource = (this.DataContext as SPCDataContext).GetCustomerSampleOrderSort(obj.CustomerID, obj.Factory);
            this.txtSampleType.Properties.DataSource = lists;
            this.txtSampleType.Properties.DisplayMember = "SampleOrderType";
            this.txtSampleType.Properties.ValueMember = "SampleOrderType";

            //Stage
            string SqlStr = "select DataType, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'SampleStage'";
            DataTable dtStage = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtStage");
            txtStageCode.Properties.DataSource = dtStage;
            txtStageCode.Properties.ValueMember = "DataType";
            txtStageCode.Properties.DisplayMember = "DataType";

            //Sample Purpose (Qtn Method)
            SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'SampleTypePurpose'";
            DataTable dtSamplePurpose = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtSampleTypePurpose");
            //dtSamplePurpose.Rows.Add("Nil", "Nil", "Nil");

            txtSamplePurpose.Properties.DataSource = dtSamplePurpose;
            txtSamplePurpose.Properties.ValueMember = "Code";
            txtSamplePurpose.Properties.DisplayMember = "Code";

            //Customer
            SqlStr = "select distinct Customer from [PH.RWO1]..CustomerCode";
            DataTable dtCustomer = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtCustomer");
            txtCustomerID.Properties.Items.Clear();
            foreach (DataRow dr in dtCustomer.Rows)
            {
                txtCustomerID.Properties.Items.Add(dr["Customer"].ToString());
            }

            //Material Ready
            SqlStr = "select DataType, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'MaterialReady'";
            DataTable dtMaterialReady = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtMaterialReady");
            txtMaterialReady.Properties.DataSource = dtMaterialReady;
            txtMaterialReady.Properties.ValueMember = "DataType";
            txtMaterialReady.Properties.DisplayMember = "DataType";

            //Pattern Source 纸样来源
            SqlStr = "select DataType as Code, DescEN, DescCN from [PH.DespatchSample]..DataDictMasterDB where Flag = 'PatternSource'";
            DataTable dtPatternSource = (this.DataContext as SPCDataContext).ExecuteDataTable(SqlStr, "dtPatternSource");
            txtPatternSource.Properties.Items.Clear();
            foreach (DataRow dr in dtPatternSource.Rows)
            {
                txtPatternSource.Properties.Items.Add(dr["Code"].ToString());
            }
        }

        //private void BandCombox()
        //{
        //    PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();

        //    var objs = from c in context.Misc_DataDictionaries where c.DataType == "PH.SPC.SampleOrder.Customer" select c;

        //    foreach (var item in objs)
        //    {
        //        this.txtCustomerID.Properties.Items.Add(item.DataCode);
        //    }
        //}

        //protected override void SetFormControlState()
        //{
        //    base.SetFormControlState();
        //    txtCustomerID.Enabled = imageComboBoxEdit1.Enabled = (this.IsNew);
        //    IsCompleteLabel.Enabled = dateEdit3.Enabled = false;
        //}

        protected override void OnClickDelete()
        {
            if (CurSampleOrder == null) return;
            if (CurSampleOrder.Table.ToUpper() != PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToUpper())
            {
                MessageBox.Show(string.Format("你[{0}]不能刪除[{1}]創建的SampleOrder!",
                    PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, CurSampleOrder.Table), "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            //if (CurSampleOrder.IsComplete ?? false)
            //{
            //    MessageBox.Show("不能修改和刪除已完成之Sample Order!");
            //    return;
            //}
            base.OnClickDelete();
        }

        public override void EditCurrent()
        {
            if (CurSampleOrder.IsComplete ?? false)
            {
                MessageBox.Show("不能修改和刪除已完成之Sample Order!");
                return;
            }

            base.EditCurrent();

        }

        string[] NeedNilSmplTypes = new string[] { "CS", "LBT", "LBT-1", "PKS", "PPR", "PPS", "TC", "WT", "GDS", "Keep", "SH", "TOP", "TOP-1", "WS", "WS-1", "AD" };
        protected override void SaveCurrent()
        {
            //if (this.CurSampleOrder.CustomerID == null)
            //{
            //    MessageBox.Show(" CustomerID 不能为空");
            //    return;
            //}

            this.BindingSource.EndEdit();
            if (string.IsNullOrEmpty(this.CurSampleOrder.SampleOrderID))
            {
                this.CurSampleOrder.AutoSampleOrderID();
            }

            //Stellar要求， 有16种Sample Type对应的Sample Purpose为Nil
            if (NeedNilSmplTypes.Contains(CurSampleOrder.SampleType))
            {
                CurSampleOrder.SamplePurpose = "Smpl Only";
            }

            this.CurSampleOrder.ReCalculateTotalInformation();
            base.SaveCurrent();
        }


        //private void ControlCompleteShowState()
        //{

        //    if (CurSampleOrder.IsComplete ?? false)
        //    {
        //        this.btnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //        this.btnUnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //    }
        //    else
        //    {
        //        this.btnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //        this.btnUnCompleteItem.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //    }
        //}

        public override void ProcessFunctionRight()
        {
            base.ProcessFunctionRight();

            //處理功能權限
            var CompleteRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Complete");
            bool HasCompleteRight = CompleteRight != null;
            btnCompleteItem.Visibility = (!(CurSampleOrder.IsComplete ?? false) && HasCompleteRight) ? BarItemVisibility.Always : BarItemVisibility.Never;

            var UnCompleteRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "UnComplete");
            bool HasUnCompleteRight = UnCompleteRight != null;
            btnUnCompleteItem.Visibility = ((CurSampleOrder.IsComplete ?? false) && HasUnCompleteRight) ? BarItemVisibility.Always : BarItemVisibility.Never;

            var ConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Confirm");
            btnConfirm.Visibility = ConfirmRight != null ? BarItemVisibility.Always : BarItemVisibility.Never;

            var ApprovalRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Approval");
            btnApproval.Visibility = ApprovalRight != null ? BarItemVisibility.Always : BarItemVisibility.Never;
        }

        public void CreateCustomerSPC()
        {
            if (_spcFormCreated)
                return;

            if (!_editTypeList.ContainsKey(CurSampleOrder.CustomerID))
                return;

            if (CurSampleOrder.Styles.Count == 0)
                return;

            DevExpress.XtraTab.XtraTabPage newTab = this.xtraTabControl1.TabPages.Add();
            newTab.Text = "SPC-" + CurSampleOrder.CustomerID;

            Control c = (Control)Activator.CreateInstance(_editTypeList[CurSampleOrder.CustomerID], new object[] { CurSampleOrder });

            c.Parent = newTab;
            c.Dock = DockStyle.Fill;
            c.Visible = true;

            _spcFormCreated = true;
        }

        private bool ChildIsComplete()
        {
            foreach (Style style in CurSampleOrder.Styles)
            {
                if (!(style.IsComplete ?? false))
                    return false;
            }
            return true;
        }

        private void AutoManageSampleOrderID()
        {
            //實現辦單號生成演算法
            if (string.IsNullOrEmpty(CurSampleOrder.CustomerID)) return;

            if (string.IsNullOrEmpty(CurSampleOrder.SampleOrderID))
            {
                //string Str = PH.Sys.AutoNumber.Maker.IDMaker.GetSequenceStr("PH.SPC.SampleOrderID");

                //CurrentSampleOrder.SampleOrderID = "SPC" + CurrentSampleOrder.CustomerID + Str;

                string newSampleOrderID = "";
                (this.DataContext as SPCDataContext).GetNewSampleOrderID(CurSampleOrder.CustomerID, ref newSampleOrderID);
                CurSampleOrder.SampleOrderID = newSampleOrderID;

            }
        }

        private void SampleOrderDetailForm_Load(object sender, EventArgs e)
        {
            //this.ControlCompleteShowState();

            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            string cust = this.CurSampleOrder.CustomerID;

            if (!string.IsNullOrEmpty(cust))
            {
                if (_editTypeList.ContainsKey(cust))
                {
                    CreateCustomerSPC();
                }
            }
        }

        private void btnCompleteItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurSampleOrder == null)
                return;

            //if (!ChildIsComplete())
            //{
            //    MessageBox.Show("還有【Style】沒有Complete!");
            //    return;
            //}

            if (MessageBox.Show("確定要Complete SampleOrder嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;

            CurSampleOrder.CompleteDate = DateTime.Now;
            CurSampleOrder.IsComplete = true;

            CurSampleOrder.Save();
            //this.DataContext.SubmitChanges();
            //this.ControlCompleteShowState();

            this.ProcessFunctionRight();
        }

        private void btnUnCompleteItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (CurSampleOrder == null)
                return;

            if (MessageBox.Show("確定要Un-Complete SampleOrder嗎?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No) return;
            CurSampleOrder.CompleteDate = null;
            CurSampleOrder.IsComplete = false;
            CurSampleOrder.Save();

            //this.DataContext.SubmitChanges();
            //this.ControlCompleteShowState();
            this.ProcessFunctionRight();
        }

        private void txtCustomerID_SelectedValueChanged(object sender, EventArgs e)
        {
            PrepareData();
        }

        private void txtFactory_SelectedValueChanged(object sender, EventArgs e)
        {
            PrepareData();
        }

        private void txtStageCode_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtStageCode.Text)) return;

            this.BindingSource.EndEdit();
            SampleOrder obj = this.BindingSource.Current as SampleOrder;
            if (obj == null) return;

            obj.StageCode = txtStageCode.Text;
            List<GetCustomerSampleOrderSortResult> lists = (this.DataContext as SPCDataContext).GetCustomerSampleOrderSort(obj.CustomerID, obj.Factory, obj.StageCode).ToList<GetCustomerSampleOrderSortResult>();
            this.txtSampleType.Properties.DataSource = lists;
            this.txtSampleType.Properties.DisplayMember = "SampleOrderType";
            this.txtSampleType.Properties.ValueMember = "SampleOrderType";

        }

        private void btnConfirm_ItemClick(object sender, ItemClickEventArgs e)
        {
            SampleOrder obj = this.BindingSource.Current as SampleOrder;
            if (obj == null) return;

            if (!string.IsNullOrEmpty(obj.Approver)) //已经Approval，不能取消Confirm
            {
                MessageBox.Show("Already approvaled", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrEmpty(obj.Confirmer)) //Confirm
            {
                obj.Confirmer = SysParamHelper.Instance.UserID;
                obj.ConfirmDate = DateTime.Now;
                this.DataContext.SubmitChanges();
            }
            else //已经Confirm的情况
            {
                if (obj.Confirmer.ToUpper() == SysParamHelper.Instance.UserID.ToUpper()) //取消自己Confirm的
                {
                    if (MessageBox.Show("Do you cancel the confirmation?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        obj.Confirmer = null;
                        obj.ConfirmDate = null;
                        this.DataContext.SubmitChanges();
                    }
                }
                else //不能取消别人Confirm的记录
                {
                    MessageBox.Show("Already confirmed", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void btnApproval_ItemClick(object sender, ItemClickEventArgs e)
        {
            SampleOrder obj = this.BindingSource.Current as SampleOrder;
            if (obj == null) return;

            if (obj.SamplePurpose != "Qtn Only" && string.IsNullOrEmpty(obj.Confirmer))
            {
                MessageBox.Show("No Confirm, Approval is not allowed", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (string.IsNullOrEmpty(obj.Approver)) //Approval
            {
                obj.Approver = SysParamHelper.Instance.UserID;
                obj.ApprovalDate = DateTime.Now;
                this.DataContext.SubmitChanges();
            }
            else //已经Approval的情况
            {
                if (obj.Approver.ToUpper() == SysParamHelper.Instance.UserID.ToUpper()) //取消自己Approval的
                {
                    if (MessageBox.Show("Do you cancel the approval?", "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        obj.Approver = null;
                        obj.ApprovalDate = null;
                        this.DataContext.SubmitChanges();
                    }
                }
                else //不能取消别人Approval的记录
                {
                    MessageBox.Show("Already approval", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

    }
}
