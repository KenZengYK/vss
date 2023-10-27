using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Linq;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using DevExpress.XtraPrinting;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB5
{
    public partial class Step5DeploymentReArrangingReport : DevExpress.XtraReports.UI.XtraReport
    {
        public Step5DeploymentReArrangingReport(List<Step5DeploymentReArranging> ADataList, string ATitle1)
        {
            InitializeComponent();
            this.tcBandTopTitle1.Text = ATitle1;

            this.bsStep5DeploymentReArranging.DataSource = ADataList.Where(p => p.FixedNew == "New");
            Step5DeploymentReArrangingReportSub rptSub = new Step5DeploymentReArrangingReportSub(ADataList.Where(p => p.FixedNew == "Last Fixed").ToList());
            this.SubReport.ReportSource = rptSub;
            //RAPLQDataContext context= ContextBuilder.CreateContext<RAPLQDataContext>();

            // //var  a =context.BaseCodes.Where(p=>p.Code=="PrS1").Select(p=>p.Name);


            // var  ProcessingStageLists =context.BaseCodes.Where(p=>p.Type=="ProcessingStage").ToList();
            // xrTableCell60.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S1").Name;
            // xrTableCell61.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S1").ExtraField1;
            // xrTableCell62.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S1").NameEN;

            // xrTableCell47.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").Name;
            // xrTableCell49.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").ExtraField1;
            // xrTableCell50.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").NameEN;

            // //xrTableCell47.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").Name;
            // //xrTableCell49.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").ExtraField1;
            // //xrTableCell50.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S2").NameEN;

            // xrTableCell30.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S3").Name;
            // xrTableCell31.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S3").ExtraField1;
            // xrTableCell32.Text = ProcessingStageLists.FirstOrDefault(p => p.Name == "S3").NameEN;

            // var RFlagLists = context.BaseCodes.Where(p => p.Type == "RFlag").ToList();
            // xrTableCell66.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1a").Name;
            // xrTableCell67.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1a").ExtraField1;
            // xrTableCell68.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1a").NameEN;

            // xrTableCell69.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2a").Name;
            // xrTableCell70.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2a").ExtraField1;
            // xrTableCell71.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2a").NameEN;

            // xrTableCell72.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3a").Name;
            // xrTableCell73.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3a").ExtraField1;
            // xrTableCell74.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3a").NameEN;

            // xrTableCell75.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4a").Name;
            // xrTableCell76.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4a").ExtraField1;
            // xrTableCell77.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4a").NameEN;

            // xrTableCell82.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1b").Name;
            // xrTableCell83.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1b").ExtraField1;
            // xrTableCell84.Text = RFlagLists.FirstOrDefault(p => p.Name == "R1b").NameEN;


            // xrTableCell85.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2b").Name;
            // xrTableCell86.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2b").ExtraField1;
            // xrTableCell87.Text = RFlagLists.FirstOrDefault(p => p.Name == "R2b").NameEN;

            // xrTableCell88.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b1").Name;
            // xrTableCell89.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b1").ExtraField1;
            // xrTableCell90.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b1").NameEN;

            // xrTableCell91.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4b").Name;
            // xrTableCell92.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4b").ExtraField1;
            // xrTableCell93.Text = RFlagLists.FirstOrDefault(p => p.Name == "R4b").NameEN;

            // xrTableCell105.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b2").Name;
            // xrTableCell106.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b2").ExtraField1;
            // xrTableCell107.Text = RFlagLists.FirstOrDefault(p => p.Name == "R3b2").NameEN;

        }


        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ProcessCellBorder("Line", this.tcLine);
            ProcessCellBorder("CustStyle", this.tcCustStyle);
            ProcessCellBorder("QN", this.tcQN);
            ProcessCellBorder("QN", this.tcTotalDesk); //��QN���������TotalDesk�ĺϲ�
            //ProcessCellBorder("TotalDesk", this.tcTotalDesk);
        }

        public void ProcessCellBorder(string AFieldName, XRTableCell AControlTableCell)
        {
            object CurrentLine = this.GetCurrentColumnValue(AFieldName);
            object NextLine = this.GetNextColumnValue(AFieldName);

            if (CurrentLine == null) //�]��ӛ�
            {
                return;
            }

            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right;

            if (this.CurrentRowIndex == this.RowCount - 1) //���һ��
            {
                AControlTableCell.Borders |= BorderSide.Bottom;
                return; //�������һ�е�Bottom���������չ�
            }

            if (!Object.Equals(CurrentLine, NextLine)) //��ǰ���cһ�в���ȣ���Bottom��
            {
                AControlTableCell.Borders |= BorderSide.Bottom;
            }
        }

        //public void ProcessCellBorder(string AFieldName, XRTableCell AControlTableCell)
        //{
        //    object PrevLine = this.GetPreviousColumnValue(AFieldName);
        //    object CurrentLine = this.GetCurrentColumnValue(AFieldName);
        //    object NextLine = this.GetNextColumnValue(AFieldName);

        //    //��һ�У���ǰ���c��һ����ͬ�r������Bottom��
        //    if (this.CurrentRowIndex == 0 && this.CurrentRowIndex != this.RowCount - 1)
        //    {
        //        if (Object.Equals(CurrentLine, NextLine))
        //        {
        //            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right;
        //            return;
        //        }
        //    }

        //    //���һ��
        //    if (this.CurrentRowIndex == this.RowCount - 1)
        //    {
        //        AControlTableCell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
        //        return;
        //        //if (Object.Equals(CurrentLine, PrevLine)) //���һ���cǰһ����ͬ�r������Ҫ��Top��
        //        //{
        //        //    AControlTableCell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
        //        //}
        //        //else
        //        //{
        //        //    AControlTableCell.Borders = BorderSide.All; //���һ���cǰһ�в���ͬ�r����Ҫ��ȫ���ľ�
        //        //}
        //        //return;
        //    }



        //    if (Object.Equals(CurrentLine, PrevLine)) //��ǰ���c��һ����ȕr
        //    {
        //        if (Object.Equals(CurrentLine, NextLine)) //��ǰ���c��һ��Ҳ��ȣ��f����һ���M��
        //        {
        //            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right;
        //        }
        //        else //��ǰ���c��һ�в���ȣ��f����һ���M�����һ�У���Ҫ����Bottom
        //        {
        //            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
        //        }
        //        return;
        //    }
        //    else //��ǰ���c��һ�в���ȕr
        //    {
        //        if (object.Equals(CurrentLine, NextLine))
        //        {
        //            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right;
        //        }
        //        else
        //        {
        //            AControlTableCell.Borders = BorderSide.Left | BorderSide.Right | BorderSide.Bottom;
        //        }
        //    }
        //}

        private void lbTotalDesk_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object PrevLine = this.GetPreviousColumnValue("QN");
            object CurrentLine = this.GetCurrentColumnValue("QN");
            object NextLine = this.GetNextColumnValue("QN");

            //if (this.CurrentRowIndex == 0 && this.CurrentRowIndex != this.RowCount - 1) //��һ��
            if (this.CurrentRowIndex == 0) //��һ��
            {
                e.Cancel = false;
                return;
            }

            e.Cancel = object.Equals(CurrentLine, PrevLine);
        }



    }
}
