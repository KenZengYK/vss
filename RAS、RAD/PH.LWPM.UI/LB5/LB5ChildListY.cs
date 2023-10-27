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

namespace PH.LWPM.UI.LB5
{
    public partial class LB5ChildListY : ListForm
    {
        public LB5ChildListY()
        {
            InitializeComponent();
        }

        private void barBtnWF_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {            
            
        }

        public override void DataBind()
        { 
            base.DataBind();
        }

        private void objListGridControl_DataSourceChanged(object sender, EventArgs e)
        {

        }


        //計算Head Count
        private void chkIsFloater_CheckedChanged(object sender, EventArgs e)
        {
            try
            {

                if (bandedGridView2.FocusedRowHandle < 0)
                    return;

                int _idx = bandedGridView2.FocusedRowHandle;

                Lb5Matching mc = this.bandedGridView2.GetRow(bandedGridView2.FocusedRowHandle) as Lb5Matching;
                decimal _before = mc.HeadCount; //原來的值

                var datalist = (IEnumerable<Lb5Matching>)this.BindingSource.DataSource;
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
                    this.bandedGridView2.SetRowCellValue(_idx, "IsFloater", 0);
                    mc.HeadCount = _before; //還原
                    this.bandedGridView2.RefreshRowCell(_idx, colIsFloater);
                    this.bandedGridView2.RefreshRowCell(_idx, this.colHeadCount);
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

            LB5ChildFrmN myParentForm = this.ParentForm as LB5ChildFrmN;
            if (myParentForm == null) return;

            //得到工號
            bool CFlag = false;
            BandedGridView viewC = sender as BandedGridView;
            string Id1 = (viewC.GetRowCellValue(e.RowHandle1, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle1, "WokerId").ToString().Trim()));
            string Id2 = (viewC.GetRowCellValue(e.RowHandle2, "WokerId") == null ? "" : (viewC.GetRowCellValue(e.RowHandle2, "WokerId").ToString().Trim()));
           // decimal jworksn =viewC.GetRowCellValue(e.RowHandle1, "JWorkSN") == null ? 0:(decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN");

            //decimal jworksn_lb3 =viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3") == null ? 0:(decimal)viewC.GetRowCellValue(e.RowHandle1, "JWorkSN_LB3");

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

                case "WPSN": 
                case "OperationSN":
                case "OperationGroup":
                case "OperationCode":
                case "OperationName":
                case "MCType":
                case "Rpm":
                case "GSD_SAH":
                case "BestSAH":
                case "BestMTM":
                case "WorkforceNum":
                case "WorkStyle":
                case "MachineId":
                case "Rpm0":
                case "addWorkStyle1":
                case "addworkerId1":
                case "addworker1":
                case "addMachineId1":
                case "addRpm1":
                case "addWorkStyle2":
                case "addworkerId2":
                case "addworker2":
                case "addMachineId2":
                case "addRpm2":
                case "addWorkStyle3":
                case "addworkerId3":
                case "addworker3":
                case "addMachineId3":
                case "addRpm3":
                case "mc":
                case "JFlag":
                case "Disp_FAE":
                case "Move_LB3":
                case "CWorkSN_LB3":      
                case "NoneCJ_LB3":
                case "BN_Seq_LB3":    
                case "WFCode_LB3":       
                case "IsFloater_LB3":
                case "StaitonCount_LB3":
                case "WKStaitonSeq":
                case "WKStaitonCount":
                case "BN_Seq":
                case "NoneCJ":
                case "CWorkSN":
                    e.Merge = false;
                    e.Handled = true;           
                    break;       
                case "MTM_Past":

                case "Past_SAH":
                case "MTM_Suggest":
                case "Sugg_SAH":
                case "DidTime_InFac":
                case "DidTime_ByWf":
                case "IsFloater":
                case "Move":
                case "HeadCount":
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

        private void bandedGridView2_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "JWorkSN")
            { 
               if (bandedGridView2.GetRowCellValue(e.RowHandle, this.bandedGridView2.Columns["JWorkSN"])!=null)
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
            }
            else if (e.Column.FieldName == "CWorkSN")
            {
                if (bandedGridView2.GetRowCellValue(e.RowHandle, this.bandedGridView2.Columns["CWorkSN"])!=null)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }              
            
            }

            else if (e.Column.FieldName == "CWorkSN_LB3")
            {
                if (bandedGridView2.GetRowCellValue(e.RowHandle, this.bandedGridView2.Columns["CWorkSN_LB3"]) != null)
                {
                    e.Appearance.BackColor = Color.FromArgb(255, 128, 128);
                }                 
            }
            else if (e.Column.FieldName == "JWorkSN_LB3")
            {
                if (bandedGridView2.GetRowCellValue(e.RowHandle, this.bandedGridView2.Columns["JWorkSN_LB3"]) != null)
                {
                    e.Appearance.BackColor = Color.FromArgb(128, 255, 255);
                }
            }
        }

        private void bandedGridView2_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.Name == "Move")
            {
                if (e.Value.ToString() == "人移")
                    bandedGridView2.SetRowCellValue(e.RowHandle, this.bandedGridView2.Columns["WKStaitonCount"], 0);
            }
        }


    }
}
