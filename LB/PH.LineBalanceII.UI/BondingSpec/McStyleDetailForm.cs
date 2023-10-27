using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.UI.CS.UI2;
using PH.Platform.Misc.BO;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class McStyleDetailForm : DetailForm
    {
        public McStyleDetailForm()
        {
            InitializeComponent();
        }

        private void SetEnable()
        {
            this.edtCreateBy.Properties.ReadOnly = true;
            this.deCreateTime.Properties.ReadOnly = true;
            this.edtUpdateBy.Properties.ReadOnly = true;
            this.deUpdateTime.Properties.ReadOnly = true;
        }

        public override void DataBind()
        {
            base.DataBind();
            BindClass();
            BondingMcStyle bms = this.BindingSource.Current as BondingMcStyle;
            if (bms != null)
            {

                if (bms.TypeNo.HasValue)
                    BindType(bms.TypeNo.ToString());
                else
                    BindType("A");

            }
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            SetEnable();
        }

        protected override void SaveCurrent()
        {
            string _user = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
            DateTime _dt = DateTime.Now;
            BondingMcStyle bms = this.BindingSource.Current as BondingMcStyle;
            if (bms == null)
                return;

            if (IsNew)
            {
                bms.CreateBy = _user;
                bms.CreateTime = _dt;
            }
            if (IsEditting)
            {
                bms.UpdateBy = _user;
                bms.UpdateTime = _dt;

            }
            //if (cmbTypeNo.SelectedIndex == 0)
            //    bms.TypeNo = 'A';
            //else
            //    bms.TypeNo = 'B';
            base.SaveCurrent();
        }

        public void BindClass()
        {
            List<BondClass> lst = new List<BondClass>();
            BondClass bcl = new BondClass();
             bcl.Classno='A';
             bcl.Classname = "粘縫機种类";
            BondClass bcl1 = new BondClass();
            bcl1.Classno = 'B';
            bcl1.Classname = "壓燙機种类";
            lst.Add(bcl);
            lst.Add(bcl1);
            this.lueClass.Properties.DisplayMember = "Classname";
            this.lueClass.Properties.ValueMember = "Classno";
            this.lueClass.Properties.DataSource = lst;

        }
        public void BindType(string val)
        {
            Misc_DataDictionaryList mislist = new Misc_DataDictionaryList();
            List<BondType> typelist = new List<BondType>();
            IList<Misc_DataDictionary> _dicts;
            if (val=="A")
                 _dicts = mislist.GetDataByCondition(p => p.DataType == "PH.BondingSpec.Mcnf").OrderBy(m => m.DataName).ToList();
            else
                _dicts = mislist.GetDataByCondition(p => p.DataType == "PH.BondingSpec.Mcyt").OrderBy(m => m.DataName).ToList();
            foreach (Misc_DataDictionary mdd in _dicts)
            {
                BondType bte = new BondType();
                bte.Seqno = mdd.DataCode;
                bte.Typename = mdd.DataName;
                typelist.Add(bte);
            }

            this.lueSeq.Properties.DisplayMember = "Typename";
            this.lueSeq.Properties.ValueMember = "Seqno";
            this.lueSeq.Properties.DataSource = typelist;
        }

        private void lueClass_EditValueChanged(object sender, EventArgs e)
        {
            string mvalue = lueClass.EditValue.ToString();
            BindType(mvalue);
        }

        //private void cmbTypeNo_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    BindType(cmbTypeNo.SelectedIndex);
        //}
    }

    public class BondType
    {
        public string Seqno { get; set; }
        public string Typename { get; set; }
    }

    public class BondClass
    {
        public char Classno { get; set; }
        public string Classname { get; set; }
    }
}
