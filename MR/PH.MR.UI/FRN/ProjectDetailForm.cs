using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PH.MR.BO;
using PH.Platform.Misc.BO;

namespace PH.MR.UI.FRN
{
    public partial class ProjectDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public ProjectDetailForm()
        {
            InitializeComponent();
            this.frnListForm1.EditorTypeName = typeof(FRNDetailForm).FullName;
        }

       

        public override void DataBind()
        {

            Misc_DataDictionaryList mdd = new Misc_DataDictionaryList();

            List<Misc_DataDictionary> lstmdd = new List<Misc_DataDictionary>();
            IEnumerable<Misc_DataDictionary> lstmethod = mdd.GetDataByCondition(" DataType='PH.FRN.SortMethod'");
            foreach (Misc_DataDictionary dc in lstmethod)
            {
                lstmdd.Add(dc);
            }

            resonRichTextBox.ReadOnly = true;
             
            lueMethod.Properties.DisplayMember = "DataName";
            lueMethod.Properties.ValueMember = "DataCode";
            lueMethod.Properties.DataSource = lstmdd;
       
            FRN_MasterInfo master = this.BindingSource.Current as FRN_MasterInfo;
            this.frnListForm1.BindingSource.DataSource = master.FRN_DetailInfos;
            base.DataBind();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            resonRichTextBox.ReadOnly = false;
            this.tbxProjectNo.ReadOnly = true;
            this.tbxSaleOrder.ReadOnly = true;
        }
    }
}
