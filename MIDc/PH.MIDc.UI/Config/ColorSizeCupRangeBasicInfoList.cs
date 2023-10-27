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
    public partial class ColorSizeCupRangeBasicInfoList : PH.Platform.UI.CS.UI2.ListForm
    {
        //基礎資料類別:Color,Size,Cup
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
                        this.colDataCode.Caption = "Color Range"; 
                        break;
                    case "Size":
                        this.colDataCode.Caption = "Size & Range";
                        break;
                    case "Cup":
                        this.colDataCode.Caption = "Cup & Range";
                        break;
                    default:
                        break;
                }
            }
        }


        private MIDcDataContext _CurrMIDcDataContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();

        public ColorSizeCupRangeBasicInfoList()
        {
        }

        public ColorSizeCupRangeBasicInfoList(string BasicInfoType)
        {
            InitializeComponent();
            this.Category = BasicInfoType;


        }

        //綁定數據
        public override void DataBind()
        {
            base.DataBind();
            this.DataContext = this._CurrMIDcDataContext;
            if (Category != "ALL")
            {
                this.BindingSource.DataSource = from val in this._CurrMIDcDataContext.ColorSizeCupRanges
                                                where val.Category == Category
                                                orderby val.Seq
                                                select val;
            }
            else
            {
                this.BindingSource.DataSource = this._CurrMIDcDataContext.ColorSizeCupRanges;
            }

            this.EditorTypeName = typeof(ColorSizeCupRangeBasicInfoDetail).FullName;
        }

        private void ColorSizeCupRangeBasicInfoList_Load(object sender, EventArgs e)
        {

            switch (this.Category)
            {
                case "ColorRange":
                case "Cup":
                    this.objListGridView.Columns["GroupName"].Visible = true;
                    break;
                case "Size":
                    this.objListGridView.Columns["GroupName"].Visible = true;
                    break;
            }
        }

    }
}
