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
    public partial class QCTaskSchemaHeaderDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public string TaskType = "MobileQC_MQA";

        public QCTaskSchemaHeaderDetailForm()
        {
            InitializeComponent();

            MobileQCDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            factoryImageComboBoxEdit.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                factoryImageComboBoxEdit.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(dt.Rows[i]["Name"].ToString(), dt.Rows[i]["Name"].ToString()));
            }

            this.qcTaskSchemaDetailListFrom1.EditorTypeName = typeof(QCTaskSchema.QCTaskSchemaDetailDetailForm).FullName;
        }

        public override void DataBind()
        {
            PH.MobileQC.BO.QC_TaskSchemaHeader headerBO = this.BindingSource.Current as PH.MobileQC.BO.QC_TaskSchemaHeader;

            this.TaskType = ((PH.MobileQC.UI.QCTaskSchema.QCTaskSchemaHeaderListForm)(this.PrevForm)).TaskType;

            this.qcTaskSchemaDetailListFrom1.BindingSource.DataSource = headerBO.QC_TaskSchemaDetails;
            this.qcTaskSchemaDetailListFrom1.HeaderBO = headerBO;

            if (this.IsNew)
            {
                headerBO.MasterID = Guid.NewGuid();
                headerBO.Factory = "SL";
                headerBO.QCActionDate = DateTime.Today;
                headerBO.CreateDate = DateTime.Now;
                headerBO.CreateUser = PH.Platform.Common.SysParamHelper.Instance.UserID;
            }
        }

        protected override void OnClickSave()
        {
            if (CheckDoubleTaskSchema())
            {
                base.OnClickSave();
                DisableCtrls();
            }
        }

        protected override void OnClickSaveAndReturn()
        {
            if (CheckDoubleTaskSchema())
            {
                base.OnClickSaveAndReturn();
            }
        }



        private bool CheckDoubleTaskSchema()
        {
            if (this.IsNew)
            {
                PH.MobileQC.BO.QC_TaskSchemaHeader headerBO = this.BindingSource.Current as PH.MobileQC.BO.QC_TaskSchemaHeader;

                headerBO.TaskType = this.TaskType;

                if (headerBO.QCActionDate == null)
                {
                    MessageBox.Show("請選擇計劃執行的日期!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }

                MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
                PH.MobileQC.BO.QC_TaskSchemaHeader anotherBO = context.QC_TaskSchemaHeaders.Where(p => p.Factory == headerBO.Factory
                    && p.QCActionDate == headerBO.QCActionDate
                    && p.TaskType == this.TaskType
                    && p.MasterID != headerBO.MasterID).FirstOrDefault();
                if (anotherBO != null)
                {
                    MessageBox.Show("日期[" + headerBO.QCActionDate.Value.ToString("yyyy-MM-dd") + "]已有計劃，請確認!", "系統提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return false;
                }
            }
            //this.qcTaskSchemaDetailListFrom1.SetColumnDisable();
            this.qcTaskSchemaDetailListFrom1.SetColumnEditable();
            return true;
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            this.qcTaskSchemaDetailListFrom1.SetColumnDisable();
        }

        private void DisableCtrls()
        {
            this.processTotalQtySpinEdit.Properties.ReadOnly = true;
            this.schemaProcessQtySpinEdit.Properties.ReadOnly = true;
            this.qCFinishProcessQtySpinEdit.Properties.ReadOnly = true;
            this.taskFinishPercentSpinEdit.Properties.ReadOnly = true;
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;


            if (!this.IsNew)
            {
                this.factoryImageComboBoxEdit.Properties.ReadOnly = true;
                this.qCActionDateDateEdit.Properties.ReadOnly = true;
            }
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
            DisableCtrls();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();
            this.qcTaskSchemaDetailListFrom1.SetColumnEditable();
        }

        private void QCTaskSchemaHeaderDetailForm_Load(object sender, EventArgs e)
        {
            PH.MobileQC.BO.QC_TaskSchemaHeader headerBO = this.BindingSource.Current as PH.MobileQC.BO.QC_TaskSchemaHeader;

            if (headerBO.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                DisableCtrls();
                this.qcTaskSchemaDetailListFrom1.SetColumnEditable();
            }
        }

    }
}
