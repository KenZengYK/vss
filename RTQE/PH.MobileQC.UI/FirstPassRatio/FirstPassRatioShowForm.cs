using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.MobileQC.BO;
using PH.MobileQC.UI.Helper;
using DevExpress.XtraCharts;
using DevExpress.XtraEditors;
using DevExpress.Utils.Menu;
using System.Globalization;

namespace PH.MobileQC.UI
{
    public partial class FirstPassRatioShowForm : PH.Platform.UI.CS.UI0.BlankForm
    {
        private DevExpress.XtraTab.XtraTabPage[] xPageArray;
        private List<LineBO> _lineBOList = new List<LineBO>();
        private string _summaryType = "";
        private QCMasterSeartchConditionBO _searchCondition;
        public FirstPassRatioShowForm()
        {
            InitializeComponent();

            xPageArray = new DevExpress.XtraTab.XtraTabPage[]{
                this.xTPage_ByFactory,
                this.xTPage_ByWorkShop,
                this.xTPage_ByLine,
                this.xTPage_ByStyle
            };
            this.xTabContrl.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this._summaryType = this.xTabContrl.SelectedTabPage.Tag.ToString();


            this.dateEditFrom.EditValue = DateTime.Now.AddDays(-7);
            this.dateEditTO.EditValue = DateTime.Now;

            InitQCRole();

            GetDataSource();
            InitFactory();
            InitiChart();
        }

        private List<PH.MobileQC.BO.QC_QCRole> _QCRoles = new List<QC_QCRole>();

        private void InitQCRole()
        {
            QCRoleHelper qcRoleHelper = new QCRoleHelper();
            this._QCRoles = qcRoleHelper.GetQCRoleDataSource();
            this.checkedCBox_QCRole.Properties.Items.Clear();
            foreach (PH.MobileQC.BO.QC_QCRole item in this._QCRoles)
            {
                this.checkedCBox_QCRole.Properties.Items.Add(item.RoleName);
            }
        }


        private void InitFactory()
        {
            this.chkListBoxCtrl_Factory.Items.Clear();
            List<String> list = this._lineBOList.Select(p => p.Factory).Distinct().ToList();
            foreach (string item in list)
            {
                this.chkListBoxCtrl_Factory.Items.Add(item);
            }
            //Xsj:默认为全选
            for (int i = 0; i < this.chkListBoxCtrl_Factory.Items.Count; i++)
            {
                this.chkListBoxCtrl_Factory.Items[i].CheckState = CheckState.Checked;
            }

            this.imageComboBox_FactoryForByWorkShop.Properties.Items.Clear();
            this.imageCBox_FactoryForByLine.Properties.Items.Clear();
            this.imageCBox_FactoryForByStyle.Properties.Items.Clear();
            foreach (string item in list)
            {
                this.imageComboBox_FactoryForByWorkShop.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                this.imageCBox_FactoryForByLine.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                this.imageCBox_FactoryForByStyle.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
            }
        }

        private void InitWorkShop(string Factory, string Tag)
        {
            List<String> list = this._lineBOList.Where(p => p.Factory == Factory).Select(p => p.WorkShop).Distinct().ToList();
            switch (Tag)
            {
                case "FactoryForByWorkShop":
                    this.checkedListBoxCtrl_WorkShop.Items.Clear();
                    foreach (string item in list)
                    {
                        this.checkedListBoxCtrl_WorkShop.Items.Add(item);
                    }
                    //Xsj:默认为全选
                    for (int i = 0; i < this.checkedListBoxCtrl_WorkShop.Items.Count; i++)
                    {
                        this.checkedListBoxCtrl_WorkShop.Items[i].CheckState = CheckState.Checked;
                    }
                    break;
                case "FactoryForByLine":
                    this.imageCBox_WorkShopForByLine.Properties.Items.Clear();
                    foreach (string item in list)
                    {
                        this.imageCBox_WorkShopForByLine.Properties.Items.Add(new DevExpress.XtraEditors.Controls.ImageComboBoxItem(item, item));
                    }
                    break;
                case "FactoryForByStyle":
                    this.gridCtrl_Style.DataSource = null;
                    this.gridView_Style.RefreshData();
                    StyleHelper styleHelper = new StyleHelper();
                    DateTime dtFrom = Convert.ToDateTime(this.dateEditFrom.EditValue);
                    DateTime dtTO = Convert.ToDateTime(this.dateEditTO.EditValue);
                    List<StyleChooseBO> styles = styleHelper.GetQCStyleDataSource(Factory, dtFrom, dtTO);
                    this.gridCtrl_Style.DataSource = styles;
                    break;
            }
        }

        private void InitWorkLine(string Factory, string WorkShop)
        {
            this.checkedListBoxCtrl_WorkLine.Items.Clear();
            List<String> list = this._lineBOList.Where(p => p.Factory == Factory && p.WorkShop == WorkShop).Select(p => p.Line).Distinct().ToList();
            foreach (string item in list)
            {
                this.checkedListBoxCtrl_WorkLine.Items.Add(item);
            }
            //Xsj:默认为全选
            for (int i = 0; i < this.checkedListBoxCtrl_WorkLine.Items.Count; i++)
            {
                this.checkedListBoxCtrl_WorkLine.Items[i].CheckState = CheckState.Checked;
            }
        }

        private void GetDataSource()
        {
            LineHelper lineHelper = new LineHelper();
            this._lineBOList = lineHelper.GetLineDataSource();
        }

        private void radioGroup_SummaryType_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = this.radioGroup_SummaryType.SelectedIndex;
            if (index == -1) return;
            DevExpress.XtraTab.XtraTabPage currXTPage = xPageArray[index];
            this.xTabContrl.SelectedTabPage = currXTPage;
            this._summaryType = currXTPage.Tag.ToString();
        }

        private void sBtn_GO_Click(object sender, EventArgs e)
        {
            DevExpress.Utils.WaitDialogForm waitform = new DevExpress.Utils.WaitDialogForm();
            waitform.Show();
            try
            {
                if (!CheckInput())
                {
                    return;
                }
                InitSearchCondition();
                ShowChart(this._summaryType);
            }
            finally
            {
                waitform.Close();
            }
        }

        private string GetRoleName(string RoleCode)
        {
            string name = "";
            QC_QCRole bo = this._QCRoles.Where(p => p.RoleCode == RoleCode).FirstOrDefault();
            if (bo != null)
            {
                name = bo.RoleName;
            }
            return name;
        }


        private void ShowChart(string Tag)
        {
            try
            {
                ChartHelper chartHelper = new ChartHelper();
                List<AuditQtyMoveBO> result = chartHelper.GetMoveList(this._searchCondition, "P_FirstPassRateMoveChart_ForPC");

                string title = "";
                List<AuditQtyMoveBO> dsr = new List<AuditQtyMoveBO>();
                List<string> qcRoleCodes = GetSelectedQCRoleCode();
                List<string> averageValues = new List<string>();

                switch (Tag)
                {
                    case "ByFactory":
                        #region
                        title = "首通率曲线{0}图 By Factory";

                        List<string> factorys = new List<string>();
                        for (int i = 0; i < this.chkListBoxCtrl_Factory.CheckedItems.Count; i++)
                        {
                            string fty = chkListBoxCtrl_Factory.CheckedItems[i].ToString();
                            factorys.Add(fty);
                        }
                        //Xsj:添加加权平均曲线
                        //Xsj:单一角色加权平均
                        if (qcRoleCodes.Count == 1)
                        {
                            if (factorys.Count > 1)
                            {
                                var gp = result.GroupBy(p => p.MoveDate).ToList();
                                foreach (var item in gp)
                                {
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);

                                    AuditQtyMoveBO bo = new AuditQtyMoveBO();
                                    bo.Factory = "加权平均";
                                    bo.WorkShop = "ALL";
                                    bo.Line = "ALL";
                                    bo.FirstPassQty = firstPassQty;
                                    bo.AuditQty = auditQty;
                                    bo.FirstPassRatio = firstPassRatio;
                                    bo.MoveDate = item.Key;
                                    bo.QCRoleCode = qcRoleCodes[0];
                                    result.Add(bo);
                                }
                                factorys.Add("加权平均");
                            }
                        }
                        else //Xsj:角色对比加权平均
                        {
                            foreach (string factoryItem in factorys)
                            {
                                foreach (string roleItem in qcRoleCodes)
                                {
                                    var item = result.Where(p => p.Factory == factoryItem && p.QCRoleCode == roleItem).ToList();
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);
                                    string averageTitle = factoryItem + "_" + GetRoleName(roleItem) + ":" + firstPassRatio.ToString();
                                    averageValues.Add(averageTitle);
                                }
                            }
                        }

                        this.chartCtrl_Move.Series.Clear();
                        for (int i = 0; i < factorys.Count; i++)
                        {
                            string fty = factorys[i];
                            foreach (string item in qcRoleCodes)
                            {
                                dsr = result.Where(p => p.Factory == fty && p.QCRoleCode == item).ToList();
                                DevExpress.XtraCharts.Series srs = CreateSeries(fty + "_" + GetRoleName(item), DevExpress.XtraCharts.ViewType.Line, dsr);
                                this.chartCtrl_Move.Series.Add(srs);
                            }
                        }
                        #endregion
                        break;
                    case "ByWorkShop":
                        #region
                        title = "首通率曲线{0}图 By WorkShop";

                        List<string> workShops = new List<string>();
                        for (int i = 0; i < this.checkedListBoxCtrl_WorkShop.CheckedItems.Count; i++)
                        {
                            string val = checkedListBoxCtrl_WorkShop.CheckedItems[i].ToString();
                            workShops.Add(val);
                        }
                        //Xsj:添加加权平均曲线
                        //Xsj:单一角色加权平均
                        if (qcRoleCodes.Count == 1)
                        {
                            if (workShops.Count > 1)
                            {
                                var gp = result.GroupBy(p => p.MoveDate).ToList();
                                foreach (var item in gp)
                                {
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);

                                    AuditQtyMoveBO bo = new AuditQtyMoveBO();
                                    bo.Factory = "ALL";
                                    bo.WorkShop = "加权平均";
                                    bo.Line = "ALL";
                                    bo.FirstPassQty = firstPassQty;
                                    bo.AuditQty = auditQty;
                                    bo.FirstPassRatio = firstPassRatio;
                                    bo.MoveDate = item.Key;
                                    bo.QCRoleCode = qcRoleCodes[0];
                                    result.Add(bo);
                                }
                                workShops.Add("加权平均");
                            }
                        }
                        else //Xsj:角色对比加权平均
                        {
                            foreach (string workShopItem in workShops)
                            {
                                foreach (string roleItem in qcRoleCodes)
                                {
                                    var item = result.Where(p => p.WorkShop == workShopItem && p.QCRoleCode == roleItem).ToList();
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);
                                    string averageTitle = workShopItem + "_" + GetRoleName(roleItem) + ":" + firstPassRatio.ToString();
                                    averageValues.Add(averageTitle);
                                }
                            }
                        }

                        this.chartCtrl_Move.Series.Clear();
                        for (int i = 0; i < workShops.Count; i++)
                        {
                            string workShop = workShops[i];
                            foreach (string item in qcRoleCodes)
                            {
                                dsr = result.Where(p => p.WorkShop == workShop && p.QCRoleCode == item).ToList();
                                DevExpress.XtraCharts.Series srs = CreateSeries(workShop + "_" + GetRoleName(item), DevExpress.XtraCharts.ViewType.Line, dsr);
                                this.chartCtrl_Move.Series.Add(srs);
                            }
                        }
                        #endregion
                        break;
                    case "ByLine":
                        #region
                        title = "首通率曲线{0}图 By Line";

                        List<string> workLines = new List<string>();
                        for (int i = 0; i < this.checkedListBoxCtrl_WorkLine.CheckedItems.Count; i++)
                        {
                            string val = checkedListBoxCtrl_WorkLine.CheckedItems[i].ToString();
                            workLines.Add(val);
                        }
                        //Xsj:添加加权平均曲线
                        //Xsj:单一角色加权平均
                        if (qcRoleCodes.Count == 1)
                        {
                            if (workLines.Count > 1)
                            {
                                var gp = result.GroupBy(p => p.MoveDate).ToList();
                                foreach (var item in gp)
                                {
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);

                                    AuditQtyMoveBO bo = new AuditQtyMoveBO();
                                    bo.Factory = "ALL";
                                    bo.WorkShop = "ALL";
                                    bo.Line = "加权平均";
                                    bo.FirstPassQty = firstPassQty;
                                    bo.AuditQty = auditQty;
                                    bo.FirstPassRatio = firstPassRatio;
                                    bo.MoveDate = item.Key;
                                    bo.QCRoleCode = qcRoleCodes[0];
                                    result.Add(bo);
                                }
                                workLines.Add("加权平均");
                            }
                        }
                        else //Xsj:角色对比加权平均
                        {
                            foreach (string workLineItem in workLines)
                            {
                                foreach (string roleItem in qcRoleCodes)
                                {
                                    var item = result.Where(p => p.Line == workLineItem && p.QCRoleCode == roleItem).ToList();
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);
                                    string averageTitle = workLineItem + "_" + GetRoleName(roleItem) + ":" + firstPassRatio.ToString();
                                    averageValues.Add(averageTitle);
                                }
                            }
                        }

                        this.chartCtrl_Move.Series.Clear();
                        for (int i = 0; i < workLines.Count; i++)
                        {
                            string line = workLines[i];
                            foreach (string item in qcRoleCodes)
                            {
                                dsr = result.Where(p => p.Line == line && p.QCRoleCode == item).ToList();
                                DevExpress.XtraCharts.Series srs = CreateSeries(line + "_" + GetRoleName(item), DevExpress.XtraCharts.ViewType.Line, dsr);
                                this.chartCtrl_Move.Series.Add(srs);
                            }
                        }
                        #endregion
                        break;
                    case "ByStyle":
                        #region
                        title = "首通率曲线{0}图 By Style";

                        List<StyleChooseBO> bos = this.gridView_Style.DataSource as List<StyleChooseBO>;
                        List<StyleChooseBO> sBos = bos.Where(p => p.IsSelected).ToList();
                        //Xsj:添加加权平均曲线
                        //Xsj:单一角色加权平均
                        if (qcRoleCodes.Count == 1)
                        {
                            if (sBos.Count > 1)
                            {
                                var gp = result.GroupBy(p => p.MoveDate).ToList();
                                foreach (var item in gp)
                                {
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);

                                    AuditQtyMoveBO bo = new AuditQtyMoveBO();
                                    bo.Factory = "ALL";
                                    bo.WorkShop = "ALL";
                                    bo.Line = "ALL";
                                    bo.Style = "加权平均";
                                    bo.FirstPassQty = firstPassQty;
                                    bo.AuditQty = auditQty;
                                    bo.FirstPassRatio = firstPassRatio;
                                    bo.MoveDate = item.Key;
                                    bo.QCRoleCode = qcRoleCodes[0];
                                    result.Add(bo);
                                }
                                sBos.Add(new StyleChooseBO { Style = "加权平均" });
                            }
                        }
                        else //Xsj:角色对比加权平均
                        {
                            foreach (StyleChooseBO boItem in sBos)
                            {
                                foreach (string roleItem in qcRoleCodes)
                                {
                                    var item = result.Where(p => p.Style == boItem.Style && p.QCRoleCode == roleItem).ToList();
                                    decimal firstPassQty = item.Sum(p => p.FirstPassQty);
                                    decimal auditQty = item.Sum(p => p.AuditQty);
                                    decimal firstPassRatio = Math.Round(firstPassQty / (auditQty == 0 ? 1 : auditQty) * 100, 1);
                                    string averageTitle = boItem.Style + "_" + GetRoleName(roleItem) + ":" + firstPassRatio.ToString();
                                    averageValues.Add(averageTitle);
                                }
                            }
                        }

                        this.chartCtrl_Move.Series.Clear();
                        foreach (StyleChooseBO itemStyle in sBos)
                        {
                            string style = itemStyle.Style;
                            foreach (string item in qcRoleCodes)
                            {
                                dsr = result.Where(p => p.Style == style && p.QCRoleCode == item).ToList();
                                DevExpress.XtraCharts.Series srs = CreateSeries(style + "_" + GetRoleName(item), DevExpress.XtraCharts.ViewType.Line, dsr);
                                this.chartCtrl_Move.Series.Add(srs);
                            }
                        }
                        #endregion
                        break;
                }

                //Xsj:获取厂别的目标值
                string factories = this._searchCondition.Factory.Replace("''", "");
                string[] factoryArr = factories.Split(',');
                List<PH.MobileQC.BO.QC_FirstPassRatioTarget> qcTargets = new List<QC_FirstPassRatioTarget>();
                if (factoryArr.Length == 1 && result.Count > 0)
                {
                    QCTargetHelper helper = new QCTargetHelper();
                    qcTargets = helper.GetQCTargetDataSource(factoryArr[0],
                        Convert.ToDateTime(this._searchCondition.QCTimeFrom),
                        Convert.ToDateTime(this._searchCondition.QCTimeTO)).OrderBy(p => p.EffectFromDate).ToList();
                }
                if (qcTargets.Count > 0)
                {
                    List<AuditQtyMoveBO> points = new List<AuditQtyMoveBO>();
                    for (int i = 0; i < qcTargets.Count; i++)
                    {
                        DateTime et = qcTargets[i].EffectFromDate.Value;
                        GregorianCalendar cal = new GregorianCalendar(GregorianCalendarTypes.Localized);
                        switch (this._searchCondition.RecordType)
                        {
                            case "Daily":
                                string day = et.ToString("yyyy-MM-dd");
                                AuditQtyMoveBO bo = points.Where(p => p.MoveDate == day).FirstOrDefault();
                                if (bo == null)
                                {
                                    bo = new AuditQtyMoveBO();
                                    bo.MoveDate = day.ToString();
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                    points.Add(bo);
                                }
                                else
                                {
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                }
                                points.Add(bo);
                                break;
                            case "Weekly":
                                string week = et.Year.ToString() + "(" + cal.GetWeekOfYear(et, CalendarWeekRule.FirstDay, DayOfWeek.Sunday).ToString("00") + ")";
                                bo = points.Where(p => p.MoveDate == week).FirstOrDefault();
                                if (bo == null)
                                {
                                    bo = new AuditQtyMoveBO();
                                    bo.MoveDate = week.ToString();
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                    points.Add(bo);
                                }
                                else
                                {
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                }
                                points.Add(bo);
                                break;
                            case "Monthly":
                                string month = et.Year.ToString() + "-" + et.Month.ToString("00");
                                bo = points.Where(p => p.MoveDate == month).FirstOrDefault();
                                if (bo == null)
                                {
                                    bo = new AuditQtyMoveBO();
                                    bo.MoveDate = month.ToString();
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                    points.Add(bo);
                                }
                                else
                                {
                                    bo.FirstPassRatio = (qcTargets[i].TargetValue ?? 0);
                                }
                                points.Add(bo);
                                break;
                        }
                    }

                    string dtF = result.Where(p => p.AuditQty > 0).Select(p => p.MoveDate).Min();
                    string dtT = result.Where(p => p.AuditQty > 0).Select(p => p.MoveDate).Max();

                    Series series = new Series("目标值", DevExpress.XtraCharts.ViewType.StepLine);
                    for (int i = 0; i < points.Count; i++)
                    {
                        bool isFastEnd = false;
                        string argument = points[i].MoveDate;//参数名称 
                        if (string.Compare(argument, dtF) < 0)
                        {
                            if (i + 1 < points.Count)
                            {
                                if (string.Compare(points[i + 1].MoveDate, dtF) < 0)
                                {
                                    continue;
                                }
                                else
                                {
                                    argument = dtF;
                                }
                            }
                        }
                        else if (string.Compare(argument, dtT) > 0)
                        {
                            argument = dtT;
                            isFastEnd = true;
                        }


                        decimal firstPassRatio = points[i].FirstPassRatio;//参数名称  
                        series.Points.Add(new SeriesPoint(argument, new double[] { (double)firstPassRatio }));

                        if (isFastEnd)
                        {
                            break;
                        }
                    }
                    ((LineSeriesView)series.View).LineMarkerOptions.Visible = false;
                    this.chartCtrl_Move.Series.Add(series);

                }

                string type = "";
                switch (this._searchCondition.RecordType)
                {
                    case "Daily":
                        type = this.checkedCBox_QCRole.Text.IndexOf(",") == -1 ? "(每日)" : "(每日)对比";
                        break;
                    case "Weekly":
                        type = this.checkedCBox_QCRole.Text.IndexOf(",") == -1 ? "(每周)" : "(每周)对比";
                        break;
                    case "Monthly":
                        type = this.checkedCBox_QCRole.Text.IndexOf(",") == -1 ? "(每月)" : "(每月)对比";
                        break;
                }

                //Xsj:标题
                List<ChartTitle> CTitles = new List<ChartTitle>();

                ChartTitle chartTitle = new ChartTitle();
                chartTitle.Font = new System.Drawing.Font("Tahoma", 12F);
                chartTitle.Text = string.Format(title, type);
                CTitles.Add(chartTitle);

                ChartTitle subTitle = new ChartTitle();
                subTitle.Font = new System.Drawing.Font("Tahoma", 9F);
                CTitles.Add(subTitle);

                string subTitleText = "---" + this.checkedCBox_QCRole.Text;
                subTitle.Text = subTitleText + "  " + ((DateTime)this.dateEditFrom.EditValue).ToString("yyyy-MM-dd") + "~" + ((DateTime)this.dateEditTO.EditValue).ToString("yyyy-MM-dd");


                if (averageValues.Count > 0)
                {
                    ChartTitle[] cts = new ChartTitle[qcRoleCodes.Count];
                    for (int i = 0; i < cts.Length; i++)
                    {
                        cts[i] = new ChartTitle();
                        cts[i].Font = new System.Drawing.Font("Tahoma", 8F);
                        cts[i].Dock = ChartTitleDockStyle.Bottom;
                        cts[i].Alignment = StringAlignment.Near;
                        cts[i].Text = "";
                        string txt = "加权平均值：";
                        if (i == cts.Length - 1)
                        {
                            cts[i].Text += formatString("加权平均值：", txt.Length);
                        }
                        else
                        {
                            cts[i].Text += "　　　　　　"; // formatString("　　　　　　", txt.Length);
                        }
                    }

                    foreach (string item in averageValues)
                    {
                        for (int i = 0; i < cts.Length; i++)
                        {
                            if (cts[i].Text.Trim() == "" || cts[i].Text.Trim() == "加权平均值：")
                            {
                                cts[i].Text += formatString(string.Format(item, type), 30);
                                break;
                            }
                            else
                            {
                                if (cts[i].Text.IndexOf(item.Substring(0, item.IndexOf("_"))) != -1)
                                {
                                    continue;
                                }
                                if (cts[i].Text.IndexOf(item.Substring(item.IndexOf("_"), item.IndexOf(":") - item.IndexOf("_"))) == -1)
                                {
                                    continue;
                                }
                                cts[i].Text += formatString(string.Format(item, type), 30);
                                break;
                            }
                        }
                    }
                    CTitles.AddRange(cts);
                }

                this.chartCtrl_Move.Titles.Clear();
                //this.chartCtrl_Move.Titles.AddRange(new ChartTitle[] { chartTitle, subTitle });
                this.chartCtrl_Move.Titles.AddRange(CTitles.ToArray());
                this.chartCtrl_Move.SeriesTemplate.Label.Visible = true;


                //Xsj:坐标
                XYDiagram xyDiagram1 = this.chartCtrl_Move.Diagram as XYDiagram;
                xyDiagram1.AxisX.GridLines.Visible = true;
                xyDiagram1.AxisX.Title.Visible = true;
                xyDiagram1.AxisX.Title.Text = "异动日期" + type;
                xyDiagram1.AxisX.Label.Angle = -30;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.Message, "错误提示", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private string formatString(string val, int Length)
        {
            int valLength = System.Text.Encoding.Default.GetBytes(val).Length;
            int defaultLength = Length;
            int addLenght = defaultLength - valLength;
            for (int i = 0; i < addLenght; i++)
            {
                val += " ";
            }
            if (val.IndexOf(":") != -1 && val.IndexOf(".") == -1)
            {
                val += " ";
            }
            return val;
        }

        protected virtual void Chart_ObjectHotTracked(object sender, HotTrackEventArgs e)
        {
            if (e.Object is Series)
                e.Cancel = false;
            else
                e.Cancel = true;
        }

        private List<string> GetSelectedQCRoleCode()
        {
            string qcRoleNames = this.checkedCBox_QCRole.EditValue.ToString();
            string[] vals = qcRoleNames.Split(',');
            List<string> roleCodes = new List<string>();
            foreach (string item in vals)
            {
                QC_QCRole bo = this._QCRoles.Where(p => p.RoleName == item.Trim()).FirstOrDefault();
                if (bo != null)
                {
                    roleCodes.Add(bo.RoleCode);
                }
            }
            return roleCodes;
        }

        private void InitiChart()
        {
            this.chartCtrl_Move.RuntimeSelection = true;
            this.chartCtrl_Move.ObjectHotTracked += new HotTrackEventHandler(Chart_ObjectHotTracked);  

            //Xsj:标题
            ChartTitle chartTitle = new ChartTitle();
            chartTitle.Font = new System.Drawing.Font("Tahoma", 12F);
            chartTitle.Text = "首通率曲线图";
            this.chartCtrl_Move.Titles.AddRange(new ChartTitle[] { chartTitle });

            //Xsj:坐标
            XYDiagram xyDiagram1 = this.chartCtrl_Move.Diagram as XYDiagram;
            xyDiagram1.AxisY.GridLines.Visible = false;
            xyDiagram1.AxisY.Title.Visible = true;
            xyDiagram1.AxisY.Interlaced = true;
            //xyDiagram1.AxisY.Range.MinValue = 50;
            //xyDiagram1.AxisY.Range.MaxValue = 100;
            xyDiagram1.AxisY.Title.Text = "异动数量(%）";


            xyDiagram1.AxisX.GridLines.Visible = true;
            xyDiagram1.AxisX.Title.Visible = true;
            xyDiagram1.AxisX.Title.Text = "异动日期";
            xyDiagram1.AxisX.Label.Angle = -30;
 
 
            this.chartCtrl_Move.Legend.AlignmentVertical = LegendAlignmentVertical.TopOutside;
            this.chartCtrl_Move.Legend.AlignmentHorizontal = LegendAlignmentHorizontal.Right;
            this.chartCtrl_Move.Legend.Direction = LegendDirection.RightToLeft;

        }


        /// <summary>
        /// 根据数据创建一个图形展现
        /// </summary>
        /// <param name="caption">图形标题</param>
        /// <param name="viewType">图形类型</param>
        /// <param name="dt">数据DataTable</param>
        /// <param name="rowIndex">图形数据的行序号</param>
        /// <returns></returns>
        private Series CreateSeries(string caption, DevExpress.XtraCharts.ViewType viewType, List<AuditQtyMoveBO> dt)
        {
            Series series = new Series(caption, viewType);
            for (int i = 0; i < dt.Count; i++)
            {
                string argument = dt[i].MoveDate;//参数名称
                decimal value = dt[i].FirstPassRatio;//参数值 
                if (dt[i].AuditQty > 0)
                {
                    series.Points.Add(new SeriesPoint(argument, new double[] { (double)value }));
                }
            }
            if (caption.IndexOf("加权平均") != -1)
            {
                ((LineSeriesView)series.View).LineMarkerOptions.Visible = false;
            }

            return series;
        }


        private bool CheckInput()
        {
            string noteMsg = "";
            if (this.dateEditFrom.EditValue == null)
            {
                noteMsg = "请选择[Date From]!";
            }
            else if (this.dateEditTO.EditValue == null)
            {
                noteMsg = "请选择[Date TO]!";
            }
            else if (this.imageComBOX_AnalyseType.EditValue == null)
            {
                noteMsg = "请选择[Analyse Type]!";
            }
            else if (this.checkedCBox_QCRole.EditValue == null || this.checkedCBox_QCRole.EditValue.ToString() == "")
            {
                noteMsg = "请选择[Record Role]!";
            }
            else
            {
                switch (this._summaryType)
                {
                    case "ByFactory":
                        if (this.chkListBoxCtrl_Factory.CheckedItems.Count == 0)
                        {
                            noteMsg = "请选择[Facoty]!";
                        }
                        break;
                    case "ByWorkShop":
                        if (this.checkedListBoxCtrl_WorkShop.CheckedItems.Count == 0)
                        {
                            noteMsg = "请选择[WorkShop]!";
                        }
                        break;
                    case "ByLine":
                        if (this.checkedListBoxCtrl_WorkLine.CheckedItems.Count == 0)
                        {
                            noteMsg = "请选择[Line]!";
                        }
                        break;
                    case "ByStyle":
                        List<StyleChooseBO> bos = this.gridView_Style.DataSource as List<StyleChooseBO>;
                        List<StyleChooseBO> sBos = bos.Where(p => p.IsSelected).ToList();
                        if (sBos.Count == 0)
                        {
                            noteMsg = "请选择[Style]!";
                        }
                        break;
                }
            }
            if (noteMsg.Trim() != "")
            {
                MessageBox.Show(noteMsg, "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            return true;
        }



        private void InitSearchCondition()
        {
            this._searchCondition = new QCMasterSeartchConditionBO();
            this._searchCondition.QCTimeFrom = this.dateEditFrom.EditValue.ToString();
            this._searchCondition.QCTimeTO = this.dateEditTO.EditValue.ToString();
            this._searchCondition.RecordType = this.imageComBOX_AnalyseType.EditValue.ToString();

            List<string> qcRoleCodes = GetSelectedQCRoleCode();
            string roleCodes = "";
            foreach (string item in qcRoleCodes)
            {
                roleCodes += roleCodes == "" ? "''" + item + "''" : ",''" + item + "''";
            }
            this._searchCondition.QCRole = roleCodes;

            switch (this._summaryType)
            {
                case "ByFactory":
                    string factorys = "";
                    for (int i = 0; i < this.chkListBoxCtrl_Factory.CheckedItems.Count; i++)
                    {
                        string item = this.chkListBoxCtrl_Factory.CheckedItems[i].ToString();
                        factorys += factorys == "" ? "''" + item + "''" : ",''" + item + "''";
                    }
                    this._searchCondition.Factory = factorys;
                    break;
                case "ByWorkShop":
                    this._searchCondition.Factory = "''" + this.imageComboBox_FactoryForByWorkShop.EditValue.ToString() + "''";
                    string workShops = "";
                    for (int i = 0; i < this.checkedListBoxCtrl_WorkShop.CheckedItems.Count; i++)
                    {
                        string item = this.checkedListBoxCtrl_WorkShop.CheckedItems[i].ToString();
                        workShops += workShops == "" ? "''" + item + "''" : ",''" + item + "''";
                    }
                    this._searchCondition.WorkShop = workShops;
                    break;
                case "ByLine":
                    this._searchCondition.Factory = "''" + this.imageCBox_FactoryForByLine.EditValue.ToString() + "''";
                    this._searchCondition.WorkShop = "''" + this.imageCBox_WorkShopForByLine.EditValue.ToString() + "''";
                    string lines = "";
                    for (int i = 0; i < this.checkedListBoxCtrl_WorkLine.CheckedItems.Count; i++)
                    {
                        string item = this.checkedListBoxCtrl_WorkLine.CheckedItems[i].ToString();
                        lines += lines == "" ? "''" + item + "''" : ",''" + item + "''";
                    }
                    this._searchCondition.WorkLine = lines;
                    break;
                case "ByStyle":
                    this._searchCondition.Factory = "''" + this.imageCBox_FactoryForByStyle.EditValue.ToString() + "''";
                    string styles = "";
                    List<StyleChooseBO> bos = this.gridView_Style.DataSource as List<StyleChooseBO>;
                    List<StyleChooseBO> sBos = bos.Where(p => p.IsSelected).ToList();
                    foreach (StyleChooseBO itemBO in sBos)
                    {
                        string item = itemBO.Style;
                        styles += styles == "" ? "''" + item + "''" : ",''" + item + "''";
                    }
                    this._searchCondition.Style = styles;
                    break;
            }
        }


        private void FactoryChange(object sender, EventArgs e)
        {
            string tag = ((DevExpress.XtraEditors.ImageComboBoxEdit)sender).Tag.ToString();
            string factory = ((DevExpress.XtraEditors.ImageComboBoxEdit)sender).EditValue.ToString();
            InitWorkShop(factory, tag);
        }

        private void imageCBox_WorkShopForByLine_SelectedIndexChanged(object sender, EventArgs e)
        {
            string factory = this.imageCBox_FactoryForByLine.EditValue.ToString();
            string workShop = this.imageCBox_WorkShopForByLine.EditValue.ToString();
            InitWorkLine(factory, workShop);
        }

        private void sBtn_Refresh_Click(object sender, EventArgs e)
        {
            string tag = this.imageCBox_FactoryForByStyle.Tag.ToString();
            if (this.imageCBox_FactoryForByStyle.EditValue == null)
            {
                MessageBox.Show("请选择[Factory]!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else if (this.dateEditFrom.EditValue == null)
            {
                MessageBox.Show("请选择[Date From]!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            else if (this.dateEditTO.EditValue == null)
            {
                MessageBox.Show("请选择[Date TO]!", "系统提示", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            string factory = this.imageCBox_FactoryForByStyle.EditValue.ToString();
            InitWorkShop(factory, tag);
        }

        private void sBtn_Export_Click(object sender, EventArgs e)
        {
            SaveFileDialog sfDialog = new SaveFileDialog();
            sfDialog.DefaultExt = "pdf";
            sfDialog.InitialDirectory = "D:";
            sfDialog.AddExtension = true;
            sfDialog.Filter = "*.pdf|*.pdf|*.xls|*.xls";
            if (sfDialog.ShowDialog() == DialogResult.OK)
            {
                string path = sfDialog.FileName;
                if (sfDialog.FileName.ToUpper().EndsWith(".PDF"))
                {
                    this.chartCtrl_Move.OptionsPrint.SizeMode = DevExpress.XtraCharts.Printing.PrintSizeMode.Zoom;
                    this.chartCtrl_Move.ExportToPdf(path);
                }
                else
                {
                    this.chartCtrl_Move.ExportToXls(path);
                }
                OpenFile(path);
            }
        }

        private void OpenFile(string fileName)
        {
            if (XtraMessageBox.Show("Do you want to open this file?", "Export To...", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    System.Diagnostics.Process process = new System.Diagnostics.Process();
                    process.StartInfo.FileName = fileName;
                    process.StartInfo.Verb = "Open";
                    process.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Normal;
                    process.Start();
                }
                catch
                {
                    XtraMessageBox.Show("Cannot find an application on your system suitable for openning the file with exported data.", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void chartCtrl_Move_ObjectSelected(object sender, HotTrackEventArgs e)
        {
            if (e.Object is Series)
            {
                foreach (Series item in this.chartCtrl_Move.Series)
                {
                    if (item == e.Object)
                    {
                        Series ses = e.Object as Series;
                        ses.Label.Visible = true;
                    }
                    else
                    {
                        if (item.Name.IndexOf("目标值") == -1 && item.Name.IndexOf("加权平均") == -1)
                        {
                            item.Label.Visible = false;
                        }
                    }
                }
                e.Cancel = false;
            }
            else
            {
                foreach (Series item in this.chartCtrl_Move.Series)
                {
                    item.Label.Visible = true;
                }
                e.Cancel = true;
            }
        }



    }
}
