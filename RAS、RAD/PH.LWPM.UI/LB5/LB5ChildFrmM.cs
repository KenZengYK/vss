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

namespace PH.LWPM.UI.LB5
{
    public partial class LB5ChildFrmM : ParentChildForm 
    {
        public LB5ChildFrmM()
        {
            InitializeComponent();
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            factoryTextEdit.Properties.ReadOnly = true;
            lineCodePopupContainerEdit.Properties.ReadOnly = true;
            startTimeDateEdit.Properties.ReadOnly = true;
            sTimeSpinEdit.Properties.ReadOnly = true;
            endTimeDateEdit.Properties.ReadOnly = true;
            eTimeSpinEdit.Properties.ReadOnly = true;
            pHStyleCodeTextEdit.Properties.ReadOnly = true;
            custStyleCodeTextEdit.Properties.ReadOnly = true;
            versionSpinEdit.Properties.ReadOnly = true;
            bcolorTextEdit.Properties.ReadOnly = true;
            j_NOTextEdit.Properties.ReadOnly = true;
            j2_jobTextEdit.Properties.ReadOnly = true;
            wocTextEdit.Properties.ReadOnly = true;
            rwoTextEdit.Properties.ReadOnly = true;
            qnTextEdit.Properties.ReadOnly = true;
            isConfirmedCheckEdit.Properties.ReadOnly = true;
            confirmTimeDateEdit.Properties.ReadOnly = true;

        }
        public override void DataBind()
        {
            this.childListX1.BindingSource.DataSource = (this.BindingSource.Current as WPMaster).PoolInfos;         
            base.DataBind();
            this.childListX1.EditorTypeName = typeof(LB5ChildFrmN).FullName;
        }

        private void barBtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void barBtnPrint_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Report.WFMCCountRpt Rpt = new PH.LWPM.UI.LB5.Report.WFMCCountRpt(this.BindingSource.Current as WPMaster);
            Rpt.ShowPreviewDialog();
        }

        //private void simpleButton1_Click(object sender, EventArgs e)
        //{
        //    WPMaster CurWPmaster = this.BindingSource.Current as WPMaster;
        //    DateTime StartDate = Convert.ToDateTime(CurWPmaster.StartTime != null ? CurWPmaster.StartTime : null);
        //    DateTime EndDate = Convert.ToDateTime(CurWPmaster.EndTime != null ? CurWPmaster.EndTime : null);
        //    (this.DataContext as RAPLQDataContext).PoolInfos.DeleteAllOnSubmit(CurWPmaster.PoolInfos.Where(P => (P.Date < StartDate || P.Date > EndDate) && P.IsConfirmed == false));
        //    this.DataContext.SubmitChanges();
        //}

       

        
    }
}
