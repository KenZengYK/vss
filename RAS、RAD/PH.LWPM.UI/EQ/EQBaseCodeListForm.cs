using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.EQ
{
    public partial class EQBaseCodeListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        internal string EQType;
        public EQBaseCodeListForm()
        {
            InitializeComponent();
        }

        public EQBaseCodeListForm(string AType)
            : this()
        {
            this.EQType = AType;

            if (AType == "EQItemLevel")
            {
                this.colName.Visible = false;
                this.colSortID.Visible = false;
            }
            else if (AType == "EQToolsContainer")
            {
                this.colSortID.Visible = false;
                this.colExtraField1.Visible = false;
            }
        }

        public override void DataBind()
        {
            RAPLQDataContext context = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.DataContext = context;
            this.BindingSource.DataSource = context.BaseCodes.Where(p => p.Type == EQType).OrderBy(p => p.Code); //SortID
            this.EditorTypeName = typeof(EQBaseCodeDetailForm).FullName;

            base.DataBind();
        }
    }
}
