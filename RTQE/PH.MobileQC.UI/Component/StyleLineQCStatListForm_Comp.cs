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


namespace PH.MobileQC.UI
{
    public partial class StyleLineQCStatListForm_Comp : PH.Platform.UI.CS.UI2.ListForm
    {
        //#region
        //DataQueryParameter param;
        //#endregion
        private string _Line;
        private string _Style;

        public StyleLineQCStatListForm_Comp()
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

            MobileQCDataContext context = new MobileQCDataContext(MobileQCDataContext.TestConnStr); //ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            this.DataSource = typeof(StyleLineQCStatResult); //StyleLineQCStatResult


        }


        protected override void OnClickFind()
        {
            StyleLineQCStatCondition frmCondition = new StyleLineQCStatCondition();
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                this.DataContext.CommandTimeout = 60 * 30;
                this._Line = frmCondition.Line;
                this._Style = frmCondition.Style;

                this.BindingSource.DataSource = null;
//                this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).StyleLineQCStat(this._Line, this._Style, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).StyleLineQCStat_Comp(this._Line, this._Style, PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
            }
        }

        private void BtnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count > 0)
            {
                StyleLineQCStat_Comp rpt = new StyleLineQCStat_Comp(this.BindingSource.List, this._Line, this._Style);
                rpt.ShowPreview();
            }

            //string line = //param.ParamList["@Line"].ToString();
            //string style =// param.ParamList["@Style"].ToString();

        }

        private void objListGridView_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            if (e.Column.FieldName == "Status")
            {
                StyleLineQCStatResult obj = this.objListGridView.GetRow(e.RowHandle) as StyleLineQCStatResult;

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
            StyleLineQCStatResult row = this.objListGridView.GetRow(this.objListGridView.FocusedRowHandle) as StyleLineQCStatResult;
            if (row.StatusTag == 1)
            {
                DataTable dt = (this.DataContext as MobileQCDataContext).GetNoPassDetail(this._Line, this._Style, row.GXDH, row.WorkerID, row.LastQC_Time??DateTime.MinValue);


                this.CreateProgramForm(typeof(ViewNoPassDetailListForm), "View No Pass Detail", true, new object[] { this.DataContext, dt }, null);
            }


        }

        private void barBtnFind_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }

        private void objListGridControl_Click(object sender, EventArgs e)
        {

        }


    }

}
