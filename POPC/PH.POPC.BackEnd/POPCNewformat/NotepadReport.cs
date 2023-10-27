using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using DevExpress.XtraPrinting;

namespace PH.POPC.BackEnd.POPCNewformat
{
    public partial class NotepadReport : DevExpress.XtraReports.UI.XtraReport
    {
        public NotepadReport()
        {
            InitializeComponent();
        }

        private void tbTo_Draw(object sender, DrawEventArgs e)
        {
            TextBrick textBrick = (TextBrick)e.Brick;

            textBrick.StringFormat = new BrickStringFormat(textBrick.StringFormat, StringTrimming.EllipsisWord);
        }

        private void tbCc_Draw(object sender, DrawEventArgs e)
        {
            TextBrick textBrick = (TextBrick)e.Brick;

            textBrick.StringFormat = new BrickStringFormat(textBrick.StringFormat, StringTrimming.EllipsisWord);
        }

//    成员名称	说明
//Character	指定将文本修整成最接近的字符。 
//EllipsisCharacter	指定将文本修整成最接近的字符，并在被修整的行的末尾插入一个省略号。 
//EllipsisPath	中心从被修整的行移除并用省略号替换。这种算法尽可能多地保留了行中的最后一个由斜杠分隔的段。 
//EllipsisWord	指定将文本修整成最接近的单词，并在被修整的行的末尾插入一个省略号。 
//None	指定不进行任何修整。 
//Word	指定将文本修整成最接近的单词。 

    }
}
