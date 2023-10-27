using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class PONotifyDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public PONotifyDetailForm()
        {
            InitializeComponent();
        }
        public override void DataBind()
        {
            base.DataBind();
            //if (posku.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            //{
            //    //posku.HandleType = PH.POPC.BO.Common.ColorStd;
            //    //posku.HandleNo = posku.POColorSizeDetail.POSKUOperates.Where(p => p.HandleType == PH.POPC.BO.Common.ColorStd).Max(p => p.HandleNo) + 1;

            //}
            InitValue();
        }
        private void InitValue()
        {
            PH.POPC.BO.PONotify notify = this.BindingSource.Current as PH.POPC.BO.PONotify;
            if (notify == null) return;

            if (!string.IsNullOrEmpty(notify.Customer))
            {
                this.rgInLevel2.SelectedIndex = 0;
                //this.radioGroup4.SelectedIndex = 0;
            }
            else if (!string.IsNullOrEmpty(notify.Supplier))
            {
                this.rgInLevel2.SelectedIndex = 1;
                this.rgOut.SelectedIndex = 0;
            }
            else if (!string.IsNullOrEmpty(notify.SubContractor))
            {
                this.rgInLevel2.SelectedIndex = 2;
                this.rgOut.SelectedIndex = 1;
            }
            InitCombox();
        }

        private void InitCombox()
        {
            PH.POPC.BO.POEmailList list = new PH.POPC.BO.POEmailList();

            //var custs = list.GetUsersByCategory(PH.POPC.BO.UserCategory.Customer);
            //this.cbCust.Properties.Items.Clear();
            //foreach (var s in custs)
            //{
            //    this.cbCust.Properties.Items.Add(s);
            //}
            PH.POPC.BO.DicList dlist = new PH.POPC.BO.DicList();
            var custs = dlist.GetDataDictionary("PH.POPC.MatrixCustomer");
            this.cbCust.Properties.Items.Clear();
            foreach (var s in custs)
            {
                this.cbCust.Properties.Items.Add(s.DataCode);
            }

            var supps = list.GetUsersByCategory(PH.POPC.BO.UserCategory.Supplier);
            this.cbSupp.Properties.Items.Clear();
            this.cbSupp1.Properties.Items.Clear();
            foreach (var s in supps)
            {
                this.cbSupp.Properties.Items.Add(s.UserName);
                this.cbSupp1.Properties.Items.Add(s.UserName);
            }

            var subs = list.GetUsersByCategory(PH.POPC.BO.UserCategory.SubContractor);
            this.cbSubCon.Properties.Items.Clear();
            this.cbSubCon1.Properties.Items.Clear();
            foreach (var s in subs)
            {
                this.cbSubCon.Properties.Items.Add(s.UserName);
                this.cbSubCon1.Properties.Items.Add(s.UserName);
            }
        }


        protected override void SaveCurrent()
        {
            PH.POPC.BO.PONotify notify = this.BindingSource.Current as PH.POPC.BO.PONotify;
            if (notify == null) return;

            if (notify.IsInternal ?? false)
            {
                if (notify.POClassification != PH.POPC.BO.POClassification.Division)
                    notify.Division = "";
                if (rgInLevel2.SelectedIndex == 0)//Customer
                {
                    notify.Supplier = notify.SubContractor = "";
                }
                else if (rgInLevel2.SelectedIndex == 1)//supplier
                {
                    notify.Customer = notify.SubContractor = "";
                }
                else if (rgInLevel2.SelectedIndex == 2)//Sub-Contractor
                {
                    notify.Customer = notify.Supplier = "";
                }
            }
            else
            {
                notify.Classification = 2;//Division Dependent

                if (rgInLevel2.SelectedIndex == 0)//supplier
                {
                    notify.SubContractor = "";
                }
                else if (rgInLevel2.SelectedIndex == 1)//Sub-Contractor
                {
                    notify.Supplier = "";
                }
            }
            SetNotepadNo(notify);

            base.SaveCurrent();

            if (notify.POColorSizeDetails != null)
            {
                foreach (var m in notify.POColorSizeDetails)
                {
                    PH.POPC.BO.PONotifyPO pn = new PH.POPC.BO.PONotifyPO();
                    //pn.PONotify = notify;
                    pn.CurrentDataContext = this.DataContext;

                    pn.DT = notify.DT;
                    pn.PONO = m.PONO;
                    pn.OrderLine = m.OrderLine;
                    pn.SKU = m.SKU;
                    pn.SplitNo = 1;// m.SplitNo;
                    pn.ProjectNo = m.ProjectNO;
                    pn.Supplier = m.Supplier;
                    pn.EndCustCode = m.EndCustCode;

                    notify.PONotifyPOs.Add(pn);
                }
                this.DataContext.SubmitChanges();
                notify.POColorSizeDetails = null;
            }
        }

        private void SetNotepadNo(PH.POPC.BO.PONotify notify)
        {
            if (!string.IsNullOrEmpty(notify.NotepadNo)) return;

            notify.NotepadNo = notify.GetCurrentNotepadNo();
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.textEdit1.Properties.ReadOnly = true;
            operateDateDateEdit.Properties.ReadOnly = true;
        }

        private void radioGroup1_EditValueChanged(object sender, EventArgs e)
        {
            bool isIn = radioGroup1.SelectedIndex == 0;
            pageClassification.SelectedTabPageIndex = radioGroup1.SelectedIndex;
            pageInternal.PageVisible = isIn;
            this.pageExternal.PageVisible = !isIn;
        }

        private void radioGroup2_EditValueChanged(object sender, EventArgs e)
        {
            int i = rgClassification.SelectedIndex;

            this.lbDivision.Visible = this.cbDivision.Visible = i == 2;

        }

        private void radioGroup3_EditValueChanged(object sender, EventArgs e)
        {
            int i = rgInLevel2.SelectedIndex;

            this.cbCust.Visible = i == 0;
            this.cbSupp.Visible = i == 1;
            this.cbSubCon.Visible = i == 2;
        }

        private void radioGroup4_EditValueChanged(object sender, EventArgs e)
        {
            int i = rgOut.SelectedIndex;

            //this.cbDivision1.Visible = i == 0;
            this.cbSupp1.Visible = i == 0;
            this.cbSubCon1.Visible = i == 1;
        }

        private void btnSend_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            NotifyMail();
        }
        private void NotifyMail()
        {
            //PH.POPC.BO.PONotify pur = this.layoutView1.GetRow(this.layoutView1.FocusedRowHandle) as PH.POPC.BO.PONotify;
            PH.POPC.BO.PONotify pur = this.BindingSource.Current as PH.POPC.BO.PONotify;
            if (pur == null) return;

            PH.POPC.BO.POPCDataContext context = (PH.POPC.BO.POPCDataContext)this.DataContext;
            PH.POPC.BO.PONotify pur1 = (from a in context.PONotifies
                                        where a.DT == pur.DT
                                        select a).FirstOrDefault();
            if (pur1 == null) return;
            pur1.CurrentDataContext = context;

            Notify.NotifyForm frm = new Notify.NotifyForm(pur1);
            frm.ShowDialog();
        }

        private void btnNotepadReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}
