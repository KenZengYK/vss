using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.DataQuery;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class WorkforceSewingSkillListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        //#region
        //private DataQueryParameter param;

        //#endregion

        private string _Line;
        private string _Worker;
        private string _Customer;
        private DateTime _QC_TimeFrom;
        private DateTime _QC_TimeTo;

        public WorkforceSewingSkillListForm()
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

            MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            this.DataSource = typeof(WorkforceSewingSkillResult);

            //param = new DataQueryParameter();
            //param.DataContext = context;
            //param.BoType = typeof(WorkforceSewingSkillResult);
            //param.QueryType = QueryType.StoredProcedure;
            //param.StoredProcedureName = "WorkforceSewingSkill";
            //param.CreateConditions();

            //param.WarnRecord = 1000;

            //this.StartEnquiry(param); 
        }


        protected override void OnClickFind()
        {
            WorkforceSewingSkillCondition frmCondition = new WorkforceSewingSkillCondition();
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                this._Line = frmCondition.Line;
                this._Worker = frmCondition.Worker;
                this._Customer = frmCondition.Customer;
                this._QC_TimeFrom = frmCondition.QC_TimeFrom;
                this._QC_TimeTo = frmCondition.QC_TimeTo;

                this.BindingSource.DataSource = null;
                this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).WorkforceSewingSkill(
                    this._Line, this._Worker, this._Customer, this._QC_TimeFrom.ToShortDateString(), this._QC_TimeTo.ToShortDateString(), PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                
                    
            }
        }

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (this.BindingSource.List.Count > 0)
            {
                rptWorkforceSewingSkill rpt = new rptWorkforceSewingSkill(this.BindingSource.List,
                this._Line, this._Worker, this._Customer, this._QC_TimeFrom.ToString() + " TO " + this._QC_TimeTo.ToString());

                rpt.ShowPreview();
                
            }

            //string customer = param.ParamList["@Line"].ToString();
            //string datetime = param.ParamList["@QCTimeFrom"].ToString() + "  TO  " + param.ParamList["@QCTimeTo"].ToString();
            //string line = param.ParamList["@Line"].ToString();
            //string worker = param.ParamList["@Workforce"].ToString();

           
        }


    }
}
