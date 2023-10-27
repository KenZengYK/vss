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

namespace PH.LineBalanceII.UI
{
    public partial class StyleSuffixListForm :PH.Platform.UI.CS.UI0.BlankForm
    {
        public StyleSuffixListForm()
        {
            InitializeComponent();
        }

        private List<StyleSuffix> CreatDataList()
        {
            List<StyleSuffix>  suffixs = new List<StyleSuffix>();
            StyleSuffix sf1 = new StyleSuffix();
            sf1.MP = "ML"; sf1.Suffix = "AD"; sf1.Country = "CN / HK / KR"; sf1.Hangtag = "CK-B / CK"; sf1.Remark = "Asian Fit";

            StyleSuffix sf2 = new StyleSuffix();
            sf2.MP = "ML"; sf2.Suffix = "-"; sf2.Country = "CN / HK / KR"; sf2.Hangtag = "CK-B / CK"; sf2.Remark = " \" -\" Blank is mainly for ML of US region & means \"not Asian Fit\" on CN/HK/KR";

            StyleSuffix sf3 = new StyleSuffix();
            sf3.MP = "ML"; sf3.Suffix = "-"; sf3.Country = "US / PA / AU"; sf3.Hangtag = "CK-B / CK"; sf3.Remark = " \" -\" Blank is mainly for ML of US region & means \"not Asian Fit\" on CN/HK/KR";

            StyleSuffix sf4 = new StyleSuffix();
            sf4.MP = "ML"; sf4.Suffix = "D"; sf4.Country = "MX"; sf4.Hangtag = "CK-B / CK"; sf4.Remark = "Suffix \"D\" applied to ML & OP on different countries";

            StyleSuffix sf5 = new StyleSuffix();
            sf5.MP = "ML"; sf5.Suffix = "E"; sf5.Country = "NL"; sf5.Hangtag = "CK-B / CK"; sf5.Remark = "Country code \"NL\" have different suffix on ML & OP";

            StyleSuffix sf6 = new StyleSuffix();
            sf6.MP = "ML"; sf6.Suffix = "G"; sf6.Country = "CA"; sf6.Hangtag = "CK-B / CK"; sf6.Remark = "Country code \"CA\" have same sufffix of \"G\" at ML & OP";

            /*OP Datas*/

            StyleSuffix sf7 = new StyleSuffix();
            sf7.MP = "OP"; sf7.Suffix = "D"; sf7.Country = "TW / KR / AU"; sf7.Hangtag = "CK-B / CK"; sf7.Remark = "Suffix \"D\" applied to ML & OP\r\n on different countries";


            StyleSuffix sf8 = new StyleSuffix();
            sf8.MP = "OP"; sf8.Suffix = "O"; sf8.Country = "NL"; sf8.Hangtag = "CK-B / CK"; sf8.Remark = "Country code \"NL\" have different suffix on ML & OP,\r\nsuffix \"E\" for ML & suffix \"O\" for OP";


            StyleSuffix sf9 = new StyleSuffix();
            sf9.MP = "OP"; sf9.Suffix = "O"; sf9.Country = "US"; sf9.Hangtag = "CK-B / CK"; sf9.Remark = "Country code \"NL\" have different suffix on ML & OP,\r\nsuffix \"E\" for ML & suffix \"O\" for OP";


            StyleSuffix sf10 = new StyleSuffix();
            sf10.MP = "OP"; sf10.Suffix = "G"; sf10.Country = "CA"; sf10.Hangtag = "CK-B / CK"; sf10.Remark = "Country code \"CA\" have same sufffix of \"G\" at ML & OP";


            StyleSuffix sf11 = new StyleSuffix();
            sf11.MP = "OP"; sf11.Suffix = "L"; sf11.Country = "US"; sf11.Hangtag = "BURL"; sf11.Remark = "These 4 Hangtags are for Off-Price(US only)";


            StyleSuffix sf12 = new StyleSuffix();
            sf12.MP = "OP"; sf12.Suffix = "R"; sf12.Country = "US"; sf12.Hangtag = "ROSS"; sf12.Remark = "These 4 Hangtags are for Off-Price(US only)";


            StyleSuffix sf13 = new StyleSuffix();
            sf13.MP = "OP"; sf13.Suffix = "X"; sf13.Country = "US"; sf13.Hangtag = "MAXX"; sf13.Remark = "These 4 Hangtags are for Off-Price(US only)";


            StyleSuffix sf14 = new StyleSuffix();
            sf14.MP = "OP"; sf14.Suffix = "Y"; sf14.Country = "US"; sf14.Hangtag = "MRSH"; sf14.Remark = "These 4 Hangtags are for Off-Price(US only)";

            //suffixs.Add(sf1); suffixs.Add(sf2); suffixs.Add(sf3); suffixs.Add(sf4);
            //suffixs.Add(sf5); suffixs.Add(sf6); suffixs.Add(sf7); suffixs.Add(sf8);
            //suffixs.Add(sf9); suffixs.Add(sf10); suffixs.Add(sf11); suffixs.Add(sf12);
            //suffixs.Add(sf13); suffixs.Add(sf14);


            suffixs.AddRange(new StyleSuffix[] { sf1, sf2, sf3, sf4, sf5, sf6, sf7, sf8, sf9, sf10, sf11, sf12, sf13, sf14 });

            return suffixs;
        
        }


        private List<StyleRange> CreatRangeData()
        {
            List<StyleRange> rangelist = new List<StyleRange>();
            StyleRange sr1 = new StyleRange();
            sr1.MP = "ML"; sr1.RangeName = "Sensual Black";

            StyleRange sr2 = new StyleRange();
            sr2.MP = "ML"; sr2.RangeName = "Striking";

            StyleRange sr3 = new StyleRange();
            sr3.MP = "ML"; sr3.RangeName = "Daring";

            StyleRange sr4 = new StyleRange();
            sr4.MP = "OP"; sr4.RangeName = "Sexy Signature";

            StyleRange sr5 = new StyleRange();
            sr5.MP = "OP"; sr5.RangeName = "Costco";

            StyleRange sr6 = new StyleRange();
            sr6.MP = "OP"; sr6.RangeName = "Essence";

            StyleRange sr7 = new StyleRange();
            sr7.MP = "OP"; sr7.RangeName = "Sam's club";

           // StyleRange[] _rang = new StyleRange{sr1,sr2,sr3,sr4,sr5,sr6,sr7};

            rangelist.AddRange(new StyleRange[]{sr1,sr2,sr3,sr4,sr5,sr6,sr7});

            return rangelist;
        }

        private void StyleSuffixListForm_Load(object sender, EventArgs e)
        {
            List<StyleSuffix> lst = CreatDataList();
            this.gridControl1.DataSource = lst;

            List<StyleRange> lst1 = CreatRangeData();
            this.gridControl2.DataSource = lst1;

           
        }

        private void gvSuffix_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

            
            switch (e.Column.FieldName)
            { 
                case "MP":
                case "Suffix": 
                    e.Merge = true;
                   // e.Handled = true;
                    break;
                case "Country":
                    if (e.RowHandle1 > 9)
                        e.Merge = true;
                    else
                    {
                        e.Merge = false;
                        e.Handled = true;
                    }
                    break;

                case "Hangtag":
                    e.Merge = false;
                    e.Handled = true;
                    break;
            
            }
        }
    }
}
