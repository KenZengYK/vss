using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.SPC.BO;

namespace PH.SPC.UI
{
    public partial class StyleSizeDetailForm : PH.Platform.UI.CS.UI2.DetailForm
    {
        public StyleSizeDetailForm()
        {
            InitializeComponent();
        }

        public override void EditCurrent()
        {
            base.EditCurrent();
            txtSampleOrderNoShow.Properties.ReadOnly =
            txtChildSampleOrderSuffixShow.Properties.ReadOnly =
            txtPHStyleNoShow.Properties.ReadOnly =
            txtSampleTypeShow.Properties.ReadOnly =
            txtSTVersionShow.Properties.ReadOnly = true;

            if (this.IsNew)
            {
                StyleSize obj = this.BindingSource.Current as PH.SPC.BO.StyleSize;
                obj.SampleOrderID = obj.StyleSortEdition.SampleOrderID;
                obj.StyleID = obj.StyleSortEdition.StyleID;
                obj.SortID = obj.StyleSortEdition.SortID;
                obj.EditionID = obj.StyleSortEdition.EditionID;
            }
        }

        protected override void SaveCurrent()
        {
            base.SaveCurrent();
            StyleSize obj = this.BindingSource.Current as StyleSize;
            if (obj != null)
            {
                obj.StyleSortEdition.StyleSort.Style.SampleOrder.ReCalculateTotalInformation();
            }
        }


    }
}
