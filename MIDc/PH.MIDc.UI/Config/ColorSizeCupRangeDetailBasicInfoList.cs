using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.Platform.UI.CS.UI2;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    public partial class ColorSizeCupRangeDetailBasicInfoList : PH.Platform.UI.CS.UI2.ListForm
    {
        public ColorSizeCupRangeDetailBasicInfoList()
        {
            InitializeComponent();
        }

        private string _category;
        public string Category
        {
            get { return this._category; }
            set
            {
                this._category = value;
                this.colCategory.Visible = false;
                switch (this._category)
                {
                    case "ColorRange":
                        this.colChildDataCode.Caption = "Color";
                        break;
                    case "Size":
                        this.colChildDataCode.Caption = "Size";
                        break;
                    case "Cup":
                        this.colChildDataCode.Caption = "Cup";
                        break;
                    default:
                        break;
                }
            }
        }

        public override void DataBind()
        {
            base.DataBind();
            this.AllowGridEdit = true;
            this.AllowAddRow = true;
            this.RowChangeAutoSave = true;
        }
    }
}
