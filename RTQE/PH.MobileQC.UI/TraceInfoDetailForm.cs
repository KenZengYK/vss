using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI
{
    public partial class TraceInfoDetailForm : DetailForm
    {

        string[] AryFix;
        public string SelectDefect = string.Empty;
        public TraceInfoDetailForm()
        {
            InitializeComponent();

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
             cbbFac.Properties.Items.Clear();
             for (int i = 0; i < dt.Rows.Count; i++)
              {
                  cbbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
               }
            
        }


        public override void DataBind()
        {            
            base.DataBind();
            this.BindLevel();
            this.BindWorkshop();
            GetDefectFix();
            btnSel.Enabled = this.IsNew || this.IsEditting;
         //   this.BindDefectList();

          //  this.cklDefect.Enabled = this.IsNew||this.IsEditting;
         //   this.chkAll.Enabled = this.IsNew || this.IsEditting;

        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            this.edtDefect.Enabled = false;
            this.deFinDT.Enabled = false;
            btnSel.Enabled = this.IsNew || this.IsEditting;

        }


        private void GetDefectFix()
        {
            DataTable dt = (this.DataContext as MobileQCDataContext).GetDefectFix();
            if (dt.Rows.Count > 0)
            {
                AryFix = new string[dt.Rows.Count];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    AryFix[i] = dt.Rows[i]["description"].ToString();
                }
            }
        }


        private void BindLevel()
        {
            DataTable db = (this.DataContext as MobileQCDataContext).GetLevel();
            this.gluLeve.Properties.DataSource = db;

        }

        //private void BindExecuter()
        //{
        //    DataTable db = (this.DataContext as MobileQCDataContext).GeExecuter();
        //    this.lueExec.Properties.DataSource = db;
        //}

        private void BindWorkshop()
        {
            List<string> wslist = this.GetWorkshopList(cbbFac.Text);
            cbbWshop.Properties.Items.Clear();
            cbbWshop.Properties.Items.Add("");
            cbbWshop.Properties.Items.AddRange(wslist.ToArray());
        }

        private void BindLine()
        {
            List<string> linelist = this.GetLineList(cbbFac.Text,cbbWshop.Text);
            this.cbbLine.Properties.Items.Clear();
            cbbLine.Properties.Items.Add("");
            cbbLine.Properties.Items.AddRange(linelist.ToArray());
        }


        private void TraceInfoDetailForm_Load(object sender, EventArgs e)
        {

        }




        private bool CheckValue()
        {
            bool valid = true;
            if (string.IsNullOrEmpty(edtDefect.Text))
            {
                MessageBox.Show("請選擇暇疵 !");
                valid= false;
            }
            if (string.IsNullOrEmpty(gluLeve.Text))
            {
                MessageBox.Show("請選擇追蹤程度 !");
                valid= false;

            }

            //if (string.IsNullOrEmpty(this.lueExec.Text))
            //{
            //    MessageBox.Show("請選擇執行者 !");
            //    valid= false;

            //}
            return valid;
        }






        private void btnSel_Click(object sender, EventArgs e)
        {
            string _fac = cbbFac.Text; string _ws = cbbWshop.Text; string _line = cbbLine.Text;
            if (string.IsNullOrEmpty(_fac))
            {
                MessageBox.Show("請選擇工廠 !");
                return;
            }
            MobileQCDataContext mdc =this.DataContext as MobileQCDataContext;
           
            FrmSelectDeftect fsd = new FrmSelectDeftect(this,mdc, _fac,_ws,_line);
            fsd.StartPosition = FormStartPosition.CenterParent;
            DialogResult drg =  fsd.ShowDialog();
            if (drg == DialogResult.OK)
            {
                this.edtDefect.Text = this.SelectDefect;
            
            }

        }


        private void SetUpdateInfo()
        {
            TraceInfo tif = this.BindingSource.Current as TraceInfo;
            string userid = PH.Platform.Common.SysParamHelper.Instance.UserID;
            if (IsNew)
            {
                tif.CreateBy = userid; tif.CreateTime = DateTime.Now;
            }
            if (IsEditting)
            {
                tif.UpdateBy = userid; tif.UpdateTime = DateTime.Now;
            }

        }


        protected override void OnClickSaveAndReturn()
        {
            if (CheckValue())
            {
                SetUpdateInfo();
                base.OnClickSaveAndReturn();
            }

        }

 

        protected override void OnClickSave()
        {
            if (CheckValue())
            {
                SetUpdateInfo();
                base.OnClickSave();
            }
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();    
        }

        private void chkFinish_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFinish.Checked)
                deFinDT.EditValue = DateTime.Now;
            else
                deFinDT.EditValue = null;
        }

        private DataTable GetWorkshop(string factory)
        {
            DataTable dt = (this.DataContext as MobileQCDataContext).GetAllWorkshop(factory);
            DataTable dt1 = dt.Clone();
             DataRow row = dt1.NewRow();
             row[0]="";
            foreach (DataRow dr in dt.Rows)
            {
                DataRow newrow = dt1.NewRow();
                newrow[0] = dr[0];
            }
            return dt1;
        }

        private void GetLine(string workshop)
        {
            //DataTable dt = (this.DataContext as MobileQCDataContext).GetAllWorkshop(factory);
            //DataTable dt1 = dt.Clone();
            //DataRow row = dt1.NewRow();
            //row[0] = "";
            //foreach (DataRow dr in dt.Rows)
            //{
            //    DataRow newrow = dt1.NewRow();
            //    newrow[0] = dr[0];
            //}
            //return dt1;
        }

        private List<string> GetWorkshopList(string factory)
        {
            List<string> workshops = (this.DataContext as MobileQCDataContext).GetWorkshopInfo(factory);
            return workshops;
        }

        private List<string> GetLineList(string factory,string wshop)
        {
            List<string> lines = (this.DataContext as MobileQCDataContext).GetLineInfo(factory,wshop);
            return lines;
        }

        private void cbbFac_SelectedValueChanged(object sender, EventArgs e)
        {
            this.BindWorkshop();
        }

        private void cbbWshop_SelectedValueChanged(object sender, EventArgs e)
        {
            this.BindLine();
        }


    }
}
