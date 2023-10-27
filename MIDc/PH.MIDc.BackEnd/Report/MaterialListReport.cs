using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialListReport()
        {
            InitializeComponent();

        }
        string _matTypeSupp;
        bool _isMatType;

        public MaterialListReport(bool sortbyMIDStatus, PH.MIDc.BO.MaterialSortby sortby, bool statusStudyRun, bool isMatType, string matTypeSupp)
        {
            InitializeComponent();

            #region Header

            _matTypeSupp = matTypeSupp;
            _isMatType = isMatType;
            this.lblCalcDate.Text = string.Format("The data is calculated on : {0:dd'/'MM'/'yyyy}", DateTime.Now);

            string stemp1 = _isMatType ? "Mat.Type Dependent" : "Supplier Dependent";
            //stemp1 = string.Format("{0}{1}", stemp1, matTypeSupp);
            //string stemp2 = statusStudyRun ? "- Study, Test & Run" : "- Hold, Stop & Drop";
            string stemp2 = statusStudyRun ? "- Study, Check && Run-Gen" : "-   Hold && Drop";
          
            this.cellStatus.Text = stemp2;// string.Format("{0}\r\n{1}", stemp1, stemp2);
            this.lblDependent.Text = stemp1;
            #endregion

            #region Sort

            string s = "";
            string sfield1 = "";
            string sfield2 = "";
            string sfield3 = "";
            string sfield4 = "";
            switch (sortby)
            {
                case PH.MIDc.BO.MaterialSortby.SuppWidth:
                    s = "supp width";
                    sfield1 = "SupplierWidth";
                    sfield2 = "Supplier";
                    sfield3 = "MaterialCode";
                    sfield4 = "SuppRef";
                    break;
                case PH.MIDc.BO.MaterialSortby.BuyerItem:
                    s = "buyer item#";
                    sfield1 = "MaterialCode";
                    sfield2 = "Supplier";
                    sfield3 = "SupplierWidth";
                    sfield4 = "SuppRef";
                    break;
                case PH.MIDc.BO.MaterialSortby.SuppCode:
                    s = "supp code";
                    sfield1 = "Supplier";
                    sfield2 = "MaterialCode";
                    sfield3 = "SupplierWidth";
                    sfield4 = "SuppRef";
                    break;
                case PH.MIDc.BO.MaterialSortby.SuppItemRef:
                    s = "supp item ref.";
                    sfield1 = "SuppRef";
                    sfield2 = "Supplier";
                    sfield3 = "SupplierWidth";
                    sfield4 = "MaterialCode";
                    break;
                default:
                    break;
            }

            this.Detail1.SortFields.Clear();
            if (sortbyMIDStatus)
            {
                this.Detail1.SortFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
                  new DevExpress.XtraReports.UI.GroupField("MIDStatus", DevExpress.XtraReports.UI.XRColumnSortOrder.Descending),
                  new DevExpress.XtraReports.UI.GroupField(sfield1, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield2, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield3, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield4, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)
                  });
                this.cellSortby.Text = string.Format(" - sorted by TMID/PMID, {0}", s);
            }
            else
            {
                this.Detail1.SortFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
                  new DevExpress.XtraReports.UI.GroupField(sfield1, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield2, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield3, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
                  new DevExpress.XtraReports.UI.GroupField(sfield4, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)
                  });

                this.cellSortby.Text = string.Format(" - sorted by {0}", s);
            }
            #endregion

            #region Summary

            _sumreport = new MaterialListSumReport(sortbyMIDStatus, sortby, statusStudyRun, isMatType, matTypeSupp);

            GroupFooter3.Height = 0;
            GroupFooter1.Visible = !isMatType;
            if (isMatType)
            {
                csGroupSatus2.BackColor = System.Drawing.Color.Transparent;
                csGroupSatus2.BackColor = System.Drawing.Color.Transparent;
                csGroupSatus2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            }

            this.GroupHeader1.GroupFields.Clear();

            this.lblMatTypeSupp.Text = "Mat.Type";//isMatType ? "Mat.Type" : "Supplier";
            string groupFieldname = "MaterialType";// isMatType ? "MaterialType" : "ERPSupplier";
            this.GroupHeader1.GroupFields.Add(new DevExpress.XtraReports.UI.GroupField(groupFieldname, DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending));
            this.cellMatTypeSupp_Status.DataBindings.Add("Text", this.DetailReport1.DataSource, groupFieldname);
            this.cellMatTypeSupp_MatType.DataBindings.Add("Text", this.DetailReport1.DataSource, groupFieldname);
            this.cellSumMatTypeSupp.DataBindings.Add("Text", this.DetailReport1.DataSource, groupFieldname);

            #endregion

            //InitYYCalcBinding();
        }

        //no use
        private void InitYYCalcBinding()
        {
            if (_matTypeSupp == "PCTX")
            {
                this.cellSingleRange.Text = "(Sw)";
                this.cellSuppSize.DataBindings.Add("Text", this.DetailReport.DataSource, "SupplierWidth", "{0:N0} mm");
            }
            else
            {
                this.cellSingleRange.DataBindings.Add("Text", this.DetailReport.DataSource, "SuppWidth");
                this.cellSuppSize.DataBindings.Add("Text", this.DetailReport.DataSource, "SuppSize");
            }
            //PH.MIDc.BO.Detail d;
            //switch (this._matTypeSupp)
            //{
            //    case "BND":
            //        //this.cellSuppMarkerWidth.DataBindings.Add("Text", this.DataSource, d.SupplierWidth);
            //        this.cellSuppSize.DataBindings.Add("Text", this.DetailReport.DataSource, "SupplierWidth", "{0:N0}");
            //        break;
            //    default:
            //        this.cellSuppMarkerWidth.DataBindings.Add("Text", this.DetailReport.DataSource, "SupplierWidth", "{0:#,0.###}");
            //        break;
            //}
        }

        //object _dataSource;
        MaterialListSumReport _sumreport;
        public void SetDetailsDataSource(object dataSource)
        {
            //_dataSource = dataSource;
            this.DataSource = null;
            this.DetailReport.DataSource = dataSource;
            this.DetailReport1.DataSource = dataSource;

            _sumreport.DataSource = dataSource;
            xrSubreport_Sum.ReportSource = _sumreport;

            if (!_isMatType)
            {
                string suppName = "";

                System.Collections.Generic.List<PH.MIDc.BO.MIDMaterial> list = dataSource as System.Collections.Generic.List<PH.MIDc.BO.MIDMaterial>;
                if (list != null && list.Count > 0)
                {
                    suppName = list[0].SupplierName;
                }

                this.lblSupplierName.Text = string.Format("{0} - {1}", _matTypeSupp, suppName);
            }
        }
    }
}
