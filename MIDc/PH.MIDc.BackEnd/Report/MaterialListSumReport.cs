using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MIDc.BackEnd
{
    public partial class MaterialListSumReport : DevExpress.XtraReports.UI.XtraReport
    {
        public MaterialListSumReport()
        {
            InitializeComponent();

        }
        string _matTypeSupp;
        bool _isMatType;
        public MaterialListSumReport(bool sortbyMIDStatus, PH.MIDc.BO.MaterialSortby sortby, bool statusStudyRun, bool isMatType, string matTypeSupp)
        {
            InitializeComponent();

            #region Header

            _matTypeSupp = matTypeSupp;
            _isMatType = isMatType;

            #endregion


            #region Summary

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
            this.cellMatTypeSupp_Status.DataBindings.Add("Text", this.DataSource, groupFieldname);
            this.cellMatTypeSupp_MatType.DataBindings.Add("Text", this.DataSource, groupFieldname);
            this.cellSumMatTypeSupp.DataBindings.Add("Text", this.DataSource, groupFieldname);

            #endregion

        }

      }
}
