using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.LineBalanceII.UI.Reports
{
    public partial class MasterDBForm : PH.Platform.UI.CS.UI2.ListForm
    {

        public string Type = "";

        public MasterDBForm(string Type)
        {
            InitializeComponent();
            this.Type = Type;
            
        }

        public override void DataBind()
        {
            base.DataBind();

            this.EditorTypeName = typeof(MasterDBDetailForm).FullName;

           // PH.LineBalanceII.BO.LineBalanceIIDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
            if (this.DataContext == null) 
            {
                this.DataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.LineBalanceII.BO.LineBalanceIIDataContext>();
            }

            this.DataSource = (this.DataContext as PH.LineBalanceII.BO.LineBalanceIIDataContext).MasterDBs.Where(dr => dr.Type == this.Type).ToList();
            

        }
    }
}
