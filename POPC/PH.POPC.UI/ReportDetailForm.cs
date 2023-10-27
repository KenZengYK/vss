using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI
{
    public partial class ReportDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public ReportDetailForm()
        {
            InitializeComponent();
        }

        private void ReportDetailForm_Load(object sender, EventArgs e)
        {
      
            this.reportCodeLookUpEdit.Properties.ValueMember = "ReportCode";
            this.reportCodeLookUpEdit.Properties.DisplayMember = "ReportDesc";
            this.reportCodeLookUpEdit.Properties.DataSource = PH.POPC.BackEnd.Common.Reports();
            
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = @"select DataCode as ReportTypeCode ,Description  
from  [PH.Platform.Misc].dbo.[Misc_DataDictionary] 
where DataType='PH.POPC.POCategory' ";

            this.reportTypeCodeLookUpEdit.Properties.ValueMember = "ReportTypeCode";
            this.reportTypeCodeLookUpEdit.Properties.DisplayMember = "Description";
            this.reportTypeCodeLookUpEdit.Properties.DataSource = context.ExecuteQuery<PH.POPC.BO.CodeAndDesc2>(sql).ToList();
            

        }

    }
}
