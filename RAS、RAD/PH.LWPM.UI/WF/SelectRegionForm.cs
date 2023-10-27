using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;
using DevExpress.XtraTreeList.Nodes;

namespace PH.LWPM.UI.WF
{
    public partial class SelectRegionForm : Form
    {
        public SelectRegionForm()
        {
            InitializeComponent();
            GetData();
        }

        void GetData()
        {
            string SqlStr = @"select * from BaseCode where Type = 'Country'  
                              union select * from basecode where Type = 'REGION'
                              union select * from basecode where Type = 'AREA'";

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            this.bsRegion.DataSource = db.ExecuteQuery<BaseCode>(SqlStr);
        }

        public void CalculateNodeInformation()
        {
            TreeListNode CurrentNode = this.treeListRegion.FocusedNode;
            while (CurrentNode.Level > 3)
            {
                CurrentNode = CurrentNode.ParentNode;
            }

            if (CurrentNode.Level == 3) //選擇是第4層Citry
            {
                this.TownEN = GetNodeValue(CurrentNode, "Name");
                this.TownCN = GetNodeValue(CurrentNode, "Description");

                TreeListNode CityNode = CurrentNode.ParentNode;
                this.CityEN = GetNodeValue(CityNode, "Name");
                this.CityCN = GetNodeValue(CityNode, "Description");

                TreeListNode ProvinceNode = CityNode.ParentNode;
                this.ProvinceEN = GetNodeValue(ProvinceNode, "Name");
                this.ProvinceCN = GetNodeValue(ProvinceNode, "Description");

                TreeListNode CountryNode = ProvinceNode.ParentNode;
                this.CountryEN = GetNodeValue(CountryNode, "Name");
                this.CountryCN = GetNodeValue(CountryNode, "Description");
            }
            else if (CurrentNode.Level == 2) //選擇的是第3層City
            {
                this.CityEN = GetNodeValue(CurrentNode, "Name");
                this.CityCN = GetNodeValue(CurrentNode, "Description");

                TreeListNode ProvinceNode = CurrentNode.ParentNode;
                this.ProvinceEN = GetNodeValue(ProvinceNode, "Name");
                this.ProvinceCN = GetNodeValue(ProvinceNode, "Description");

                TreeListNode CountryNode = ProvinceNode.ParentNode;
                this.CountryEN = GetNodeValue(CountryNode, "Name");
                this.CountryCN = GetNodeValue(CountryNode, "Description");
            }
            else if (CurrentNode.Level == 1) //選擇的是第2層Province
            {
                this.ProvinceEN = GetNodeValue(CurrentNode, "Name");
                this.ProvinceCN = GetNodeValue(CurrentNode, "Description");

                TreeListNode CountryNode = CurrentNode.ParentNode;
                this.CountryEN = GetNodeValue(CountryNode, "Name");
                this.CountryCN = GetNodeValue(CountryNode, "Description");
            }
            else if (CurrentNode.Level == 0) //選擇的是第1層Country
            {
                this.CountryEN = GetNodeValue(CurrentNode, "Name");
                this.CountryCN = GetNodeValue(CurrentNode, "Name");
            }
        }

        string GetNodeValue(TreeListNode ANode, object AColumnID)
        {
            return ANode.GetValue(AColumnID) == null ? "" : ANode.GetValue(AColumnID).ToString();
        }

        private void SelectRegionForm_Shown(object sender, EventArgs e)
        {
            this.treeListRegion.CollapseAll();
        }

        public string CountryEN { get; set; }
        public string CountryCN { get; set; }
        public string ProvinceEN { get; set; }
        public string ProvinceCN { get; set; }
        public string CityEN { get; set; }
        public string CityCN { get; set; }
        public string TownEN { get; set; }
        public string TownCN { get; set; }

    }

    ///// <summary>
    /////顯示Region的類型
    ///// </summary>
    //public enum RegionTypes
    //{
    //    /// <summary>
    //    /// 中國
    //    /// </summary>
    //    China,
    //    /// <summary>
    //    /// 孟加拉國
    //    /// </summary>
    //    Bangladesh,
    //    /// <summary>
    //    /// 所有Region
    //    /// </summary>
    //    All
    //}
}
