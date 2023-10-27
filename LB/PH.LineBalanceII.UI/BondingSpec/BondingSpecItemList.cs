using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LineBalanceII.BO;
using PH.Platform.UI.CS.UI2;

namespace PH.LineBalanceII.UI.BondingSpect
{
    public partial class BondingSpecItemList : ListForm
    {
        public BondingSpecItemList()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            //this.EditorTypeName = typeof(BondingSpecItemDetail).FullName;
            base.DataBind();

        }
    }
}
