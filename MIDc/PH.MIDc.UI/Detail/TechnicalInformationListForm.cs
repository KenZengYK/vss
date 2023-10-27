using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MIDc.BO;
using DevExpress.XtraEditors.Controls;

namespace PH.MIDc.UI
{
    public partial class TechnicalInformationListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public TechnicalInformationListForm()
        {
            InitializeComponent();
            this.RowChangeAutoSave = false;

            this.EditorTypeName = typeof(TechnicalInformationDetailForm).FullName;
        }

        private void TechnicalInformationListForm_Load(object sender, EventArgs e)
        {
            this.AllowGridEdit = true;
            //this.AllowKeyPress = true;
            
        }

        public void BandData(Spec _thisSpec, MIDcDataContext datacontext)
        {
            this.DataContext = datacontext;
            this.BindingSource.DataSource = from c in datacontext.TechnicalInformations
                                               where c.SuppRef == _thisSpec.SuppRef
                                                   && c.Color == _thisSpec.Color
                                                   && c.ColorCategory == _thisSpec.ColorCategory
                                               select c;

            this.BindingSource.PositionChanged += new EventHandler(BindingSource_PositionChanged);
        }        

        void BindingSource_PositionChanged(object sender, EventArgs e)
        {
            if (this.BindingSource.Count == 0)
                return;

            this.repositoryItemcbb.Items.Clear();
            this.repositoryItemcbb.Items.AddRange(((TechnicalInformation)this.BindingSource.Current).TestMethodStr);
        }
        

    }
}
