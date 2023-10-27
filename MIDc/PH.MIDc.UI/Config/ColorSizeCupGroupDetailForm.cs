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
    public partial class ColorSizeCupGroupDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {

        private PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

        private PH.Platform.BO.Interface.WorkMode currBOWorkMode
        {
            get;
            set;
        }

        public ColorSizeCupGroupDetailForm()
        {
            InitializeComponent();
            string[] categorys = new string[] { "ColorRange", "Cup", "Size" };
            this.categoryComboBoxEdit.Properties.Items.AddRange(categorys);

        }

        private void ColorSizeCupGroupDetailForm_Load(object sender, EventArgs e)
        {
            PH.MIDc.BO.ColorSizeCupGroup currColorSizeCupGroup = this.BindingSource.Current as PH.MIDc.BO.ColorSizeCupGroup;
            this.categoryComboBoxEdit.EditValue = currColorSizeCupGroup.Category;
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            ForbidInput();
            PH.MIDc.BO.ColorSizeCupGroup currColorSizeCupGroup = this.BindingSource.Current as PH.MIDc.BO.ColorSizeCupGroup;
            recordBOWorkStatus(currColorSizeCupGroup.BOWorkMode);
        }

        protected void recordBOWorkStatus(PH.Platform.BO.Interface.WorkMode BOWorkMode)
        {
            this.currBOWorkMode = BOWorkMode;
        }

        //Xsj:禁止輸入
        private void ForbidInput()
        {
            this.groupCodetextEdit.Properties.ReadOnly = true;
            this.createUserTextEdit.Properties.ReadOnly = true;
            this.createDateDateEdit.Properties.ReadOnly = true;
            this.alterUserTextEdit.Properties.ReadOnly = true;
            this.alterDateDateEdit.Properties.ReadOnly = true;
        }

        //Xsj:保存
        protected override void OnClickSave()
        {
            if (DataSave())
            {
                base.OnClickSave();
            }
        }

        //Xsj:保存
        protected override void OnClickSaveAndReturn()
        {
            if (DataSave())
            {
                base.OnClickSaveAndReturn();
            }
        }



        //Xsj:驗證是否允許保存
        private bool DataSave()
        {
            bool result = true;

            PH.MIDc.BO.ColorSizeCupGroup currColorSizeCupGroup = this.BindingSource.Current as PH.MIDc.BO.ColorSizeCupGroup;
            //Xsj:是否已存在同名的記錄
            PH.MIDc.BO.ColorSizeCupGroup colorSizeCupGroup = context.ColorSizeCupGroups.Where(p => p.GroupCode != currColorSizeCupGroup.GroupCode && p.GroupName == currColorSizeCupGroup.GroupName).FirstOrDefault();
            if (colorSizeCupGroup != null)
            {
                MessageBox.Show("組加名稱已存在，請確認。", "系統提示");
                result = false;
            }
            else
            {
                if (this.currBOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
                {
                    int groupCode = 1;
                    if (context.ColorSizeCupGroups.Count() > 0)
                    {
                        groupCode = context.ColorSizeCupGroups.Max(p => p.GroupCode);
                    }
                    currColorSizeCupGroup.GroupCode = groupCode + 1;

                    currColorSizeCupGroup.CreateUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                    currColorSizeCupGroup.CreateDate = DateTime.Now;
                }
                else if (this.currBOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
                {
                    currColorSizeCupGroup.AlterUser = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                    currColorSizeCupGroup.AlterDate = DateTime.Now;
                }
            }

            return result;
        }



    }
}
