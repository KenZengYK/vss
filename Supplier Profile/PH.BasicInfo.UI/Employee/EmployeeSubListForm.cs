using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI;
using PH.Platform.BO;
//using PH.Platform.Misc.BO;
using PH.Platform.Common;
using PH.Platform.UI.CS.UI3;

namespace PH.BasicInfo.UI.Employee
{
    public partial class EmployeeSubListForm : PH.Platform.UI.CS.UI3.SubListForm
    {
        public EmployeeSubListForm()
        {
            InitializeComponent();
        }

        protected override void OnClickAttach()
        {
            string[] lListUserID = new string[this.objListGridView.DataRowCount];  //記錄UserID
            for (int i = 0; i < this.objListGridView.DataRowCount; i++)
            {
                lListUserID[i] = this.objListGridView.GetRowCellValue(i, "UserID").ToString();

            }
            PH.BasicInfo.UI.Employee.UserListClass._lstUserID = lListUserID;
            base.OnClickAttach();
        }

        protected override void OnClickOpen()
        {
            //base.OnClickOpen();
        }
    }
}
