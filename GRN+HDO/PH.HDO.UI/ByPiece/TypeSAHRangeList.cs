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
    public partial class TypeSAHRangeList : ListForm
    {
        public TypeSAHRangeList()
        {
            InitializeComponent();
            
        }

        public int SAHType { get; set; }
        public int Flag { get; set; }
        public override void DataBind()
        {
            //PH.PHGDB2.BO.PHGDB2DataContext _ctx = PH.Platform.BO.ContextBuilder.CreateContext<PH.PHGDB2.BO.PHGDB2DataContext>();
            //this.BindingSource.DataSource = _ctx.TypeSAHRanges;           
            TypeSAHRange obj = this.BindingSource.Current as TypeSAHRange;
            //SAHType = obj == null ? 0 : (obj.Type ?? 0);
            this.EditorTypeName = typeof(TypeSAHRangeDetail).FullName;
            base.DataBind();        
            
        }
    
    }
}
