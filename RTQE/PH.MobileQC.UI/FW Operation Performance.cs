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
    public partial class FW_Operation_Performance : PH.Platform.UI.CS.UI2.ListForm
    {
        public FW_Operation_Performance()
        {
            InitializeComponent();
        }

        private string _factory;
        private string _line;
        private string _workshop;
        private DateTime _fromtime;
        private DateTime _totime;


        public override void DataBind()
        {
            base.DataBind();




            PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            this.DataContext = context;
            //this.DataSource = typeof(WorkforceSewingSkillResult);
            this.DataSource = typeof(worker_Evaluate);


            //PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();

            //this.DataContext = context;

            //this.DataSource = from a in context.worker_Evaluates select a;

        }

      
        protected override void  OnClickFind()
        {
            

            PH.MobileQC.UI.worker_Evaluate wefind = new worker_Evaluate();


            if (wefind.ShowDialog() ==DialogResult.OK)
            {
                this._factory = wefind.factory;
                this._line = wefind.line;
                this._workshop = wefind.workshop;
                this._fromtime = wefind.timefrom;
                this._totime = wefind.timeto;

                PH.MobileQC.BO.MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
                this.DataContext = context;

                this.BindingSource.DataSource = context.worker_evaluateview(wefind.factory, wefind.workshop, wefind.timefrom, wefind.timeto, this._line,Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID );
                //this.BindingSource.DataSource = (this.DataContext as MobileQC.BO.MobileQCDataContext).worker_evaluateview(wefind.factory, wefind.workshop, wefind.timefrom, wefind.timeto, this._line );

            }


        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            rptworker_Evaluate re = new rptworker_Evaluate(this.BindingSource.List,this._factory, this._workshop,this._line, this._fromtime.Date.ToString().Substring(0,10) + "  TO  " + this._totime.Date.ToString().Substring(0,10));

            re.ShowPreview();
       
        }

    }
}
