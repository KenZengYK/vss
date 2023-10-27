using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    public class EditorStatusManager
    {
        //啟用和禁用控件
        public static void EnableCtrl(Control cl, bool IsEnable)
        {
            if (cl.Controls.Count > 0)
            {
                for (int i = 0; i < cl.Controls.Count; i++)
                {
                    if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.SimpleButton))
                    {
                        DevExpress.XtraEditors.SimpleButton currCtrl = cl.Controls[i] as DevExpress.XtraEditors.SimpleButton;
                        if (currCtrl.Text == "Show Ratio") continue;
                        currCtrl.Enabled = IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.SpinEdit))
                    {
                        DevExpress.XtraEditors.SpinEdit SpinEditCtrl = cl.Controls[i] as DevExpress.XtraEditors.SpinEdit;
                        SpinEditCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.DateEdit))
                    {
                        DevExpress.XtraEditors.DateEdit DateEditCtrl = cl.Controls[i] as DevExpress.XtraEditors.DateEdit;
                        DateEditCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraGrid.GridControl))
                    {
                        DevExpress.XtraGrid.GridControl Gview = cl.Controls[i] as DevExpress.XtraGrid.GridControl;
                        for (int k = 0; k < Gview.Views.Count; k++)
                        {
                            DevExpress.XtraGrid.Views.BandedGrid.BandedGridView TGview = Gview.Views[k] as DevExpress.XtraGrid.Views.BandedGrid.BandedGridView;
                            if (TGview == null) continue;
                            TGview.OptionsBehavior.Editable = IsEnable;
                        }
                    }
                    EnableCtrl(cl.Controls[i], IsEnable);
                }
            }
        }


        //啟用和禁用控件
        public static void EnableCtrl(Control cl, bool IsEnable, PH.MIDc .BO .MaterialPriceBoRightForCurrUser MPBORightForCurrUser)
        {
            if (cl.Controls.Count > 0)
            {
                for (int i = 0; i < cl.Controls.Count; i++)
                {
                    if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.SimpleButton))
                    {
                        DevExpress.XtraEditors.SimpleButton currCtrl = cl.Controls[i] as DevExpress.XtraEditors.SimpleButton;
                        if (currCtrl.Text == "Show Ratio") continue; 
                        if ((currCtrl.Name == "sBtnDel" && !MPBORightForCurrUser.AllowDel)
                            || (currCtrl.Name == "sBtnAdd" && !MPBORightForCurrUser.AllowAdd))
                        {
                            currCtrl.Enabled = false;
                            continue;
                        } 
                        currCtrl.Enabled = IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.SpinEdit))
                    {
                        DevExpress.XtraEditors.SpinEdit SpinEditCtrl = cl.Controls[i] as DevExpress.XtraEditors.SpinEdit;
                        SpinEditCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraEditors.DateEdit))
                    {
                        DevExpress.XtraEditors.DateEdit DateEditCtrl = cl.Controls[i] as DevExpress.XtraEditors.DateEdit;
                        DateEditCtrl.Properties.ReadOnly = !IsEnable;
                    }
                    else if (cl.Controls[i].GetType() == typeof(DevExpress.XtraGrid.GridControl))
                    {
                        DevExpress.XtraGrid.GridControl Gview = cl.Controls[i] as DevExpress.XtraGrid.GridControl;
                        for (int k = 0; k < Gview.Views.Count; k++)
                        {
                            DevExpress.XtraGrid.Views.BandedGrid.BandedGridView TGview = Gview.Views[k] as DevExpress.XtraGrid.Views.BandedGrid.BandedGridView;
                            if (TGview == null) continue;
                            TGview.OptionsBehavior.Editable = IsEnable;
                        }
                    }
                    EnableCtrl(cl.Controls[i], IsEnable, MPBORightForCurrUser);
                }
            }
        }
    }


    /// <summary>
    /// 单价格式化输出
    /// </summary>
    public static class MaterialPrceFormat
    {
        public static string PriceFormatStr = "###,###,##0.#####";
        public static DevExpress.Utils.FormatType FormatType = DevExpress.Utils.FormatType.Numeric;
    }
}
