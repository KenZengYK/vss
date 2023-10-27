using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Linq;
using System.Data.Linq;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;
using PH.Platform.Lang.BO;
using PH.Platform.BO;

namespace PH.FabricInspection.UI.Main
{
    public partial class SetGridViewHeaderBackColorForm : DevExpress.XtraEditors.XtraForm
    {
        string _Flag;
        string _FieldName;
        FabricInspectionDataContext db;
        LangDataContext LangDB;

        public SetGridViewHeaderBackColorForm(FabricInspectionDataContext ADB, string AFlag, string AFieldName, string AFocusedColumn,
       string ASideProgramID, string AFileID, string AFormName)
        {
            InitializeComponent();
            db = ADB;
            _Flag = AFlag;
            _FieldName = AFieldName;

            txtFlag.Text = AFlag;
            txtColumnName.Text = AFocusedColumn;
            txtFieldName.Text = AFieldName;

            LangDB = ContextBuilder.CreateContext<LangDataContext>();
            this.gridControl1.DataSource = LangDB.Lang_Items.Where(p => p.SideProgramID == ASideProgramID && p.FileID == AFileID &&
                p.FormName == AFormName && p.ControlName == AFocusedColumn);//.OrderByDescending(p => p.LangID);
        }

        private void btnColor1_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                            "           where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0) " +
                            "  update GridViewHeaderBackColor set Color1 = 1, Color2 = null, Color3 = null, IsBand = null " +
                            "  where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0 " +
                            "else " +
                            "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                            "  values('{0}', '{1}', 1, null, null, null)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }

        private void btnColor2_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                            "           where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0) " +
                            "  update GridViewHeaderBackColor set Color1 = null, Color2 = 1, Color3 = null, IsBand = null " +
                            "  where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0 " +
                            "else " +
                            "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                            "  values('{0}', '{1}', null, 1,  null, null)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }

        private void btnColor3_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                            "           where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0) " +
                            "  update GridViewHeaderBackColor set Color1 = null, Color2 = null, Color3 = 1, IsBand = null " +
                            "  where Flag = '{0}' and FieldName = '{1}' and isnull(IsBand, 0) = 0 " +
                            "else " +
                            "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                            "  values('{0}', '{1}', null, null,  1, null)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }

        private void gridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            LangDB.SubmitChanges();
        }


    }
}