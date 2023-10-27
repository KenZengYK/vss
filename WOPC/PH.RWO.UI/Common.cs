using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using DevExpress.XtraGrid.Views.BandedGrid;

namespace PH.RWO.UI
{
    //用于处理与Banded Grid View相关的通用操作, 由David增加 2022-11-23
    public class BandedGridViewHelper
    {
        static Color colorGray = Color.FromArgb(217, 217, 217);
        static Color colorYellow = Color.FromArgb(235, 241, 222);
        static Color colorBlue = Color.FromArgb(220, 230, 241);

        public static void SetGridViewBackColor(BandedGridView ABandedGridView)
        {
            SetGridViewBandBackColor(ABandedGridView.Bands);

            for (int i = 0; i < ABandedGridView.Columns.Count; i++)
            {
                if (ABandedGridView.Columns[i].OwnerBand != null && ABandedGridView.Columns[i].OwnerBand.Tag != null)
                {
                    string sTag = Convert.ToString(ABandedGridView.Columns[i].OwnerBand.Tag);
                    if (sTag == "0") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorGray;
                    else if (sTag == "1") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorYellow;
                    else if (sTag == "2") ABandedGridView.Columns[i].AppearanceHeader.BackColor = colorBlue;
                }
            }
        }

        static void SetGridViewBandBackColor(GridBandCollection AGridBands)
        {
            for (int i = 0; i < AGridBands.Count; i++)
            {
                if (AGridBands[i].Tag != null)
                {
                    string sTag = Convert.ToString(AGridBands[i].Tag);
                    if (sTag == "0") AGridBands[i].AppearanceHeader.BackColor = colorGray;
                    else if (sTag == "1") AGridBands[i].AppearanceHeader.BackColor = colorYellow;
                    else if (sTag == "2") AGridBands[i].AppearanceHeader.BackColor = colorBlue;
                }

                if (AGridBands[i].Children.Count > 0)
                {
                    SetGridViewBandBackColor(AGridBands[i].Children);
                }
            }

        }
    }

}
