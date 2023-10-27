using System;
using System.Collections.Generic;
using System.Collections;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Drawing;
using DevExpress.Utils;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Blending;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.LookAndFeel;
using DevExpress.XtraExport;
using DevExpress.XtraPrinting;

namespace PH.MR.UI
{
    /// <summary>
    /// 原来从 PH.MR.UI.Grid转过来的一些方法
    /// </summary>
    public class Commons
    {
        public static RepositoryItemButtonEdit SetGridColumnButtonEdit(string columnName, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bv)
        {
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col;
            RepositoryItemButtonEdit ribe;

            ribe = new RepositoryItemButtonEdit();
            ribe.AutoHeight = false;
            ribe.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            //ribe.Name = "repositoryItemButtonEdit";
            //ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ButtonClick);
            col = GetGridColumnByFieldName(columnName, bv);
            if (col != null) col.ColumnEdit = ribe;
            return ribe;
        }
        
        public  static DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn GetGridColumnByFieldName(string FieldName, DevExpress.XtraGrid.Views.BandedGrid.BandedGridView gv)
        {
            return gv.Columns.ColumnByFieldName(FieldName);
        }

        public static DevExpress.XtraGrid.Columns.GridColumn GetGridColumnByFieldName(string FieldName, DevExpress.XtraGrid.Views.Grid.GridView gv)
        {
            return gv.Columns.ColumnByFieldName(FieldName);
        }
                
        public static RepositoryItemMemoEdit SetGridColumnMemoEdit(string columnName, GridView gv)
        {
            DevExpress.XtraGrid.Columns.GridColumn col;
            RepositoryItemMemoEdit rime;

            rime = new RepositoryItemMemoEdit();
            rime.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            rime.ScrollBars = ScrollBars.None;

            col = GetGridColumnByFieldName(columnName, gv);
            if (col != null) col.ColumnEdit = rime;
            return rime;
        }

        public static RepositoryItemMemoEdit SetGridColumnMemoEdit(string columnName, BandedGridView bv)
        {
            BandedGridColumn col;
            RepositoryItemMemoEdit rime;

            rime = new RepositoryItemMemoEdit();
            rime.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            rime.ScrollBars = ScrollBars.None;

            col = GetGridColumnByFieldName(columnName, bv);
            if (col != null) col.ColumnEdit = rime;
            return rime;
        }

        public static RepositoryItemMemoEdit SetGridColumnMemoEdit(DevExpress.XtraGrid.Columns.GridColumn col)
        {
            RepositoryItemMemoEdit rime;

            rime = new RepositoryItemMemoEdit();
            rime.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            rime.ScrollBars = ScrollBars.None;
            //rime.Appearance.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

            if (col != null) col.ColumnEdit = rime;
            return rime;
        }

        public static RepositoryItemMemoEdit SetGridColumnMemoEdit(BandedGridColumn col)
        {
            RepositoryItemMemoEdit rime;

            rime = new RepositoryItemMemoEdit();
            rime.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            rime.ScrollBars = ScrollBars.None;

            if (col != null) col.ColumnEdit = rime;
            return rime;
        }

        //public static string GetUserCodeDept(string userCode)
        //{
        //    string returnvalue = "";

        //    PH.Platform.Misc.BO.Misc_FacotryList myobj = new PH.Platform.Misc.BO.Misc_FacotryList();

        //    var list = myobj.GetMisc_OrganizationByUserID(userCode);

        //    foreach (PH.Platform.Misc.BO.Misc_Organization obj in list)
        //    {
        //        if (obj.OrgType == "Department")
        //        {
        //            returnvalue = obj.OrgCode;
        //            break;
        //        }
        //    }

            
        //    return returnvalue;
        //}

        //public static string GetUserCodeDept(string usercode, string Orgtype)
        //{
        //    string DeptCode = "";

        //    PH.Platform.Misc.BO.PHPlatformMiscDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
        //    string sqlstr = context.Connection.ConnectionString;

        //    SqlDataAdapter da = new SqlDataAdapter();
        //    SqlConnection cn = new SqlConnection(sqlstr);
        //    DataSet ds = new DataSet();

        //    da.SelectCommand = new SqlCommand("Misc_SP_GetUserDeptInfo", cn);
        //    da.SelectCommand.CommandType = CommandType.StoredProcedure;
        //    da.SelectCommand.Parameters.Add(new SqlParameter("@UserID", SqlDbType.VarChar, 50));
        //    da.SelectCommand.Parameters.Add(new SqlParameter("@Orgtype", SqlDbType.VarChar, 50));
        //    da.SelectCommand.Parameters["@UserID"].Value = usercode;
        //    da.SelectCommand.Parameters["@Orgtype"].Value = Orgtype;
        //    da.SelectCommand.CommandTimeout = 8000;
        //    cn.Open();
        //    da.Fill(ds);
        //    cn.Close();
        //    cn.Dispose();
        //    foreach (DataRow dr in ds.Tables[0].Rows)
        //    {
        //        DeptCode= dr["OrgCode"].ToString();
        //        break;
        //    }
        //    return DeptCode;


            
        //}
    }


}
