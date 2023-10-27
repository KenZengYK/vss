using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.UI.CS.UI2;

namespace PH.HDO.UI.ByPiece
{
    public partial class TypeCustList : ListForm
    {
        public TypeCustList()
        {
            InitializeComponent();
        }

        public int Flag { get; set; }
        public string  IssueName { get; set; }
        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(TypeCustDetail).FullName;
        }
    }
}
