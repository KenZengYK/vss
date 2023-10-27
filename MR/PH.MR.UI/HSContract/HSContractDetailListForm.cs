using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Columns;

namespace PH.MR.UI.HSContract
{
    public partial class HSContractDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string HSContractID
        {
            get;
            set;
        }


        public HSContractDetailListForm()
        {
            InitializeComponent();
        }

        protected override void OnClickAddNew()
        {
            List<String> wos = new List<string>();
            foreach (PH.MR.BO.HSContractDetail item in this.BindingSource.List)
            {
                wos.Add(item.WorkNO);
            }

            MRWOChoiceForm frm = new MRWOChoiceForm();
            frm.AliveWONOs = wos;

            if (frm.ShowDialog() == DialogResult.OK)
            {
                foreach (PH.MR.UI.Report.MidcHSCodeByMRReport.CustomerProjectBO item in frm.addWONOs)
                {
                    if (item.IsIssued != null && item.IsIssued.Trim() != "")
                    {
                        foreach (PH.MR.BO.HSContractDetail oldItem in this.BindingSource.List)
                        {
                            if (item.WorkOrderNO == oldItem.WorkNO)
                            {
                                oldItem.Factory = item.Fty;
                                break;
                            }
                        }
                    }
                    else
                    {
                        PH.MR.BO.HSContractDetail bo = new PH.MR.BO.HSContractDetail();
                        bo.HSContractID = this.HSContractID;
                        bo.ProjectNO = item.ProjectNO;
                        bo.WorkNO = item.WorkOrderNO;
                        bo.Factory = item.Fty;
                        bo.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        bo.CreateDate = DateTime.Now;
                        bo.StyleNo = item.StyleNo;
                        bo.ProdCode = item.Prodcode;
                        this.BindingSource.List.Add(bo);
                    }
                }
                this.DataContext.SubmitChanges();
                this.objListGridView.RefreshData();
                MessageBox.Show("系統提示", "操作完畢！");
            }
        }

        private void HSContractDetailListForm_Load(object sender, EventArgs e)
        {
            foreach (GridColumn item in this.objListGridView.Columns)
            {
                if (item.FieldName == "SeqNO" || item.FieldName == "Factory" || item.FieldName == "UnitPX" || item.FieldName == "CustomSeqNo" || item.FieldName == "Weight")
                {
                    item.OptionsColumn.AllowEdit = true;
                }
                else
                {
                    item.OptionsColumn.AllowEdit = false;
                    item.AppearanceCell.BackColor = Color.FromArgb(210, 253, 253);
                }
            }
        }

        private void autoFillSeqNOToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!this.objListGridView.OptionsBehavior.Editable)
            {
                return;
            }

            int[] rows = this.objListGridView.GetSelectedRows();
            if (rows.Length == 0) return;

            PH.MR.BO.HSContractDetail bo = this.objListGridView.GetRow(rows[0]) as PH.MR.BO.HSContractDetail;
            if (bo == null || (bo.SeqNO ?? 0) == 0)
            {
                MessageBox.Show("你选择的第一行的SeqNO为空或为0，请确认！", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            for (int i = 1; i < rows.Length; i++)
            {
                PH.MR.BO.HSContractDetail boNext = this.objListGridView.GetRow(rows[i]) as PH.MR.BO.HSContractDetail;
                boNext.SeqNO = bo.SeqNO;
            }

            this.DataContext.SubmitChanges();

        }


        private void autoFillPriceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!this.objListGridView.OptionsBehavior.Editable)
            {
                return;
            }

            int[] rows = this.objListGridView.GetSelectedRows();
            if (rows.Length == 0) return;

            PH.MR.BO.HSContractDetail bo = this.objListGridView.GetRow(rows[0]) as PH.MR.BO.HSContractDetail;
            if (bo == null || (bo.UnitPX ?? 0) == 0)
            {
                MessageBox.Show("你选择的第一行的UnitPX为空或为0，请确认！", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            for (int i = 1; i < rows.Length; i++)
            {
                PH.MR.BO.HSContractDetail boNext = this.objListGridView.GetRow(rows[i]) as PH.MR.BO.HSContractDetail;
                boNext.UnitPX = bo.UnitPX;
            }

            this.DataContext.SubmitChanges();

        }

        private void autoFillCustomSeqNoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!this.objListGridView.OptionsBehavior.Editable)
            {
                return;
            }

            int[] rows = this.objListGridView.GetSelectedRows();
            if (rows.Length == 0) return;

            PH.MR.BO.HSContractDetail bo = this.objListGridView.GetRow(rows[0]) as PH.MR.BO.HSContractDetail;
            if (bo == null || string.IsNullOrEmpty(bo.CustomSeqNo))
            {
                MessageBox.Show("你选择的第一行的歸併號为空，请确认！", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            for (int i = 1; i < rows.Length; i++)
            {
                PH.MR.BO.HSContractDetail boNext = this.objListGridView.GetRow(rows[i]) as PH.MR.BO.HSContractDetail;
                boNext.CustomSeqNo = bo.CustomSeqNo;
            }

            this.DataContext.SubmitChanges();
        }

        private void autoFillWeightToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (!this.objListGridView.OptionsBehavior.Editable)
            {
                return;
            }

            int[] rows = this.objListGridView.GetSelectedRows();
            if (rows.Length == 0) return;

            PH.MR.BO.HSContractDetail bo = this.objListGridView.GetRow(rows[0]) as PH.MR.BO.HSContractDetail;
            if (bo == null || (bo.Weight ?? 0) == 0)
            {
                MessageBox.Show("你选择的第一行的Weight为空或为0，请确认！", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            for (int i = 1; i < rows.Length; i++)
            {
                PH.MR.BO.HSContractDetail boNext = this.objListGridView.GetRow(rows[i]) as PH.MR.BO.HSContractDetail;
                boNext.Weight = bo.Weight;
            }

            this.DataContext.SubmitChanges();
        }




    }
}
