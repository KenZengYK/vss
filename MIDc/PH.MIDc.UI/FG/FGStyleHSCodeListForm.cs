using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.MIDc.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.MIDc.UI
{
    public partial class FGStyleHSCodeListForm : ListForm
    {
        public FGStyleHSCodeListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {

            //用于取一段時間之內款號
            //實現一個功能，可以將新款，即沒有海關申報要素的款生成資料

            //            select a.TREF40 as StyleNo, a.TLIN40 as HSCode, b.MaterialName as HSNameTW, b.MaterialNameCN as HSNameCN, b.MaterialNameEN as HSNameEN
            //from [AS400DB].dbo.INP40 as a
            //left join [PH.MIDc].dbo.CustomMaterial as b on a.TLIN40 = b.MIDcHSCode
            //left join [AS400DB].dbo.INP35 as c on c.CONO35 = a.CONO40 and c.PNUM35 = a.TREF40
            //where a.USGC40 = 'H' and c.ESDT35 >= 11800501 and c.ESDT35 <= 11800531


            //MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
            //this.DataContext = db;

            //List<FGStyleHSCode> lists = new List<FGStyleHSCode>();
            //string Sql = "select TREF40 as StyleNo, TLIN40 as HSCode from [AS400DB].dbo.INP40 where USGC40='H'";

            //string Sql = "select a.TREF40 as StyleNo, a.TLIN40 as HSCode, b.MaterialName as HSNameTW, b.MaterialNameCN as HSNameCN, b.MaterialNameEN as HSNameEN " +
            //             "from [AS400DB].dbo.INP40 as a " +
            //             "left join [PH.MIDc].dbo.CustomMaterial as b on a.TLIN40 = b.MIDcHSCode " +
            //             "where a.USGC40 = 'H'";
            //DataTable dt = db.ExecuteDataTable(Sql, "");
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    lists.Add(new FGStyleHSCode
            //    {
            //        StyleNo = dt.Rows[i]["StyleNo"].ToString(),
            //        HSCode = dt.Rows[i]["HSCode"].ToString(),
            //        HSNameTW = dt.Rows[i]["HSNameTW"].ToString(),
            //        HSNameCN = dt.Rows[i]["HSNameCN"].ToString(),
            //        HSNameEN = dt.Rows[i]["HSNameEN"].ToString()
            //    });
            //}



            MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
            db.CommandTimeout = 8000;
            this.DataContext = db;

            string SqlStr = string.Format("exec sp_GetFGStyleHSCodeList '{0}'", this.barBtnShowFilter.EditValue.ToString() == "顯示所有款" ? "0" : "1");
            DataTable dt = db.ExecuteDataTable(SqlStr, "dtFGStyleHSCodeList");
            var lists = dt.AsEnumerable().Select(dr => new FGStyleHSCode
            {
                StyleNo = dr["StyleNo"].ToString(),
                HSCode = dr["HSCode"].ToString(),
                HSNameTW = dr["HSNameTW"].ToString(),
                HSNameCN = dr["HSNameCN"].ToString(),
                HSNameEN = dr["HSNameEN"].ToString()
            });

            this.DataSource = lists;
            this.EditorTypeName = typeof(FGStyleHSCodeDetailForm).FullName;

            base.DataBind();

            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }

        private void barBtnImportAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                FGStyleHSCodeHelper.ImportAllStyleNoCustomDeclare(this.DataContext as MIDcDataContext);
            }
            catch (Exception ex)
            {
                MessageBox.Show("生成失敗,原因為：" + ex.Message, "提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void barBtnShowFilter_EditValueChanged(object sender, EventArgs e)
        {
            try
            {
                this.Cursor = Cursors.WaitCursor;
                this.DataBind();
                this.InitFormNavigator();
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

    }
}
