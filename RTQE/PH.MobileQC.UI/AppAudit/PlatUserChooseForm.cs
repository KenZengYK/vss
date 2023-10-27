using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.AppAudit
{
    public partial class PlatUserChooseForm : Form
    {

        public PlatUserBO SelectedUserBO
        {
            get;
            set;
        }


        public PlatUserChooseForm()
        {
            InitializeComponent();
        }

        private void PlatUserChooseForm_Load(object sender, EventArgs e)
        {
            DataBind();
        }

        private void DataBind()
        {
            PH.MobileQC.BO.MobileQCDataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.MobileQC.BO.MobileQCDataContext>();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = @" select UserID,UserName 
                                from [PH.Platform.AuthMgr].dbo.auth_user 
                                where ISNULL(expired,0)=0  ";
            cmd.CommandTimeout = 600 * 1000;
            cmd.Connection = (SqlConnection)dcon.Connection;
            SqlDataAdapter dap = new SqlDataAdapter();
            dap.SelectCommand = cmd;

            DataTable dt = new DataTable();
            dap.Fill(dt);

            List<PlatUserBO> result = (from v in dt.AsEnumerable()
                                       select new PlatUserBO
                                       {
                                           UserCode = v["UserID"].ToString(),
                                           UserName = v["UserName"].ToString()
                                       }).ToList();

            List<QC_QCUser> aliveUsers = dcon.QC_QCUsers.ToList();
            for (int i = result.Count-1; i >= 0; i--)
            {
                PlatUserBO item = result[i]; 
                QC_QCUser bo = aliveUsers.Where(p => p.UserCode == item.UserCode).FirstOrDefault();
                if (bo != null)
                {
                    result.Remove(item);
                }
            } 

            this.bindingSource_PlatUsers.DataSource = result;

        }

        private void gridView_PlatUsers_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            this.SelectedUserBO = this.bindingSource_PlatUsers.Current as PlatUserBO;
        }


    }
}
