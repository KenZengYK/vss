using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;
using PH.PHGDB2.BO;

namespace PH.HDO.UI.ByPiece
{
    public partial class TypeSAHRangeDetail : DetailForm
    {
        public TypeSAHRangeDetail()
        {
            InitializeComponent();
        }

        protected override void SaveCurrent()
        {
            TypeSAHRange obj = this.BindingSource.Current as TypeSAHRange;
            obj.Type = (this.ListForm as TypeSAHRangeList).SAHType;
            obj.Flag = (this.ListForm as TypeSAHRangeList).Flag;
            base.SaveCurrent();
        }

        public override void DataBind()
        {
            base.DataBind();
        }

    }
}
