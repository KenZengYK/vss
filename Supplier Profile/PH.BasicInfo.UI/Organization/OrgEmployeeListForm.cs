using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
//using PH.Platform.Misc.BO;
using PH.Platform.Common;
using PH.BasicInfo.BO;

namespace PH.BasicInfo.UI.Organization
{
    public partial class OrgEmployeeListForm : PH.Platform.UI.CS.UI3.MasterListForm
    {
        public OrgEmployeeListForm()
        {
            InitializeComponent();
            this.EditorTypeName = typeof(OrgEmployeeDetailForm).FullName;
        }


        public override void DataBind()
        {
            //PH.Platform.Misc.BO.PHPlatformMiscDataContext dContext = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            PH.BasicInfo.BO.BasicInfoDataContext dContext = ContextBuilder.CreateContext<BasicInfoDataContext>();
            this.DataContext = dContext;
            this.DataSource = from oe in dContext.OrgEmployees select oe;
            base.DataBind();
        }

    }
}
