using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.HDO.UI.HSCode
{
    public partial class HSCodeAveragePriceListFrm : PH.Platform.UI.CS.BaseListForm
    {
        public HSCodeAveragePriceListFrm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            PH.HDO.BO.HDODataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
            this.DataContext = dcon;
            this.BindingSource.DataSource = dcon.HSCodeAveragePrices;
        }


        private void barBtn_RefreshHSPrice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.HDO.BO.HDODataContext dcon = PH.Platform.BO.ContextBuilder.CreateContext<PH.HDO.BO.HDODataContext>();
            try
            {
                dcon.ExecuteCommand("EXEC [dbo].[P_GetHSAveragePrice]  'RMB'");
                dcon.ExecuteCommand("EXEC [dbo].[P_GetHSAveragePrice]  'Other'");
                MessageBox.Show("刷新單價完成!", "系統提示");
                DataBind();
                this.objListGridView.RefreshData();
            }
            catch (Exception ex)
            {
                MessageBox.Show("刷新單價失敗:\r\n"+ex.ToString(), "系統提示",MessageBoxButtons.OK,MessageBoxIcon.Error);
            }

        }
    }
}
