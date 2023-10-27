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
    public partial class QCMasterListForm_Final : PH.Platform.UI.CS.UI2.ListForm
    {
        MobileQCDataContext context = ContextBuilder.CreateContext<MobileQCDataContext>();

        public QCMasterListForm_Final()
        {
            InitializeComponent();        
        }

        public override void DataBind()
        {
            base.DataBind();

            this.DataContext = context;
            this.EditorTypeName = typeof(QCMasterDetailForm_Final).FullName;
            this.DataSource = typeof(QC_Master_Final);

            //this.DataSource = (from m in context.QC_Master_Finals select m).Take(0);
            //PH.Platform.UI.CS.DataQuery.DataQueryParameter param = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
            //param.BoType = typeof(QC_Master_Final);
            //param.WarnRecord = 1000;
            ////param.FixedWherePart = Flag == "A" ? "isnull(QCType,'Process')='Process' and QCRoleCode='MobileQC_MQA'" : "isnull(QCType,'Process')='Process' and QCRoleCode='MobileQC_MQC'";
            //this.StartEnquiry(param);
        }

        //protected override void OnClickFind()
        //{
        //    this.BindingSource.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
        //    base.OnClickFind();

        //}


        protected override void OnClickFind()
        {
            CheckQCMasterCondition frmCondition = new CheckQCMasterCondition("QC_Master_Final");
            //frmCondition.radioGroup1.Visible = true;
            if (frmCondition.ShowDialog() == DialogResult.OK)
            {
                //ReportType = frmCondition.ReportType;
                //FromDate = frmCondition.FromDate;
                //ToDate = frmCondition.ToDate;

                var lists = (this.DataContext as MobileQCDataContext).QC_Master_Finals.Where(p => 
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

                //if (frmCondition.ReportType == ReportTypes.Audit)
                //{
                //    lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQA");
                //}
                //else
                //{
                //    lists = lists.Where(p => p.QCRoleCode == "MobileQC_MQC");
                //}
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