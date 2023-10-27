using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.MasterDB
{
    public partial class EmailNotifyListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public EmailNotifyListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.DataSource = (DataContext as BasicInfoDataContext).EmailNotifies;
            this.EditorTypeName = typeof(EmailNotifyDetailForm).FullName;
        }
    }
}
