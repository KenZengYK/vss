using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.LineBalanceII.BO;
using PH.Platform.Misc.BO;
using DevExpress.XtraEditors;


namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class BondingSpecItemDetail : DetailForm
    {

        List<OperInfo> OperList = new List<OperInfo>();
        List<McInfo> McList = new List<McInfo>();
        
        public BondingSpecItemDetail()
        {
            InitializeComponent();
            //lueOperNo.DataBindings.Add("EditValue", this.BindingSource, "OperNo", true);

        }

        public override void DataBind()
        {
          
            GetData();
            BindSelect();
            SetEnable();
            base.DataBind();

            BondingSpecItem bsi = this.BindingSource.Current as BondingSpecItem;
            if (bsi != null)
            {
               // edtGroupNo.Text = bsi.GroupNo;
                edtMcName.Text = bsi.McName;
            }
           // edtGroupNo.Enabled = false;
            edtMcName.Enabled = false;

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            edtMcName.Properties.ReadOnly = true;
            lueType.Enabled = true;

        }

        protected override void SaveCurrent()
        {
            BondingSpecItem item = this.BindingSource.Current as BondingSpecItem;
            //item.OperNo = lueOperNo.EditValue.ToString();
            LineBalanceIIDataContext db = this.DataContext as LineBalanceIIDataContext;

           // item.BondingOper = db.BondingOpers.Single(x => x.OperNo == lueOperNo.EditValue.ToString());
                    base.SaveCurrent();
         }

        private void GetData()
        {
            LineBalanceIIDataContext lbdc = this.DataContext as LineBalanceIIDataContext;
            var _operlist = from a in lbdc.BondingOpers select 
                                new OperInfo 
                                { 
                                    OperNo = a.OperNo, 
                                    OperName = a.OperName,
                                    OperNameEN = a.OperNameEN,
                                    GroupNo=a.GroupNo
                                };

            OperList = _operlist.ToList();
            bsOper.DataSource = OperList;

            var _mclist = from a in lbdc.BondingMcStyles select new McInfo { McStyleNo = a.McStyleNo, McName = a.McName };
            McList = _mclist.ToList();


            PHPlatformMiscDataContext mdc = PH.Platform.BO.ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var i = mdc.Misc_DataDictionaries.Where(p => p.DataType == "PH.BondingSpec.LmType").Select(p => p.DataName).ToList();
            
            foreach (var a in i)
            {
                comboBoxEdit3.Properties.Items.Add(a);
            }
        }


        private void BindSelect()
        {

            this.lueOperNo.Properties.ValueMember = "OperNo";
            this.lueOperNo.Properties.DisplayMember = "OperName";
            lueOperNo.Properties.DataSource = bsOper;
            


            this.lueType.Properties.ValueMember = "McStyleNo";
            //this.lueType.Properties.DisplayMember = "McName";
            this.lueType.Properties.DisplayMember = "McStyleNo";
            lueType.Properties.DataSource = McList;
  
                
            
        }

        private void SetEnable()
        {
           // this.edtGroupNo.Properties.ReadOnly = true;
            this.edtMcName.Properties.ReadOnly = true;
            lueType.Enabled = false;
        }

        private void lueType_EditValueChanged(object sender, EventArgs e)
        {
          
            edtMcName.Text = lueType.GetColumnValue("McName").ToString();
        }

        private void lueOperNo_EditValueChanged(object sender, EventArgs e)
        {
           // string AA = lueOperNo.GetColumnValue("OperNo").ToString();


            ///Add by shulin 20211230
            LookUpEdit edit = sender as LookUpEdit;
            OperInfo Obj = edit.Properties.GetDataSourceRowByKeyValue(edit.EditValue) as OperInfo;
            if (Obj !=null)  txtOperNameEN.Text  = Obj.OperNameEN;

        }

        private void xtraTabPage5_Paint(object sender, PaintEventArgs e)
        {

        }
    }


    public class OperInfo
    {
        public string OperNo { get; set; }
        public string OperName { get; set; }
        public string OperNameEN { get; set; }
        public string GroupNo { get; set; }
    }

    public class McInfo
    {
        public string McStyleNo { get; set; }
        public string McName { get; set; }
    }

   
}
