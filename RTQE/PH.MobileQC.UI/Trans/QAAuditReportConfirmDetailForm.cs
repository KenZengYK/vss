using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraBars;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.Trans
{
    public partial class QAAuditReportConfirmDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public QAAuditReportConfirmDetailForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            //this.gcDefect.DataSource = (this.BindingSource.Current as QC_Master_Final).DefectList;

            this.barBtnAddNew.Visibility = BarItemVisibility.Never;
            this.barBtnDel.Visibility = BarItemVisibility.Never;
            this.barBtnEdit.Visibility = BarItemVisibility.Never;


            QAAuditReportConfirmListForm frmList = this.ListForm as QAAuditReportConfirmListForm;

            this.btnWsConfirm.Visibility = frmList.btnWsConfirm.Visibility;
            this.btnQAConfirm.Visibility = frmList.btnQAConfirm.Visibility;
            this.btnSIConfirm.Visibility = frmList.btnSIConfirm.Visibility;

            this.btnWsConfirm.ItemClick += frmList.btnWsConfirm_ItemClick;
            this.btnQAConfirm.ItemClick += frmList.btnQAConfirm_ItemClick; 
            this.btnSIConfirm.ItemClick += frmList.btnSIConfirm_ItemClick;
        }

        private void BindingSource_PositionChanged(object sender, EventArgs e)
        {
            this.gcDefect.DataSource = (this.BindingSource.Current as QC_Master_Final).DefectList;
        }
    }
}
