using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public partial class MasterDetail : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        #region
        /// <summary>
        /// 最先初始是由系統自動付值
        /// </summary>
        private int initcount = 4;
        private bool iscancle = false;
        //private DataTable _WorkDataTable;
        private MobileQCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<MobileQCDataContext>();
        private IList<mobileqc> ls;
        BindingSource bs = new BindingSource();
        private IList<lines> lsline;
        private IList<operation> lsoper;
        private QC_Master CurQC_Master
        {
            get
            {
                return this.BindingSource.Current as QC_Master;
            }
        }
        private int _Seq;


        public PH.MobileQC.BO.QC_Master CurQCMaster
        {
            get { return (this.BindingSource.Current as PH.MobileQC.BO.QC_Master); }
        }
        #endregion

        public MasterDetail()
        {
            InitializeComponent();
            this.edtStyle.EditValueChanged += new System.EventHandler(this.edtStyle_EditValueChanged);
        }

        public override void DataBind()
        {
            base.DataBind();
            PrepareFirstData();

            if (!this.IsNew)
                initcount = 0;


            BandComBox();

            this.mobileQCSecondList.BindingSource.DataSource = (this.BindingSource.Current as PH.MobileQC.BO.QC_Master).QC_Details;
            this.mobileQCSecondList.EditorTypeName = typeof(DetailDetail).FullName;

            edtMachinePlace.EditValue = CurQCMaster.MachinePlace;

            if (!this.IsNew)
            {
                if (this.edtLine.DataBindings["Text"] == null)
                {
                    this.edtLine.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Line", true));
                }

                if (this.edtQNNo.DataBindings["Text"] == null)
                {
                    this.edtQNNo.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "QNNo", true));
                }

                if (this.edtW_procedure.DataBindings["Text"] == null)
                {
                    this.edtW_procedure.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "W_procedure", true));
                }
                if (this.edtWorker.DataBindings["Text"] == null)
                {
                    this.edtWorker.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Worker", true));
                }
                if (this.edtMachinePlace.DataBindings["Text"] == null)
                {
                    this.edtMachinePlace.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "MachinePlace", true));
                }
                if (this.edtSize.DataBindings["Text"] == null)
                {
                    this.edtSize.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Size", true));
                }
            }
        }

        public override void EditCurrent()
        {
            base.EditCurrent();

            //(this.BindingSource.Current as QC_Master).QCCount = 5;
            //if (this.IsNew == true)
            //{
            //    (this.BindingSource.Current as QC_Master).QC_time = DateTime.Now;
            // }
            if (this.IsEditting == true)
                edtMachinePlace.EditValue = CurQCMaster.MachinePlace;
        }

        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            iscancle = true;
            if (!this.IsNew)
            {
                initcount = 0;
                //PH.MobileQC.BO.QC_Master master = this.BindingSource.Current as PH.MobileQC.BO.QC_Master;
                //string line = master.Line;
                //BandCombox(line);

                //this.edtLine.Text = master.Line;
                //this.edtLine.EditValue = master.Line;

                //this.edtProject.Text = master.Project;
                //this.edtProject.EditValue = master.Project;

                //this.edtStyle.Text = master.Style;
                //this.edtStyle.EditValue = master.Style;

                //this.edtW_procedure.Text = master.W_procedure;
                //this.edtW_procedure.EditValue = master.W_procedure;
                //this.edtWOc.EditValue = master.Woc;
                //this.edtColor.EditValue = master.Color;
                //this.edtSize.EditValue = master.Size;
                //this.edtWorker.EditValue = master.Worker;
            }
            iscancle = false;
            initcount = 4;
        }

        # region 保存資料
        protected override void OnClickSaveAndReturn()
        {
            //if (CheckFirstInputData())
            //{            

            QC_Master obj = (QC_Master)this.BindingSource.Current;
            
         //   if (!this.IsEditting)
             //   obj.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;// PH.Environment.Instance.CurrentUser.UserID;


            obj.Project = edtProject.Text;
            obj.WO = edtWO.Text;
            obj.RWO = edtRWO.Text;
            obj.QNNo = edtQNNo.Text;
            obj.Style = edtStyle.Text;
            obj.MachinePlace = edtMachinePlace.Text;
            obj.Size = edtSize.Text;
            obj.WOc = edtWOc.Text;
            //obj.Worker = edtWorker.Text;
            //obj.MasterID = Guid.NewGuid(); //09/08/05 add
            base.OnClickSaveAndReturn();
            //}
        }

        protected override void SaveCurrent()
        {
            //if (CheckFirstInputData())
            //{

            if (string.IsNullOrEmpty(edtWorker.Text.Trim()))
            {
                MessageBox.Show("員工ID不可為空!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtWorker.Focus();
                return;
            }
            else if (edtWorker.Text.Trim().Length!=7){
                MessageBox.Show("員工ID長度必須為7位!", "hint", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                this.edtWorker.Focus();
                return;               
            }

         
            QC_Master obj = (QC_Master)this.BindingSource.Current;
            
          //  if (!this.IsEditting)
            //  obj.QCMan = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

            obj.Project = edtProject.Text;
            obj.WO = edtWO.Text;
            obj.RWO = edtRWO.Text;
            obj.QNNo = edtQNNo.Text;
            obj.Style = edtStyle.Text;
            obj.MachinePlace = edtMachinePlace.Text;
            obj.Size = edtSize.Text;
            obj.WOc = edtWOc.Text;
            obj.Worker = edtWorker.Text;
            obj.WorkShop = textEdit1.Text;

            if (this.ListForm.GetType().Name == "MasterList")
                obj.QCType = "Process";
            else
                obj.QCType = "Part";
           
            //obj.MasterID = Guid.NewGuid(); //09/08/05 add
            base.SaveCurrent();
            //}
        }
        #endregion

        private void BandComBox()
        {
            this.edtOTN.Properties.DataSource = PublicServices.GetSys_BaseData("PH.MobileQC.OTN");
            if (IsNew)
                CurQC_Master.OTN = PublicServices.ReturnOTNValue();
        }

        private void BandComBoxWorkforceAndMachine()
        {
            PH.LWPM.BO.RAPLQDataContext contextLWPM = PH.Platform.BO.ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
            contextLWPM.CommandTimeout = 8000;

            string SqlStr = @"SELECT  WorkerId,WorkerName,addworkerId1,addworker1,addworkerId2, addworker2,addworkerId3,addworker3,MachineId,addMachineId1, addMachineId2,addMachineId3
                                  FROM Lb5Matching WHERE LineCode = '{0}' AND J2_job = '{1}' AND Qn= '{2}' AND Rwo = '{3}' AND Date = '{4}' AND j_NO = '{5}' AND OTN = '{6}' AND OperationCode = '{7}'";
            SqlStr = string.Format(SqlStr, this.edtLine.Text, this.edtWO.Text, this.edtQNNo.Text, this.edtRWO.Text,
                DateTime.Now.ToString("yyyy-MM-dd"), this.edtProject.Text, this.edtOTN.Text, this.edtW_procedure.Text);

            DataTable dt = contextLWPM.ExecuteDataTable(SqlStr, "LB5Matching");

            if (dt.Rows.Count <= 0)
            {
                return;
            }

            // 從LB5中得到員工和機器
            this.edtWorker.Properties.DisplayMember = "Id";
            this.edtWorker.Properties.ValueMember = "Id";

            this.edtMachinePlace.Properties.DisplayMember = "Id";
            this.edtMachinePlace.Properties.ValueMember = "Id";

            List<workers> workList = new List<workers>();
            List<machines> machineList = new List<machines>();


            foreach (DataRow obj in dt.Rows)
            {
                workList.Add(new workers() { Id = obj["WorkerId"].ToString(), NameCn = obj["WorkerName"].ToString().Trim() });
                if (obj["addworkerId1"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId1"].ToString(), NameCn = obj["addworker1"].ToString().Trim() });
                }
                if (obj["addworkerId2"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId2"].ToString(), NameCn = obj["addworker2"].ToString().Trim() });
                }
                if (obj["addworkerId3"].ToString() != "")
                {
                    workList.Add(new workers() { Id = obj["addworkerId3"].ToString(), NameCn = obj["addworker3"].ToString().Trim() });
                }

                var mac = (from a in contextLWPM.Machines
                           where a.Id == obj["MachineId"].ToString()
                           select new { a.Name }).FirstOrDefault();

                machineList.Add(new machines() { Id = obj["MachineId"].ToString(), Name = mac.Name.Trim() });
                if (obj["addMachineId1"].ToString() != "")
                {
                    var machine = (from a in contextLWPM.Machines
                                   where a.Id == obj["MachineId"].ToString()
                                   select new { a.Name }).FirstOrDefault();
                    machineList.Add(new machines() { Id = obj["addMachineId1"].ToString(), Name = machine.Name.Trim() });
                }
                if (obj["addMachineId2"].ToString() != "")
                {
                    var machine = (from a in contextLWPM.Machines
                                   where a.Id == obj["MachineId"].ToString()
                                   select new { a.Name }).FirstOrDefault();
                    machineList.Add(new machines() { Id = obj["addMachineId2"].ToString(), Name = machine.Name.Trim() });
                }
                if (obj["addMachineId3"].ToString() != "")
                {
                    var machine = (from a in contextLWPM.Machines
                                   where a.Id == obj["MachineId"].ToString()
                                   select new { a.Name }).FirstOrDefault();
                    machineList.Add(new machines() { Id = obj["addMachineId3"].ToString(), Name = machine.Name.Trim() });
                }
            }

            workList = workList.Distinct(new workComparer()).ToList();
            machineList = machineList.Distinct(new machineCompare()).ToList();
            this.edtWorker.Properties.DataSource = workList;
            this.edtMachinePlace.Properties.DataSource = machineList;

            if (workList.Count() == 1) //如果一個工序只有一個員工,就在選工序時直接給員工賦值,多个员工时让用户自己选择
            {
                this.edtWorker.EditValue = workList.FirstOrDefault().Id;
            }
            else
            {
                this.edtWorker.EditValue = "";
            }

            if (machineList.Count() == 1) //如果一個工序只有一台衣車,就在選工序時直接給衣車賦值,多个员工时让用户自己选择
            {
                this.edtMachinePlace.EditValue = machineList[0].Id;
            }
            else
            {
                this.edtMachinePlace.EditValue = "";
            }

        }

        #region PrepareFirstData
        private void PrepareFirstData()
        {
            if (this.IsNew)
            {
                string sqlstr = @"select pline  from openquery(INTERBASE, 'select distinct pline from Mobile_QC')";
                this.lsline = context.ExecuteQuery<lines>(sqlstr).ToList<lines>();

                this.edtLine.Properties.DataSource = lsline;
                this.edtLine.Properties.DisplayMember = "PLINE";
                this.edtLine.Properties.ValueMember = "PLINE";
            }
            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                this.edtW_procedure.Properties.Columns["GXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                this.edtW_procedure.Properties.Columns["EGXM"].Visible = true;
                this.edtW_procedure.Properties.Columns["TGXM"].Visible = true;
            }
        }
        #endregion


        private void edtLine_EditValueChanged(object sender, EventArgs e)
        {
            if ((!this.IsNew) || (edtLine.Text == ""))
            // if (edtLine.Text == "")
            {
                if (this.edtQNNo.EditValue != null)
                {
                    IList<mobileqc> lists = new List<mobileqc>();
                    lists.Add(new mobileqc() { FCCS = this.edtQNNo.EditValue.ToString() });
                    this.edtQNNo.Properties.DataSource = lists;
                    this.edtQNNo.Properties.DisplayMember = "FCCS";
                    this.edtQNNo.Properties.ValueMember = "FCCS";
                }
                return;
            }

            string SqlStr = string.Format("Exec sp_getmobileqcinfo '{0}'", this.edtLine.Text);

            ls = context.ExecuteQuery<mobileqc>(SqlStr).ToList<mobileqc>();
            _Seq = ls[0].Seq;

            bs.DataSource = ls;
            this.edtQNNo.Properties.DataSource = bs;
            this.edtQNNo.Properties.DisplayMember = "FCCS";
            this.edtQNNo.Properties.ValueMember = "FCCS";

            edtQNNo.DataBindings.Clear();
            edtQNNo.DataBindings.Add("EditValue", bs, "FCCS");

            this.edtWOc.DataBindings.Clear();
            this.edtProject.DataBindings.Clear();
            this.edtWO.DataBindings.Clear();
            this.edtWOc.DataBindings.Clear();
            this.edtRWO.DataBindings.Clear();
            this.edtColor.DataBindings.Clear();
            this.edtStyle.DataBindings.Clear();

            this.edtWOc.DataBindings.Add(new Binding("EditValue", bs, "CWO", true));
            this.edtProject.DataBindings.Add(new Binding("EditValue", bs, "J_NO", true));
            this.edtWO.DataBindings.Add(new Binding("EditValue", bs, "J2_JOB", true));
            this.edtRWO.DataBindings.Add(new Binding("EditValue", bs, "RWO", true));
            this.edtColor.DataBindings.Add(new Binding("EditValue", bs, "ACOL",true));
            this.edtStyle.DataBindings.Add(new Binding("EditValue", bs, "CSTYLE", true));

            edtQNNo_EditValueChanged(this, e);
        }

        private void edtQNNo_EditValueChanged(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(this.edtStyle.Text))
                return;

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "en") //英
            {
                this.edtW_procedure.Properties.Columns[1].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "tw" ||
                PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "cn") //中
            {
                this.edtW_procedure.Properties.Columns[2].Visible = true;
            }

            if (PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToLower() == "th") //泰
            {
                this.edtW_procedure.Properties.Columns[3].Visible = true;
            }

            if (this.IsNew)
            {
                DataTable dt = SqlDataHelper.EXECGetSize(this.edtLine.Text, _Seq);
                foreach (DataRow item in dt.Rows)
                {
                    this.edtSize.Properties.Items.Add(item["PSIZ"]);
                }
            }
        }

        private void edtStyle_EditValueChanged(object sender, EventArgs e)
        {
            if (!this.IsNew)
            {
                return;
            }
            if (edtStyle.Text != "")
            {
                string SqlStr = string.Empty;
                SqlStr = string.Format(@"SELECT GXH,GXDH,GXM,Yzjb,Zkcc,Mx,EGXM,TGXM FROM [PHGDB2].dbo.Mobile_QC_GX WHERE CStyle = '{0}' OR CStyle1 = '{0}' ORDER BY gxh", this.edtStyle.Text);

                this.lsoper = context.ExecuteQuery<operation>(SqlStr).ToList<operation>();
                this.edtW_procedure.Properties.DataSource = lsoper;

                this.edtW_procedure.Properties.ValueMember = "GXDH";
                this.edtW_procedure.Properties.DisplayMember = "GXDH";
            }
        }

        private void edtW_procedure_EditValueChanged(object sender, EventArgs e)
        {
            if (this.IsNew)
            {
                this.BandComBoxWorkforceAndMachine();
            }
        }

        private void edtLine_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtLine.Properties.DataSource != null)
            {
                (this.edtLine.Properties.DataSource as IList<lines>).Add(new lines() { PLINE = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtLine.EditValue = e.DisplayValue;
                this.edtLine.Text = e.DisplayValue.ToString();
            }
        }

        private void edtQNNo_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtQNNo.Properties.DataSource != null)
            {
                (this.edtQNNo.Properties.DataSource as IList<mobileqc>).Add(new mobileqc() { FCCS = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtQNNo.EditValue = e.DisplayValue;
                this.edtQNNo.Text = e.DisplayValue.ToString();
            }
        }

        private void edtW_procedure_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtW_procedure.Properties.DataSource != null)
            {
                (this.edtW_procedure.Properties.DataSource as IList<operation>).Add(new operation() { GXDH = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtW_procedure.EditValue = e.DisplayValue;
                this.edtW_procedure.Text = e.DisplayValue.ToString();
            }
        }

        private void edtWorker_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtWorker.Properties.DataSource != null)
            {
                (this.edtWorker.Properties.DataSource as List<workers>).Add(new workers() { Id = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtWorker.EditValue = e.DisplayValue;
                this.edtWorker.Text = e.DisplayValue.ToString();
            }
        }

        private void edtMachinePlace_ProcessNewValue(object sender, DevExpress.XtraEditors.Controls.ProcessNewValueEventArgs e)
        {
            if ((e.DisplayValue == null) || (e.DisplayValue.ToString() == ""))
            {
                return;
            }
            if (this.edtMachinePlace.Properties.DataSource != null)
            {
                (this.edtMachinePlace.Properties.DataSource as List<machines>).Add(new machines() { Id = e.DisplayValue.ToString() });
                e.Handled = true;
            }
            else
            {
                this.edtMachinePlace.EditValue = e.DisplayValue;
                this.edtMachinePlace.Text = e.DisplayValue.ToString();
            }
        }
    }
}
