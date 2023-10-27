using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LWPM.BO;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.LWPM.UI.LB4
{
    public partial class LB4ChildList : ListForm
    {
        public LB4ChildList()
        {
            InitializeComponent();
        }

        private void barBtnWF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {            
            
        }

        public override void DataBind()
        {
            this.EditorTypeName = typeof(LB4ChildEditFrm).FullName;   
            base.DataBind();
        }

        private void objListGridControl_DataSourceChanged(object sender, EventArgs e)
        {

        }

        private void chkIsFloater_CheckedChanged(object sender, EventArgs e)
        {
            try
            {

                if (advBandedGridView2.FocusedRowHandle < 0)
                    return;

               int _idx =advBandedGridView2.FocusedRowHandle;

                Matching mc = this.advBandedGridView2.GetRow(advBandedGridView2.FocusedRowHandle) as Matching;


                var datalist = (IEnumerable<Matching>)this.BindingSource.DataSource;
                var query = (from c in datalist
                             where c.HeadCount == 1&&c.Mtm_Suggest.GetValueOrDefault()>0
                             select c).FirstOrDefault();

                if (query != null && query.Mtm_Suggest.GetValueOrDefault() > 0 && mc.Mtm_Suggest.GetValueOrDefault() > 0)
                {
                    int _icount = datalist.Where(p => p.WorkerId == query.WorkerId).Count(); //此人所做工序數
                    // decimal _sah = mc.GSD_SAH.GetValueOrDefault() * 100 / mc.Mtm_Suggest.GetValueOrDefault();
                    //decimal _stand = (query.GSD_SAH.GetValueOrDefault()*100*_icount)/query.Mtm_Suggest.GetValueOrDefault();                    
                    //_hc = _sah/_stand 
                    decimal _hc = (mc.GSD_SAH.GetValueOrDefault() * query.Mtm_Suggest.GetValueOrDefault()) / (mc.Mtm_Suggest.GetValueOrDefault() * query.GSD_SAH.GetValueOrDefault() * _icount);
                    mc.HeadCount = decimal.Round(_hc, 2);
                }
                else
                {
                    mc.IsFloater = false;
                   // this.advBandedGridView2.RefreshRowCell(_idx, colIsFloater);
                    this.advBandedGridView2.SetRowCellValue(_idx, "IsFloater", 0);
                    MessageBox.Show("請填寫計算Floater所必須的Requerst MTM值后,再執行此操作!");

                }

                int pos = this.BindingSource.List.IndexOf(mc);
                this.BindingSource.Position = pos;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "請填寫計算Floater所必須的Requerst MTM值!");
            }
        }

        private void advBandedGridView2_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

            LB4ChildFrm myParentForm = this.ParentForm as LB4ChildFrm;
            if (myParentForm == null) return;

            //得到工號
            bool CFlag = false;
            BandedGridView viewC = sender as BandedGridView;
            string Id1 = (viewC.GetRowCellValue(e.RowHandle1, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "WokerId").ToString().Trim()));
            string Id2 = (viewC.GetRowCellValue(e.RowHandle2, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "WokerId").ToString().Trim()));
            //CFlag = CFlag1 == CFlag2 && CFlag1 == "1" && CFlag2 == "1";
            CFlag = Id1 == Id2 && Id1 != "" && Id2 != "";

            switch (e.Column.FieldName)
            {
                case "WorkerId":
                    e.Merge = CFlag;
                    e.Handled = true;
                    break;
                case "WorkerName":
                    e.Merge = CFlag;
                    e.Handled = true;
                    break;
                case "JWorkSN_LB3":
                    e.Merge = CFlag;
                    e.Handled = true;
                    break;
                case "JWorkSN":
                    e.Merge = CFlag;
                    e.Handled = true;
                    break;
            
            }


        }


    }
}
