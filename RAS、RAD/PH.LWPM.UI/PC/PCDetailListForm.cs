using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid.Views.Grid;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PC
{
    public partial class PCDetailListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public PCHeader CurrentPCHeader { get; set; }
        public PCDetailListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(PCDetailDetailForm).FullName;
        }

        private void barBtnImportPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ImportPOForm frmPO = new ImportPOForm();
            if (frmPO.ShowDialog() == DialogResult.OK)
            {
                GridView grid = frmPO.SelectGridView;
                DataRowView dr = null;

                for (int i = 0; i < grid.DataRowCount; i++)
                {
                    dr = (DataRowView)grid.GetRow(i);
                    if (Convert.ToBoolean(dr["CheckFlag"]))
                    {

                        int POCount = this.CurrentPCHeader.PCDetails.Where(p => p.PONO == dr["PONO"].ToString() && p.AmendNo == dr["AmendNo"].ToString()).Count();
                        if (POCount == 0)
                        {
                            PCDetail detail = (PCDetail)this.BindingSource.AddNew();
                            detail.PCNO = this.CurrentPCHeader.PCNO;
                            detail.PONO = dr["PONO"].ToString();
                            detail.AmendNo = dr["AmendNo"].ToString();
                            this.CurrentPCHeader.PCDetails.Add(detail);
                        }
                    }
                }
                (this.DataContext as RAPLQDataContext).SubmitChanges();
            }

        }
    }
}
