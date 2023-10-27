using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public partial class EmailNotifyDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public EmailNotifyDetailForm()
        {
            InitializeComponent();

            this.lookUpEditDesc.Properties.NullText = "";
            this.lookUpEditDesc.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Currt", "Id", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Desc", "Function Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lookUpEditDesc.Properties.DisplayMember = "Desc";
            this.lookUpEditDesc.Properties.ValueMember = "Currt";
        }

        private void EmailNotifyDetailForm_Load(object sender, EventArgs e)
        {
            Init();
        }

        private void Init()
        {
            //Xsj20110223:初始化Desc下接框選項
            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var descList = from val in context.MIDcEmailNotifies
                           select new { Currt = val.Currt, Desc = val.Desc };
            this.lookUpEditDesc.Properties.DataSource = descList;

            //Xsj20110223:初始化ActionUser下接框選項
            PH.Platform.AuthMgr.BO.AuthMgrDataContext authContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.AuthMgr.BO.AuthMgrDataContext>();
            List<string> userList = (from val in authContext.Auth_User
                                     where val.UserName != null
                                     select val.UserName).ToList();
            this.checkedComboBoxEditActionUsers.Properties.Items.Clear();
            this.checkedComboBoxEditNotifyUsers.Properties.Items.Clear();
            foreach (string item in userList)
            {
                this.checkedComboBoxEditActionUsers.Properties.Items.Add(item,false);
                this.checkedComboBoxEditNotifyUsers.Properties.Items.Add(item,false);
            }
        }
    }
}
