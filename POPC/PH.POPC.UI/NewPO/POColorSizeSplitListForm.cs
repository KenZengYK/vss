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
    public partial class POColorSizeSplitListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public POColorSizeSplitListForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(POColorSizeSplitDetailForm).FullName;

            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.RowChangeAutoSave = false;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        PH.POPC.BO.POColorSizeDetail m_POColorSizeDetail;
        protected override void BaseListForm_InitNewRow(object sender, DevExpress.XtraGrid.Views.Grid.InitNewRowEventArgs e)
        {
            m_POColorSizeDetail = (this.ParentForm as PH.POPC.UI.NewPO.POColorSizeDetailDetailForm).BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            PH.POPC.BO.POWireBoneMatrix current = this.BindingSource.Current as PH.POPC.BO.POWireBoneMatrix;
            current.POColorSizeDetail = m_POColorSizeDetail;
            current.Seq = current.POColorSizeDetail.POWireBoneMatrixes.Max(p => p.Seq) + 1;
        }

        public override void SaveData()
        {
            if (this.bandedGridView1.PostEditor())
            {
                this.bandedGridView1.UpdateCurrentRow();
                this.bandedGridView1.HideEditor();
            }
            var list = this.BindingSource.List as IEnumerable<PH.POPC.BO.POWireBoneMatrix>;
            if (list == null) return;

            m_POColorSizeDetail = (this.ParentForm as PH.POPC.UI.NewPO.POColorSizeDetailDetailForm).BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            decimal? suppqty = m_POColorSizeDetail == null ? 0 : m_POColorSizeDetail.SupplierPOQty;
            decimal? matrixQty = list.Sum(p => p.Qty);

            if ((suppqty ?? 0) != (matrixQty ?? 0))
            {
                MessageBox.Show(string.Format("拆分的總數量: {0:#.###} \r\n\r\n與\r\n\r\n採購的數量: {1:#.###} \r\n\r\n不一致, 保存不成功!", (matrixQty ?? 0), (suppqty ?? 0)), "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            base.SaveData();
        }
    }

}
