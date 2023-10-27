using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class SelectCustomerPOForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectCustomerPOForm()
        {
            InitializeComponent();
            this.deStartDate.DateTime = DateTime.Now.Date;
            this.deEndDate.DateTime = DateTime.Now.Date.AddMonths(1);

            this.PrepareData();
        }

        void PrepareData()
        {
            if (string.IsNullOrEmpty(this.deStartDate.Text))
            {
                MessageBox.Show("Please select delivery date start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.deStartDate.Focus();
                return;
            }
            if (string.IsNullOrEmpty(this.deEndDate.Text))
            {
                MessageBox.Show("Please select delivery date due date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.deEndDate.Focus();
                return;
            }
            if (this.deEndDate.DateTime < this.deStartDate.DateTime)
            {
                MessageBox.Show("The Delivery due date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                this.deEndDate.Focus();
                return;
            };

            string SqlStr = string.Format("exec sp_GetCustomerPOInfo '{0}', '{1}'", this.deStartDate.DateTime.ToString("yyyy-MM-dd"), this.deEndDate.DateTime.ToString("yyyy-MM-dd"));
            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            this.bindingSource.DataSource = db.ExecuteQuery<sp_GetCustomerPOInfoResult>(SqlStr);
        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            this.PrepareData();
        }

        public void GenerateChosenData()
        {
            SelectedCustomerPOList.Clear();
            SelectedWOList.Clear();
            SelectedProjectsList.Clear();
            SelectedCustStylesList.Clear();
            SelectedColorList.Clear();
            SelectedWorkshopAndLineList.Clear();
            SelectedProductTypeList.Clear();
            SelectedCustomerPOList.Clear();
            ShipmentSizeCountList.Clear();

            string FirstRwoChoiceFactory = ""; string FirstCustomer = "";
            string WorkOrder = "";
             LogOfNub = 0;
            PH.RWO.BO.RWOSOPCDataContext RWODB = ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();
             MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

            for (int i = 0; i < this.gridView.RowCount; i++)
            {
                sp_GetCustomerPOInfoResult obj = this.gridView.GetRow(i) as sp_GetCustomerPOInfoResult;
                if (obj != null && obj.CheckFlag)
                {
                    if (!string.IsNullOrEmpty(obj.CustomerPO)) { SelectedCustomerPOList.Add(obj.CustomerPO.Trim()); }
                    if (!string.IsNullOrEmpty(obj.WO)) { SelectedWOList.Add(obj.WO.Trim()); }
                    if (!string.IsNullOrEmpty(obj.Project)) { SelectedProjectsList.Add(obj.Project.Trim()); }
                    if (!string.IsNullOrEmpty(obj.CustomerStyleNo)) { SelectedCustStylesList.Add(obj.CustomerStyleNo.Trim()); }
                    if (!string.IsNullOrEmpty(obj.Color)) { SelectedColorList.Add(obj.Color.Trim()); }
                    if (!string.IsNullOrEmpty(obj.Workshop) || !string.IsNullOrEmpty(obj.Line)) { SelectedWorkshopAndLineList.Add(obj.Workshop.Trim() + "-" + obj.Line.Trim()); }
                    if (!string.IsNullOrEmpty(obj.ProductType)) { SelectedProductTypeList.Add(obj.ProductType.Trim()); }

                    this.SelectedCustomerPOs = string.Join("|", SelectedCustomerPOList.Distinct().ToArray());
                    this.SelectedWOs = string.Join("|", SelectedWOList.Distinct().ToArray());
                    this.SelectedProjects = string.Join("|", SelectedProjectsList.Distinct().ToArray());
                    this.SelectedCustStyles = string.Join("|", SelectedCustStylesList.Distinct().ToArray());
                    this.SelectedColors = string.Join("|", SelectedColorList.Distinct().ToArray());
                    this.SelectedWorkshopAndLines = string.Join("|", SelectedWorkshopAndLineList.Distinct().ToArray());
                    this.SelectedProductTypes = string.Join("|", SelectedProductTypeList.Distinct().ToArray());
                   
                    FirstRwoChoiceFactory = obj.Factory;
                    if (FirstRwoChoiceFactory != "")
                    {
                        if (MfgLoc == null)
                        {
                            this.MfgLoc = obj.Factory;
                        }
                    }

                    FirstCustomer = obj.Customer;
                    if (FirstCustomer != "")
                    {
                        if (Customer == null)
                        {
                            this.Customer = db.QC_AQLLevels.Where(p => p.ProjectNo == obj.Project.Substring(0, 4)).Select(p => p.Customer).FirstOrDefault();
                        }
                    }

                    this.ShptDate = obj.ShptDate;

                    //if (obj.WO != "") 
                    //{
                    //    if (ShptDate == null)
                    //    {
                    //        ShptDate = RWODB.WorkOrders.Where(p => p.WorkOrderNo == obj.WO).Select(p => p.LCLExFtyShipCompleted).FirstOrDefault();
                    //    }
                    //}

                    if (obj.WO != "")
                    {
                        if (obj.WO != WorkOrder)
                        {
                            LogOfNub = LogOfNub + db.GetLCLExFtyShipCompleted(obj.WO);
                            WorkOrder = obj.WO;
                        }
                    }

                    var RWOList = RWODB.WorkOrderSKUs.Where(p => p.WorkOrderNo == obj.WO && p.ColorCode == obj.Color);
                    POQtyList.Add(RWOList.Select(p => p.DespatchQty).Sum() ?? 0);
                    ShipmentSizeCountList.Add(RWOList.Select(p => new { p.Size, p.Cup, p.WorkOrderNo, p.ColorCode }).Distinct().Count());
                    
                }              

            }
            PoInShpt = SelectedCustomerPOList.Where(p => p.Length > 0).Distinct().Count();
            StyleInShpt = SelectedCustStylesList.Where(p => p.Length > 0).Distinct().Count();
           
            //var RWOList = RWODB.WorkOrderSKUs.Where(p => SelectedWOList.Contains(p.WorkOrderNo) && SelectedColorList.Contains(p.ColorCode));
            POQty = POQtyList.Sum();
            ShipmentSizeCount = ShipmentSizeCountList.Sum();

            ShipmentColorCount = SelectedColorList.Distinct().Count();
          
        }

        List<string> SelectedCustomerPOList = new List<string>();
        List<string> SelectedWOList = new List<string>();
        List<string> SelectedProjectsList = new List<string>();
        List<string> SelectedCustStylesList = new List<string>();
        List<string> SelectedColorList = new List<string>();
        List<string> SelectedWorkshopAndLineList = new List<string>();
        List<string> SelectedProductTypeList = new List<string>();

        List<int> POQtyList = new List<int>();
        List<int> ShipmentSizeCountList = new List<int>();

        /// <summary>
        /// Mfc Location(Factory)
        /// </summary>
        public string MfgLoc { get; set; }


        public string Customer { get; set; }

        /// <summary>
        ///  LCLExFtyShipCompleted(多个Cust的情况，只取一个数值)
        /// </summary>
        public DateTime? ShptDate { get; set; }

        /// <summary>
        /// CustPO的个数
        /// </summary>
        public int PoInShpt { get; set; }

        /// <summary>
        /// # of Log的个数
        /// </summary>
        public int LogOfNub { get; set; }


        /// <summary>
        /// Style的个数
        /// </summary>
        public int StyleInShpt { get; set; }
        
        /// <summary>
        /// 選擇的Customer PO，多個時拼結成一個字符串
        /// </summary>
        public string SelectedCustomerPOs { get; set; }

        /// <summary>
        /// 選擇的WO, 多個時拼結成一個字符串
        /// </summary>
        public string SelectedWOs { get; set; }

        /// <summary>
        /// 選擇的Project#, 多個時拼結成一個字符串
        /// </summary>
        public string SelectedProjects { get; set; }

        /// <summary>
        /// 選擇的Customer Style#，多個時拼結成一個字符串
        /// </summary>
        public string SelectedCustStyles { get; set; }

        /// <summary>
        /// 選擇的Color，多個時拼結成一個字符串
        /// </summary>
        public string SelectedColors { get; set; }

        /// <summary>
        /// 選擇的責任部門，Workshop + Line， 多個時拼結成一個字符串
        /// </summary>
        public string SelectedWorkshopAndLines { get; set; }

        /// <summary>
        /// 選擇的Customer PO Qty，多個Customer PO時，Qty匯總
        /// </summary>
        public int? POQty { get; set; }

        /// <summary>
        /// 選擇的Product Type，多個時拼結成一個字符串
        /// </summary>
        public string SelectedProductTypes { get; set; }

        /// <summary>
        /// 選擇的Color in shpt數(有多少種顏色)，多個時拼結成一個字符串
        /// </summary>
        public int ShipmentColorCount { get; set; }

        /// <summary>
        /// 選擇的Color in shpt數(有多少種Size)，多個時拼結成一個字符串
        /// </summary>
        public int ShipmentSizeCount { get; set; }
    }
}