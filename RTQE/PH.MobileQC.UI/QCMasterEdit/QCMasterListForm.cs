using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.MobileQC.UI
{
    public partial class QCMasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

        public QCMasterListForm()
        {
            InitializeComponent();
        }

        public QCMasterListForm(string AFormType)
        {
            InitializeComponent();
            this.FormType = AFormType;
        }

        public string FormType;
        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = context;
            this.EditorTypeName = typeof(QCMasterDetailForm).FullName;
            this.DataSource = typeof(QC_Master);

            //this.DataSource = (from m in context.QC_Masters select m).Take(0);
            //PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //param.BoType = typeof(QC_Master);
            //param.WarnRecord = 1000;
            //param.FixedWherePart = Flag == "A" ? "isnull(QCType,'Process')='Process' and QCRoleCode='MobileQC_MQA'" : "isnull(QCType,'Process')='Process' and QCRoleCode='MobileQC_MQC'";
            //this.StartEnquiry(param);
        }

        protected override void OnClickFind()
        {
            CheckQCMasterCondition frmCondition = new CheckQCMasterCondition();

            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                //ReportType = frmCondition.ReportType;
                //FromDate = frmCondition.FromDate;
                //ToDate = frmCondition.ToDate;

                var lists = (this.DataContext as MobileQCDataContext).QC_Masters.Where(p => //p.QCType == "Process" &&
                    p.QC_time >= frmCondition.FromDate && p.QC_time < frmCondition.ToDate.AddDays(1));

                if (!string.IsNullOrEmpty(frmCondition.Factory))
                {
                    lists = lists.Where(p => p.Factory == frmCondition.Factory);
                }

                if (!string.IsNullOrEmpty(frmCondition.WorkShop))
                {
                    lists = lists.Where(p => p.WorkShop == frmCondition.WorkShop);
                }

                if (!string.IsNullOrEmpty(frmCondition.Line))
                {
                    lists = lists.Where(p => p.Line == frmCondition.Line);
                }

                if (!string.IsNullOrEmpty(frmCondition.Style))
                {
                    lists = lists.Where(p => p.Style == frmCondition.Style);
                }

                if (!string.IsNullOrEmpty(frmCondition.Project))
                {
                    lists = lists.Where(p => p.Project == frmCondition.Project);
                }

                if (!string.IsNullOrEmpty(frmCondition.Customer))
                {
                    lists = lists.Where(p => p.Project.Contains(frmCondition.Customer));
                }

                if (FormType == "MobileQC_MQA")
                {
                    lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQA");
                }
                else
                {
                    lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQC");
                }
                this.BindingSource.DataSource = lists;

                //Flag:  Failure¡¢Repeat¡¢All
                //if (Flag == "Failure")
                //{
                //    //lists = lists.Where(p => p.QC_Details.Where(d => d.QC_Light == "F").Count() > 0);
                //    this.BindingSource.DataSource = lists.ToList().Where(p => p.FCount > 0);
                //}
                //else if (Flag == "Repeat")
                //{
                //    this.BindingSource.DataSource = lists.ToList().Where(p => p.ReAudit_Disp != "N");
                //}
                //else
                //{
                //    this.BindingSource.DataSource = lists;
                //}

            }

            this.BindingSource.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";

            //base.OnClickFind();
        }


    }
}