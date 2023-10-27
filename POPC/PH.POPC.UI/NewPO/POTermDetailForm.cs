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
    public partial class POTermDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {

        public POTermDetailForm()
        {
            InitializeComponent();

            //  this.BindingSource.CurrentChanged+=new EventHandler(CurBindingSource_CurrentChanged);

        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            TermDataInit();
        }
        private IQueryable<PH.POPC.BO.Term> items;
        // public POType _potype = POType.PO;
        private void TermDataInit()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms
                    where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID
                    // && cc.TermCode.IndexOf("A") < 0
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        private void TermDataInitPO()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms
                    where cc.LanguageCode == "zh-TW"
                     && cc.TermCode.Contains("A")
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        private void TermDataInitErpPO()
        {
            this.Cursor = Cursors.WaitCursor;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            items = from cc in context.Terms
                    where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID
                     && cc.TermCode.IndexOf("A") < 0
                    select cc;
            this.look_Term.Properties.ValueMember = "TermCode";
            this.look_Term.Properties.DisplayMember = "Remark";
            this.look_Term.Properties.DataSource = null;
            this.look_Term.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();

            (this.BindingSource.Current as PH.POPC.BO.POTerm).LanguageCode = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;
            if (((PH.POPC.BO.POTerm)this.BindingSource.Current).POHeader.POType == (int)POType.PO)
            {
                this.look_Term.Properties.ReadOnly = true;
            }
            else
            {
                TermDataInitPO();
            }
        }

       



    }
}
