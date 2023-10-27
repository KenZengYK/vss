using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using PH.Platform.BO;

namespace PH.MIDc.UI
{
    public partial class FGStyleHSCodeDetailForm : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public FGStyleHSCodeDetailForm()
        {
            InitializeComponent();
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            this.customMaterialDeclare_FGListForm1.objListGridView.OptionsBehavior.Editable = this.IsEditting;
        }

        protected override void SaveCurrent()
        {
            this.customMaterialDeclare_FGListForm1.objListGridView.PostEditor();
            this.customMaterialDeclare_FGListForm1.db.SubmitChanges();
            base.SaveCurrent();
        }

        public override void DataBind()
        {
            //綁定成份信息
            MIDcDataContext db = ContextBuilder.CreateContext<MIDcDataContext>();
            this.DataContext = db;
            List<FGComposition> lists = new List<FGComposition>();

            //select top 10 * from [AS400DB].dbo.qtp60 where styl60='106212AMB      '
            string Sql = string.Format("select STYL60 as StyleNo, CMCD60 as Code, CMPP60 as Value from [AS400DB].dbo.QTP60 where styl60='{0}'", this.txtStyleNo.Text);
            DataTable dt = db.ExecuteDataTable(Sql, "");

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                lists.Add(new FGComposition
                {
                    StyleNo = dt.Rows[i]["StyleNo"].ToString(),
                    Code = dt.Rows[i]["Code"].ToString(),
                    Value = string.IsNullOrEmpty(dt.Rows[i]["Value"].ToString()) ? 0 : Convert.ToDecimal(dt.Rows[i]["Value"])
                });
            }

            this.gridComposition.DataSource = lists;

            //綁定海關申報信息
            this.customMaterialDeclare_FGListForm1.StyleNo = this.txtStyleNo.Text;
            this.customMaterialDeclare_FGListForm1.HSCode = this.txtHSCode.Text;
            //this.customMaterialDeclare_FGListForm1.DataSource = db.CustomMaterialDeclare_FGs
            //                 .Where(p => p.StyleNo == this.txtStyleNo.Text && p.MidcHSCode == this.txtHSCode.Text);

            base.DataBind();
        }

    }
}
