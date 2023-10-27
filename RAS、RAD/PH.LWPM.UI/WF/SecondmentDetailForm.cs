using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF
{
    public partial class SecondmentDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public SecondmentDetailForm()
        {
            InitializeComponent();
            AddDetailMenu();

        }

        public override void EditCurrent()
        {
            if (this.IsNew)
            {
                Secondment obj = this.BindingSource.Current as Secondment;
                obj.WorkForceID = (this.PrevForm as SecondmendListForm).WorkForceID;
            }
            base.EditCurrent();

            this.txtWorkForceID.Properties.ReadOnly = true;
        }


        protected override void SaveCurrent()
        {
            if (checkText())
            {
                Secondment obj = this.BindingSource.Current as Secondment;//获取当前数据源的list的列赋值给对应Secondment对应的列
                if (!string.IsNullOrEmpty(this.txtWorkForceID.Text))
                {

                    RAPLQDataContext db = this.DataContext as RAPLQDataContext;//获取连接SQL的连接
                    obj.Factory = db.WorkForces.FirstOrDefault(p => p.Id == this.txtWorkForceID.Text).Factory;//Second表中的Factory字段等于WorkForces中的Factory的值

                }
                base.SaveCurrent();
            }
        }


        RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
        public void AddDetailMenu()
        {
            //var factory = (from A in db.FactoryLines select A.Factory).Distinct();

            var factory = db.BaseCodes.Where(p => p.Type == "FACTORY").Select(p => p.Code.Trim());
            foreach (var factory1 in factory)
            {
                txtWorkingPlace.Properties.Items.Add(factory1);
                txtSecondmentTo.Properties.Items.Add(factory1);
            }
        }

        public bool checkText()
        {
            if (string.IsNullOrEmpty(this.txtStartDate.Text))
            {
                MessageBox.Show("Start Date不能爲空!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            if (!string.IsNullOrEmpty(this.txtExpiredDate.Text))
            {
                if (this.txtExpiredDate.DateTime < this.txtStartDate.DateTime)
                {
                    MessageBox.Show("Expired Date必須大於或等於Start Date!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return false;
                }
            }

            if (string.IsNullOrEmpty(this.txtWorkingPlace.Text))
            {
                MessageBox.Show("Working Place不能爲空!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return false;
            }

            return true;
        }

    }
}
