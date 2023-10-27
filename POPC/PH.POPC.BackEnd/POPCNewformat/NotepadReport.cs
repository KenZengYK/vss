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

//    ��Ա����	˵��
//Character	ָ�����ı���������ӽ����ַ��� 
//EllipsisCharacter	ָ�����ı���������ӽ����ַ������ڱ��������е�ĩβ����һ��ʡ�Ժš� 
//EllipsisPath	���Ĵӱ����������Ƴ�����ʡ�Ժ��滻�������㷨�����ܶ�ر��������е����һ����б�ָܷ��ĶΡ� 
//EllipsisWord	ָ�����ı���������ӽ��ĵ��ʣ����ڱ��������е�ĩβ����һ��ʡ�Ժš� 
//None	ָ���������κ������� 
//Word	ָ�����ı���������ӽ��ĵ��ʡ� 

    }
}
