using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.Platform.BO;

namespace PH.MR.UI.HSContract
{
    public partial class HSContractHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public HSContractHeaderListForm()
        {
            InitializeComponent();

            this.EditorTypeName = typeof(HSContractHeaderDetailForm).FullName;
        }

        public override void DataBind()
        {
            PH.MR.BO.MRDataContext dcn = PH.Platform.BO.ContextBuilder.CreateContext<PH.MR.BO.MRDataContext>();
            this.DataContext = dcn;
            this.BindingSource.DataSource = dcn.HSContractHeaders;
        }

        private void barBtnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.MR.BO.HSContractHeader header = this.BindingSource.Current as PH.MR.BO.HSContractHeader;
            if (header == null) return;
            if (header.IsConfirm ?? false) return;
            if (header.HSContractDetails.Count == 0)
            {
                MessageBox.Show("當前記錄缺少[合同明細],禁止[Confirm]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (header.HScontractNO == null || header.HScontractNO.Trim() == "")
            {
                MessageBox.Show("當前記錄缺少[正式合同編碼],禁止[Confirm]!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show("你確定[Confirm]當前記錄嗎!", "系統提示", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No)
            {
                return;
            }

            header.IsConfirm = true;
            this.DataContext.SubmitChanges();
            this.objListGridView.RefreshData();

        }

        private void btnCopyContract_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            HSContractHeader CurrentContractObj = this.BindingSource.Current as HSContractHeader;
            if (CurrentContractObj == null) return;

            try
            {
                this.Cursor = Cursors.WaitCursor;
                CopyContractForm frmCopyContract = new CopyContractForm(CurrentContractObj);
                if (frmCopyContract.ShowDialog() == DialogResult.OK)
                {
                    HSContractHeader NewContractHeaderObj = this.BindingSource.AddNew() as HSContractHeader;
                    NewContractHeaderObj.HSContractID = DateTime.Now.ToString("yyMMddHHmmss");
                    NewContractHeaderObj.HScontractNO = frmCopyContract.NewContractNo;
                    NewContractHeaderObj.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                    NewContractHeaderObj.CreateDate = DateTime.Now;
                    NewContractHeaderObj.Remark = CurrentContractObj.Remark;

                    foreach (var d in CurrentContractObj.HSContractDetails)
                    {
                        HSContractDetail NewContractDetail = new HSContractDetail();
                        NewContractDetail.HSContractID = NewContractHeaderObj.HSContractID;
                        NewContractDetail.ProjectNO = d.ProjectNO;
                        NewContractDetail.WorkNO = d.WorkNO;
                        NewContractDetail.Factory = d.Factory;
                        NewContractDetail.CreateUser = NewContractHeaderObj.CreateUser;
                        NewContractDetail.CreateDate = NewContractHeaderObj.CreateDate;
                        NewContractDetail.Remark = d.Remark;
                        NewContractDetail.SeqNO = d.SeqNO;
                        NewContractDetail.UnitPX = d.UnitPX;
                        NewContractDetail.CustomSeqNo = d.CustomSeqNo;

                        NewContractHeaderObj.HSContractDetails.Add(NewContractDetail);
                    }

                    this.BindingSource.EndEdit();
                    DataContext.SubmitChanges();

                    MessageBox.Show(string.Format("複製成功, 新合同編號為：{0}", NewContractHeaderObj.HScontractNO), "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            finally
            {

                this.Cursor = Cursors.Default;
            }

        }
    }
}
