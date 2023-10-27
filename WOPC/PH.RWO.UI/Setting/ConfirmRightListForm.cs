using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.RWO.BO;

namespace PH.RWO.UI
{
    public partial class ConfirmRightListForm : PH.Platform.UI.CS.UI2.ListForm
    {
   
        public ConfirmRightListForm()
        {
            InitializeComponent();
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            
        }

        private void ConfirmRightListForm_Load(object sender, EventArgs e)
        {

        }

        public override void DataBind()
        {
            PH.RWO.BO.RWOSOPCDataContext context = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.DataContext = context;
            this.DataSource = from v in context.Rights where v.Phase==1 select v;
            this.EditorTypeName = typeof(ConfirmRightDetailForm).FullName;
            
            base.DataBind();

        }
    }
}
