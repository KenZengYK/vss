using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.RWO.BO;
using PH.Platform.BO;
using System.Collections;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid.Views.Base;
using PH.Platform.Common;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.RWO.UI
{
    public partial class RwoAssignQtyForm : DevExpress.XtraEditors.XtraForm
    {
        DataTable _dboriginal,_dboperation;
        RWOSOPCDataContext _dcrwo;
        RoundWorkOrder _currwo;
     
        private ArrayList _selectfactories,_originalfactorys,_needadds,_needremoves;

       
        public RwoAssignQtyForm(RWOSOPCDataContext dcrwosopc, RoundWorkOrder rwo,ArrayList selectfactories, ArrayList originalfactories)
        {
            InitializeComponent();
            _dcrwo = dcrwosopc;
            _currwo = rwo;
            _selectfactories = selectfactories;
            _originalfactorys = originalfactories;
            InitiAssign();   
        }

        private void InitiAssign()
        {
            GetRoundDetail();
            if (gdcOriginal!=null)
              this.gdcOriginal.DataSource = _dboriginal;
            if (gdcAssign != null)
              this.gdcAssign.DataSource = _dboperation;

            GernerateGridView();
            SetGridColumn();
        }

        private void SetGridColumn()
        {         
            foreach (GridColumn gc in this.gdvAssign.Columns)
            {
                if (!this._selectfactories.Contains(gc.FieldName))
                    gc.OptionsColumn.AllowEdit = false;

                SetCaption(gc);

            }

            foreach (GridColumn gc in this.gdvOriginal.Columns)
            {
                SetCaption(gc);
            }
        
        }

        private void SetCaption(GridColumn gcu)
        {
            if (gcu.FieldName.ToLower() == "workorderno")
                gcu.Caption = "WO#";

            if (gcu.FieldName.ToLower() == "roundno")
                gcu.Caption = "RWO#";

            if (gcu.FieldName.ToLower() == "sampleqty")
                gcu.Caption = "Sample Qty";

            if (gcu.FieldName.ToLower() == "totalqty")
                gcu.Caption = "Total Qty";

            if (gcu.FieldName.ToLower() == "subfactory")
                gcu.Caption = "Fty";

            if (gcu.FieldName.ToLower() == "bulkqty")
                gcu.Caption = "Bulk Qty";
        
        }

        private void GetRoundDetail()
        {
    
            StringBuilder facbuilder = new StringBuilder("");
            for (int k = 0; k < this._originalfactorys.Count; k++)
            {
                facbuilder.Append("[");
                facbuilder.Append(_originalfactorys[k]);
                facbuilder.Append("]");
                if (k != _originalfactorys.Count - 1)
                  facbuilder.Append(",");    
            }

           string sqlcmd = string.Format("exec dbo.[Proc_AssignQtyForWorkOrderDetail] '{0}','{1}','{2}',{3}",
               facbuilder.ToString(), _currwo.WorkOrderNo, _currwo.ColorCode, _currwo.RoundNo);           
          _dboriginal =_dcrwo.ExecuteDataTable(sqlcmd, "Original");   
        
        }

        private void CloneData()
        {
            if (_dboriginal != null)
            {
                _dboperation = _dboriginal.Clone();
                _dboperation.TableName = "Operation";
                foreach (DataRow dr in _dboriginal.Rows)
                {
                    DataRow newrow = _dboperation.NewRow();
                    foreach (DataColumn dc in _dboriginal.Columns)
                    {
                        newrow[dc.ColumnName] = dr[dc.ColumnName];
                    }

                    _dboperation.Rows.Add(newrow);
                
                }
            }
        }

        private void GernerateGridView()
        {
            ArrayList needtoadd = new ArrayList();
            ArrayList needtoremove = new ArrayList();
            if (_dboriginal != null)
            {


                //獲取需要增加和刪除的列信息
                for (int m1 = 0; m1 < _selectfactories.Count; m1++)
                {
                    if (!_originalfactorys.Contains(_selectfactories[m1]))
                    {
                        needtoadd.Add(_selectfactories[m1]);
                    }
                }

                for (int m2 = 0; m2 < _originalfactorys.Count; m2++)
                {
                    if (!_selectfactories.Contains(_originalfactorys[m2]))
                    {
                        needtoremove.Add(_originalfactorys[m2]);
                    }
                }

                this._needadds = needtoadd; this._needremoves = needtoremove;


                if (_needadds.Count == 0 && this._needremoves.Count == 0) //厰區沒有做任何更改
                    this.CloneData();
                else
                {

                    //clone原有結構
                    _dboperation = _dboriginal.Clone();
                    _dboperation.TableName = "Operation";

                    //根據選擇的厰區增加和刪除column
                    for (int k = 0; k < needtoremove.Count; k++)
                    {
                        // string columnname = "col" + needtoremove[k];
                        _dboperation.Columns.Remove(needtoremove[k].ToString().Trim());

                    }

                    for (int A = 0; A < needtoadd.Count; A++)
                    {
                        // string columnname = "col" + needtoadd[A];
                        DataColumn newcol = new DataColumn(needtoadd[A].ToString().Trim(), typeof(int));
                        newcol.Caption = needtoadd[A].ToString();
                        if (!_dboperation.Columns.Contains(newcol.Caption.Trim()))
                            _dboperation.Columns.Add(newcol);

                    }


                    //_dboperation.AcceptChanges();

                    //gdvAssign.Columns.Clear();

                    //this.gdcAssign.DataSource = null;
                    //gdcAssign.DataSource = _dboperation;

                    #region 給需要處理的數據賦值
                    foreach (DataRow dr in _dboriginal.Rows)
                    {
                        DataRow newrow = _dboperation.NewRow();

                        foreach (DataColumn dc in _dboriginal.Columns)
                        {
                            //newrow[dc.ColumnName] = dr[dc.ColumnName];

                            if (_dboperation.Columns.Contains(dc.ColumnName))
                            {
                                newrow[dc.ColumnName] = dr[dc.ColumnName];
                            }
                        }
                        _dboperation.Rows.Add(newrow);
                    }

                    foreach (DataRow dr in _dboperation.Rows)
                    {
                        if ((needtoadd.Count > 0 || needtoremove.Count > 0))
                        {
                            if (this._selectfactories.Count > 1) //分配數量時有改變厰區且分給不止一個厰
                                dr[this._selectfactories[0].ToString()] = dr["TotalQty"];
                            
                            if (this._selectfactories.Count==1)
                                dr[this._selectfactories[0].ToString()] = dr["TotalQty"];
                        }
                        //else //沒有改厰區
                        //{
                        //    if (this._selectfactories.Count == 1)
                        //        dr[this._selectfactories[0].ToString()] = dr["TotalQty"];
                        //}


                        if (_selectfactories.Count > 1)
                        {
                            for (int i = 1; i < _selectfactories.Count; i++)
                            {
                                dr[this._selectfactories[i].ToString()] = 0; 
                            }
                        }

                    }
                    #endregion

                }


                _dboperation.AcceptChanges();
                gdvAssign.Columns.Clear();
                this.gdcAssign.DataSource = null;
                gdcAssign.DataSource = _dboperation;

                //this.gdvOriginal.OptionsView.


                this.gdvAssign.FocusedRowHandle = 0;
                if ((needtoadd.Count > 0 || needtoremove.Count > 0) && this._selectfactories.Count>1)
                {
                    string s = "Apply qty not equal to total qty!";
                    gdvAssign.SetColumnError(gdvAssign.Columns[gdvAssign.Columns.Count - 1], s);
                   // this.sbtnSave.Enabled = !errProvider.HasErrors;                    
                }
                if (this._selectfactories.Count == 1) //全分配給一個厰
                        this.gdvAssign.OptionsBehavior.Editable = false;

            }          
        
        }

        private bool HaveErrors()
        {
            bool haserror = false;
            string errortext = string.Empty;
            string errcolname = string.Empty;
            int errline = 0;

            for (int k = 0; k < gdvAssign.RowCount; k++)
            {
                int curtotal = 0;
                int maxqty = Convert.ToInt32(gdvAssign.GetRowCellValue(k,"TotalQty"));
                int mqty = 0;

                for (int j = 0; j < _selectfactories.Count; j++)
                {
                    object objqty = gdvAssign.GetRowCellValue(k, gdvAssign.Columns[_selectfactories[j].ToString()]);
                    if (objqty != DBNull.Value)
                       mqty=Convert.ToInt32(objqty);

                    //if (mqty == 0)
                    //{
                    //    errcolname = _selectfactories[j].ToString();
                    //    break;
                    //}

                    curtotal = curtotal + mqty;
                    errcolname = _selectfactories[j].ToString();
                }


                errline = k+1;
                //if (mqty == 0)
                //{
                //    haserror = true;
                //    errortext = "Assign quantity must greate than 0!";
                //    break;
                //}

                if (curtotal != maxqty)
                {
                   
                    haserror = true;
                    errortext = string.Format("Apply qty must equal to: {0},please corrected!",
                                      maxqty);
                    break;
                }


            }

            if (haserror)
            {

                gdvAssign.FocusedRowHandle = errline-1;
                gdvAssign.FocusedColumn = gdvAssign.Columns[errcolname];
                gdvAssign.SetColumnError(gdvAssign.Columns[errcolname], errortext);

            }

            return haserror;
        
        }

        //private void gridView1_CustomDrawFooterCell(object sender, DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventArgs e)
        //{

        //}

        //private void gridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        //{
        //}

        private void gdvAssign_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            ColumnView view = sender as ColumnView;
            int curtotal = 0; string lastcol = string.Empty;
            //bool iszero = false;
            for (int i = 0; i < this._selectfactories.Count; i++)
            {
                string colname = _selectfactories[i].ToString();
                //if (i == this._selectfactories.Count - 1)
                //    lastcol = colname;
                //else
                 lastcol = colname;
                 //if (Convert.ToInt32(view.GetRowCellValue(e.RowHandle, view.Columns[colname])) == 0)
                 //{
                 //    iszero = true;
                 //    break;
                 //}
                curtotal = curtotal + Convert.ToInt32(view.GetRowCellValue(e.RowHandle, view.Columns[colname]));
            }         

             string s = "";
             //if (iszero)
             //{
             //    s = string.Format("Assign quantity must greate than 0 in row {0}!",e.RowHandle);
             //    e.Valid = false;
             //}
             //else
             //{

                 int mtotal = Convert.ToInt32(view.GetRowCellValue(e.RowHandle, view.Columns["TotalQty"]));
                 if (curtotal != mtotal)
                 {
                     e.Valid = false;
                     s = string.Format("Apply qty must equal to: {0} ", mtotal);
                 }
           //  }

             if (!e.Valid)
             {
                 e.ErrorText = s;
                 view.SetColumnError(view.Columns[lastcol], s);
             }
          
        }

        private void gdvAssign_InvalidRowException(object sender, InvalidRowExceptionEventArgs e)
        {
            e.ExceptionMode = DevExpress.XtraEditors.Controls.ExceptionMode.NoAction;
        }

        //保存數據
        private void sbtnSave_Click(object sender, EventArgs e)
        {

            if (this._needadds.Count == 0 && this._needremoves.Count == 0
                 && this._selectfactories.Count == 1) //無需做任何更新
            {
                this.DialogResult = DialogResult.Cancel;
            }
            else
            {

                if (HaveErrors())
                {
                    this.DialogResult = DialogResult.None;
                    return;
                }


                //有改變厰區則需要全部刪除后重新插入
                if (this._needremoves.Count > 0 || _needadds.Count > 0)
                {
                    if (this._originalfactorys.Count > 0) //非第一次分配
                        this.DeleteAll();

                    this.InsertAll();
                    UpdateChangeInfo();
                }

                //只需要更新當前分配數量
                if (this._needremoves.Count == 0 && _needadds.Count == 0)
                {

                    this.UpdateAll();
                }



                this._dcrwo.SubmitChanges();
            }

        }

        private void DeleteAll()
        {
            foreach (RoundWorkOrderII rwo2 in this._currwo.RoundWorkOrderIIs)
            {
                rwo2.RoundWorkOrderDetailIIs.Clear();
            
            }

            this._currwo.RoundWorkOrderIIs.Clear();
            this._dcrwo.SubmitChanges();
        
        }

        private void InsertAll()
        {
            // insert to Master
            for (int k = 0; k < this._selectfactories.Count; k++)
            {
                RoundWorkOrderII rwo2 = new RoundWorkOrderII();
                rwo2.RoundWorkOrder = this._currwo;

                rwo2.Company = _currwo.Company;
                rwo2.SalesOrderNo = _currwo.SalesOrderNo;
                rwo2.WorkOrderNo = _currwo.WorkOrderNo;
                rwo2.ColorCode = _currwo.ColorCode;
                rwo2.RoundNo = _currwo.RoundNo;
                rwo2.SubFactory = _selectfactories[k].ToString();
                rwo2.SalesOrderLine = _currwo.SalesOrderLine;
                rwo2.RoundTotal = _currwo.RoundTotal;
                rwo2.RWOCreateDate = DateTime.Now;
                rwo2.WOReviseDate = DateTime.Now;
                rwo2.AmendDate = DateTime.Now;
                rwo2.Version = 0;
                rwo2.RWOVersion = _currwo.Version;
                rwo2.DeliveryDate = _currwo.DeliveryDate;
                rwo2.CycleTime = _currwo.CycleTime;
                rwo2.HeaderConfirm = _currwo.HeaderConfirm;
                rwo2.HeaderConfirmDate = _currwo.HeaderConfirmDate;
                _currwo.RoundWorkOrderIIs.Add(rwo2);
                //插入子記錄
                foreach (var rwoDetail in _currwo.RoundWorkOrderDetails)
                {

                    //rwo2.RoundWorkOrderDetailIIs.Add(

                    RoundWorkOrderDetailII rwoDetail2 = new RoundWorkOrderDetailII();

                    rwoDetail2.RoundWorkOrderII = rwo2;

                    rwoDetail2.Company = rwoDetail.Company;
                    rwoDetail2.SalesOrderNo = rwoDetail.SalesOrderNo;
                    rwoDetail2.WorkOrderNo = rwoDetail.WorkOrderNo;
                    rwoDetail2.ColorCode = rwoDetail.ColorCode;
                    rwoDetail2.RoundNo = rwoDetail.RoundNo;

                    rwoDetail2.Cup = rwoDetail.Cup;
                    rwoDetail2.Size = rwoDetail.Size;
                    rwoDetail2.SalesOrderLine = rwoDetail.SalesOrderLine;
                    //rwo2.AnotherQtyChanging = true;

                    rwoDetail2.SampleQty = rwoDetail.SampleQty;
                    //rwo2.AnotherQtyChanging = false;
                    rwoDetail2.Ratio = rwoDetail.Ratio;
                    rwoDetail2.CustSize = rwoDetail.CustSize;

                    rwoDetail2.SubFactory = _selectfactories[k].ToString();
                    DataRow[] findrows = this._dboperation.Select("Cup='" + rwoDetail.Cup + "' and Size='" + rwoDetail.Size + "'");
                    if (findrows != null && findrows.Length > 0)
                        rwoDetail2.BulkQty = (int)findrows[0][rwoDetail2.SubFactory];

                    rwo2.RoundWorkOrderDetailIIs.Add(rwoDetail2);

                }


            }



       
        }

        private void UpdateAll()
        {

            if (this._dboperation.GetChanges()==null) //||this._dboperation.GetChanges().Rows.Count == 0)
                return;

            //更新detailii中數量
            foreach (var rwo2 in _currwo.RoundWorkOrderIIs)
            {
                
               foreach (var rwodetail2 in rwo2.RoundWorkOrderDetailIIs)
               {
                   DataRow[] findrows = this._dboperation.Select("Cup='" + rwodetail2.Cup +
                          "' and Size='" + rwodetail2.Size + "' and Roundno='" + rwodetail2.RoundNo + "'");

                   if (findrows != null && findrows.Length > 0)
                   {
                       rwodetail2.BulkQty = (int?)findrows[0][rwodetail2.SubFactory];
                   }
               }                                                     

            }

            UpdateChangeInfo();

        }

        private void UpdateChangeInfo()
        {
            if (this._currwo != null)
            {
                _currwo.AppliedUser = SysParamHelper.Instance.UserID;
                _currwo.AppliedDate = DateTime.Now;
            
            }
        }

        private void gdvAssign_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            //e.TotalValue = "10000"; //CalculateTotal();
            //GridColumn gcsummary =this.gdvAssign.Columns[gdvAssign.Columns.Count - 1];
            //GridColumn gctotal = this.gdvAssign.Columns["TotalQty"];

            //gcsummary.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;

            //if (((DevExpress.XtraGrid.GridSummaryItem)e.Item).FieldName.CompareTo(gcsummary.FieldName) == 0)
            //{
            //    int TotalQty = Convert.ToInt32(gctotal.SummaryItem.SummaryValue);
            //    e.TotalValue = TotalQty;
               
            //}

        }

    }
}