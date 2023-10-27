using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI
{
    /*
     * 
     * Xsj20111208:添加該窗體，用於批量獲取ColorGroup
     * 
     * 
     * */
    public partial class GetColorGroupForm : Form
    {
        public BindingSource MyDataSource { get; set; }
        public FabricInspectionDataContext DataContext { get; set; }

        #region 方法

        public GetColorGroupForm()
        {
            InitializeComponent();
        }

        private void GetColorGroupForm_Load(object sender, EventArgs e)
        {
            Fabric_Insp_Header currFabricInspHeader = this.MyDataSource.Current as Fabric_Insp_Header;
            if (currFabricInspHeader == null) return;
            string company = currFabricInspHeader.Company;
            string itemNo = currFabricInspHeader.Item_No;
            string stockInDate = currFabricInspHeader.Stock_In_Date;

            var FabricInspHeaderList = from Fabric_Insp_Header val in this.MyDataSource.List
                                       where val.Company == company && val.Item_No == itemNo && val.Stock_In_Date == stockInDate
                                       select val;

            this.bindingSource1.DataSource = FabricInspHeaderList;
            this.gridView1.OptionsView.RowAutoHeight = true;
        }

        private void sBtn_GetColorGroup_Click(object sender, EventArgs e)
        {

            if (this.bindingSource1.List.Count == 0) return;
            try
            {
                this.progressBarCtrl.Visible = true;
                this.progressBarCtrl.Refresh();
                this.Cursor = Cursors.WaitCursor;
                this.progressBarCtrl.Properties.Maximum = this.bindingSource1.List.Count;
                this.progressBarCtrl.EditValue = 0;
                foreach (Fabric_Insp_Header item in this.bindingSource1.List)
                {
                    //if (item.Color_Group_Status != null && item.Color_Group_Status.Trim() != "")
                    //{
                    //    this.progressBarCtrl.EditValue = Convert.ToInt32(this.progressBarCtrl.EditValue) + 1;
                    //    this.progressBarCtrl.Refresh();
                    //    continue;
                    //}

                    //处理多个Lot_ID的情况，由David修改  2020-11-25
                    string[] LotIDs = item.Lot_Id.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);
                    foreach (var LotID in LotIDs)
                    {
                        item.Color_Group_Status += MasterTableUtil.GetColorGroup(item.Company, item.Item_No, LotID);
                    }
                    //item.Color_Group_Status = MasterTableUtil.GetColorGroup(item.Company, item.Item_No, item.Lot_Id);

                    if (item.Color_Group_Status.Contains("?")) //Shelley要求加入 David 2020-10-16
                    {
                        item.ColorMatchingResult = "B";
                    }
                    else if (string.IsNullOrEmpty(item.Color_Group_Status.Trim()))
                    {
                        item.ColorMatchingResult = "n.a.";
                    }
                    else
                    {
                        item.ColorMatchingResult = "A";
                    }

                    this.progressBarCtrl.EditValue = Convert.ToInt32(this.progressBarCtrl.EditValue) + 1;
                    this.gCtrl_FabricInspHeader.Refresh();
                    this.progressBarCtrl.Refresh();
                }
                this.DataContext.SubmitChanges();
                this.progressBarCtrl.EditValue = 0;
                this.progressBarCtrl.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Get data error: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void sBtn_Close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        #endregion

    }
}
