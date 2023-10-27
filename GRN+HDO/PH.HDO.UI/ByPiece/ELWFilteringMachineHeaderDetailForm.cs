using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.UI.CS.UI2;
using PH.Platform.BO;
using PH.PHGDB2.BO;
using System.Linq;

namespace PH.HDO.UI.ByPiece
{
    public partial class ELWFilteringMachineHeaderDetailForm : ParentChildForm
    {

        public int Flag;
        public ELWFilteringMachineHeaderDetailForm()
        {
            InitializeComponent();         
       
        }

        protected override void SaveCurrent()
        {

            obj = this.BindingSource.Current as ByPiece_ELWFilteringMachineHeader;
     
            DataTable dt = IDOData();
            if (dt.Rows.Count == 0) { MessageBox.Show("請確認IDO正確！"); return; }

            //ByPiece_ELWFilteringMachineHeader HeaderData = (this.DataContext as PHGDB2DataContext).ByPiece_ELWFilteringMachineHeaders.Where(p => p.IDONo == txtIDONo.Text).FirstOrDefault();
            //if (HeaderData != null)
            //{
            //    if (HeaderData.OID != obj.OID)
            //    {
            //        MessageBox.Show("IDO已存在！"); return;
            //    }
            //}

            if (obj.ByPiece_ELWFilteringMachineDetails != null) 
            {
                if (obj.ByPiece_ELWFilteringMachineDetails.Select(p => p.Qty).Sum() > Convert.ToInt32(this.txtIssueQty.Text)) 
                {
                    MessageBox.Show("Issue Qty不能小於下方Qty合計的總數");
                    return;
                }
            }

            this.labelControl6.Text = (obj.IssueQty - obj.ByPiece_ELWFilteringMachineDetails.Select(p => p.Qty).Sum()).ToString();


            string WarningText ="該IDO是否過機第 {0} 次?";

            WarningText = string.Format(WarningText, this.txtNumOfTime.Text);

            if (this.txtNumOfTime.Text != "1" && obj.ByPiece_ELWFilteringMachineDetails.Count() == 0)
            {

                DialogResult dr = MessageBox.Show(WarningText, "消息内容", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (dr == DialogResult.Yes)
                {
                    obj.Flag = obj.Flag ?? this.Flag;
                    base.SaveCurrent();
                }
                
                

            }
            else 
            {
                obj.Flag = obj.Flag ?? this.Flag;
                base.SaveCurrent();
            }

         

            //if (obj.IDONo != txtIDONo.Text)
            //{
            //    //var DetailList = obj.ByPiece_ELWFilteringMachineDetails.Where(p => p.HeaderOID == obj.OID).ToList();
            //    var DetailList = obj.ByPiece_ELWFilteringMachineDetails;


            //    //obj.ByPiece_ELWFilteringMachineDetails
            //    //(this.DataContext as PHGDB2DataContext).ByPiece_ELWFilteringMachineDetails.DeleteAllOnSubmit(DetailList);

            //    //foreach (var Detail in DetailList)
            //    //for (int i = 0; i < obj.ByPiece_ELWFilteringMachineDetails.Count(); i++)
            //    for (int i = obj.ByPiece_ELWFilteringMachineDetails.Count() - 1; i >= 0; i--)
            //    {
            //        obj.ByPiece_ELWFilteringMachineDetails.Remove(obj.ByPiece_ELWFilteringMachineDetails[i]);
            //        ////    (this.DataContext as PHGDB2DataContext).ByPiece_ELWFilteringMachineDetails.DeleteOnSubmit(Detail);
            //    }
            //    //(this.DataContext as PHGDB2DataContext).SubmitChanges();

            //   
            //}
         

        }

        private void txtIDONo_EditValueChanged(object sender, EventArgs e)
        {


            if (string.IsNullOrEmpty(txtIDONo.Text)) return;

            DataTable dt = IDOData();

            if (dt.Rows.Count == 0) 
            {
                this.txtProjectNo.Text = this.txtIssueQty.Text = "";
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                this.txtProjectNo.Text = dt.Rows[i]["PROJECT_NO"].ToString();
                this.txtIssueQty.Text = dt.Rows[i]["Qty"].ToString();
            }
            PHGDB2DataContext db = ContextBuilder.CreateContext<PHGDB2DataContext>();

            var maxTime = db.ByPiece_ELWFilteringMachineHeaders.Where(p => p.IDONo == txtIDONo.Text).Max(p => p.NumOfTime);
            this.txtNumOfTime.Text = maxTime == null ? "1" :( maxTime + 1).ToString();

        }

        ByPiece_ELWFilteringMachineHeader obj;
        public override void DataBind()
        {
            base.DataBind();
            obj = this.BindingSource.Current as ByPiece_ELWFilteringMachineHeader;
            Flag = (this.ListForm as ELWFilteringMachineHeaderListForm).Flag;

            this.elwFilteringMachineDetailListForm1.DataSource = obj.ByPiece_ELWFilteringMachineDetails;
            this.elwFilteringMachineDetailListForm1.Flag = Flag;
            this.elwFilteringMachineDetailListForm1.BsEmp.DataSource = (this.DataContext as PHGDB2DataContext).ByPiece_Employees.Where(p => p.Flag == (obj.Flag ?? this.Flag));
      
        }


        public DataTable IDOData()
        {
            string Sqlstr = @"select * from 
                                    (
                                        select  PROJECT_NO,cast(sum(ISSUE_QTY) as int) as Qty from dbo.PB_GATEPASS where IDO ='{0}' 
                                        group by PROJECT_NO
                                        union all
                                        select PROJECT_NO,cast(sum(ISSUE_QTY) as int)  as Qty  from dbo.PB_GATEPASS_Unplanned where IDO ='{0}'  
                                        group by PROJECT_NO
                                    )as a";

            Sqlstr = string.Format(Sqlstr, txtIDONo.Text);

            return (this.DataContext as PHGDB2DataContext).ExecuteDataTable(Sqlstr, "dt");

        }



    }
}