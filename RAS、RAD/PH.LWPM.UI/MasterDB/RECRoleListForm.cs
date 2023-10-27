using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.ExtendLibrary;

namespace PH.LWPM.UI.MasterDB
{
    public partial class RECRoleListForm : BaseCodeListForm
    {
        public RECRoleListForm()
        {
            InitializeComponent();
        }

        public override void DataBind()
        {
            base.DataBind();
            this.EditorTypeName = typeof(RECRoleEditForm).FullName;
        }

        public override void OnClickPrint()
        {
            //base.OnClickPrint();
            RECRoleReport rtpRECRole = new RECRoleReport(this.objListGridView.FilteredList());
            rtpRECRole.ShowPreview();
        }

    }
}
