using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.RWO.BO;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;
using DevExpress.XtraEditors;
using DevExpress.XtraGrid.Views.Grid;

namespace PH.RWO.UI.Amend
{
    public partial class AmendWoDetail : DetailForm
    {
        public AmendWoDetail()
        {
            InitializeComponent();
        }

        bool _firstload = false;
        public override void DataBind()
        {
            _firstload = true;
            base.DataBind();
            BindWO();
            AmendDetail amd = this.BindingSource.Current as AmendDetail;
            if (amd != null)
            {
                edtFac.Text = amd.Factory;
                edtProj.Text = amd.Project;
                edtStyle.Text = amd.PhStyleNo;
                edtCStyle.Text = amd.CustStyle;
                edtExDate.Text = amd.ExitDate;            
            }          
             _firstload = false;
        }


        public override void EditCurrent()
        {
            base.EditCurrent();
           
            edtFac.Enabled = false;
            edtProj.Enabled = false;
            edtStyle.Enabled = false;
            edtCStyle.Enabled = false;
            edtExDate.Enabled = false;
            if (IsNew)
            {
                edtFac.Text = "";
                edtProj.Text = "";
                edtStyle.Text = "";
                edtCStyle.Text = "";
                edtExDate.Text = "";
            }
        }

        protected override void SaveCurrent()
            //edtProj.Text
        {
            //if (string.IsNullOrEmpty(edtFac.Text) || string.IsNullOrEmpty(edtProj.Text))
            //{
            //    MessageBox.Show("制單資料錄入錯誤,請檢查后錄入!");
            //    return;
            //}

            if (CheckWO())
                base.SaveCurrent();
            else
            {
                MessageBox.Show("制單資料不存在,請檢查后錄入!");
                return;
            }
            _firstload = false;
        }

        BindingSource bs = new BindingSource();
        private void BindWO()
        {
            RWOSOPCDataContext RwoCtx = this.DataContext as RWOSOPCDataContext;
            DataTable dt = RwoCtx.ExecuteDataTable("select factory,projectno,WorkOrderNo,StyleNo,CustomerStyleNo,exitdate from dbo.vw_searchwo", "tbwo");
            DataRow nrow = dt.NewRow();
            nrow["factory"] = null;
            nrow["projectno"] = null;
            nrow["WorkOrderNo"] = null;
            nrow["StyleNo"] = null;
            nrow["CustomerStyleNo"] = null;
            nrow["exitdate"] = DBNull.Value;

            dt.Rows.Add(nrow);

            bs.DataSource = dt;
            bs.Sort = "factory,projectno";
            this.glueWO.Properties.DisplayMember = "WorkOrderNo";
            glueWO.Properties.ValueMember = "WorkOrderNo";
            glueWO.Properties.DataSource = bs;

            this.glueWO.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.True;
            this.glueWO.Properties.View.BestFitColumns();
            this.glueWO.Properties.ShowFooter = false;
            this.glueWO.Properties.View.OptionsView.ShowAutoFilterRow = true; //显示不显示grid上第一个空行,也是用于检索的应用
            this.glueWO.Properties.AutoComplete = false;
            this.glueWO.Properties.ImmediatePopup = true;

            //this.glueProject.Properties.poPopupFilterMode = DevExpress.XtraEditors.PopupFilterMode.Contains;
            this.glueWO.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
        }

        private void glueWO_EditValueChanged(object sender, EventArgs e)
        {
            if (_firstload)
                return;

            GridLookUpEdit edit = sender as GridLookUpEdit;
            object editValue = edit.EditValue;
            if (editValue != null)
            {
                GridView gv =edit.Properties.View ;
                DataRow row = gv.GetDataRow(gv.FocusedRowHandle);   //getGetRowByKeyValue(editValue) as DataRowView).Row;
                if (row != null)
                {
                    edtFac.Text = row["factory"].ToString();
                    edtProj.Text = row["projectno"].ToString();
                    edtStyle.Text = row["StyleNo"].ToString();
                    edtCStyle.Text = row["CustomerStyleNo"].ToString();
                    edtExDate.Text = row["exitdate"].ToString();
                }
            }
        }

        private void glueWO_KeyDown(object sender, KeyEventArgs e)
        {
        }

        private void glueWO_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar==(char)13)
           {

               //edtFac.Text = "";
               //edtProj.Text = "";
               //edtStyle.Text = "";
               //edtCStyle.Text = "";
               //edtExDate.Text = "";


           }
        }

        //private void glueWO_Closed(object sender, DevExpress.XtraEditors.Controls.ClosedEventArgs e)
        //{
        //    edtFac.Text = "";
        //    edtProj.Text = "";
        //    edtStyle.Text = "";
        //    edtCStyle.Text = "";
        //    edtExDate.Text = "";

        //    GridLookUpEdit edit = sender as GridLookUpEdit;
        //    int idx = bs.Find("WorkOrderNo", edit.Text);
        //    if (idx != -1)
        //    {
        //        bs.Position = idx;
        //        DataRowView row = bs.Current as DataRowView;
        //        edtFac.Text = row["factory"].ToString();
        //        edtProj.Text = row["projectno"].ToString();
        //        edtStyle.Text = row["StyleNo"].ToString();
        //        edtCStyle.Text = row["CustomerStyleNo"].ToString();
        //        edtExDate.Text = row["exitdate"].ToString();

        //    }

        //    //var data = bindingSource1.Cast<DataModelType>().Single(r => r.ID1 == id1 && r.ID2 == id2);
        //    //bindingSource1.Position = bindingSource1.IndexOf(data);
        //}

        private bool CheckWO()
        {
            int idx = bs.Find("WorkOrderNo", glueWO.Text);
            if (idx == -1)
                return false;
            else
                return true;
        }

    }
}
