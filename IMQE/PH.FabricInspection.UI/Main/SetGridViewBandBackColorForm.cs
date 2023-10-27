using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Main
{
    public partial class SetGridViewBandBackColorForm : DevExpress.XtraEditors.XtraForm
    {
        string _Flag;
        string _FieldName;
        FabricInspectionDataContext db;
        public SetGridViewBandBackColorForm(FabricInspectionDataContext ADB, string AFlag, string AFocusedBand)
        {
            InitializeComponent();
            db = ADB;
            _Flag = AFlag;

            txtFlag.Text = AFlag;
            _FieldName = AFocusedBand;
            txtBandName.Text = AFocusedBand;
        }

        private void btnColor1_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                            "           where Flag = '{0}' and FieldName = '{1}' and IsBand = 1) " +
                            "  update GridViewHeaderBackColor set Color1 = 1, Color2 = null, Color3 = null " +
                            "  where Flag = '{0}' and FieldName = '{1}' and IsBand = 1 " +
                            "else " +
                            "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                            "  values('{0}', '{1}', 1, null, null, 1)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }

        private void btnColor2_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                            "           where Flag = '{0}' and FieldName = '{1}' and IsBand = 1) " +
                            "  update GridViewHeaderBackColor set Color1 = null, Color2 = 1, Color3 = null " +
                            "  where Flag = '{0}' and FieldName = '{1}' and IsBand = 1 " +
                            "else " +
                            "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                            "  values('{0}', '{1}', null, 1, null, 1)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }

        private void btnColor3_Click(object sender, EventArgs e)
        {
            string SqlStr = "if exists (select 1 from GridViewHeaderBackColor " +
                                     "           where Flag = '{0}' and FieldName = '{1}' and IsBand = 1) " +
                                     "  update GridViewHeaderBackColor set Color1 = null, Color2 = null, Color3 = 1 " +
                                     "  where Flag = '{0}' and FieldName = '{1}' and IsBand = 1 " +
                                     "else " +
                                     "  insert GridViewHeaderBackColor(Flag, FieldName, Color1, Color2, Color3, IsBand)   " +
                                     "  values('{0}', '{1}', null, null, 1, 1)";
            SqlStr = string.Format(SqlStr, _Flag, _FieldName);
            db.ExecuteCommand(SqlStr);
            this.DialogResult = DialogResult.OK;
        }
    }
}