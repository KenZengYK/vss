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
    public partial class ColorSizeCupRangeBasicInfoDetail : PH.Platform.UI.CS.UI2.ParentChildForm
    {
        public ColorSizeCupRangeBasicInfoDetail()
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
                this.categoryComboBox.Visible = this.categoryLabel.Visible = false;
                switch (this._category)
                {
                    case "ColorRange":
                        this.dataCodeLabel.Text = "Color Range";
                        break;
                    case "Size":
                        this.dataCodeLabel.Text = "Size && Range";
                        break;
                    case "Cup":
                        this.dataCodeLabel.Text = "Cup && Range";
                        break;
                    default:
                        break;
                }

                this.colorSizeCupRangeDetailBasicInfoList1.Category = this._category;
            }
        }

        /// <summary>
        /// Xsj:標識當前操作的Group資料是屬於Color,Size,Cup
        /// </summary>
        public GroupTypeEnum CurrGroupType
        {
            get
            {
                GroupTypeEnum gte = GroupTypeEnum.None;
                switch (this.Category)
                {
                    case "ColorRange":
                        gte = GroupTypeEnum.Color;
                        break;
                    case "Size":
                        gte = GroupTypeEnum.Size;
                        break;
                    case "Cup":
                        gte = GroupTypeEnum.Cup;
                        break;
                    default:
                        gte = GroupTypeEnum.None;
                        break;
                }
                return gte;
            }
        }

        


        private void ColorSizeCupRangeBasicInfoDetail_Load(object sender, EventArgs e)
        {
            //Xsj20120227:應Jane Lai和王生的討論要求，添加GroupName,用於顯示Size的類加
            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            List<PH.MIDc.BO.ColorSizeCupGroup> cscGroups = context.ColorSizeCupGroups.Where(p => p.Category == this.CurrGroupType.ToString()).OrderBy(p => p.GroupCode).ToList();
            DevExpress.XtraEditors.Controls.ImageComboBoxItem blankIbi = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
            blankIbi.Description = "";
            blankIbi.Value = null;
            this.groupCodeImageComboBoxEdit.Properties.Items.Add(blankIbi);
            foreach (PH.MIDc.BO.ColorSizeCupGroup item in cscGroups)
            {
                DevExpress.XtraEditors.Controls.ImageComboBoxItem ibi = new DevExpress.XtraEditors.Controls.ImageComboBoxItem();
                ibi.Value = item.GroupCode;
                ibi.Description = item.GroupName;
                this.groupCodeImageComboBoxEdit.Properties.Items.Add(ibi);
            }
 

        }

        public override void DataBind()
        {
            base.DataBind();

            InitalCategory();
            //this.colorSizeCupRangeDetailBasicInfoList1.EditorTypeName = typeof(ColorSizeCupRangeDetailBasicInfoDetail).FullName;
            ColorSizeCupRange CurrColorSizeCupRange = this.BindingSource.Current as ColorSizeCupRange;
            this.colorSizeCupRangeDetailBasicInfoList1.BindingSource.DataSource = CurrColorSizeCupRange.ColorSizeCupRangeDetails;
        }

        //初始化Category
        private void InitalCategory()
        {
            ColorSizeCupRange CurrColorSizeCupRange = this.BindingSource.Current as ColorSizeCupRange;
            ColorSizeCupRangeBasicInfoList f = (this.PrevForm as ColorSizeCupRangeBasicInfoList);
            if (f == null) this.Category = "";
            this.Category = f.Category;
            if (Category != "ALL")
            {
                this.categoryComboBox.Properties.Items.Add(Category);
                //this.categoryComboBox.EditValue = Category;
                //this.categoryComboBox.Text = Category;
                if (this.IsNew)
                    CurrColorSizeCupRange.Category = Category;
            }
            else
            {
                MIDcDataContext CurrMIDcDataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                List<string> VarCategory = CurrMIDcDataContext.ColorSizeCupRanges.Select(P => P.Category).Distinct().ToList();
                this.categoryComboBox.Properties.Items.AddRange(VarCategory.ToArray());
            }
            ShowDetail(CurrColorSizeCupRange.IsRange ?? false);
        }

        private void isRangeCheckEdit_EditValueChanging(object sender, DevExpress.XtraEditors.Controls.ChangingEventArgs e)
        {
            bool isrange = (bool)e.NewValue;
            ShowDetail(isrange);
        }

        private void ShowDetail(bool isshow)
        {
            this.xtraTabControl1.Visible = isshow;
        }
 
    }
}
