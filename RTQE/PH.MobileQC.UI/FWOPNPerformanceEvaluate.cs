using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MobileQC.UI
{
    public partial class FWOPNPerformanceEvaluate : PH.Platform.UI.CS.UI2.ListForm
    {
        public FWOPNPerformanceEvaluate()
        {
            InitializeComponent();
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            barBtnOpen.Visibility = barBtnAddNew.Visibility;
            barBtnDel.Visibility = barBtnAddNew.Visibility;
            barBtnSave.Visibility = barBtnAddNew.Visibility;
        }

        private string _factory;
        private string _line;
        private string _workshop;
        private DateTime _fromtime;
        private DateTime _totime;


        public override void DataBind()
        {

            this.NeedCheckPermission = false;
            base.DataBind();

            PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            this.DataContext = context;
            //this.DataSource = typeof(WorkforceSewingSkillResult);
           // this.DataSource = typeof(FWOPNPerformanceEvaluateCondition);
           // this.DataSource = typeof(FWOPNPerformanceEvaluateCondition);
            

            //PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            //this.DataContext = context;

            //this.DataSource = from a in context.worker_Evaluates select a;

        }


        protected override void OnClickFind()
        {
            PH.MobileQC.UI.FWOPNPerformanceEvaluateCondition wefind = new FWOPNPerformanceEvaluateCondition();
            if (wefind.ShowDialog() == DialogResult.OK)
            {
                this._factory = wefind.Factory;
                this._line = wefind.Line;
                this._workshop = wefind.Workshop;
                this._fromtime = wefind.QC_TimeFrom;
                this._totime = wefind.QC_TimeTo;

                PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
                this.DataContext = context;

                this.BindingSource.DataSource = context.worker_evaluateview(wefind.Factory, wefind.Workshop, wefind.QC_TimeFrom, wefind.QC_TimeTo, this._line, Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID);
                //this.BindingSource.DataSource = (this.DataContext as MobileQC.BO.MobileQCDataContext).worker_evaluateview(wefind.factory, wefind.workshop, wefind.timefrom, wefind.timeto, this._line );
            }
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            rptWFOPNPerformanceEvaluate re = new rptWFOPNPerformanceEvaluate(this.BindingSource.List, this._factory, this._workshop, this._line, this._fromtime.Date.ToString().Substring(0, 10) + "  TO  " + this._totime.Date.ToString().Substring(0, 10));
            re.ShowPreview();
        }

    }
}
