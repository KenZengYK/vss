using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using DevExpress.XtraEditors.Repository;

namespace PH.BasicInfo.UI.TimeElement
{
    public partial class ElementsOfTransportationCost : ListForm 
    {
        private PH.BasicInfo.BO.BasicInfoDataContext currDataContex = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
        public ElementsOfTransportationCost()
        {
            InitializeComponent();
            InitialGridViewEditor();
        }

        //Xsj110114:初始化GridView的單元格編輯控件
        private void InitialGridViewEditor()
        { 
            List<PH.Platform.Misc.BO.Misc_DataDictionary> dataDicList = new List<PH.Platform.Misc.BO.Misc_DataDictionary>();
            //By Production Site
            dataDicList = GetDataDictionary("PH.MIDc.Factory", true).ToList();
            RepositoryItemImageComboBox itemImageComboBox = new RepositoryItemImageComboBox();
            itemImageComboBox.Name = "repositoryItemImageComboBox_ByProductionSite";
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataDicList)
            {
                itemImageComboBox.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.DataCode, item.DataCode));
            } 
            this.objListGridView.Columns["ByProductionSite"].ColumnEdit =itemImageComboBox;
            //Incoterm
            List<Incoterm> incotermList = new List<Incoterm>();
            incotermList = this.currDataContex.Incoterms.ToList();
            itemImageComboBox = new RepositoryItemImageComboBox();
            itemImageComboBox.Name = "repositoryItemImageComboBox_Incoterm";
            foreach (Incoterm item in incotermList)
            {
                itemImageComboBox.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.Code, item.Code));
            }
            this.objListGridView.Columns["Incoterm"].ColumnEdit = itemImageComboBox;
            //TransitMode
            dataDicList.Clear();
            dataDicList = GetDataDictionary("PH.BasicInfo.TransitMode", true).ToList();
            itemImageComboBox = new RepositoryItemImageComboBox();
            itemImageComboBox.Name = "repositoryItemImageComboBox_TransitMode";
            foreach (PH.Platform.Misc.BO.Misc_DataDictionary item in dataDicList)
            {
                itemImageComboBox.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.DataCode, item.DataCode));
            }
            this.objListGridView.Columns["TransitMode"].ColumnEdit = itemImageComboBox;
            //IsLCL
            dataDicList.Clear(); 
            itemImageComboBox = new RepositoryItemImageComboBox();
            itemImageComboBox.Name = "repositoryItemImageComboBox_IsLCL";
            itemImageComboBox.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[]{
                new DevExpress.XtraEditors.Controls.ImageComboBoxItem("LCL",true ),
                new DevExpress.XtraEditors.Controls.ImageComboBoxItem("FCL",false)
            });
            this.objListGridView.Columns["IsLCL"].ColumnEdit = itemImageComboBox;
            //Point of Dest 
            List<ForPointDeliveryofDestinationPHKey> phKeyList = new List<ForPointDeliveryofDestinationPHKey>();
            phKeyList = this.currDataContex.ForPointDeliveryofDestinationPHKeys.Distinct().ToList();
            itemImageComboBox = new RepositoryItemImageComboBox();
            itemImageComboBox.Name = "repositoryItemImageComboBox_PointofDest";
            foreach (ForPointDeliveryofDestinationPHKey item in phKeyList)
            {
                itemImageComboBox.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item.Name, item.Name));
            }
            this.objListGridView.Columns["PointOfDest"].ColumnEdit = itemImageComboBox;


        }        
        public override void DataBind()
        {
            this.BindingSource.DataSource = from val in currDataContex.TransportationCostElements
                                            select val;
            base.DataBind();
            this.DataContext = currDataContex; 
            this.AllowAddRow = false;
            this.RowChangeAutoSave = true;          
        }

        public override void OnClickSave()
        {
            CreateSuqNum();
            base.OnClickSave();
        }

        //Xsj110114:産生記錄編號
        private void CreateSuqNum()
        { 
            int oldMaxSeqNum = 1;
            List<TransportationCostElement> tranList = this.currDataContex.TransportationCostElements.OrderByDescending(P => P.SequenceNum).ToList();
            if (tranList.Count > 0)
            {
                TransportationCostElement maxVal = tranList[0];
                string OldMaxSeqNumStr = maxVal.SequenceNum.ToString();
                oldMaxSeqNum = Convert.ToInt32(OldMaxSeqNumStr);
            }
            foreach (TransportationCostElement item in this.BindingSource)
            {
                if (item.SequenceNum == 0)
                {
                    oldMaxSeqNum++;
                    item.SequenceNum = oldMaxSeqNum;
                }
            }
            this.DataContext.SubmitChanges();
        }

        #region 獲取數據字典值
        //獲取數據字典值
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string DataType, bool orderbyDataCode)
        {
            PH.Platform.Misc.BO.PHPlatformMiscDataContext MIScDataContext = ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            if (orderbyDataCode)
            {
                var lists = from a in MIScDataContext.Misc_DataDictionaries
                            where a.DataType == DataType
                            orderby a.DataCode
                            select a;
                return lists;
            }
            else
            {
                var lists = from a in MIScDataContext.Misc_DataDictionaries
                            where a.DataType == DataType
                            orderby a.Description
                            select a;
                return lists;
            }
        }
        #endregion

        //Xsj110114:打印數據庫
        private void barBtnTransportationCostElement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.BasicInfo.BackEnd.TimeElement.Report.TransportationCostElementsRpt Rpt = new PH.BasicInfo.BackEnd.TimeElement.Report.TransportationCostElementsRpt(); 
            Rpt.DataSource = this.BindingSource.DataSource;
            Rpt.ShowPreviewDialog();
        }
    }
}
