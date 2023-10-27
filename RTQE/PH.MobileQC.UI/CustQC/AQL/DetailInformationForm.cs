using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MobileQC.BO;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.MobileQC.UI.CustQC
{
    public partial class DetailInformationForm : Form
    {
        public DetailInformationForm(string AQCLocation, DateTime AStartDate, DateTime ADueDate)
        {
            InitializeComponent();

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = string.Format("exec sp_CustQCDetailReport '{0}', '{1}', '{2}', 1", AQCLocation, AStartDate, ADueDate);
            this.bindingSource.DataSource = db.ExecuteQuery<sp_CustQCDetailReportResult>(SqlStr);
            //var lists = db.ExecuteQuery<sp_CustQCDetailReportResult>(SqlStr).ToList();
            //this.bindingSource.DataSource = db.ExecuteQuery<sp_CustQCDetailReportResult>(SqlStr);

            //var MasterDataList = lists.Select(p => new { p.OID, p.ResponsibleDept, p.ProjectNO, p.CustStyle, p.Color, p.Customer, p.QCLocation, p.MfgLocation, p.CatLogNO, p.ItemCN, p.ItemEN })
            //    .GroupBy(p => new { p.OID, p.ResponsibleDept, p.ProjectNO, p.CustStyle, p.Color, p.Customer, p.QCLocation, p.MfgLocation, p.CatLogNO, p.ItemCN, p.ItemEN });



            //Int64 OID = -19;
            //List<CustQCMasterShow> DataList = new List<CustQCMasterShow>();
            //foreach (var obj in lists)
            //{
            //    if (obj.OID != OID)
            //    {
            //        CustQCMasterShow MasterObj = new CustQCMasterShow()
            //        {
            //            OID = obj.OID,
            //            ResponsibleDept = obj.ResponsibleDept,
            //            ProjectNO = obj.ProjectNO,
            //            CustStyle = obj.CustStyle,
            //            Color = obj.Color,
            //            Customer = obj.Customer,
            //            QCLocation = obj.QCLocation,
            //            MfgLocation = obj.MfgLocation,
            //            CatLogNO = obj.CatLogNO,
            //            ItemCN = obj.ItemCN,
            //            ItemEN = obj.ItemEN
            //        };

            //        DataList.Add(MasterObj);
            //        OID = obj.OID;
            //    }
            //}

            //foreach (var obj in lists)
            //{
            //    CustQCMasterShow MasteObj = DataList.FirstOrDefault(p => p.OID == obj.OID);
            //    if (MasteObj.CustQCDetailShows == null)
            //    {
            //        MasteObj.CustQCDetailShows = new List<CustQCDetailShow>();
            //    }
            //    MasteObj.CustQCDetailShows.Add(new CustQCDetailShow()
            //    {
            //        ControlProcedure = obj.ControlProcedure,
            //        DefectCode = obj.DefectCode,
            //        DefectNameCN = obj.DefectNameCN,
            //        DefectNameEN = obj.DefectNameEN,
            //        DefectNameBD = obj.DefectNameBD,
            //        CriticalDefectQty = obj.CriticalDefectQty,
            //        MarjorDefectQty = obj.MarjorDefectQty,
            //        MinorDefectQty = obj.MinorDefectQty
            //    });
            //}

            //this.bindingSource.DataSource = DataList;

            //this.gridControl.ShowOnlyPredefinedDetails = false;
            //this.gridControl.LevelTree.Nodes.Clear();
            //this.gridControl.LevelTree.Nodes.Add("CustomRelation", this.gridView2);

            // this.bindingSource.DataSource = db.ExecuteQuery<sp_CustQCDetailReportResult>(SqlStr);
        }

        void PrepareData()
        {
            //            select a.OID, a.ResponsibleDept, a.ProjectNO, a.CustStyle, a.Color, a.Customer, a.QCLocation, a.MfgLocation, 
            //       a.CatLogNO, d.act_item as ItemCN, d.act_item_e as ItemEN,
            //       case when left(b.DefectCode, 2) = 'MS' then 'POM' when left(b.DefectCode, 2) = 'CS' then 'Casing' else 'Operation' end ControlProcedure,
            //       b.DefectCode, c.DefectChineseName as DefectNameCN, c.DefectEnglishName as DefectNameEN, c.DefectThaiName as DefectNameBD,
            //       b.CriticalDefectQty, b.MarjorDefectQty, b.MinorDefectQty
            //from CustQCMaster as a
            //left join CustQCDetail as b on a.OID = b.MasterOID
            //left join [PH.FabricInspection]..PHQCDefect as c on c.PHDefectCode = b.DefectCode
            //left join PHDB..tbl_carte_actitem as d on d.code = a.CatLogNo and d.code in ('C08a','C08b','C08c', 'C09a', 'C09b')
            //where a.QCLocation = @QCLocation and a.ExamDate >= @FromDate and a.ExamDate < @ToDate 
            //order by a.ExamDate, a.OID


        }

        private void gridView1_MasterRowGetRelationName(object sender, DevExpress.XtraGrid.Views.Grid.MasterRowGetRelationNameEventArgs e)
        {
            if (e.RowHandle == 0 && e.RelationIndex == 0)
                e.RelationName = "Detail";

        }

        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            BandedGridView gridView = sender as BandedGridView;
            string OID1 = gridView.GetRowCellValue(e.RowHandle1, "OID").ToString();
            string OID2 = gridView.GetRowCellValue(e.RowHandle2, "OID").ToString();

            switch (e.Column.FieldName)
            {

                case "OID":
                case "ResponsibleDept":
                case "ProjectNO":
                case "CustStyle":
                case "Color":
                case "Customer":
                case "QCLocation":
                case "MfgLocation":
                case "CatLogNO":
                case "ItemCN":
                case "ItemEN":
                    e.Merge = OID1 == OID2;
                    e.Handled = true;
                    break;

                default:  //默認按QN合并
                    e.Merge = false;
                    e.Handled = true;
                    break;
            }

        }
    }

    //public class CustQCMasterShow
    //{
    //    public Int64 OID { get; set; }
    //    public string ResponsibleDept { get; set; }
    //    public string ProjectNO { get; set; }
    //    public string CustStyle { get; set; }
    //    public string Color { get; set; }
    //    public string Customer { get; set; }
    //    public string QCLocation { get; set; }
    //    public string MfgLocation { get; set; }
    //    public string CatLogNO { get; set; }
    //    public string ItemCN { get; set; }
    //    public string ItemEN { get; set; }
    //    public List<CustQCDetailShow> CustQCDetailShows { get; set; }
    //}

    //public class CustQCDetailShow
    //{
    //    public string ControlProcedure { get; set; }
    //    public string DefectCode { get; set; }
    //    public string DefectNameCN { get; set; }
    //    public string DefectNameEN { get; set; }
    //    public string DefectNameBD { get; set; }
    //    public int? CriticalDefectQty { get; set; }
    //    public int? MarjorDefectQty { get; set; }
    //    public int? MinorDefectQty { get; set; }
    //}
}
