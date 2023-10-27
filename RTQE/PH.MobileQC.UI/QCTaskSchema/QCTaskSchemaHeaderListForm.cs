using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.QCTaskSchema
{
    public partial class QCTaskSchemaHeaderListForm : PH.Platform.UI.CS.BaseListForm
    {
        public string TaskType
        {
            get
            {
                return this._taskType;
            }

            set
            {
                this._taskType = value;
            }
        }
        private string _taskType = "MobileQC_MQA";

        public QCTaskSchemaHeaderListForm()
        {
            InitializeComponent();
            this.objListGridView.OptionsView.ColumnAutoWidth = true;
            this.EditorTypeName = typeof(PH.MobileQC.UI.QCTaskSchema.QCTaskSchemaHeaderDetailForm).FullName;
        }

        public QCTaskSchemaHeaderListForm(string TaskType)
            : this()
        {
            this.TaskType = TaskType;
        }


        public override void DataBind()
        {
            MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            this.DataContext = context;
            this.DataSource = from m in context.QC_TaskSchemaHeaders
                              where m.TaskType == this.TaskType
                               && m.CreateDate> DateTime.Now.AddDays(-20) 
                              select m;
        }

        public override void OnClickSave()
        {
            base.OnClickSave();
        }
    }
}
