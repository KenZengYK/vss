using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    public partial class POTermListForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public POType _potype = POType.PO;
        public POTermListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(POTermDetailForm).FullName;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            //this.CurDataMember = "POTerms";
        }
        protected override void OnLoad(EventArgs e)
        {
            if (this.DesignMode) return;
            base.OnLoad(e);
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            if (this._potype == POType.POSticker)
            {
                var items = from cc in context.Terms
                            where cc.LanguageCode == "zh-TW"// PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
                            && cc.TermCode.Contains("A")
                            select cc;
                this.repositoryItemLookUpEdit1.Properties.ValueMember = "TermCode";
                this.repositoryItemLookUpEdit1.Properties.DisplayMember = "Remark";
                this.repositoryItemLookUpEdit1.Properties.DataSource = null;
                this.repositoryItemLookUpEdit1.Properties.DataSource = items;
            }
            else if (this._potype == POType.PO)
            {
                var items = from cc in context.Terms
                            where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID
                            && cc.TermCode.Contains("A") == false
                            select cc;
                this.repositoryItemLookUpEdit1.Properties.ValueMember = "TermCode";
                this.repositoryItemLookUpEdit1.Properties.DisplayMember = "Remark";
                this.repositoryItemLookUpEdit1.Properties.DataSource = null;
                this.repositoryItemLookUpEdit1.Properties.DataSource = items;
            }
        }
    }
}
