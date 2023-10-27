using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.FirstPassRatio
{
    public partial class FirstPassQtyFromFind : DevExpress.XtraEditors.XtraForm
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        object ParentObj;

        public FirstPassQtyFromFind()
        {
            InitializeComponent();
        }

        public FirstPassQtyFromFind(object parent)
        {
            InitializeComponent();

            ParentObj = parent;

            DataTable dt = db.GetFactoryType();
            Edit_factory.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Edit_factory.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }



        private void simpleButton1_Click(object sender, EventArgs e)
        {
                string Sqlstr = "exec sp_GetFirstPassQty_20190403 ";
            //Sqlstr = string.Format(Sqlstr, this.Edit_factory.Text, this.Edit_Strat.Text, this.Edit_Due.Text);

                 var lists = db.ExecuteQuery<FirstPassQty>(Sqlstr);

                List<FirstPassQty> _list = new List<FirstPassQty>();
                 foreach (var item in lists)
                {
                    FirstPassQty item2 = new FirstPassQty();
                    item2.QCTime = item.QCTime;
                    item2.DefectName_top6 = item.DefectName_top6;
                    item2.WorkShop = item.WorkShop;
            
                    _list.Add(item2);
                }

                 (ParentObj as FirstPassQtyListForm).ImportList = _list;
                MessageBox.Show("≤È‘É≥…π¶£°");
                this.DialogResult = DialogResult.OK;
                this.Close();

        }



        private void dateStart_EditValueChanged(object sender, EventArgs e)
        {
            this.dateDue.Properties.MaxValue = this.dateStart.DateTime.AddDays(6);
            this.dateDue.Properties.MinValue = this.dateStart.DateTime;
        }

        private void dateDue_EditValueChanged(object sender, EventArgs e)
        {
            this.dateStart.Properties.MinValue = this.dateDue.DateTime.AddDays(-6);
            this.dateStart.Properties.MaxValue = this.dateDue.DateTime;
        }

    }
}