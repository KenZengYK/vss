using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS;
using PH.Platform.UI.CS.DataQuery;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraEditors.Controls;


namespace PH.MobileQC.UI
{
    public partial class StyleLineQCStatByWorkshopListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //#region
        //DataQueryParameter param;
        //#endregion
        private string _Factory;
        private string _Workshop;
        private string _Line;
        private string _Style;
        private int _ShowYellow;
        private int _ShowGreen;
        private int _ShowRed;

        public StyleLineQCStatByWorkshopListForm()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
        }

        public override void DataBind()
        {
            base.DataBind();
     

            MobileQCDataContext context = ContextBuilder.CreateContext<  MobileQCDataContext>();
            this.DataContext = context;
            this.DataSource = typeof(StyleLineQCStatResult);
        }

        protected override void OnClickFind()
        {
            StyleLineQCStatByWorkshopCondition frmCondition = new StyleLineQCStatByWorkshopCondition();
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                this.DataContext.CommandTimeout = 60 * 30;
                this._Factory = frmCondition.Factory;
                this._Workshop = frmCondition.Workshop;
                this._Line = frmCondition.Line;
                this._Style = frmCondition.Style;
                this._ShowYellow = frmCondition.ShowYellow;
                this._ShowGreen = frmCondition.ShowGreen;
                this._ShowRed = frmCondition.ShowRed;

                this.BindingSource.DataSource = null;
                //var lists = (this.DataContext as MobileQCDataContext).StyleLineQCStatByWorkShop(
                //                this._Factory, this._Workshop,"","",
                //                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID,
                //                this._ShowYellow, this._ShowGreen, this._ShowRed);


                var lists = (this.DataContext as MobileQCDataContext).StyleLineQCStatByWorkShop(
                                this._Factory, this._Workshop,this._Line,this._Style,
                                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID,
                                this._ShowYellow, this._ShowGreen, this._ShowRed);                  


                this.BindingSource.DataSource = lists;
            }
        }

        private void BtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count > 0)
            {
                rptStyleLineQCStatByWokshop rpt = new rptStyleLineQCStatByWokshop(this.BindingSource.List,
                       this._Factory, this._Workshop );

                rpt.ShowPreview();
            }
        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Status")
            {
                StyleLineQCStatByWorkshopResult obj = this.objListGridView.GetRow(e.RowHandle) as StyleLineQCStatByWorkshopResult;

                if (obj.StatusTag == 0) //未作MobileQC審查標記為黃色
                {
                    e.Appearance.BackColor = Color.Yellow;
                    //e.DisplayText = "未作審查";
                }
                else if (obj.StatusTag == 1) //質量不OK標記為黃色
                {
                    e.Appearance.BackColor = Color.Red;
                    // e.DisplayText = "質量不OK";
                }
                else //質量OK標記為綠色
                {
                    e.Appearance.BackColor = Color.Green;
                    // e.DisplayText = "質量OK";
                }
            }
        }

        private void objListGridView_DoubleClick(object sender, EventArgs e)
        {
            StyleLineQCStatByWorkshopResult row = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as StyleLineQCStatByWorkshopResult
                ;
            if (row.StatusTag == 1)
            {
                DataTable dt = (this.DataContext as MobileQCDataContext).GetNoPassDetail(row.Line, row.Style, row.GXDH, row.WorkerID, row.LastQC_Time ?? DateTime.MinValue);
                //DataTable dt = (this.DataContext as MobileQCDataContext).GetNoPassDetail(row.Line, row.Style, row.GXDH, row.WorkerID, row.LastQC_Time);

                this.CreateProgramForm(typeof(ViewNoPassDetailListForm), "View No Pass Detail", true, new object[] { this.DataContext, dt }, null);

            }
        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }

    }
}
