using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;
using System.Text.RegularExpressions;

namespace PH.HDO.UI.ByPiece
{
    public partial class TypeMasterDetail : ParentChildForm
    {

        public TypeMasterDetail()
        {
            InitializeComponent();
        }

        TypeMaster curTm;

        public int Flag;
        public override void DataBind()
        {
            curTm = this.BindingSource.Current as TypeMaster;



            Flag = (this.ListForm as TypeMasterList).Flag;

            typeCustList1.DataSource = curTm.TypeDetails; typeCustList1.IssueName = curTm.Issuer; typeCustList1.Flag = this.Flag;
            typeSAHRange_IssC.DataSource = curTm.TypeSAHRanges.Where(p => p.Type == 3 && p.Flag == Flag); typeSAHRange_IssC.SAHType = 3; typeSAHRange_IssC.Flag = this.Flag;
            typeSAHRange_IssM.DataSource = curTm.TypeSAHRanges.Where(p => p.Type == 2 && p.Flag == Flag); typeSAHRange_IssM.SAHType = 2; typeSAHRange_IssM.Flag = this.Flag;
            typeSAHRange_Ret.DataSource = curTm.TypeSAHRanges.Where(p => p.Type == 4 && p.Flag == Flag); typeSAHRange_Ret.SAHType = 4; typeSAHRange_Ret.Flag = this.Flag;
            typeSAHRange_Rec.DataSource = curTm.TypeSAHRanges.Where(p => p.Type == 1 && p.Flag == Flag); typeSAHRange_Rec.SAHType = 1; typeSAHRange_Rec.Flag = this.Flag;
            typeSAHRangeList_RC.DataSource = curTm.TypeSAHRanges.Where(p => p.Type == 5 && p.Flag == Flag); typeSAHRangeList_RC.SAHType = 5; typeSAHRangeList_RC.Flag = this.Flag;

            //BindRepsInfo();
            base.DataBind();

            PH.PHGDB2.BO.PHGDB2DataContext PHGDB2_cn = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            this.bsEmployee.DataSource = PHGDB2_cn.ByPiece_Employees.Where(p=>p.Flag==this.Flag);
        }

        //BindingSource bsrecv = new BindingSource();
        //BindingSource bsissue = new BindingSource();
        //BindingSource bsret = new BindingSource();
        //BindingSource bsRC = new BindingSource();

        //private void BindRepsInfo()
        //{

        //    PH.PHGDB2.BO.PHGDB2DataContext _ctx = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
        //    var _emplist1 = from p in _ctx.ByPiece_Employees select p;
        //    var _emplist2 = from p in _ctx.ByPiece_Employees select p;
        //    var _emplist3 = from p in _ctx.ByPiece_Employees select p;

        //    bsrecv.DataSource = _emplist1;
        //    bsissue.DataSource = _emplist2;
        //    bsret.DataSource = _emplist3;
        //    bsRC.DataSource = _emplist1;
        //   // this.lueRecv.Properties.Columns.Clear();
        //    this.lueIssue.Properties.Columns.Clear();
        //    this.lueReturner.Properties.Columns.Clear();
        //    this.lueRC.Properties.Columns.Clear();


        //    //this.lueRecv.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
        //    //    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
        //    //    new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 10, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

        //    //this.lueRecv.Properties.AutoSearchColumnIndex = 0;
        //    //this.lueRecv.Properties.DataSource = bsrecv;
        //    //this.lueRecv.Properties.ValueMember = "EmpId";
        //    //this.lueRecv.Properties.DisplayMember = "EmpId";

        //    this.lueIssue.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

        //    this.lueIssue.Properties.AutoSearchColumnIndex = 0;
        //    this.lueIssue.Properties.DataSource = bsissue;
        //    this.lueIssue.Properties.ValueMember = "EmpId";
        //    this.lueIssue.Properties.DisplayMember = "EmpId";


        //    this.lueReturner.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

        //    this.lueReturner.Properties.AutoSearchColumnIndex = 0;
        //    this.lueReturner.Properties.DataSource = bsissue;
        //    this.lueReturner.Properties.ValueMember = "EmpId";
        //    this.lueReturner.Properties.DisplayMember = "EmpId";

        //    this.lueRC.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpId", "Id", 10),
        //        new DevExpress.XtraEditors.Controls.LookUpColumnInfo("EmpName", "Name", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None) });

        //    this.lueRC.Properties.AutoSearchColumnIndex = 0;
        //    this.lueRC.Properties.DataSource = bsissue;
        //    this.lueRC.Properties.ValueMember = "EmpId";
        //    this.lueRC.Properties.DisplayMember = "EmpId";


        //    if (curTm != null)
        //    {
        //        //var _emplist_disp = from p in _ctx.ByPiece_Employees select p;

        //        List<ByPiece_Employee> _emplst = _ctx.ByPiece_Employees.ToList();
        //        if (_emplst != null)
        //        {

        //            ByPiece_Employee _emp1 = _emplst.Where(p => p.EmpId == curTm.Reciver).FirstOrDefault();
        //            if (_emp1 != null)
        //                edtName1.Text = _emp1.EmpName;

        //            ByPiece_Employee _emp2 = _emplst.Where(p => p.EmpId == curTm.Issuer).FirstOrDefault();
        //            if (_emp2 != null)
        //                edtName2.Text = _emp2.EmpName;

        //            ByPiece_Employee _emp3 = _emplst.Where(p => p.EmpId == curTm.Returner).FirstOrDefault();
        //            if (_emp3 != null)
        //                edtName3.Text = _emp3.EmpName;

        //            ByPiece_Employee _emp4 = _emplst.Where(p => p.EmpId == curTm.RCMan).FirstOrDefault();
        //            if (_emp4 != null)
        //                textEdit1.Text = _emp4.EmpName;
        //        }


        //    }

        //}

        //private void lueRecv_EditValueChanged(object sender, EventArgs e)
        //{
        //    //ByPiece_Employee _defect = bsrecv.Current as ByPiece_Employee;
        //    //object obj = lueRecv.GetColumnValue("EmpName");
        //    //if (obj != null)
        //    //{
        //    //    edtName1.Text = lueRecv.GetColumnValue("EmpName").ToString();

        //    //}
        //}

        //private void lueIssue_EditValueChanged(object sender, EventArgs e)
        //{
        //    ByPiece_Employee _defect = bsrecv.Current as ByPiece_Employee;
        //    object obj = lueIssue.GetColumnValue("EmpName");
        //    if (obj != null)
        //    {
        //        edtName2.Text = lueIssue.GetColumnValue("EmpName").ToString();

        //    }
        //}

        //private void lueReturner_EditValueChanged(object sender, EventArgs e)
        //{
        //    ByPiece_Employee _defect = bsrecv.Current as ByPiece_Employee;
        //    object obj = lueReturner.GetColumnValue("EmpName");
        //    if (obj != null)
        //    {
        //        edtName3.Text = lueReturner.GetColumnValue("EmpName").ToString();

        //    }
        //}

        //private void lueRC_EditValueChanged(object sender, EventArgs e)
        //{
        //    ByPiece_Employee _defect = bsRC.Current as ByPiece_Employee;
        //    object obj = lueReturner.GetColumnValue("EmpName");
        //    if (obj != null)
        //    {
        //        textEdit1.Text = lueReturner.GetColumnValue("EmpName").ToString();
        //    }

        //}


        //public override void EditCurrent()
        //{
        //    base.EditCurrent();
        //    //edtName1.Properties.ReadOnly = true;
        //    //edtName2.Properties.ReadOnly = true;
        //    //edtName3.Properties.ReadOnly = true;
        //}


        protected override void SaveCurrent()
        {

            curTm = this.BindingSource.Current as TypeMaster;

            curTm.Flag = Flag;

            base.SaveCurrent();

            //更新收料人
            PHGDB2DataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PHGDB2DataContext>();
            var Recive = context.ByPiece_ReciveItems.Where(p => p.MaterialType == curTm.TypeId && p.Flag == Flag);
            if (Recive != null)
            {
                foreach (var ReciveName in Recive)
                {
                    ReciveName.ReciveMan = curTm.Reciver;
                }
            }

            //更新退料人
            var Return = context.ByPiece_ReturnItems.Where(p => p.MaterialType == curTm.TypeId && p.Flag == Flag);
            if (Return != null)
            {
                foreach (var ReturnName in Return)
                {
                    ReturnName.ReturnMan = curTm.Returner;
                }
            }

            //更新退料人,退到供應商
            var RC = context.ByPiece_RCItems.Where(p => p.MaterialType == curTm.TypeId && p.Flag == Flag);
            if (RC != null)
            {
                foreach (var obj in RC)
                {
                    obj.RCMan = curTm.RCMan;
                }
            }

            //更新發料人  
            var Issue = context.ByPiece_IssueItem_Texts.Where(p => p.MaterialType == curTm.TypeId && p.Flag == Flag);
            foreach (var IssueName in Issue)
            {
                IssueName.IssueMan = curTm.Issuer;
            }

            var a = context.TypeDetails.Where(p => p.TypeMaster_Id == curTm.TypeMaster_Id && p.Flag == Flag);
            if (a != null)
            {
                foreach (var Detail in a)
                {
                    var IssueDetail = context.ByPiece_IssueItem_Texts.Where(p => p.MaterialType == curTm.TypeId && p.ProjCode.StartsWith(Detail.ProjCode) && p.Flag == Flag);
                    if (IssueDetail != null)
                    {
                        foreach (var IssueDetailName in IssueDetail)
                        {
                            IssueDetailName.IssueMan = Detail.Responsibler;
                        }
                    }
                }
            }

            context.SubmitChanges();
        }

        protected override void OnClickEdit()
        {
            base.OnClickEdit();

            this.edt_PriceRev.Properties.ReadOnly = true;
            this.mPrice_IssTextEdit.Properties.ReadOnly = true;
            this.cPrice_IssTextEdit.Properties.ReadOnly = true;
            this.price_RetTextEdit.Properties.ReadOnly = true;
            this.edtRCPrice_M.Properties.ReadOnly = true;
            this.edtRCPrice_C.Properties.ReadOnly = true;
        }







    }
}
