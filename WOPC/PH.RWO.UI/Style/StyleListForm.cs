using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class StyleListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public string Para;
        public StyleListForm()
        {
            InitializeComponent();
        }
        public StyleListForm(string para)
            : this()
        {
            this.Para = para;
        }

        bool _IsOtherOpen = false;
        public DevExpress.XtraTab.XtraTabPage ParentPage;
        public PH.RWO.BO.Style Style;
        public StyleListForm(PH.RWO.BO.Style style, string dept, DevExpress.XtraTab.XtraTabPage parentPage)
            : this()
        {
            this.Style = style;
            this.Para = dept;
            //PH.RWO.BO.RWOSOPCDataContext context;
            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            //context.CommandTimeout = 1000;
            //this.DataContext = context;
            //this.BindingSource.DataSource = from c in context.Styles
            //                                where c.Company == cono
            //                                && c.StyleNo == styleno
            //                                select c;
            this.EditorTypeName = typeof(StyleDetailForm).FullName;
            this._IsOtherOpen = true;
            this.ParentPage = parentPage;
        }

        public override void DataBind()
        {
            base.DataBind();

            if (this.Para == "OA")
                this.EditorTypeName = typeof(StylePackingParentDetailForm).FullName;

            else
                this.EditorTypeName = typeof(StyleDetailForm).FullName;
            if (this.Style != null)
            {
                StyleList list = new StyleList();
                this.DataContext = list.CurrentDataContext;
                this.BindingSource.DataSource = list.GetStyleList(this.Style.Company, this.Style.StyleNo);
            }

            else
            {
                DataHelper helper = new DataHelper();
                this.DataContext =helper.RWOContext;
                this.BindingSource.DataSource = helper.GetStyles();
            }

        }
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (this._IsOtherOpen)
            {
                this.Tag = "Edit";
                this.OnClickOpen();
            }
        }
    }
}
