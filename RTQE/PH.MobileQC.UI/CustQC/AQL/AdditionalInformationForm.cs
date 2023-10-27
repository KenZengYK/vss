using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.CustQC
{
    public partial class AdditionalInformationForm : Form
    {
        List<CustQCMaster> DataList;
        public AdditionalInformationForm(List<CustQCMaster> ADataList)
        {
            InitializeComponent();
            DataList = ADataList;

            PrepareData();

        }

        void PrepareData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("SeqNo", typeof(string)).Caption = "Seq. No.";
            dt.Columns.Add("Sort", typeof(string)).Caption = "排序";
            dt.Columns.Add("BDDesc", typeof(string)).Caption = "BD Desc.";
            for (int i = 1; i <= DataList.Count; i++)
            {
                dt.Columns.Add(i.ToString(), typeof(string)).Caption = i.ToString();
            }

            InsertRow(dt, "QC Exam. No.", "審管報告編號", "কিউ সি পরীক্ষার সংখ্যা", "QCExamNO");
            InsertRow(dt, "Products type", "產品種類", "পণ্যের  প্রকার", "ProductType");
            InsertRow(dt, "Shpt Date", "貨運日期", "চালানের তারিখ", "ShipmentDateShow");
            InsertRow(dt, "PO in shpt", "此貨運之訂單數", "পি.ও অনুযায়ী চালান", "ShipmentPOQty");
            InsertRow(dt, "Style in shpt", "此貨運之款數", "স্টাইল অনুযায়ী চালান", "ShipmentStyleQty");
            InsertRow(dt, "Color in shpt", "此貨運之顏色數", "রঙ অনুযায়ী চালান", "ShipmentColorQty");
            InsertRow(dt, "Size in shpt", "此貨運之晒士數", "আকার অনুযায়ী চালান", "ShipmentSizeQty");
            InsertRow(dt, "# case ready for exam.", "待審考箱數", "বক্স প্রস্তুত পরীক্ষার জন্য", "ExamCartonQty");
            InsertRow(dt, "Standard carton qty", "規範箱件數", "আদর্শ কার্টন পরিমাণ", "StandardCartonQty");
            InsertRow(dt, "# of log", "誌批數", "অফ লগ", "LogQty");
            InsertRow(dt, "QC examiner", "審管員名稱", "কিউ সি পরীক্ষক", "QCExaminer");
            InsertRow(dt, "Cat. log#", "類別誌號", "to be filled up by CL", "CatLogNO");
            InsertRow(dt, "Mfg. loc.", "生產地區", "to be filled up by CL", "MfgLocation");

            this.gridControl.DataSource = dt;

            this.gridView.Columns[2].AppearanceCell.Font = new Font("SutonnyOMJ", 9F);
            for (int i = 3; i < this.gridView.Columns.Count; i++) //動態字段的列標題全部居中
            {
                this.gridView.Columns[i].AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            }
            this.gridView.BestFitColumns();
        }

        void InsertRow(DataTable dt, string ASeqNo, string ASort, string ABDDesc, string ADynamicFieldName)
        {
            DataRow dr = dt.Rows.Add();
            dr["SeqNo"] = ASeqNo;
            dr["Sort"] = ASort;
            dr["BDDesc"] = ABDDesc;

            int Index = 3;
            foreach (var obj in DataList)
            {
                dr[Index++] = obj.GetType().GetProperty(ADynamicFieldName).GetValue(obj, null);
            }

        }

        private void gridControl_DoubleClick(object sender, EventArgs e)
        {
           // MessageBox.Show ("X:" + this.Location.X.ToString() + "  Y:" + this.Location.Y.ToString());

        }

    }
}
