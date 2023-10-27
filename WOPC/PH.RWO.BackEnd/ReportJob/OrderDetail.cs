using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.RWO.BackEnd.ReportJob
{
    public partial class OrderDetail : UserControl, PH.Platform.BackEnd.BO.IParameterSetControl
    {

        public int GetReportType
        {
            get { return Convert.ToInt16(this.radioGroup2.EditValue); }
        }
        public OrderDetail()
        {
            InitializeComponent();
        }



     

        #region IParameterSetControl Members

        public string GetParameter()
        {
            string parameter = string.Format("{0},{1},{2},{3},{4},{5},{6},{7},{8},{9}"
                , this.textEditCompany.Text
                , string.IsNullOrEmpty(this.dateEditFrom.Text) ? string.Empty : this.dateEditFrom.DateTime.ToString("yyyy/MM/dd")
                , string.IsNullOrEmpty(this.dateEditTo.Text) ? string.Empty : this.dateEditTo.DateTime.ToString("yyyy/MM/dd")
                , this.comboBoxEditCustomer.Text
                , this.textEditProjectNO.Text
                , this.textEditSalesOrderNO.Text
                , this.textEditSalesMan.Text
                , this.textEditFactory.Text
                , this.radioGroup1.EditValue
                , this.imageComboBoxEditOrderBy.EditValue
                );
            return parameter;
        }

        public UserControl ParameterControl(string parameters)
        {
            throw new NotImplementedException();
        }

        #endregion

        private void OrderDetail_Load(object sender, EventArgs e)
        {
            if (this.DesignMode) return;
            PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
            var list =(from a in context.CustomerCodes select  a.CustomerCode1 ).Distinct();
            foreach (var item in list)
            {
                this.comboBoxEditCustomer.Properties.Items.Add(item);
            }
            ;         
            
        }

        private void radioGroup2_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.radioGroup1.Visible = this.radioGroup2.SelectedIndex == 0;
        }
    }
}
