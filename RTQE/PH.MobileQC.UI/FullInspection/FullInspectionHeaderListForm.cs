using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.Platform.BO;
using DevExpress.XtraBars;
using PH.Platform.UI.CS.DataQuery;
using PH.MobileQC.UI.WebView;

namespace PH.MobileQC.UI.FullInspection
{
    public partial class FullInspectionHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        string UserLanguageName = "";
        public FullInspectionHeaderListForm()
        {
            InitializeComponent();

            UserLanguageName = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangName;

        }

        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<MobileQCDataContext>();
            //this.BindingSource.DataSource = (this.DataContext as MobileQCDataContext).FullInspectionHeaders;//.Where(p => p.ExftyDate >= DateTime.Now.Date);
            this.EditorTypeName = typeof(FullInspectionHeaderDetailForm).FullName;

            DataQueryParameter result = new DataQueryParameter();
            result.BoType = typeof(FullInspectionHeader);
            result.View = this.objListGridView;
            //result.FixedWherePart = this.m_where;
            result.WarnRecord = -1;
            this.StartEnquiry(result);
        }

        public override void InitFormNavigator()
        {
            base.InitFormNavigator();
            barBtnAddNew.Visibility = BarItemVisibility.Never;
            //barBtnDel.Visibility = BarItemVisibility.Never;
        }

        private void barPrint_ItemClick(object sender, ItemClickEventArgs e)
        {
            FullInspectionHeader Obj = this.BindingSource.Current as FullInspectionHeader;
            if (Obj == null) return;
            
            DailyInspectionFillInFormReport Rpt = new DailyInspectionFillInFormReport(Obj, (UserLanguageName=="English"?"EN":"CN"));
            Rpt.ShowPreview();
        }
    }
}
