using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraGrid;
using PH.FabricInspection.BO;
using PH.Platform.ExtendLibrary;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.FabricInspection.UI
{
    public partial class MaterialTypeDefectOrderForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public MaterialTypeDefectOrderForm()
        {
            InitializeComponent();
        }

        PH.FabricInspection.BO.FabricInspectionDataContext fDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.FabricInspection.BO.FabricInspectionDataContext>();

        public override void DataBind()
        {
            //this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.P_GetMaterialTypeDefectOrderResult);
            this.DataContext = fDc;
            //this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }

        protected override void OnClickFind()
        {
            //string materialType = this.textEdit_MaterialType.EditValue == null ? "" : this.textEdit_MaterialType.EditValue.ToString();
            //DateTime? startDate = null;
            //if (dateEdit_StartDate.EditValue != null)
            //{
            //    startDate = Convert.ToDateTime(dateEdit_StartDate.EditValue);
            //}
            //DateTime? endDate = null;
            //if (dateEdit_EndDate.EditValue != null)
            //{
            //    endDate = Convert.ToDateTime(dateEdit_EndDate.EditValue);
            //}


            //GetMaterialTypeDefectOrderInfoCondition conditionForm = new GetMaterialTypeDefectOrderInfoCondition();
            ////conditionForm.MaterialTypeList = fDc.Fabric_Insp_Headers.Where(p => p.Item_No != null && p.Item_No.Length > 3).Select(p => p.Item_No.Substring(0, 3)).Distinct().ToList();
            ////conditionForm.CurrMaterialType = materialType;
            //conditionForm.StartDate = startDate;
            //conditionForm.EndDate = endDate;
            //if (conditionForm.ShowDialog() != DialogResult.OK)
            //{
            //    return;
            //}

            //materialType = conditionForm.CurrMaterialType;
            //startDate = conditionForm.StartDate;
            //endDate = conditionForm.EndDate;

            //this.textEdit_MaterialType.EditValue = materialType;
            //this.dateEdit_StartDate.EditValue = conditionForm.StartDate;
            //this.dateEdit_EndDate.EditValue = conditionForm.EndDate;
            //textEdit_MaterialType.EditValue = conditionForm.AuditTeam;

            //List<string> materialTypeList = new List<string>();
            //if (!string.IsNullOrEmpty(materialType))
            //{
            //    materialTypeList = materialType.Split(',').ToList();
            //}
            //else
            //{
            //    materialTypeList = (from valA in fDc.Fabric_Insp_Headers
            //                        from valB in fDc.Fabric_Insp_PartDefects
            //                        where valA.Company == valB.Company && valA.System_Install_No == valB.System_Install_No
            //                        select valA.Item_No.Substring(0, 3)).Distinct().ToList();
            //}

            //string SqlStr = string.Format("exec sp_GetDefectFrequenceList '{0}', '{1}', {2}", conditionForm.StartDate, conditionForm.EndDate, conditionForm.AuditTeam);
            //string SqlStr = string.Format("exec sp_GetDefectFrequenceList '{0}', '{1}', {2}", txtDateFrom.DateTime.Date, txtDateTo.DateTime.Date, txtAuditTeam.Text);
            //this.BindingSource.DataSource = fDc.ExecuteQuery<DefectFrequenceListResult>(SqlStr);

            //List<P_GetMaterialTypeDefectOrderResult> matlTypeDefectOrderResultList = new List<PH.FabricInspection.BO.P_GetMaterialTypeDefectOrderResult>();
            //foreach (string matlTypeItem in materialTypeList)
            //{
            //    List<P_GetMaterialTypeDefectOrderResult> result = fDc.P_GetMaterialTypeDefectOrder(startDate, endDate, matlTypeItem.Trim()).ToList();
            //    if (result != null && result.Count > 0)
            //    {
            //        matlTypeDefectOrderResultList.AddRange(result);
            //    }
            //}

            //this.BindingSource.DataSource = matlTypeDefectOrderResultList;
        }

        private void objListGridView_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<DefectFrequenceListResult> lists = objListGridView.FilteredList().Cast<DefectFrequenceListResult>();

                switch (item.FieldName)
                {
                    case "MaterialType":
                        e.TotalValue = lists.Select(p => p.MaterialType).Distinct().Count();
                        break;

                    case "DefectCode":
                        e.TotalValue = lists.Select(p => p.DefectCode).Distinct().Count();
                        break;

                    case "SuppCode":
                        e.TotalValue = lists.Select(p => p.SuppCode).Distinct().Count();
                        break;
                }

            }
        }

        private void objListGridView_CustomDrawGroupRow(object sender, DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventArgs e)
        {
            //GridView view = sender as GridView;

            //view.GetGroupRowDisplayText(0);

            //GridGroupRowInfo groupRowInfo = e.Info as GridGroupRowInfo;
            //Rectangle groupRowBounds = groupRowInfo.DataBounds;
            //Rectangle expandButtonBounds = groupRowInfo.ButtonBounds;
            //Rectangle textBounds = e.Bounds;
            //textBounds.X = expandButtonBounds.Right + 4;

            ////A brush for the group row.
            //Brush brush = e.Cache.GetGradientBrush(groupRowBounds, Color.LemonChiffon,
            //  Color.Tan, LinearGradientMode.Horizontal);
            ////A brush for the region containing the expand button.
            //Brush brushImage = Brushes.LemonChiffon;
            ////Brushes to draw the text in the group row
            //Brush brushText = Brushes.Black, brushTextShadow = Brushes.White;
            //if (e.RowHandle == view.FocusedRowHandle)
            //{
            //    brush = brushTextShadow = Brushes.DarkBlue;
            //    brushText = Brushes.White;
            //}

            ////Fill the rectangle of the group row without the expand button
            //e.Graphics.FillRectangle(brush, groupRowBounds);
            ////Draw a custom expand button
            //ImageList iml = imlCustomDrawImages;
            //e.Graphics.DrawImageUnscaled(iml.Images[(view.GetRowExpanded(e.RowHandle) ? 1 : 0)],
            //  expandButtonBounds);
            ////Draw the group row text
            //string s = view.GetGroupRowDisplayText(e.RowHandle);
            //e.Appearance.DrawString(e.Cache, s, new Rectangle(textBounds.X + 1, textBounds.Y + 1,
            //  textBounds.Width, textBounds.Height), brushTextShadow);
            //e.Appearance.DrawString(e.Cache, s, textBounds, brushText);
            ////Prevent default painting
            //e.Handled = true;

        }

        private void btnQuery_Click(object sender, EventArgs e)
        {
            if (txtDateFrom.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please input id create start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtDateFrom.Focus();
                return;
            }

            if (txtDateTo.DateTime == DateTime.MinValue)
            {
                MessageBox.Show("Please input id create end date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtDateTo.Focus();
                return;
            }

            if (txtDateTo.DateTime.Date < txtDateFrom.DateTime.Date)
            {
                MessageBox.Show("The id create end date must be greater than start date", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            string SqlStr = string.Format("exec sp_GetDefectFrequenceList '{0}', '{1}', '{2}', '{3}'", txtDateFrom.DateTime.Date, txtDateTo.DateTime.Date, txtAuditTeam.Text, txtWhase.Text);
            this.BindingSource.DataSource = fDc.ExecuteQuery<DefectFrequenceListResult>(SqlStr);

            this.InitFormNavigator();
        }

    }
}
