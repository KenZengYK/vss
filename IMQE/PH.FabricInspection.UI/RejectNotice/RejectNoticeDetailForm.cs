using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;
using PH.Platform.Common;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.RejectNotice
{
    public partial class RejectNoticeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public RejectNoticeDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            createrTextEdit.Properties.ReadOnly = true;
            createDateDateEdit.Properties.ReadOnly = true;
            rNNoTextEdit.Properties.ReadOnly = true;

            if (this.IsNew)
            {
                flagComboBoxEdit.SelectedIndex = 0; //默认为Allover

                PH.FabricInspection.BO.RejectNotice obj = this.BindingSource.Current as PH.FabricInspection.BO.RejectNotice;
                if (obj != null)
                {
                    obj.Creater = SysParamHelper.Instance.UserID;
                    obj.CreateDate = DateTime.Now;

                    obj.IssueDept = "QA Dept.";
                    obj.IssueDate = DateTime.Now;
                }
            }
        }

        protected override void SaveCurrent()
        {
            PH.FabricInspection.BO.RejectNotice obj = this.BindingSource.Current as PH.FabricInspection.BO.RejectNotice;
            if (obj != null)
            {
                FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();

                int RNNoFrom = Convert.ToInt32(DateTime.Now.ToString("yy")) * 10000;
                int RNNoTo = Convert.ToInt32(DateTime.Now.ToString("yy")) * 10000 + 9999;
                int? MaxRNNo = db.RejectNotices.Where(p => p.RNNo >= RNNoFrom && p.RNNo <= RNNoTo).Select(p => p.RNNo).Max();
                obj.RNNo = MaxRNNo.HasValue ? ++MaxRNNo : Convert.ToInt32(DateTime.Now.ToString("yy")) * 10000 + 1;
            }

            base.SaveCurrent();

        }
    }
}
