namespace PH.LWPM.UI.WF
{
    partial class WFChildFrm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label fileIDLabel;
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label fileIDLabel1;
            System.Windows.Forms.Label auxiliaryJobTitleLabel;
            System.Windows.Forms.Label label49;
            DevExpress.XtraCharts.RadarDiagram radarDiagram1 = new DevExpress.XtraCharts.RadarDiagram();
            DevExpress.XtraCharts.Series series1 = new DevExpress.XtraCharts.Series();
            DevExpress.XtraCharts.SeriesPoint seriesPoint1 = new DevExpress.XtraCharts.SeriesPoint("Skill", new object[] {
            ((object)(90))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint2 = new DevExpress.XtraCharts.SeriesPoint("Attendance", new object[] {
            ((object)(80))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint3 = new DevExpress.XtraCharts.SeriesPoint("Adaptability", new object[] {
            ((object)(86))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint4 = new DevExpress.XtraCharts.SeriesPoint("Adoptability", new object[] {
            ((object)(70))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint5 = new DevExpress.XtraCharts.SeriesPoint("Speed", new object[] {
            ((object)(95))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint6 = new DevExpress.XtraCharts.SeriesPoint("Strength", new object[] {
            ((object)(60))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint7 = new DevExpress.XtraCharts.SeriesPoint("Staminal", new object[] {
            ((object)(75))});
            DevExpress.XtraCharts.SeriesPoint seriesPoint8 = new DevExpress.XtraCharts.SeriesPoint("Teamplayer", new object[] {
            ((object)(85))});
            DevExpress.XtraCharts.RadarLineSeriesView radarLineSeriesView1 = new DevExpress.XtraCharts.RadarLineSeriesView();
            DevExpress.XtraCharts.RadarLineSeriesView radarLineSeriesView2 = new DevExpress.XtraCharts.RadarLineSeriesView();
            DevExpress.XtraCharts.ChartTitle chartTitle1 = new DevExpress.XtraCharts.ChartTitle();
            this.auxiliaryJobTitleLabel1 = new System.Windows.Forms.Label();
            this.workerTypeLabel_chn = new System.Windows.Forms.Label();
            this.lblRecRole_chn = new System.Windows.Forms.Label();
            this.matrix_SkillLabel = new System.Windows.Forms.Label();
            this.matrix_AttendanceLabel = new System.Windows.Forms.Label();
            this.matrix_AdaptabilityLabel = new System.Windows.Forms.Label();
            this.matrix_AdoptabilityLabel = new System.Windows.Forms.Label();
            this.matrix_SpeedLabel = new System.Windows.Forms.Label();
            this.matrix_StrengthLabel = new System.Windows.Forms.Label();
            this.matrix_StaminalLabel = new System.Windows.Forms.Label();
            this.matrix_TeamplayerLabel = new System.Windows.Forms.Label();
            this.matrix_QualityLabel = new System.Windows.Forms.Label();
            this.clsNameComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.chartControl1 = new DevExpress.XtraCharts.ChartControl();
            this.xtraTabControl2 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.txtRECName = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.radioGroup5 = new DevExpress.XtraEditors.RadioGroup();
            this.radioGroup4 = new DevExpress.XtraEditors.RadioGroup();
            this.radioGroup3 = new DevExpress.XtraEditors.RadioGroup();
            this.radioGroup2 = new DevExpress.XtraEditors.RadioGroup();
            this.radioGroup1 = new DevExpress.XtraEditors.RadioGroup();
            this.radIsDeployment = new DevExpress.XtraEditors.RadioGroup();
            this.label50 = new System.Windows.Forms.Label();
            this.txtFAERef = new DevExpress.XtraEditors.TextEdit();
            this.txtWorkForceTyEn = new DevExpress.XtraEditors.TextEdit();
            this.txtTitleTypeCode = new DevExpress.XtraEditors.ButtonEdit();
            this.txtOpenVacancyDueDate = new DevExpress.XtraEditors.DateEdit();
            this.lbOpenVacancyDueDate = new System.Windows.Forms.Label();
            this.chkRemoteFuncSupport_N = new DevExpress.XtraEditors.CheckEdit();
            this.chkRemoteFuncSupport_Y = new DevExpress.XtraEditors.CheckEdit();
            this.chkRemoteFuncControl_N = new DevExpress.XtraEditors.CheckEdit();
            this.chkRemoteFuncControl_Y = new DevExpress.XtraEditors.CheckEdit();
            this.label38 = new System.Windows.Forms.Label();
            this.label39 = new System.Windows.Forms.Label();
            this.label35 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.lue_Division = new DevExpress.XtraEditors.LookUpEdit();
            this.edtDeptLocation = new DevExpress.XtraEditors.TextEdit();
            this.edt_classcn = new DevExpress.XtraEditors.TextEdit();
            this.edt_class = new DevExpress.XtraEditors.TextEdit();
            this.edtWorkRegion = new DevExpress.XtraEditors.TextEdit();
            this.lblWKRegion_Desc = new System.Windows.Forms.Label();
            this.lblWKRegion = new System.Windows.Forms.Label();
            this.lueEmptype = new DevExpress.XtraEditors.LookUpEdit();
            this.label37 = new System.Windows.Forms.Label();
            this.chkStaff = new DevExpress.XtraEditors.CheckEdit();
            this.cobWFPart = new DevExpress.XtraEditors.LookUpEdit();
            this.grp2 = new System.Windows.Forms.GroupBox();
            this.lblAuditByHR = new System.Windows.Forms.Label();
            this.lblDeptHeader = new System.Windows.Forms.Label();
            this.lblImmeHeader = new System.Windows.Forms.Label();
            this.lblPreparedbyhr = new System.Windows.Forms.Label();
            this.edtAudibyHR = new DevExpress.XtraEditors.TextEdit();
            this.edtDeptHeader = new DevExpress.XtraEditors.TextEdit();
            this.edtImmeheader = new DevExpress.XtraEditors.TextEdit();
            this.edtPreparedHR = new DevExpress.XtraEditors.TextEdit();
            this.edtWFPartcn = new DevExpress.XtraEditors.TextEdit();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.comboBoxEdit29 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.dWFCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.comboBoxEdit28 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.inActiveCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.comboBoxEdit27 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit26 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.isRegistAuxiliaryCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.clsNameLabel = new System.Windows.Forms.Label();
            this.comboBoxEdit17 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit25 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.panelAuxiliary = new System.Windows.Forms.Panel();
            this.auxiliaryJobTitleComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.comboBoxEdit24 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label23 = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.label25 = new System.Windows.Forms.Label();
            this.comboBoxEdit18 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label26 = new System.Windows.Forms.Label();
            this.label27 = new System.Windows.Forms.Label();
            this.label34 = new System.Windows.Forms.Label();
            this.comboBoxEdit19 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label28 = new System.Windows.Forms.Label();
            this.label33 = new System.Windows.Forms.Label();
            this.deptComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit20 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deptLabel = new System.Windows.Forms.Label();
            this.label29 = new System.Windows.Forms.Label();
            this.comboBoxEdit23 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.label30 = new System.Windows.Forms.Label();
            this.checkEdit4 = new DevExpress.XtraEditors.CheckEdit();
            this.label32 = new System.Windows.Forms.Label();
            this.jLDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.jobTitleEnLabel = new System.Windows.Forms.Label();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.comboBoxEdit21 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.locationComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label31 = new System.Windows.Forms.Label();
            this.comboBoxEdit22 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.locationLabel = new System.Windows.Forms.Label();
            this.seniorityLabel = new System.Windows.Forms.Label();
            this.jPDateLabel = new System.Windows.Forms.Label();
            this.rEDateLabel = new System.Windows.Forms.Label();
            this.deptNameLabel = new System.Windows.Forms.Label();
            this.idLabel = new System.Windows.Forms.Label();
            this.areaLabel = new System.Windows.Forms.Label();
            this.edtWageType_TW = new DevExpress.XtraEditors.TextEdit();
            this.edtSmfclass = new DevExpress.XtraEditors.TextEdit();
            this.jobTitleCnComboBoxEdit = new DevExpress.XtraEditors.TextEdit();
            this.cobWorkForceTyCn = new DevExpress.XtraEditors.TextEdit();
            this.edtTitletypecode = new DevExpress.XtraEditors.TextEdit();
            this.jobTitleCode = new DevExpress.XtraEditors.TextEdit();
            this.cbbRecrole_chn = new DevExpress.XtraEditors.TextEdit();
            this.cobWhere_2_ClassCn = new DevExpress.XtraEditors.TextEdit();
            this.cobWhere_1_TeamCn = new DevExpress.XtraEditors.TextEdit();
            this.cobWFWhereCn = new DevExpress.XtraEditors.TextEdit();
            this.cobDepartmentCn = new DevExpress.XtraEditors.TextEdit();
            this.senioritySpinEdit = new DevExpress.XtraEditors.TextEdit();
            this.cobTownCn = new DevExpress.XtraEditors.TextEdit();
            this.cobRegionCn = new DevExpress.XtraEditors.TextEdit();
            this.cobAreaCn = new DevExpress.XtraEditors.TextEdit();
            this.S_cobTown = new DevExpress.XtraEditors.ComboBoxEdit();
            this.S_cobCity = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobTown = new DevExpress.XtraEditors.LookUpEdit();
            this.lblTeamNo = new System.Windows.Forms.Label();
            this.lblWageStruct_TW = new System.Windows.Forms.Label();
            this.lblWageStruct_EN = new System.Windows.Forms.Label();
            this.lblWageType = new System.Windows.Forms.Label();
            this.edtWageType_Bd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lueWageType = new DevExpress.XtraEditors.LookUpEdit();
            this.areaComboBoxEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.auxiliaryJobTitleComboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label59 = new System.Windows.Forms.Label();
            this.label58 = new System.Windows.Forms.Label();
            this.label57 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.lblReclocation = new System.Windows.Forms.Label();
            this.cbbReclocation = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbbRecrole_bd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbbRecRole = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblRecrole = new DevExpress.XtraEditors.LabelControl();
            this.label56 = new System.Windows.Forms.Label();
            this.cbbDepartalLocation = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit2 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label55 = new System.Windows.Forms.Label();
            this.cbbTransferDept = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label53 = new System.Windows.Forms.Label();
            this.chkCrossRole_N = new DevExpress.XtraEditors.CheckEdit();
            this.chkHeadCount_N = new DevExpress.XtraEditors.CheckEdit();
            this.chkTemp = new DevExpress.XtraEditors.CheckEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.P1 = new DevExpress.XtraEditors.PictureEdit();
            this.label7 = new System.Windows.Forms.Label();
            this.cobCo_Team = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobCountry = new DevExpress.XtraEditors.ComboBoxEdit();
            this.rEDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.cobDepartmentBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label12 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.lblWFtemp = new System.Windows.Forms.Label();
            this.lblIsRelated = new System.Windows.Forms.Label();
            this.labHeadCount = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.cobRecEn = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobWhere_2_Class = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label9 = new System.Windows.Forms.Label();
            this.lblCrossRole = new System.Windows.Forms.Label();
            this.cobCountryBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobWhere_1_Team = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobRegionBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblGrade = new System.Windows.Forms.Label();
            this.cobAreaBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobTownBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label52 = new System.Windows.Forms.Label();
            this.edtTeamNo = new DevExpress.XtraEditors.TextEdit();
            this.cobSub_Section_FAE = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label13 = new System.Windows.Forms.Label();
            this.lblVacancy = new System.Windows.Forms.Label();
            this.label54 = new System.Windows.Forms.Label();
            this.jLDateLabel = new System.Windows.Forms.Label();
            this.cobWorkForceTyBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.idTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.workerTypeLabel = new System.Windows.Forms.Label();
            this.WFPartlabel = new System.Windows.Forms.Label();
            this.jPDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.factoryComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deptNameTextEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobCountryCn = new DevExpress.XtraEditors.TextEdit();
            this.nameCnTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.label36 = new System.Windows.Forms.Label();
            this.labWorkForceTyEn = new System.Windows.Forms.Label();
            this.nameCnLabel = new System.Windows.Forms.Label();
            this.cobTeamNo = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label46 = new System.Windows.Forms.Label();
            this.nameEnTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.labWorkForceTyCn = new System.Windows.Forms.Label();
            this.nameEnLabel = new System.Windows.Forms.Label();
            this.lblRemoteCtrl = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.lblRemotControl_num = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.label47 = new System.Windows.Forms.Label();
            this.regionLabel = new System.Windows.Forms.Label();
            this.cobWhere = new DevExpress.XtraEditors.ComboBoxEdit();
            this.regionComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lab1_T = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label45 = new System.Windows.Forms.Label();
            this.lblWFWhere_2Cn = new System.Windows.Forms.Label();
            this.labjPDate = new System.Windows.Forms.Label();
            this.cobVacancy = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobStandby = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labrEDate = new System.Windows.Forms.Label();
            this.label44 = new System.Windows.Forms.Label();
            this.lblWFWhere_1Cn = new System.Windows.Forms.Label();
            this.lblseniority = new System.Windows.Forms.Label();
            this.lab2_J = new System.Windows.Forms.Label();
            this.lab4_S = new System.Windows.Forms.Label();
            this.label43 = new System.Windows.Forms.Label();
            this.lab3_P = new System.Windows.Forms.Label();
            this.cobStationed_at = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lab2_T = new System.Windows.Forms.Label();
            this.label42 = new System.Windows.Forms.Label();
            this.lblSub_Section_FAECn = new System.Windows.Forms.Label();
            this.lab1_E = new System.Windows.Forms.Label();
            this.lab3_S = new System.Windows.Forms.Label();
            this.lab4_T = new System.Windows.Forms.Label();
            this.label41 = new System.Windows.Forms.Label();
            this.lblWFWhereCn = new System.Windows.Forms.Label();
            this.lab3_C = new System.Windows.Forms.Label();
            this.cobGrade = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lab_2P = new System.Windows.Forms.Label();
            this.lab4_L = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.lab5_H = new System.Windows.Forms.Label();
            this.lab2_S = new System.Windows.Forms.Label();
            this.cobWorkForceTyEn = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lab1_F = new System.Windows.Forms.Label();
            this.lab6_Cr = new System.Windows.Forms.Label();
            this.labId = new System.Windows.Forms.Label();
            this.cobWhere_2_ClassBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labSex = new System.Windows.Forms.Label();
            this.lblCroossRoleDcrp = new System.Windows.Forms.Label();
            this.labArea = new System.Windows.Forms.Label();
            this.cobWhere_1_TeamBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.labCountry = new System.Windows.Forms.Label();
            this.lab7_G = new System.Windows.Forms.Label();
            this.sexComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobCo_TeamBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobCo_TeamCn = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobSub_Section_FAEBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobSub_Section_FAECn = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lab8_S = new System.Windows.Forms.Label();
            this.lbl_TemaNo = new System.Windows.Forms.Label();
            this.lab9_S = new System.Windows.Forms.Label();
            this.WFPartlabelCn = new System.Windows.Forms.Label();
            this.cobWFWhereBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cobCroossRoleDcrp = new DevExpress.XtraEditors.ComboBoxEdit();
            this.workerTypeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.chkCrossRole = new DevExpress.XtraEditors.CheckEdit();
            this.chkIsRelated = new DevExpress.XtraEditors.CheckEdit();
            this.chkHeadCount = new DevExpress.XtraEditors.CheckEdit();
            this.jobTitleEnComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.jobTitleCodeBd = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label48 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.factoryLabel = new System.Windows.Forms.Label();
            this.lblSub_Section_FAE = new System.Windows.Forms.Label();
            this.lblWFWhere = new System.Windows.Forms.Label();
            this.labDeptName = new System.Windows.Forms.Label();
            this.label40 = new System.Windows.Forms.Label();
            this.lblWFWhere_1 = new System.Windows.Forms.Label();
            this.deptNameCNLabel = new System.Windows.Forms.Label();
            this.lblWFWhere_2 = new System.Windows.Forms.Label();
            this.lab3_Sub = new System.Windows.Forms.Label();
            this.lab2_Sec = new System.Windows.Forms.Label();
            this.lab6_C = new System.Windows.Forms.Label();
            this.lab1_D = new System.Windows.Forms.Label();
            this.lab5_T = new System.Windows.Forms.Label();
            this.xtraTabPage5 = new DevExpress.XtraTab.XtraTabPage();
            this.longLeaveCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.panel1 = new System.Windows.Forms.Panel();
            this.speWorkHour = new DevExpress.XtraEditors.SpinEdit();
            this.timeEdit2 = new DevExpress.XtraEditors.TimeEdit();
            this.timeEdit1 = new DevExpress.XtraEditors.TimeEdit();
            this.longLeaveStartDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.longLeaveEndDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.longLeaveEndDateLabel = new System.Windows.Forms.Label();
            this.lblTotalworkinghours = new System.Windows.Forms.Label();
            this.longLeaveStartDateLabel = new System.Windows.Forms.Label();
            this.wFLevelTextEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.wFLevelLabel = new System.Windows.Forms.Label();
            this.cobWFState = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lineCodeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lineCodeLabel = new System.Windows.Forms.Label();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.comboBoxEdit3 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label4 = new System.Windows.Forms.Label();
            this.matrix_QualitySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_TeamplayerSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_StaminalSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_StrengthSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_SpeedSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_AdoptabilitySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_AdaptabilitySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_AttendanceSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.matrix_SkillSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.xtraTabPage4 = new DevExpress.XtraTab.XtraTabPage();
            this.wfWorkHistory1 = new PH.LWPM.UI.WF.WFWorkHistory();
            this.skillDataSet = new PH.WorkForce.UI.Report.SkillDataSet();
            this.workForceBindingSource = new System.Windows.Forms.BindingSource(this.components);
            fileIDLabel = new System.Windows.Forms.Label();
            codeLabel = new System.Windows.Forms.Label();
            fileIDLabel1 = new System.Windows.Forms.Label();
            auxiliaryJobTitleLabel = new System.Windows.Forms.Label();
            label49 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.clsNameComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(radarDiagram1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(series1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(radarLineSeriesView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(radarLineSeriesView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).BeginInit();
            this.xtraTabControl2.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtRECName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup5.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radIsDeployment.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFAERef.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkForceTyEn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTitleTypeCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpenVacancyDueDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpenVacancyDueDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncSupport_N.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncSupport_Y.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncControl_N.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncControl_Y.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Division.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDeptLocation.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edt_classcn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edt_class.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorkRegion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueEmptype.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkStaff.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFPart.Properties)).BeginInit();
            this.grp2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtAudibyHR.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDeptHeader.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtImmeheader.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPreparedHR.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWFPartcn.Properties)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit29.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dWFCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit28.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.inActiveCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit27.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit26.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isRegistAuxiliaryCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit17.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit25.Properties)).BeginInit();
            this.panelAuxiliary.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.auxiliaryJobTitleComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit24.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit18.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit19.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit20.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit23.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jLDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jLDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit21.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit22.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWageType_TW.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSmfclass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCnComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTitletypecode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecrole_chn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_ClassCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_TeamCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFWhereCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobDepartmentCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.senioritySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTownCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRegionCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobAreaCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.S_cobTown.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.S_cobCity.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTown.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWageType_Bd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueWageType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.areaComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.auxiliaryJobTitleComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbReclocation.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecrole_bd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecRole.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbDepartalLocation.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbTransferDept.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCrossRole_N.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHeadCount_N.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkTemp.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.P1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_Team.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountry.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rEDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rEDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobDepartmentBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRecEn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_Class.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountryBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_Team.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRegionBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobAreaBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTownBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTeamNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAE.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.idTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jPDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jPDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountryCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCnTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTeamNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameEnTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobVacancy.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobStandby.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobStationed_at.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobGrade.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyEn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_ClassBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_TeamBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sexComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_TeamBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_TeamCn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAEBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAECn.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFWhereBd.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCroossRoleDcrp.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.workerTypeComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCrossRole.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkIsRelated.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHeadCount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleEnComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCodeBd.Properties)).BeginInit();
            this.xtraTabPage5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveCheckEdit.Properties)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.speWorkHour.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveStartDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveStartDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveEndDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveEndDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.wFLevelTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFState.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lineCodeComboBoxEdit.Properties)).BeginInit();
            this.xtraTabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_QualitySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_TeamplayerSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_StaminalSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_StrengthSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_SpeedSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AdoptabilitySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AdaptabilitySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AttendanceSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_SkillSpinEdit.Properties)).BeginInit();
            this.xtraTabPage4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.skillDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.workForceBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.MaxItemId = 25;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 1019);
            this.splitterControl1.Size = new System.Drawing.Size(1506, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            this.splitterControl1.Visible = false;
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(1506, 992);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 1025);
            this.panelControl1.Size = new System.Drawing.Size(1506, 0);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.Visible = false;
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Size = new System.Drawing.Size(1493, 0);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Location = new System.Drawing.Point(2, 1);
            this.xtraTabControl1.Size = new System.Drawing.Size(1502, 0);
            this.xtraTabControl1.Visible = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.WorkForce);
            this.BindingSource.CurrentChanged += new System.EventHandler(this.BindingSource_CurrentChanged);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(32767, 0);
            // 
            // fileIDLabel
            // 
            fileIDLabel.AutoSize = true;
            fileIDLabel.Location = new System.Drawing.Point(307, 340);
            fileIDLabel.Name = "fileIDLabel";
            fileIDLabel.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(fileIDLabel, null);
            fileIDLabel.TabIndex = 234;
            fileIDLabel.Text = "4";
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(1158, 631);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 234;
            codeLabel.Text = "5";
            codeLabel.Visible = false;
            // 
            // fileIDLabel1
            // 
            fileIDLabel1.AutoSize = true;
            fileIDLabel1.Location = new System.Drawing.Point(307, 404);
            fileIDLabel1.Name = "fileIDLabel1";
            fileIDLabel1.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(fileIDLabel1, null);
            fileIDLabel1.TabIndex = 234;
            fileIDLabel1.Text = "5";
            // 
            // auxiliaryJobTitleLabel
            // 
            auxiliaryJobTitleLabel.AutoSize = true;
            auxiliaryJobTitleLabel.Location = new System.Drawing.Point(11, 15);
            auxiliaryJobTitleLabel.Name = "auxiliaryJobTitleLabel";
            auxiliaryJobTitleLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(auxiliaryJobTitleLabel, null);
            auxiliaryJobTitleLabel.TabIndex = 209;
            auxiliaryJobTitleLabel.Text = "Auxiliary Job Title:";
            auxiliaryJobTitleLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label49
            // 
            label49.AutoSize = true;
            label49.Location = new System.Drawing.Point(307, 543);
            label49.Name = "label49";
            label49.Size = new System.Drawing.Size(11, 12);
            this.PlatetoolTipController.SetSuperTip(label49, null);
            label49.TabIndex = 285;
            label49.Text = "6";
            // 
            // auxiliaryJobTitleLabel1
            // 
            this.auxiliaryJobTitleLabel1.AutoSize = true;
            this.auxiliaryJobTitleLabel1.Location = new System.Drawing.Point(345, 817);
            this.auxiliaryJobTitleLabel1.Name = "auxiliaryJobTitleLabel1";
            this.auxiliaryJobTitleLabel1.Size = new System.Drawing.Size(155, 12);
            this.PlatetoolTipController.SetSuperTip(this.auxiliaryJobTitleLabel1, null);
            this.auxiliaryJobTitleLabel1.TabIndex = 236;
            this.auxiliaryJobTitleLabel1.Text = "Off-site  remote support:";
            this.auxiliaryJobTitleLabel1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.auxiliaryJobTitleLabel1.Visible = false;
            // 
            // workerTypeLabel_chn
            // 
            this.workerTypeLabel_chn.AutoSize = true;
            this.workerTypeLabel_chn.Location = new System.Drawing.Point(726, 282);
            this.workerTypeLabel_chn.Name = "workerTypeLabel_chn";
            this.workerTypeLabel_chn.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.workerTypeLabel_chn, null);
            this.workerTypeLabel_chn.TabIndex = 228;
            this.workerTypeLabel_chn.Text = "(Chn):";
            // 
            // lblRecRole_chn
            // 
            this.lblRecRole_chn.AutoSize = true;
            this.lblRecRole_chn.Location = new System.Drawing.Point(436, 457);
            this.lblRecRole_chn.Name = "lblRecRole_chn";
            this.lblRecRole_chn.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblRecRole_chn, null);
            this.lblRecRole_chn.TabIndex = 229;
            this.lblRecRole_chn.Text = "(Chn):";
            // 
            // matrix_SkillLabel
            // 
            this.matrix_SkillLabel.Location = new System.Drawing.Point(3, 39);
            this.matrix_SkillLabel.Name = "matrix_SkillLabel";
            this.matrix_SkillLabel.Size = new System.Drawing.Size(151, 24);
            this.PlatetoolTipController.SetSuperTip(this.matrix_SkillLabel, null);
            this.matrix_SkillLabel.TabIndex = 208;
            this.matrix_SkillLabel.Text = "Skill:\r\n技能 ";
            this.matrix_SkillLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_AttendanceLabel
            // 
            this.matrix_AttendanceLabel.Location = new System.Drawing.Point(3, 70);
            this.matrix_AttendanceLabel.Name = "matrix_AttendanceLabel";
            this.matrix_AttendanceLabel.Size = new System.Drawing.Size(151, 27);
            this.PlatetoolTipController.SetSuperTip(this.matrix_AttendanceLabel, null);
            this.matrix_AttendanceLabel.TabIndex = 209;
            this.matrix_AttendanceLabel.Text = "Attendance:\r\n出勤 ";
            this.matrix_AttendanceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_AdaptabilityLabel
            // 
            this.matrix_AdaptabilityLabel.Location = new System.Drawing.Point(3, 106);
            this.matrix_AdaptabilityLabel.Name = "matrix_AdaptabilityLabel";
            this.matrix_AdaptabilityLabel.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.matrix_AdaptabilityLabel, null);
            this.matrix_AdaptabilityLabel.TabIndex = 210;
            this.matrix_AdaptabilityLabel.Text = "Adaptability:\r\n適應度 ";
            this.matrix_AdaptabilityLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_AdoptabilityLabel
            // 
            this.matrix_AdoptabilityLabel.Location = new System.Drawing.Point(3, 144);
            this.matrix_AdoptabilityLabel.Name = "matrix_AdoptabilityLabel";
            this.matrix_AdoptabilityLabel.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.matrix_AdoptabilityLabel, null);
            this.matrix_AdoptabilityLabel.TabIndex = 211;
            this.matrix_AdoptabilityLabel.Text = "Adoptability:\r\n采納度 ";
            this.matrix_AdoptabilityLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_SpeedLabel
            // 
            this.matrix_SpeedLabel.Location = new System.Drawing.Point(3, 182);
            this.matrix_SpeedLabel.Name = "matrix_SpeedLabel";
            this.matrix_SpeedLabel.Size = new System.Drawing.Size(151, 25);
            this.PlatetoolTipController.SetSuperTip(this.matrix_SpeedLabel, null);
            this.matrix_SpeedLabel.TabIndex = 212;
            this.matrix_SpeedLabel.Text = "Speed:\r\n速度 ";
            this.matrix_SpeedLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_StrengthLabel
            // 
            this.matrix_StrengthLabel.Location = new System.Drawing.Point(3, 219);
            this.matrix_StrengthLabel.Name = "matrix_StrengthLabel";
            this.matrix_StrengthLabel.Size = new System.Drawing.Size(151, 27);
            this.PlatetoolTipController.SetSuperTip(this.matrix_StrengthLabel, null);
            this.matrix_StrengthLabel.TabIndex = 213;
            this.matrix_StrengthLabel.Text = "Strength:\r\n體力度 ";
            this.matrix_StrengthLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_StaminalLabel
            // 
            this.matrix_StaminalLabel.Location = new System.Drawing.Point(3, 254);
            this.matrix_StaminalLabel.Name = "matrix_StaminalLabel";
            this.matrix_StaminalLabel.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.matrix_StaminalLabel, null);
            this.matrix_StaminalLabel.TabIndex = 214;
            this.matrix_StaminalLabel.Text = "Staminal:\r\n耐力度 ";
            this.matrix_StaminalLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_TeamplayerLabel
            // 
            this.matrix_TeamplayerLabel.Location = new System.Drawing.Point(3, 290);
            this.matrix_TeamplayerLabel.Name = "matrix_TeamplayerLabel";
            this.matrix_TeamplayerLabel.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.matrix_TeamplayerLabel, null);
            this.matrix_TeamplayerLabel.TabIndex = 215;
            this.matrix_TeamplayerLabel.Text = "Teamplayer:\r\n團隊合作度 ";
            this.matrix_TeamplayerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_QualityLabel
            // 
            this.matrix_QualityLabel.Location = new System.Drawing.Point(3, 330);
            this.matrix_QualityLabel.Name = "matrix_QualityLabel";
            this.matrix_QualityLabel.Size = new System.Drawing.Size(151, 28);
            this.PlatetoolTipController.SetSuperTip(this.matrix_QualityLabel, null);
            this.matrix_QualityLabel.TabIndex = 216;
            this.matrix_QualityLabel.Text = "Quality:\r\n質量 ";
            this.matrix_QualityLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // clsNameComboBoxEdit
            // 
            this.clsNameComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ClsName", true));
            this.clsNameComboBoxEdit.Location = new System.Drawing.Point(754, 878);
            this.clsNameComboBoxEdit.Name = "clsNameComboBoxEdit";
            this.clsNameComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.clsNameComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.clsNameComboBoxEdit.Size = new System.Drawing.Size(88, 21);
            this.clsNameComboBoxEdit.TabIndex = 22;
            this.clsNameComboBoxEdit.Visible = false;
            // 
            // chartControl1
            // 
            radarDiagram1.AxisY.Range.SideMarginsEnabled = true;
            this.chartControl1.Diagram = radarDiagram1;
            this.chartControl1.Legend.AlignmentHorizontal = DevExpress.XtraCharts.LegendAlignmentHorizontal.LeftOutside;
            this.chartControl1.Location = new System.Drawing.Point(359, 16);
            this.chartControl1.Name = "chartControl1";
            this.chartControl1.PaletteBaseColorNumber = 2;
            series1.Name = "Series 1";
            series1.Points.AddRange(new DevExpress.XtraCharts.SeriesPoint[] {
            seriesPoint1,
            seriesPoint2,
            seriesPoint3,
            seriesPoint4,
            seriesPoint5,
            seriesPoint6,
            seriesPoint7,
            seriesPoint8});
            series1.View = radarLineSeriesView1;
            series1.ShowInLegend = false;
            this.chartControl1.SeriesSerializable = new DevExpress.XtraCharts.Series[] {
        series1};
            this.chartControl1.SeriesTemplate.View = radarLineSeriesView2;
            this.chartControl1.Size = new System.Drawing.Size(511, 374);
            this.PlatetoolTipController.SetSuperTip(this.chartControl1, null);
            this.chartControl1.TabIndex = 208;
            chartTitle1.Text = "dWF Matrix / 直接性勞動力矩陣";
            this.chartControl1.Titles.AddRange(new DevExpress.XtraCharts.ChartTitle[] {
            chartTitle1});
            // 
            // xtraTabControl2
            // 
            this.xtraTabControl2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.xtraTabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl2.Location = new System.Drawing.Point(2, 21);
            this.xtraTabControl2.Name = "xtraTabControl2";
            this.xtraTabControl2.SelectedTabPage = this.xtraTabPage2;
            this.xtraTabControl2.Size = new System.Drawing.Size(1502, 969);
            this.xtraTabControl2.TabIndex = 209;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2,
            this.xtraTabPage5,
            this.xtraTabPage3,
            this.xtraTabPage4});
            this.xtraTabControl2.Text = "WorkForce";
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.AutoScroll = true;
            this.xtraTabPage2.Controls.Add(this.txtRECName);
            this.xtraTabPage2.Controls.Add(this.labelControl1);
            this.xtraTabPage2.Controls.Add(this.radioGroup5);
            this.xtraTabPage2.Controls.Add(this.radioGroup4);
            this.xtraTabPage2.Controls.Add(this.radioGroup3);
            this.xtraTabPage2.Controls.Add(this.radioGroup2);
            this.xtraTabPage2.Controls.Add(this.radioGroup1);
            this.xtraTabPage2.Controls.Add(this.radIsDeployment);
            this.xtraTabPage2.Controls.Add(label49);
            this.xtraTabPage2.Controls.Add(this.label50);
            this.xtraTabPage2.Controls.Add(this.txtFAERef);
            this.xtraTabPage2.Controls.Add(this.txtWorkForceTyEn);
            this.xtraTabPage2.Controls.Add(this.txtTitleTypeCode);
            this.xtraTabPage2.Controls.Add(this.txtOpenVacancyDueDate);
            this.xtraTabPage2.Controls.Add(this.lbOpenVacancyDueDate);
            this.xtraTabPage2.Controls.Add(this.chkRemoteFuncSupport_N);
            this.xtraTabPage2.Controls.Add(this.chkRemoteFuncSupport_Y);
            this.xtraTabPage2.Controls.Add(this.chkRemoteFuncControl_N);
            this.xtraTabPage2.Controls.Add(this.chkRemoteFuncControl_Y);
            this.xtraTabPage2.Controls.Add(this.label38);
            this.xtraTabPage2.Controls.Add(this.label39);
            this.xtraTabPage2.Controls.Add(this.label35);
            this.xtraTabPage2.Controls.Add(this.label19);
            this.xtraTabPage2.Controls.Add(this.lue_Division);
            this.xtraTabPage2.Controls.Add(this.edtDeptLocation);
            this.xtraTabPage2.Controls.Add(this.edt_classcn);
            this.xtraTabPage2.Controls.Add(this.edt_class);
            this.xtraTabPage2.Controls.Add(this.edtWorkRegion);
            this.xtraTabPage2.Controls.Add(this.lblWKRegion_Desc);
            this.xtraTabPage2.Controls.Add(this.lblWKRegion);
            this.xtraTabPage2.Controls.Add(this.lueEmptype);
            this.xtraTabPage2.Controls.Add(this.label37);
            this.xtraTabPage2.Controls.Add(this.chkStaff);
            this.xtraTabPage2.Controls.Add(this.cobWFPart);
            this.xtraTabPage2.Controls.Add(this.grp2);
            this.xtraTabPage2.Controls.Add(this.edtWFPartcn);
            this.xtraTabPage2.Controls.Add(this.groupBox1);
            this.xtraTabPage2.Controls.Add(this.edtWageType_TW);
            this.xtraTabPage2.Controls.Add(this.edtSmfclass);
            this.xtraTabPage2.Controls.Add(this.jobTitleCnComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.cobWorkForceTyCn);
            this.xtraTabPage2.Controls.Add(this.edtTitletypecode);
            this.xtraTabPage2.Controls.Add(this.jobTitleCode);
            this.xtraTabPage2.Controls.Add(this.cbbRecrole_chn);
            this.xtraTabPage2.Controls.Add(this.cobWhere_2_ClassCn);
            this.xtraTabPage2.Controls.Add(this.cobWhere_1_TeamCn);
            this.xtraTabPage2.Controls.Add(this.cobWFWhereCn);
            this.xtraTabPage2.Controls.Add(this.cobDepartmentCn);
            this.xtraTabPage2.Controls.Add(this.senioritySpinEdit);
            this.xtraTabPage2.Controls.Add(this.cobTownCn);
            this.xtraTabPage2.Controls.Add(this.cobRegionCn);
            this.xtraTabPage2.Controls.Add(this.cobAreaCn);
            this.xtraTabPage2.Controls.Add(this.S_cobTown);
            this.xtraTabPage2.Controls.Add(this.S_cobCity);
            this.xtraTabPage2.Controls.Add(this.cobTown);
            this.xtraTabPage2.Controls.Add(this.lblTeamNo);
            this.xtraTabPage2.Controls.Add(this.lblWageStruct_TW);
            this.xtraTabPage2.Controls.Add(this.lblWageStruct_EN);
            this.xtraTabPage2.Controls.Add(this.lblWageType);
            this.xtraTabPage2.Controls.Add(this.edtWageType_Bd);
            this.xtraTabPage2.Controls.Add(this.lueWageType);
            this.xtraTabPage2.Controls.Add(this.areaComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.auxiliaryJobTitleLabel1);
            this.xtraTabPage2.Controls.Add(this.auxiliaryJobTitleComboBoxEdit1);
            this.xtraTabPage2.Controls.Add(this.label59);
            this.xtraTabPage2.Controls.Add(this.label58);
            this.xtraTabPage2.Controls.Add(fileIDLabel1);
            this.xtraTabPage2.Controls.Add(codeLabel);
            this.xtraTabPage2.Controls.Add(fileIDLabel);
            this.xtraTabPage2.Controls.Add(this.label57);
            this.xtraTabPage2.Controls.Add(this.label20);
            this.xtraTabPage2.Controls.Add(this.clsNameComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.lblReclocation);
            this.xtraTabPage2.Controls.Add(this.cbbReclocation);
            this.xtraTabPage2.Controls.Add(this.cbbRecrole_bd);
            this.xtraTabPage2.Controls.Add(this.lblRecRole_chn);
            this.xtraTabPage2.Controls.Add(this.workerTypeLabel_chn);
            this.xtraTabPage2.Controls.Add(this.cbbRecRole);
            this.xtraTabPage2.Controls.Add(this.lblRecrole);
            this.xtraTabPage2.Controls.Add(this.label56);
            this.xtraTabPage2.Controls.Add(this.cbbDepartalLocation);
            this.xtraTabPage2.Controls.Add(this.comboBoxEdit2);
            this.xtraTabPage2.Controls.Add(this.comboBoxEdit1);
            this.xtraTabPage2.Controls.Add(this.label55);
            this.xtraTabPage2.Controls.Add(this.cbbTransferDept);
            this.xtraTabPage2.Controls.Add(this.label53);
            this.xtraTabPage2.Controls.Add(this.chkCrossRole_N);
            this.xtraTabPage2.Controls.Add(this.chkHeadCount_N);
            this.xtraTabPage2.Controls.Add(this.chkTemp);
            this.xtraTabPage2.Controls.Add(this.groupControl1);
            this.xtraTabPage2.Controls.Add(this.label7);
            this.xtraTabPage2.Controls.Add(this.cobCo_Team);
            this.xtraTabPage2.Controls.Add(this.cobCountry);
            this.xtraTabPage2.Controls.Add(this.rEDateDateEdit);
            this.xtraTabPage2.Controls.Add(this.cobDepartmentBd);
            this.xtraTabPage2.Controls.Add(this.label12);
            this.xtraTabPage2.Controls.Add(this.label6);
            this.xtraTabPage2.Controls.Add(this.label11);
            this.xtraTabPage2.Controls.Add(this.lblWFtemp);
            this.xtraTabPage2.Controls.Add(this.lblIsRelated);
            this.xtraTabPage2.Controls.Add(this.labHeadCount);
            this.xtraTabPage2.Controls.Add(this.label10);
            this.xtraTabPage2.Controls.Add(this.cobRecEn);
            this.xtraTabPage2.Controls.Add(this.cobWhere_2_Class);
            this.xtraTabPage2.Controls.Add(this.label9);
            this.xtraTabPage2.Controls.Add(this.lblCrossRole);
            this.xtraTabPage2.Controls.Add(this.cobCountryBd);
            this.xtraTabPage2.Controls.Add(this.cobWhere_1_Team);
            this.xtraTabPage2.Controls.Add(this.cobRegionBd);
            this.xtraTabPage2.Controls.Add(this.lblGrade);
            this.xtraTabPage2.Controls.Add(this.cobAreaBd);
            this.xtraTabPage2.Controls.Add(this.cobTownBd);
            this.xtraTabPage2.Controls.Add(this.label52);
            this.xtraTabPage2.Controls.Add(this.edtTeamNo);
            this.xtraTabPage2.Controls.Add(this.cobSub_Section_FAE);
            this.xtraTabPage2.Controls.Add(this.label13);
            this.xtraTabPage2.Controls.Add(this.lblVacancy);
            this.xtraTabPage2.Controls.Add(this.label54);
            this.xtraTabPage2.Controls.Add(this.jLDateLabel);
            this.xtraTabPage2.Controls.Add(this.cobWorkForceTyBd);
            this.xtraTabPage2.Controls.Add(this.idTextEdit);
            this.xtraTabPage2.Controls.Add(this.workerTypeLabel);
            this.xtraTabPage2.Controls.Add(this.WFPartlabel);
            this.xtraTabPage2.Controls.Add(this.jPDateDateEdit);
            this.xtraTabPage2.Controls.Add(this.factoryComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.deptNameTextEdit);
            this.xtraTabPage2.Controls.Add(this.cobCountryCn);
            this.xtraTabPage2.Controls.Add(this.nameCnTextEdit);
            this.xtraTabPage2.Controls.Add(this.label36);
            this.xtraTabPage2.Controls.Add(this.labWorkForceTyEn);
            this.xtraTabPage2.Controls.Add(this.nameCnLabel);
            this.xtraTabPage2.Controls.Add(this.cobTeamNo);
            this.xtraTabPage2.Controls.Add(this.label46);
            this.xtraTabPage2.Controls.Add(this.nameEnTextEdit);
            this.xtraTabPage2.Controls.Add(this.labWorkForceTyCn);
            this.xtraTabPage2.Controls.Add(this.nameEnLabel);
            this.xtraTabPage2.Controls.Add(this.lblRemoteCtrl);
            this.xtraTabPage2.Controls.Add(this.label17);
            this.xtraTabPage2.Controls.Add(this.lblRemotControl_num);
            this.xtraTabPage2.Controls.Add(this.label15);
            this.xtraTabPage2.Controls.Add(this.label3);
            this.xtraTabPage2.Controls.Add(this.label18);
            this.xtraTabPage2.Controls.Add(this.label47);
            this.xtraTabPage2.Controls.Add(this.regionLabel);
            this.xtraTabPage2.Controls.Add(this.cobWhere);
            this.xtraTabPage2.Controls.Add(this.regionComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.lab1_T);
            this.xtraTabPage2.Controls.Add(this.label8);
            this.xtraTabPage2.Controls.Add(this.label45);
            this.xtraTabPage2.Controls.Add(this.lblWFWhere_2Cn);
            this.xtraTabPage2.Controls.Add(this.labjPDate);
            this.xtraTabPage2.Controls.Add(this.cobVacancy);
            this.xtraTabPage2.Controls.Add(this.cobStandby);
            this.xtraTabPage2.Controls.Add(this.labrEDate);
            this.xtraTabPage2.Controls.Add(this.label44);
            this.xtraTabPage2.Controls.Add(this.lblWFWhere_1Cn);
            this.xtraTabPage2.Controls.Add(this.lblseniority);
            this.xtraTabPage2.Controls.Add(this.lab2_J);
            this.xtraTabPage2.Controls.Add(this.lab4_S);
            this.xtraTabPage2.Controls.Add(this.label43);
            this.xtraTabPage2.Controls.Add(this.lab3_P);
            this.xtraTabPage2.Controls.Add(this.cobStationed_at);
            this.xtraTabPage2.Controls.Add(this.lab2_T);
            this.xtraTabPage2.Controls.Add(this.label42);
            this.xtraTabPage2.Controls.Add(this.lblSub_Section_FAECn);
            this.xtraTabPage2.Controls.Add(this.lab1_E);
            this.xtraTabPage2.Controls.Add(this.lab3_S);
            this.xtraTabPage2.Controls.Add(this.lab4_T);
            this.xtraTabPage2.Controls.Add(this.label41);
            this.xtraTabPage2.Controls.Add(this.lblWFWhereCn);
            this.xtraTabPage2.Controls.Add(this.lab3_C);
            this.xtraTabPage2.Controls.Add(this.cobGrade);
            this.xtraTabPage2.Controls.Add(this.lab_2P);
            this.xtraTabPage2.Controls.Add(this.lab4_L);
            this.xtraTabPage2.Controls.Add(this.label16);
            this.xtraTabPage2.Controls.Add(this.lab5_H);
            this.xtraTabPage2.Controls.Add(this.lab2_S);
            this.xtraTabPage2.Controls.Add(this.cobWorkForceTyEn);
            this.xtraTabPage2.Controls.Add(this.lab1_F);
            this.xtraTabPage2.Controls.Add(this.lab6_Cr);
            this.xtraTabPage2.Controls.Add(this.labId);
            this.xtraTabPage2.Controls.Add(this.cobWhere_2_ClassBd);
            this.xtraTabPage2.Controls.Add(this.labSex);
            this.xtraTabPage2.Controls.Add(this.lblCroossRoleDcrp);
            this.xtraTabPage2.Controls.Add(this.labArea);
            this.xtraTabPage2.Controls.Add(this.cobWhere_1_TeamBd);
            this.xtraTabPage2.Controls.Add(this.labCountry);
            this.xtraTabPage2.Controls.Add(this.lab7_G);
            this.xtraTabPage2.Controls.Add(this.sexComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.cobCo_TeamBd);
            this.xtraTabPage2.Controls.Add(this.cobCo_TeamCn);
            this.xtraTabPage2.Controls.Add(this.cobSub_Section_FAEBd);
            this.xtraTabPage2.Controls.Add(this.cobSub_Section_FAECn);
            this.xtraTabPage2.Controls.Add(this.lab8_S);
            this.xtraTabPage2.Controls.Add(this.lbl_TemaNo);
            this.xtraTabPage2.Controls.Add(this.lab9_S);
            this.xtraTabPage2.Controls.Add(this.WFPartlabelCn);
            this.xtraTabPage2.Controls.Add(this.cobWFWhereBd);
            this.xtraTabPage2.Controls.Add(this.cobCroossRoleDcrp);
            this.xtraTabPage2.Controls.Add(this.workerTypeComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.chkCrossRole);
            this.xtraTabPage2.Controls.Add(this.chkIsRelated);
            this.xtraTabPage2.Controls.Add(this.chkHeadCount);
            this.xtraTabPage2.Controls.Add(this.jobTitleEnComboBoxEdit);
            this.xtraTabPage2.Controls.Add(this.jobTitleCodeBd);
            this.xtraTabPage2.Controls.Add(this.label48);
            this.xtraTabPage2.Controls.Add(this.label5);
            this.xtraTabPage2.Controls.Add(this.label14);
            this.xtraTabPage2.Controls.Add(this.factoryLabel);
            this.xtraTabPage2.Controls.Add(this.lblSub_Section_FAE);
            this.xtraTabPage2.Controls.Add(this.lblWFWhere);
            this.xtraTabPage2.Controls.Add(this.labDeptName);
            this.xtraTabPage2.Controls.Add(this.label40);
            this.xtraTabPage2.Controls.Add(this.lblWFWhere_1);
            this.xtraTabPage2.Controls.Add(this.deptNameCNLabel);
            this.xtraTabPage2.Controls.Add(this.lblWFWhere_2);
            this.xtraTabPage2.Controls.Add(this.lab3_Sub);
            this.xtraTabPage2.Controls.Add(this.lab2_Sec);
            this.xtraTabPage2.Controls.Add(this.lab6_C);
            this.xtraTabPage2.Controls.Add(this.lab1_D);
            this.xtraTabPage2.Controls.Add(this.lab5_T);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1493, 937);
            this.xtraTabPage2.Text = "Employee Info";
            // 
            // txtRECName
            // 
            this.txtRECName.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RecBd", true));
            this.txtRECName.Location = new System.Drawing.Point(481, 476);
            this.txtRECName.Name = "txtRECName";
            this.txtRECName.Size = new System.Drawing.Size(133, 21);
            this.txtRECName.TabIndex = 293;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(330, 477);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(24, 12);
            this.labelControl1.TabIndex = 292;
            this.labelControl1.Text = "REC:";
            // 
            // radioGroup5
            // 
            this.radioGroup5.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemoteFuncSupport", true));
            this.radioGroup5.Location = new System.Drawing.Point(774, 450);
            this.radioGroup5.Name = "radioGroup5";
            this.radioGroup5.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "N")});
            this.radioGroup5.Size = new System.Drawing.Size(87, 20);
            this.radioGroup5.TabIndex = 291;
            // 
            // radioGroup4
            // 
            this.radioGroup4.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemoteFuncControl", true));
            this.radioGroup4.Location = new System.Drawing.Point(774, 424);
            this.radioGroup4.Name = "radioGroup4";
            this.radioGroup4.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "N")});
            this.radioGroup4.Size = new System.Drawing.Size(87, 20);
            this.radioGroup4.TabIndex = 290;
            // 
            // radioGroup3
            // 
            this.radioGroup3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CrossRole", true));
            this.radioGroup3.Location = new System.Drawing.Point(775, 402);
            this.radioGroup3.Name = "radioGroup3";
            this.radioGroup3.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "N")});
            this.radioGroup3.Size = new System.Drawing.Size(87, 20);
            this.radioGroup3.TabIndex = 289;
            // 
            // radioGroup2
            // 
            this.radioGroup2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HeadCount", true));
            this.radioGroup2.Location = new System.Drawing.Point(775, 380);
            this.radioGroup2.Name = "radioGroup2";
            this.radioGroup2.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "N")});
            this.radioGroup2.Size = new System.Drawing.Size(87, 20);
            this.radioGroup2.TabIndex = 288;
            this.radioGroup2.SelectedIndexChanged += new System.EventHandler(this.radioGroup2_SelectedIndexChanged);
            // 
            // radioGroup1
            // 
            this.radioGroup1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SecondOffice", true));
            this.radioGroup1.Location = new System.Drawing.Point(482, 313);
            this.radioGroup1.Name = "radioGroup1";
            this.radioGroup1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Y", "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("N", "N")});
            this.radioGroup1.Size = new System.Drawing.Size(95, 20);
            this.radioGroup1.TabIndex = 287;
            // 
            // radIsDeployment
            // 
            this.radIsDeployment.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsDeployment", true));
            this.radIsDeployment.Location = new System.Drawing.Point(481, 541);
            this.radIsDeployment.Name = "radIsDeployment";
            this.radIsDeployment.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Y"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "N")});
            this.radIsDeployment.Size = new System.Drawing.Size(96, 20);
            this.radIsDeployment.TabIndex = 286;
            // 
            // label50
            // 
            this.label50.Location = new System.Drawing.Point(329, 540);
            this.label50.Name = "label50";
            this.label50.Size = new System.Drawing.Size(118, 18);
            this.PlatetoolTipController.SetSuperTip(this.label50, null);
            this.label50.TabIndex = 284;
            this.label50.Text = "Deployment (Y/N):";
            this.label50.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // txtFAERef
            // 
            this.txtFAERef.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "FAERef", true));
            this.txtFAERef.Location = new System.Drawing.Point(482, 247);
            this.txtFAERef.Name = "txtFAERef";
            this.txtFAERef.Size = new System.Drawing.Size(133, 21);
            this.txtFAERef.TabIndex = 283;
            this.txtFAERef.Visible = false;
            // 
            // txtWorkForceTyEn
            // 
            this.txtWorkForceTyEn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkForceTyEn", true));
            this.txtWorkForceTyEn.Location = new System.Drawing.Point(774, 121);
            this.txtWorkForceTyEn.Name = "txtWorkForceTyEn";
            this.txtWorkForceTyEn.Size = new System.Drawing.Size(130, 21);
            this.txtWorkForceTyEn.TabIndex = 282;
            // 
            // txtTitleTypeCode
            // 
            this.txtTitleTypeCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TitleTypeCode", true));
            this.txtTitleTypeCode.Location = new System.Drawing.Point(774, 97);
            this.txtTitleTypeCode.Name = "txtTitleTypeCode";
            this.txtTitleTypeCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtTitleTypeCode.Size = new System.Drawing.Size(130, 21);
            this.txtTitleTypeCode.TabIndex = 281;
            this.txtTitleTypeCode.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.txtTitleTypeCode_ButtonClick);
            // 
            // txtOpenVacancyDueDate
            // 
            this.txtOpenVacancyDueDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "VacancyDate", true));
            this.txtOpenVacancyDueDate.EditValue = null;
            this.txtOpenVacancyDueDate.Location = new System.Drawing.Point(974, 45);
            this.txtOpenVacancyDueDate.Name = "txtOpenVacancyDueDate";
            this.txtOpenVacancyDueDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtOpenVacancyDueDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtOpenVacancyDueDate.Size = new System.Drawing.Size(113, 21);
            this.txtOpenVacancyDueDate.TabIndex = 280;
            // 
            // lbOpenVacancyDueDate
            // 
            this.lbOpenVacancyDueDate.AutoSize = true;
            this.lbOpenVacancyDueDate.Location = new System.Drawing.Point(914, 50);
            this.lbOpenVacancyDueDate.Name = "lbOpenVacancyDueDate";
            this.lbOpenVacancyDueDate.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbOpenVacancyDueDate, null);
            this.lbOpenVacancyDueDate.TabIndex = 279;
            this.lbOpenVacancyDueDate.Text = "Need dd:";
            // 
            // chkRemoteFuncSupport_N
            // 
            this.chkRemoteFuncSupport_N.Location = new System.Drawing.Point(1277, 480);
            this.chkRemoteFuncSupport_N.Name = "chkRemoteFuncSupport_N";
            this.chkRemoteFuncSupport_N.Properties.Caption = "N";
            this.chkRemoteFuncSupport_N.Size = new System.Drawing.Size(51, 19);
            this.chkRemoteFuncSupport_N.TabIndex = 221;
            this.chkRemoteFuncSupport_N.Visible = false;
            this.chkRemoteFuncSupport_N.CheckedChanged += new System.EventHandler(this.chkRemoteFuncSupport_N_CheckedChanged);
            // 
            // chkRemoteFuncSupport_Y
            // 
            this.chkRemoteFuncSupport_Y.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemoteFuncSupport", true));
            this.chkRemoteFuncSupport_Y.Location = new System.Drawing.Point(1223, 480);
            this.chkRemoteFuncSupport_Y.Name = "chkRemoteFuncSupport_Y";
            this.chkRemoteFuncSupport_Y.Properties.Caption = "Y";
            this.chkRemoteFuncSupport_Y.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.chkRemoteFuncSupport_Y.Size = new System.Drawing.Size(35, 19);
            this.chkRemoteFuncSupport_Y.TabIndex = 44;
            this.chkRemoteFuncSupport_Y.Visible = false;
            this.chkRemoteFuncSupport_Y.CheckedChanged += new System.EventHandler(this.chkRemoteFuncSupport_Y_CheckedChanged);
            // 
            // chkRemoteFuncControl_N
            // 
            this.chkRemoteFuncControl_N.Location = new System.Drawing.Point(1277, 454);
            this.chkRemoteFuncControl_N.Name = "chkRemoteFuncControl_N";
            this.chkRemoteFuncControl_N.Properties.Caption = "N";
            this.chkRemoteFuncControl_N.Size = new System.Drawing.Size(51, 19);
            this.chkRemoteFuncControl_N.TabIndex = 220;
            this.chkRemoteFuncControl_N.Visible = false;
            this.chkRemoteFuncControl_N.CheckedChanged += new System.EventHandler(this.chkRemoteFuncControl_N_CheckedChanged);
            // 
            // chkRemoteFuncControl_Y
            // 
            this.chkRemoteFuncControl_Y.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RemoteFuncControl", true));
            this.chkRemoteFuncControl_Y.Location = new System.Drawing.Point(1223, 454);
            this.chkRemoteFuncControl_Y.Name = "chkRemoteFuncControl_Y";
            this.chkRemoteFuncControl_Y.Properties.Caption = "Y";
            this.chkRemoteFuncControl_Y.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.chkRemoteFuncControl_Y.Size = new System.Drawing.Size(35, 19);
            this.chkRemoteFuncControl_Y.TabIndex = 43;
            this.chkRemoteFuncControl_Y.Visible = false;
            this.chkRemoteFuncControl_Y.CheckedChanged += new System.EventHandler(this.chkRemoteFuncControl_Y_CheckedChanged);
            // 
            // label38
            // 
            this.label38.Location = new System.Drawing.Point(645, 418);
            this.label38.Name = "label38";
            this.label38.Size = new System.Drawing.Size(110, 25);
            this.PlatetoolTipController.SetSuperTip(this.label38, null);
            this.label38.TabIndex = 24;
            this.label38.Text = "Off-site remote support CL (Y/N):";
            // 
            // label39
            // 
            this.label39.Location = new System.Drawing.Point(644, 446);
            this.label39.Name = "label39";
            this.label39.Size = new System.Drawing.Size(122, 25);
            this.PlatetoolTipController.SetSuperTip(this.label39, null);
            this.label39.TabIndex = 25;
            this.label39.Text = "Off-site remote support GX (Y/N):";
            // 
            // label35
            // 
            this.label35.AutoSize = true;
            this.label35.Location = new System.Drawing.Point(617, 450);
            this.label35.Name = "label35";
            this.label35.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.label35, null);
            this.label35.TabIndex = 25;
            this.label35.Text = "8.2";
            this.label35.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(618, 421);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.label19, null);
            this.label19.TabIndex = 24;
            this.label19.Text = "8.1";
            this.label19.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lue_Division
            // 
            this.lue_Division.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ControlOrSupport", true));
            this.lue_Division.Location = new System.Drawing.Point(482, 279);
            this.lue_Division.Name = "lue_Division";
            this.lue_Division.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lue_Division.Properties.NullText = "";
            this.lue_Division.Size = new System.Drawing.Size(136, 21);
            this.lue_Division.TabIndex = 278;
            // 
            // edtDeptLocation
            // 
            this.edtDeptLocation.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Location", true));
            this.edtDeptLocation.Location = new System.Drawing.Point(1379, 630);
            this.edtDeptLocation.Name = "edtDeptLocation";
            this.edtDeptLocation.Size = new System.Drawing.Size(133, 21);
            this.edtDeptLocation.TabIndex = 277;
            this.edtDeptLocation.Visible = false;
            // 
            // edt_classcn
            // 
            this.edt_classcn.Enabled = false;
            this.edt_classcn.Location = new System.Drawing.Point(1402, 725);
            this.edt_classcn.Name = "edt_classcn";
            this.edt_classcn.Size = new System.Drawing.Size(130, 21);
            this.edt_classcn.TabIndex = 276;
            this.edt_classcn.Visible = false;
            // 
            // edt_class
            // 
            this.edt_class.Enabled = false;
            this.edt_class.Location = new System.Drawing.Point(1381, 698);
            this.edt_class.Name = "edt_class";
            this.edt_class.Size = new System.Drawing.Size(131, 21);
            this.edt_class.TabIndex = 275;
            this.edt_class.Visible = false;
            // 
            // edtWorkRegion
            // 
            this.edtWorkRegion.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkRegion", true));
            this.edtWorkRegion.Location = new System.Drawing.Point(407, 697);
            this.edtWorkRegion.Name = "edtWorkRegion";
            this.edtWorkRegion.Size = new System.Drawing.Size(131, 21);
            this.edtWorkRegion.TabIndex = 274;
            this.edtWorkRegion.Visible = false;
            // 
            // lblWKRegion_Desc
            // 
            this.lblWKRegion_Desc.AutoSize = true;
            this.lblWKRegion_Desc.Location = new System.Drawing.Point(318, 697);
            this.lblWKRegion_Desc.Name = "lblWKRegion_Desc";
            this.lblWKRegion_Desc.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWKRegion_Desc, null);
            this.lblWKRegion_Desc.TabIndex = 273;
            this.lblWKRegion_Desc.Text = "Work Region :";
            this.lblWKRegion_Desc.Visible = false;
            // 
            // lblWKRegion
            // 
            this.lblWKRegion.AutoSize = true;
            this.lblWKRegion.Location = new System.Drawing.Point(277, 697);
            this.lblWKRegion.Name = "lblWKRegion";
            this.lblWKRegion.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWKRegion, null);
            this.lblWKRegion.TabIndex = 272;
            this.lblWKRegion.Text = "1.5";
            this.lblWKRegion.Visible = false;
            // 
            // lueEmptype
            // 
            this.lueEmptype.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Vacancy", true));
            this.lueEmptype.Location = new System.Drawing.Point(481, 44);
            this.lueEmptype.Name = "lueEmptype";
            this.lueEmptype.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueEmptype.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Employee Type", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lueEmptype.Properties.NullText = "";
            this.lueEmptype.Size = new System.Drawing.Size(133, 21);
            this.lueEmptype.TabIndex = 271;
            this.lueEmptype.EditValueChanged += new System.EventHandler(this.lueEmptype_EditValueChanged);
            // 
            // label37
            // 
            this.label37.AutoSize = true;
            this.label37.Location = new System.Drawing.Point(347, 47);
            this.label37.Name = "label37";
            this.label37.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.label37, null);
            this.label37.TabIndex = 270;
            this.label37.Text = "Employee Type:";
            // 
            // chkStaff
            // 
            this.chkStaff.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsStaff", true));
            this.chkStaff.Location = new System.Drawing.Point(1252, 550);
            this.chkStaff.Name = "chkStaff";
            this.chkStaff.Properties.Caption = "";
            this.chkStaff.Size = new System.Drawing.Size(57, 19);
            this.chkStaff.TabIndex = 268;
            this.chkStaff.Visible = false;
            // 
            // cobWFPart
            // 
            this.cobWFPart.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NextLineCode", true));
            this.cobWFPart.Location = new System.Drawing.Point(774, 306);
            this.cobWFPart.Name = "cobWFPart";
            this.cobWFPart.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWFPart.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ExtraField1", "Brief. desc.", 220),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Description", 300),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description (CN)", 280)});
            this.cobWFPart.Properties.DropDownRows = 10;
            this.cobWFPart.Properties.NullText = "";
            this.cobWFPart.Properties.PopupWidth = 780;
            this.cobWFPart.Size = new System.Drawing.Size(134, 21);
            this.cobWFPart.TabIndex = 267;
            this.cobWFPart.EditValueChanged += new System.EventHandler(this.cobWFPart_EditValueChanged);
            // 
            // grp2
            // 
            this.grp2.Controls.Add(this.lblAuditByHR);
            this.grp2.Controls.Add(this.lblDeptHeader);
            this.grp2.Controls.Add(this.lblImmeHeader);
            this.grp2.Controls.Add(this.lblPreparedbyhr);
            this.grp2.Controls.Add(this.edtAudibyHR);
            this.grp2.Controls.Add(this.edtDeptHeader);
            this.grp2.Controls.Add(this.edtImmeheader);
            this.grp2.Controls.Add(this.edtPreparedHR);
            this.grp2.Location = new System.Drawing.Point(927, 326);
            this.grp2.Name = "grp2";
            this.grp2.Size = new System.Drawing.Size(215, 233);
            this.PlatetoolTipController.SetSuperTip(this.grp2, null);
            this.grp2.TabIndex = 266;
            this.grp2.TabStop = false;
            // 
            // lblAuditByHR
            // 
            this.lblAuditByHR.AutoSize = true;
            this.lblAuditByHR.Location = new System.Drawing.Point(7, 173);
            this.lblAuditByHR.Name = "lblAuditByHR";
            this.lblAuditByHR.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblAuditByHR, null);
            this.lblAuditByHR.TabIndex = 7;
            this.lblAuditByHR.Text = "Audited by HR:";
            // 
            // lblDeptHeader
            // 
            this.lblDeptHeader.AutoSize = true;
            this.lblDeptHeader.Location = new System.Drawing.Point(6, 126);
            this.lblDeptHeader.Name = "lblDeptHeader";
            this.lblDeptHeader.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblDeptHeader, null);
            this.lblDeptHeader.TabIndex = 6;
            this.lblDeptHeader.Text = "Confirmed by dept head:";
            // 
            // lblImmeHeader
            // 
            this.lblImmeHeader.AutoSize = true;
            this.lblImmeHeader.Location = new System.Drawing.Point(6, 79);
            this.lblImmeHeader.Name = "lblImmeHeader";
            this.lblImmeHeader.Size = new System.Drawing.Size(173, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblImmeHeader, null);
            this.lblImmeHeader.TabIndex = 5;
            this.lblImmeHeader.Text = "Confirmed by immediate head:";
            // 
            // lblPreparedbyhr
            // 
            this.lblPreparedbyhr.AutoSize = true;
            this.lblPreparedbyhr.Location = new System.Drawing.Point(8, 34);
            this.lblPreparedbyhr.Name = "lblPreparedbyhr";
            this.lblPreparedbyhr.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblPreparedbyhr, null);
            this.lblPreparedbyhr.TabIndex = 4;
            this.lblPreparedbyhr.Text = "Prepared by HR:";
            // 
            // edtAudibyHR
            // 
            this.edtAudibyHR.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuditedName", true));
            this.edtAudibyHR.Location = new System.Drawing.Point(5, 189);
            this.edtAudibyHR.Name = "edtAudibyHR";
            this.edtAudibyHR.Size = new System.Drawing.Size(174, 21);
            this.edtAudibyHR.TabIndex = 3;
            // 
            // edtDeptHeader
            // 
            this.edtDeptHeader.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ConfirmDeptHead", true));
            this.edtDeptHeader.Location = new System.Drawing.Point(5, 142);
            this.edtDeptHeader.Name = "edtDeptHeader";
            this.edtDeptHeader.Size = new System.Drawing.Size(174, 21);
            this.edtDeptHeader.TabIndex = 2;
            // 
            // edtImmeheader
            // 
            this.edtImmeheader.AllowDrop = true;
            this.edtImmeheader.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ConfirmName", true));
            this.edtImmeheader.Location = new System.Drawing.Point(4, 95);
            this.edtImmeheader.Name = "edtImmeheader";
            this.edtImmeheader.Size = new System.Drawing.Size(175, 21);
            this.edtImmeheader.TabIndex = 1;
            // 
            // edtPreparedHR
            // 
            this.edtPreparedHR.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PrepanedByName", true));
            this.edtPreparedHR.Location = new System.Drawing.Point(5, 50);
            this.edtPreparedHR.Name = "edtPreparedHR";
            this.edtPreparedHR.Size = new System.Drawing.Size(174, 21);
            this.edtPreparedHR.TabIndex = 0;
            // 
            // edtWFPartcn
            // 
            this.edtWFPartcn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFPartCn", true));
            this.edtWFPartcn.Location = new System.Drawing.Point(774, 331);
            this.edtWFPartcn.Name = "edtWFPartcn";
            this.edtWFPartcn.Size = new System.Drawing.Size(131, 21);
            this.edtWFPartcn.TabIndex = 265;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.comboBoxEdit29);
            this.groupBox1.Controls.Add(this.dWFCheckEdit);
            this.groupBox1.Controls.Add(this.comboBoxEdit28);
            this.groupBox1.Controls.Add(this.inActiveCheckEdit);
            this.groupBox1.Controls.Add(this.comboBoxEdit27);
            this.groupBox1.Controls.Add(this.comboBoxEdit26);
            this.groupBox1.Controls.Add(this.isRegistAuxiliaryCheckEdit);
            this.groupBox1.Controls.Add(this.clsNameLabel);
            this.groupBox1.Controls.Add(this.comboBoxEdit17);
            this.groupBox1.Controls.Add(this.comboBoxEdit25);
            this.groupBox1.Controls.Add(this.panelAuxiliary);
            this.groupBox1.Controls.Add(this.label21);
            this.groupBox1.Controls.Add(this.label22);
            this.groupBox1.Controls.Add(this.comboBoxEdit24);
            this.groupBox1.Controls.Add(this.label23);
            this.groupBox1.Controls.Add(this.label24);
            this.groupBox1.Controls.Add(this.label25);
            this.groupBox1.Controls.Add(this.comboBoxEdit18);
            this.groupBox1.Controls.Add(this.label26);
            this.groupBox1.Controls.Add(this.label27);
            this.groupBox1.Controls.Add(this.label34);
            this.groupBox1.Controls.Add(this.comboBoxEdit19);
            this.groupBox1.Controls.Add(this.label28);
            this.groupBox1.Controls.Add(this.label33);
            this.groupBox1.Controls.Add(this.deptComboBoxEdit);
            this.groupBox1.Controls.Add(this.comboBoxEdit20);
            this.groupBox1.Controls.Add(this.deptLabel);
            this.groupBox1.Controls.Add(this.label29);
            this.groupBox1.Controls.Add(this.comboBoxEdit23);
            this.groupBox1.Controls.Add(this.spinEdit2);
            this.groupBox1.Controls.Add(this.label30);
            this.groupBox1.Controls.Add(this.checkEdit4);
            this.groupBox1.Controls.Add(this.label32);
            this.groupBox1.Controls.Add(this.jLDateDateEdit);
            this.groupBox1.Controls.Add(this.jobTitleEnLabel);
            this.groupBox1.Controls.Add(this.groupControl3);
            this.groupBox1.Controls.Add(this.comboBoxEdit21);
            this.groupBox1.Controls.Add(this.locationComboBoxEdit);
            this.groupBox1.Controls.Add(this.label31);
            this.groupBox1.Controls.Add(this.comboBoxEdit22);
            this.groupBox1.Controls.Add(this.locationLabel);
            this.groupBox1.Controls.Add(this.seniorityLabel);
            this.groupBox1.Controls.Add(this.jPDateLabel);
            this.groupBox1.Controls.Add(this.rEDateLabel);
            this.groupBox1.Controls.Add(this.deptNameLabel);
            this.groupBox1.Controls.Add(this.idLabel);
            this.groupBox1.Controls.Add(this.areaLabel);
            this.groupBox1.Location = new System.Drawing.Point(1031, 845);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(76, 24);
            this.PlatetoolTipController.SetSuperTip(this.groupBox1, null);
            this.groupBox1.TabIndex = 264;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "hide";
            this.groupBox1.Visible = false;
            // 
            // comboBoxEdit29
            // 
            this.comboBoxEdit29.Location = new System.Drawing.Point(-276, -214);
            this.comboBoxEdit29.Name = "comboBoxEdit29";
            this.comboBoxEdit29.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit29.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit29.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit29.TabIndex = 218;
            // 
            // dWFCheckEdit
            // 
            this.dWFCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "dWF", true));
            this.dWFCheckEdit.Location = new System.Drawing.Point(5, 62);
            this.dWFCheckEdit.Name = "dWFCheckEdit";
            this.dWFCheckEdit.Properties.Caption = "dWF";
            this.dWFCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.dWFCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.dWFCheckEdit.TabIndex = 40;
            this.dWFCheckEdit.Visible = false;
            // 
            // comboBoxEdit28
            // 
            this.comboBoxEdit28.AllowDrop = true;
            this.comboBoxEdit28.Location = new System.Drawing.Point(-276, -245);
            this.comboBoxEdit28.Name = "comboBoxEdit28";
            this.comboBoxEdit28.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit28.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit28.TabIndex = 217;
            // 
            // inActiveCheckEdit
            // 
            this.inActiveCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "InActive", true));
            this.inActiveCheckEdit.Location = new System.Drawing.Point(6, 198);
            this.inActiveCheckEdit.Name = "inActiveCheckEdit";
            this.inActiveCheckEdit.Properties.Caption = "Duty Inactive";
            this.inActiveCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.inActiveCheckEdit.Size = new System.Drawing.Size(112, 19);
            this.inActiveCheckEdit.TabIndex = 41;
            this.inActiveCheckEdit.Visible = false;
            // 
            // comboBoxEdit27
            // 
            this.comboBoxEdit27.AllowDrop = true;
            this.comboBoxEdit27.Location = new System.Drawing.Point(-276, -3);
            this.comboBoxEdit27.Name = "comboBoxEdit27";
            this.comboBoxEdit27.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit27.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit27.TabIndex = 217;
            // 
            // comboBoxEdit26
            // 
            this.comboBoxEdit26.AllowDrop = true;
            this.comboBoxEdit26.Location = new System.Drawing.Point(-275, -296);
            this.comboBoxEdit26.Name = "comboBoxEdit26";
            this.comboBoxEdit26.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit26.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit26.TabIndex = 217;
            // 
            // isRegistAuxiliaryCheckEdit
            // 
            this.isRegistAuxiliaryCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsRegistAuxiliary", true));
            this.isRegistAuxiliaryCheckEdit.Location = new System.Drawing.Point(34, 99);
            this.isRegistAuxiliaryCheckEdit.Name = "isRegistAuxiliaryCheckEdit";
            this.isRegistAuxiliaryCheckEdit.Properties.Caption = "Is Regist Auxiliary";
            this.isRegistAuxiliaryCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.isRegistAuxiliaryCheckEdit.Size = new System.Drawing.Size(150, 19);
            this.isRegistAuxiliaryCheckEdit.TabIndex = 209;
            this.isRegistAuxiliaryCheckEdit.Visible = false;
            // 
            // clsNameLabel
            // 
            this.clsNameLabel.Location = new System.Drawing.Point(15, 36);
            this.clsNameLabel.Name = "clsNameLabel";
            this.clsNameLabel.Size = new System.Drawing.Size(77, 16);
            this.PlatetoolTipController.SetSuperTip(this.clsNameLabel, null);
            this.clsNameLabel.TabIndex = 21;
            this.clsNameLabel.Text = "Dept Group:";
            this.clsNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.clsNameLabel.Visible = false;
            // 
            // comboBoxEdit17
            // 
            this.comboBoxEdit17.Location = new System.Drawing.Point(-275, -377);
            this.comboBoxEdit17.Name = "comboBoxEdit17";
            this.comboBoxEdit17.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit17.Properties.Items.AddRange(new object[] {
            "Female",
            "Male"});
            this.comboBoxEdit17.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit17.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit17.TabIndex = 24;
            // 
            // comboBoxEdit25
            // 
            this.comboBoxEdit25.Location = new System.Drawing.Point(-276, -30);
            this.comboBoxEdit25.Name = "comboBoxEdit25";
            this.comboBoxEdit25.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit25.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit25.TabIndex = 217;
            // 
            // panelAuxiliary
            // 
            this.panelAuxiliary.Controls.Add(this.auxiliaryJobTitleComboBoxEdit);
            this.panelAuxiliary.Controls.Add(auxiliaryJobTitleLabel);
            this.panelAuxiliary.Location = new System.Drawing.Point(6, 124);
            this.panelAuxiliary.Name = "panelAuxiliary";
            this.panelAuxiliary.Size = new System.Drawing.Size(222, 54);
            this.PlatetoolTipController.SetSuperTip(this.panelAuxiliary, null);
            this.panelAuxiliary.TabIndex = 211;
            this.panelAuxiliary.Visible = false;
            // 
            // auxiliaryJobTitleComboBoxEdit
            // 
            this.auxiliaryJobTitleComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuxiliaryJobTitle", true));
            this.auxiliaryJobTitleComboBoxEdit.Location = new System.Drawing.Point(115, 12);
            this.auxiliaryJobTitleComboBoxEdit.Name = "auxiliaryJobTitleComboBoxEdit";
            this.auxiliaryJobTitleComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.auxiliaryJobTitleComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Hand Worker",
            "In-line Inspector",
            "Sewing Machinist"});
            this.auxiliaryJobTitleComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.auxiliaryJobTitleComboBoxEdit.Size = new System.Drawing.Size(107, 21);
            this.auxiliaryJobTitleComboBoxEdit.TabIndex = 210;
            // 
            // label21
            // 
            this.label21.Location = new System.Drawing.Point(-432, -374);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label21, null);
            this.label21.TabIndex = 23;
            this.label21.Text = "Sex:";
            this.label21.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label22
            // 
            this.label22.Location = new System.Drawing.Point(-432, -318);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label22, null);
            this.label22.TabIndex = 23;
            this.label22.Text = "WF Part (Eng):";
            this.label22.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // comboBoxEdit24
            // 
            this.comboBoxEdit24.Location = new System.Drawing.Point(-276, -323);
            this.comboBoxEdit24.Name = "comboBoxEdit24";
            this.comboBoxEdit24.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit24.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit24.TabIndex = 217;
            // 
            // label23
            // 
            this.label23.Location = new System.Drawing.Point(-432, -25);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label23, null);
            this.label23.TabIndex = 23;
            this.label23.Text = "Work Force Type (Eng):";
            this.label23.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label24
            // 
            this.label24.Location = new System.Drawing.Point(-432, 0);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label24, null);
            this.label24.TabIndex = 23;
            this.label24.Text = "Work Force Type (Local):";
            this.label24.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label25
            // 
            this.label25.Location = new System.Drawing.Point(-432, -291);
            this.label25.Name = "label25";
            this.label25.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label25, null);
            this.label25.TabIndex = 23;
            this.label25.Text = "WF Part (Local):";
            this.label25.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // comboBoxEdit18
            // 
            this.comboBoxEdit18.Location = new System.Drawing.Point(-275, -350);
            this.comboBoxEdit18.Name = "comboBoxEdit18";
            this.comboBoxEdit18.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit18.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit18.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit18.TabIndex = 26;
            // 
            // label26
            // 
            this.label26.Location = new System.Drawing.Point(-432, -347);
            this.label26.Name = "label26";
            this.label26.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.label26.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label26, null);
            this.label26.TabIndex = 25;
            this.label26.Text = "Factory:";
            this.label26.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label27
            // 
            this.label27.Location = new System.Drawing.Point(-432, -211);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label27, null);
            this.label27.TabIndex = 29;
            this.label27.Text = "WF Perf Level:";
            this.label27.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label34
            // 
            this.label34.Location = new System.Drawing.Point(-432, -240);
            this.label34.Name = "label34";
            this.label34.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label34, null);
            this.label34.TabIndex = 211;
            this.label34.Text = "Type of Work (Local):";
            this.label34.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // comboBoxEdit19
            // 
            this.comboBoxEdit19.Location = new System.Drawing.Point(-275, -187);
            this.comboBoxEdit19.Name = "comboBoxEdit19";
            this.comboBoxEdit19.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit19.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit19.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit19.TabIndex = 32;
            // 
            // label28
            // 
            this.label28.Location = new System.Drawing.Point(-432, -184);
            this.label28.Name = "label28";
            this.label28.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label28, null);
            this.label28.TabIndex = 31;
            this.label28.Text = "Region:";
            this.label28.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label33
            // 
            this.label33.Location = new System.Drawing.Point(-432, -266);
            this.label33.Name = "label33";
            this.label33.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label33, null);
            this.label33.TabIndex = 211;
            this.label33.Text = "Type of Work (Eng):";
            this.label33.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // deptComboBoxEdit
            // 
            this.deptComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Dept", true));
            this.deptComboBoxEdit.Location = new System.Drawing.Point(769, 240);
            this.deptComboBoxEdit.Name = "deptComboBoxEdit";
            this.deptComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deptComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.deptComboBoxEdit.Size = new System.Drawing.Size(148, 21);
            this.deptComboBoxEdit.TabIndex = 8;
            // 
            // comboBoxEdit20
            // 
            this.comboBoxEdit20.Location = new System.Drawing.Point(-275, -160);
            this.comboBoxEdit20.Name = "comboBoxEdit20";
            this.comboBoxEdit20.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit20.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit20.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit20.TabIndex = 34;
            // 
            // deptLabel
            // 
            this.deptLabel.Location = new System.Drawing.Point(203, 234);
            this.deptLabel.Name = "deptLabel";
            this.deptLabel.Size = new System.Drawing.Size(126, 12);
            this.PlatetoolTipController.SetSuperTip(this.deptLabel, null);
            this.deptLabel.TabIndex = 7;
            this.deptLabel.Text = "Made What?:";
            this.deptLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label29
            // 
            this.label29.Location = new System.Drawing.Point(-432, -157);
            this.label29.Name = "label29";
            this.label29.Size = new System.Drawing.Size(150, 18);
            this.PlatetoolTipController.SetSuperTip(this.label29, null);
            this.label29.TabIndex = 33;
            this.label29.Text = "Area:";
            this.label29.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // comboBoxEdit23
            // 
            this.comboBoxEdit23.Location = new System.Drawing.Point(-274, -269);
            this.comboBoxEdit23.Name = "comboBoxEdit23";
            this.comboBoxEdit23.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit23.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit23.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit23.TabIndex = 212;
            // 
            // spinEdit2
            // 
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Location = new System.Drawing.Point(-275, -133);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit2.Size = new System.Drawing.Size(132, 21);
            this.spinEdit2.TabIndex = 36;
            // 
            // label30
            // 
            this.label30.Location = new System.Drawing.Point(-432, -130);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(150, 12);
            this.PlatetoolTipController.SetSuperTip(this.label30, null);
            this.label30.TabIndex = 35;
            this.label30.Text = "Seniority:";
            this.label30.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // checkEdit4
            // 
            this.checkEdit4.Location = new System.Drawing.Point(-277, -58);
            this.checkEdit4.Name = "checkEdit4";
            this.checkEdit4.Properties.Caption = "Long Leave:";
            this.checkEdit4.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.checkEdit4.Size = new System.Drawing.Size(102, 19);
            this.checkEdit4.TabIndex = 42;
            // 
            // label32
            // 
            this.label32.Location = new System.Drawing.Point(-432, -76);
            this.label32.Name = "label32";
            this.label32.Size = new System.Drawing.Size(150, 18);
            this.PlatetoolTipController.SetSuperTip(this.label32, null);
            this.label32.TabIndex = 207;
            this.label32.Text = "Job Title(Cn):";
            this.label32.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // jLDateDateEdit
            // 
            this.jLDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JLDate", true));
            this.jLDateDateEdit.EditValue = null;
            this.jLDateDateEdit.Location = new System.Drawing.Point(19, 232);
            this.jLDateDateEdit.Name = "jLDateDateEdit";
            this.jLDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.jLDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.jLDateDateEdit.Size = new System.Drawing.Size(149, 21);
            this.jLDateDateEdit.TabIndex = 18;
            // 
            // jobTitleEnLabel
            // 
            this.jobTitleEnLabel.Location = new System.Drawing.Point(369, 78);
            this.jobTitleEnLabel.Name = "jobTitleEnLabel";
            this.jobTitleEnLabel.Size = new System.Drawing.Size(131, 18);
            this.PlatetoolTipController.SetSuperTip(this.jobTitleEnLabel, null);
            this.jobTitleEnLabel.TabIndex = 207;
            this.jobTitleEnLabel.Text = "Job Title:";
            this.jobTitleEnLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.pictureEdit2);
            this.groupControl3.Location = new System.Drawing.Point(-117, -395);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(164, 201);
            this.PlatetoolTipController.SetSuperTip(this.groupControl3, null);
            this.groupControl3.TabIndex = 207;
            this.groupControl3.Text = "Photo";
            // 
            // pictureEdit2
            // 
            this.pictureEdit2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureEdit2.Location = new System.Drawing.Point(2, 21);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.ReadOnly = true;
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit2.Size = new System.Drawing.Size(160, 178);
            this.pictureEdit2.TabIndex = 102;
            this.pictureEdit2.Tag = "";
            // 
            // comboBoxEdit21
            // 
            this.comboBoxEdit21.Location = new System.Drawing.Point(-275, -106);
            this.comboBoxEdit21.Name = "comboBoxEdit21";
            this.comboBoxEdit21.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit21.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit21.TabIndex = 208;
            // 
            // locationComboBoxEdit
            // 
            this.locationComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Location", true));
            this.locationComboBoxEdit.Location = new System.Drawing.Point(333, 251);
            this.locationComboBoxEdit.Name = "locationComboBoxEdit";
            this.locationComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.locationComboBoxEdit.Size = new System.Drawing.Size(148, 21);
            this.locationComboBoxEdit.TabIndex = 14;
            // 
            // label31
            // 
            this.label31.Location = new System.Drawing.Point(-432, -103);
            this.label31.Name = "label31";
            this.label31.Size = new System.Drawing.Size(150, 18);
            this.PlatetoolTipController.SetSuperTip(this.label31, null);
            this.label31.TabIndex = 207;
            this.label31.Text = "Job Title(En):";
            this.label31.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // comboBoxEdit22
            // 
            this.comboBoxEdit22.Location = new System.Drawing.Point(-275, -79);
            this.comboBoxEdit22.Name = "comboBoxEdit22";
            this.comboBoxEdit22.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit22.Size = new System.Drawing.Size(132, 21);
            this.comboBoxEdit22.TabIndex = 209;
            // 
            // locationLabel
            // 
            this.locationLabel.Location = new System.Drawing.Point(198, 252);
            this.locationLabel.Name = "locationLabel";
            this.locationLabel.Size = new System.Drawing.Size(131, 18);
            this.PlatetoolTipController.SetSuperTip(this.locationLabel, null);
            this.locationLabel.TabIndex = 13;
            this.locationLabel.Text = "Working Location:";
            this.locationLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // seniorityLabel
            // 
            this.seniorityLabel.Location = new System.Drawing.Point(74, 17);
            this.seniorityLabel.Name = "seniorityLabel";
            this.seniorityLabel.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.seniorityLabel, null);
            this.seniorityLabel.TabIndex = 35;
            this.seniorityLabel.Text = "Seniority:";
            this.seniorityLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // jPDateLabel
            // 
            this.jPDateLabel.Location = new System.Drawing.Point(205, 41);
            this.jPDateLabel.Name = "jPDateLabel";
            this.jPDateLabel.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.jPDateLabel, null);
            this.jPDateLabel.TabIndex = 23;
            this.jPDateLabel.Text = "Employment dd:      ";
            this.jPDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // rEDateLabel
            // 
            this.rEDateLabel.Location = new System.Drawing.Point(205, 29);
            this.rEDateLabel.Name = "rEDateLabel";
            this.rEDateLabel.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.rEDateLabel, null);
            this.rEDateLabel.TabIndex = 19;
            this.rEDateLabel.Text = "Termination dd:";
            this.rEDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // deptNameLabel
            // 
            this.deptNameLabel.Location = new System.Drawing.Point(253, 77);
            this.deptNameLabel.Name = "deptNameLabel";
            this.deptNameLabel.Size = new System.Drawing.Size(151, 19);
            this.PlatetoolTipController.SetSuperTip(this.deptNameLabel, null);
            this.deptNameLabel.TabIndex = 9;
            this.deptNameLabel.Text = "Department (Eng):";
            this.deptNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // idLabel
            // 
            this.idLabel.Location = new System.Drawing.Point(376, 173);
            this.idLabel.Name = "idLabel";
            this.idLabel.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.idLabel, null);
            this.idLabel.TabIndex = 1;
            this.idLabel.Text = "WF ID#:";
            this.idLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // areaLabel
            // 
            this.areaLabel.Location = new System.Drawing.Point(369, 93);
            this.areaLabel.Name = "areaLabel";
            this.areaLabel.Size = new System.Drawing.Size(124, 18);
            this.PlatetoolTipController.SetSuperTip(this.areaLabel, null);
            this.areaLabel.TabIndex = 33;
            this.areaLabel.Text = "City/County:";
            this.areaLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // edtWageType_TW
            // 
            this.edtWageType_TW.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "WageTypeDesc", true));
            this.edtWageType_TW.Location = new System.Drawing.Point(773, 582);
            this.edtWageType_TW.Name = "edtWageType_TW";
            this.edtWageType_TW.Size = new System.Drawing.Size(131, 21);
            this.edtWageType_TW.TabIndex = 263;
            // 
            // edtSmfclass
            // 
            this.edtSmfclass.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkerTypeCn", true));
            this.edtSmfclass.Location = new System.Drawing.Point(774, 279);
            this.edtSmfclass.Name = "edtSmfclass";
            this.edtSmfclass.Size = new System.Drawing.Size(132, 21);
            this.edtSmfclass.TabIndex = 262;
            // 
            // jobTitleCnComboBoxEdit
            // 
            this.jobTitleCnComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JobTitleCn", true));
            this.jobTitleCnComboBoxEdit.Location = new System.Drawing.Point(774, 222);
            this.jobTitleCnComboBoxEdit.Name = "jobTitleCnComboBoxEdit";
            this.jobTitleCnComboBoxEdit.Size = new System.Drawing.Size(133, 21);
            this.jobTitleCnComboBoxEdit.TabIndex = 261;
            // 
            // cobWorkForceTyCn
            // 
            this.cobWorkForceTyCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkForceTyCn", true));
            this.cobWorkForceTyCn.Location = new System.Drawing.Point(774, 144);
            this.cobWorkForceTyCn.Name = "cobWorkForceTyCn";
            this.cobWorkForceTyCn.Size = new System.Drawing.Size(130, 21);
            this.cobWorkForceTyCn.TabIndex = 260;
            // 
            // edtTitletypecode
            // 
            this.edtTitletypecode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TitleTypeCode", true));
            this.edtTitletypecode.Enabled = false;
            this.edtTitletypecode.Location = new System.Drawing.Point(1130, 137);
            this.edtTitletypecode.Name = "edtTitletypecode";
            this.edtTitletypecode.Size = new System.Drawing.Size(133, 21);
            this.edtTitletypecode.TabIndex = 259;
            this.edtTitletypecode.Visible = false;
            // 
            // jobTitleCode
            // 
            this.jobTitleCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JobTitleCode", true));
            this.jobTitleCode.Location = new System.Drawing.Point(774, 172);
            this.jobTitleCode.Name = "jobTitleCode";
            this.jobTitleCode.Size = new System.Drawing.Size(133, 21);
            this.jobTitleCode.TabIndex = 258;
            // 
            // cbbRecrole_chn
            // 
            this.cbbRecrole_chn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RecRole_chn", true));
            this.cbbRecrole_chn.Location = new System.Drawing.Point(482, 452);
            this.cbbRecrole_chn.Name = "cbbRecrole_chn";
            this.cbbRecrole_chn.Size = new System.Drawing.Size(133, 21);
            this.cbbRecrole_chn.TabIndex = 257;
            // 
            // cobWhere_2_ClassCn
            // 
            this.cobWhere_2_ClassCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_2Cn", true));
            this.cobWhere_2_ClassCn.Location = new System.Drawing.Point(1337, 722);
            this.cobWhere_2_ClassCn.Name = "cobWhere_2_ClassCn";
            this.cobWhere_2_ClassCn.Size = new System.Drawing.Size(133, 21);
            this.cobWhere_2_ClassCn.TabIndex = 256;
            this.cobWhere_2_ClassCn.Visible = false;
            // 
            // cobWhere_1_TeamCn
            // 
            this.cobWhere_1_TeamCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_1Cn", true));
            this.cobWhere_1_TeamCn.Location = new System.Drawing.Point(482, 221);
            this.cobWhere_1_TeamCn.Name = "cobWhere_1_TeamCn";
            this.cobWhere_1_TeamCn.Size = new System.Drawing.Size(134, 21);
            this.cobWhere_1_TeamCn.TabIndex = 255;
            // 
            // cobWFWhereCn
            // 
            this.cobWFWhereCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhereCn", true));
            this.cobWFWhereCn.Location = new System.Drawing.Point(481, 168);
            this.cobWFWhereCn.Name = "cobWFWhereCn";
            this.cobWFWhereCn.Size = new System.Drawing.Size(133, 21);
            this.cobWFWhereCn.TabIndex = 254;
            // 
            // cobDepartmentCn
            // 
            this.cobDepartmentCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DeptNameCn", true));
            this.cobDepartmentCn.Location = new System.Drawing.Point(481, 119);
            this.cobDepartmentCn.Name = "cobDepartmentCn";
            this.cobDepartmentCn.Size = new System.Drawing.Size(134, 21);
            this.cobDepartmentCn.TabIndex = 253;
            // 
            // senioritySpinEdit
            // 
            this.senioritySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeniorityS", true));
            this.senioritySpinEdit.Enabled = false;
            this.senioritySpinEdit.Location = new System.Drawing.Point(150, 585);
            this.senioritySpinEdit.Name = "senioritySpinEdit";
            this.senioritySpinEdit.Size = new System.Drawing.Size(149, 21);
            this.senioritySpinEdit.TabIndex = 252;
            // 
            // cobTownCn
            // 
            this.cobTownCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TownCn", true));
            this.cobTownCn.Location = new System.Drawing.Point(151, 490);
            this.cobTownCn.Name = "cobTownCn";
            this.cobTownCn.Size = new System.Drawing.Size(149, 21);
            this.cobTownCn.TabIndex = 251;
            // 
            // cobRegionCn
            // 
            this.cobRegionCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionCn", true));
            this.cobRegionCn.Location = new System.Drawing.Point(150, 355);
            this.cobRegionCn.Name = "cobRegionCn";
            this.cobRegionCn.Size = new System.Drawing.Size(148, 21);
            this.cobRegionCn.TabIndex = 250;
            // 
            // cobAreaCn
            // 
            this.cobAreaCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AreaCn", true));
            this.cobAreaCn.Location = new System.Drawing.Point(150, 427);
            this.cobAreaCn.Name = "cobAreaCn";
            this.cobAreaCn.Size = new System.Drawing.Size(148, 21);
            this.cobAreaCn.TabIndex = 249;
            // 
            // S_cobTown
            // 
            this.S_cobTown.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Town", true));
            this.S_cobTown.Location = new System.Drawing.Point(150, 466);
            this.S_cobTown.Name = "S_cobTown";
            this.S_cobTown.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.S_cobTown.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.S_cobTown.Size = new System.Drawing.Size(149, 21);
            this.S_cobTown.TabIndex = 248;
            // 
            // S_cobCity
            // 
            this.S_cobCity.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Area", true));
            this.S_cobCity.Location = new System.Drawing.Point(150, 401);
            this.S_cobCity.Name = "S_cobCity";
            this.S_cobCity.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.S_cobCity.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.S_cobCity.Size = new System.Drawing.Size(149, 21);
            this.S_cobCity.TabIndex = 247;
            // 
            // cobTown
            // 
            this.cobTown.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Town", true));
            this.cobTown.Location = new System.Drawing.Point(363, 657);
            this.cobTown.Name = "cobTown";
            this.cobTown.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.cobTown.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("CurName", "Town", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.cobTown.Properties.NullText = "";
            this.cobTown.Size = new System.Drawing.Size(150, 21);
            this.cobTown.TabIndex = 246;
            this.cobTown.Visible = false;
            this.cobTown.EditValueChanged += new System.EventHandler(this.cobTown_EditValueChanged);
            // 
            // lblTeamNo
            // 
            this.lblTeamNo.AutoSize = true;
            this.lblTeamNo.Location = new System.Drawing.Point(1204, 670);
            this.lblTeamNo.Name = "lblTeamNo";
            this.lblTeamNo.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblTeamNo, null);
            this.lblTeamNo.TabIndex = 245;
            this.lblTeamNo.Text = "Team No.:";
            this.lblTeamNo.Visible = false;
            // 
            // lblWageStruct_TW
            // 
            this.lblWageStruct_TW.AutoSize = true;
            this.lblWageStruct_TW.Location = new System.Drawing.Point(714, 589);
            this.lblWageStruct_TW.Name = "lblWageStruct_TW";
            this.lblWageStruct_TW.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWageStruct_TW, null);
            this.lblWageStruct_TW.TabIndex = 244;
            this.lblWageStruct_TW.Text = "(Local):";
            // 
            // lblWageStruct_EN
            // 
            this.lblWageStruct_EN.Location = new System.Drawing.Point(639, 559);
            this.lblWageStruct_EN.Name = "lblWageStruct_EN";
            this.lblWageStruct_EN.Size = new System.Drawing.Size(132, 24);
            this.PlatetoolTipController.SetSuperTip(this.lblWageStruct_EN, null);
            this.lblWageStruct_EN.TabIndex = 243;
            this.lblWageStruct_EN.Text = "Wage Calculation Method:";
            // 
            // lblWageType
            // 
            this.lblWageType.AutoSize = true;
            this.lblWageType.Location = new System.Drawing.Point(620, 560);
            this.lblWageType.Name = "lblWageType";
            this.lblWageType.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWageType, null);
            this.lblWageType.TabIndex = 242;
            this.lblWageType.Text = "12";
            // 
            // edtWageType_Bd
            // 
            this.edtWageType_Bd.Enabled = false;
            this.edtWageType_Bd.Location = new System.Drawing.Point(83, 711);
            this.edtWageType_Bd.Name = "edtWageType_Bd";
            this.edtWageType_Bd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtWageType_Bd.Size = new System.Drawing.Size(133, 21);
            this.edtWageType_Bd.TabIndex = 241;
            this.edtWageType_Bd.Visible = false;
            // 
            // lueWageType
            // 
            this.lueWageType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WageType", true));
            this.lueWageType.Location = new System.Drawing.Point(772, 557);
            this.lueWageType.Name = "lueWageType";
            this.lueWageType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lueWageType.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Wage Calculation Method", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lueWageType.Properties.NullText = "";
            this.lueWageType.Size = new System.Drawing.Size(133, 21);
            this.lueWageType.TabIndex = 239;
            this.lueWageType.EditValueChanged += new System.EventHandler(this.lueWageType_EditValueChanged);
            // 
            // areaComboBoxEdit
            // 
            this.areaComboBoxEdit.EditValue = "";
            this.areaComboBoxEdit.Location = new System.Drawing.Point(363, 630);
            this.areaComboBoxEdit.Name = "areaComboBoxEdit";
            this.areaComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.areaComboBoxEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("CurName", "City", 90),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Province", "Province", 140),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Country", "Country", 70)});
            this.areaComboBoxEdit.Properties.NullText = "";
            this.areaComboBoxEdit.Properties.PopupFormMinSize = new System.Drawing.Size(20, 40);
            this.areaComboBoxEdit.Properties.PopupWidth = 300;
            this.areaComboBoxEdit.Size = new System.Drawing.Size(149, 21);
            this.areaComboBoxEdit.TabIndex = 238;
            this.areaComboBoxEdit.Visible = false;
            this.areaComboBoxEdit.EditValueChanged += new System.EventHandler(this.areaComboBoxEdit_EditValueChanged);
            // 
            // auxiliaryJobTitleComboBoxEdit1
            // 
            this.auxiliaryJobTitleComboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AuxiliaryJobTitle", true));
            this.auxiliaryJobTitleComboBoxEdit1.Location = new System.Drawing.Point(499, 814);
            this.auxiliaryJobTitleComboBoxEdit1.Name = "auxiliaryJobTitleComboBoxEdit1";
            this.auxiliaryJobTitleComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.auxiliaryJobTitleComboBoxEdit1.Size = new System.Drawing.Size(133, 21);
            this.auxiliaryJobTitleComboBoxEdit1.TabIndex = 237;
            this.auxiliaryJobTitleComboBoxEdit1.Visible = false;
            // 
            // label59
            // 
            this.label59.AutoSize = true;
            this.label59.Location = new System.Drawing.Point(640, 741);
            this.label59.Name = "label59";
            this.label59.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.label59, null);
            this.label59.TabIndex = 236;
            this.label59.Text = "11";
            this.label59.Visible = false;
            // 
            // label58
            // 
            this.label58.AutoSize = true;
            this.label58.Location = new System.Drawing.Point(620, 535);
            this.label58.Name = "label58";
            this.label58.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.label58, null);
            this.label58.TabIndex = 235;
            this.label58.Text = "11";
            // 
            // label57
            // 
            this.label57.Location = new System.Drawing.Point(16377, 439);
            this.label57.Name = "label57";
            this.label57.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.label57, null);
            this.label57.TabIndex = 234;
            this.label57.Text = "7";
            this.label57.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label57.Visible = false;
            // 
            // label20
            // 
            this.label20.Location = new System.Drawing.Point(16369, 431);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.label20, null);
            this.label20.TabIndex = 233;
            this.label20.Text = "7";
            this.label20.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label20.Visible = false;
            // 
            // lblReclocation
            // 
            this.lblReclocation.AutoSize = true;
            this.lblReclocation.Location = new System.Drawing.Point(328, 500);
            this.lblReclocation.Name = "lblReclocation";
            this.lblReclocation.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblReclocation, null);
            this.lblReclocation.TabIndex = 231;
            this.lblReclocation.Text = "REC Loc.:";
            // 
            // cbbReclocation
            // 
            this.cbbReclocation.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NextLocation", true));
            this.cbbReclocation.Location = new System.Drawing.Point(482, 499);
            this.cbbReclocation.Name = "cbbReclocation";
            this.cbbReclocation.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbReclocation.Size = new System.Drawing.Size(133, 21);
            this.cbbReclocation.TabIndex = 232;
            // 
            // cbbRecrole_bd
            // 
            this.cbbRecrole_bd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RecBd", true));
            this.cbbRecrole_bd.Location = new System.Drawing.Point(1009, 812);
            this.cbbRecrole_bd.Name = "cbbRecrole_bd";
            this.cbbRecrole_bd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbRecrole_bd.Size = new System.Drawing.Size(133, 21);
            this.cbbRecrole_bd.TabIndex = 231;
            this.cbbRecrole_bd.Visible = false;
            // 
            // cbbRecRole
            // 
            this.cbbRecRole.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RecCn", true));
            this.cbbRecRole.Location = new System.Drawing.Point(482, 429);
            this.cbbRecRole.Name = "cbbRecRole";
            this.cbbRecRole.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbRecRole.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbbRecRole.Size = new System.Drawing.Size(133, 21);
            this.cbbRecRole.TabIndex = 228;
            this.cbbRecRole.SelectedValueChanged += new System.EventHandler(this.cbbRecRole_SelectedValueChanged);
            // 
            // lblRecrole
            // 
            this.lblRecrole.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lblRecrole.Appearance.Options.UseFont = true;
            this.lblRecrole.Location = new System.Drawing.Point(330, 431);
            this.lblRecrole.Name = "lblRecrole";
            this.lblRecrole.Size = new System.Drawing.Size(54, 12);
            this.lblRecrole.TabIndex = 227;
            this.lblRecrole.Text = "REC Role:";
            // 
            // label56
            // 
            this.label56.Location = new System.Drawing.Point(16301, 402);
            this.label56.Name = "label56";
            this.label56.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label56, null);
            this.label56.TabIndex = 226;
            this.label56.Text = "Rec:";
            this.label56.Visible = false;
            // 
            // cbbDepartalLocation
            // 
            this.cbbDepartalLocation.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Location", true));
            this.cbbDepartalLocation.Location = new System.Drawing.Point(1332, 630);
            this.cbbDepartalLocation.Name = "cbbDepartalLocation";
            this.cbbDepartalLocation.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbDepartalLocation.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbbDepartalLocation.Size = new System.Drawing.Size(133, 21);
            this.cbbDepartalLocation.TabIndex = 225;
            this.cbbDepartalLocation.Visible = false;
            // 
            // comboBoxEdit2
            // 
            this.comboBoxEdit2.AllowDrop = true;
            this.comboBoxEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grp", true));
            this.comboBoxEdit2.Location = new System.Drawing.Point(16318, 409);
            this.comboBoxEdit2.Name = "comboBoxEdit2";
            this.comboBoxEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit2.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit2.TabIndex = 224;
            this.comboBoxEdit2.Visible = false;
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.AllowDrop = true;
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grp", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(16310, 401);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Size = new System.Drawing.Size(133, 21);
            this.comboBoxEdit1.TabIndex = 223;
            this.comboBoxEdit1.Visible = false;
            // 
            // label55
            // 
            this.label55.Location = new System.Drawing.Point(1180, 630);
            this.label55.Name = "label55";
            this.label55.Size = new System.Drawing.Size(151, 19);
            this.PlatetoolTipController.SetSuperTip(this.label55, null);
            this.label55.TabIndex = 222;
            this.label55.Text = "Departmental location:";
            this.label55.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label55.Visible = false;
            // 
            // cbbTransferDept
            // 
            this.cbbTransferDept.AllowDrop = true;
            this.cbbTransferDept.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grp", true));
            this.cbbTransferDept.Location = new System.Drawing.Point(482, 341);
            this.cbbTransferDept.Name = "cbbTransferDept";
            this.cbbTransferDept.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbbTransferDept.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbbTransferDept.Size = new System.Drawing.Size(133, 21);
            this.cbbTransferDept.TabIndex = 221;
            // 
            // label53
            // 
            this.label53.Location = new System.Drawing.Point(329, 339);
            this.label53.Name = "label53";
            this.label53.Size = new System.Drawing.Size(151, 25);
            this.PlatetoolTipController.SetSuperTip(this.label53, null);
            this.label53.TabIndex = 220;
            this.label53.Text = "Transfer to others\'                      departmental:";
            this.label53.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // chkCrossRole_N
            // 
            this.chkCrossRole_N.Location = new System.Drawing.Point(1284, 429);
            this.chkCrossRole_N.Name = "chkCrossRole_N";
            this.chkCrossRole_N.Properties.Caption = "N";
            this.chkCrossRole_N.Size = new System.Drawing.Size(51, 19);
            this.chkCrossRole_N.TabIndex = 219;
            this.chkCrossRole_N.Visible = false;
            this.chkCrossRole_N.CheckedChanged += new System.EventHandler(this.chkCrossRole_N_CheckedChanged);
            // 
            // chkHeadCount_N
            // 
            this.chkHeadCount_N.Location = new System.Drawing.Point(1285, 404);
            this.chkHeadCount_N.Name = "chkHeadCount_N";
            this.chkHeadCount_N.Properties.Caption = "N";
            this.chkHeadCount_N.Size = new System.Drawing.Size(49, 19);
            this.chkHeadCount_N.TabIndex = 219;
            this.chkHeadCount_N.Visible = false;
            this.chkHeadCount_N.CheckedChanged += new System.EventHandler(this.chkHeadCount_N_CheckedChanged);
            // 
            // chkTemp
            // 
            this.chkTemp.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsRegistAuxiliary", true));
            this.chkTemp.Location = new System.Drawing.Point(1136, 912);
            this.chkTemp.Name = "chkTemp";
            this.chkTemp.Properties.Caption = "";
            this.chkTemp.Size = new System.Drawing.Size(19, 19);
            this.chkTemp.TabIndex = 218;
            this.chkTemp.Visible = false;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.P1);
            this.groupControl1.Location = new System.Drawing.Point(923, 95);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(164, 201);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 207;
            // 
            // P1
            // 
            this.P1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.P1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.P1.Location = new System.Drawing.Point(2, 21);
            this.P1.Name = "P1";
            this.P1.Properties.ReadOnly = true;
            this.P1.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.P1.Size = new System.Drawing.Size(160, 178);
            this.P1.TabIndex = 102;
            this.P1.Tag = "";
            // 
            // label7
            // 
            this.label7.BackColor = System.Drawing.Color.Gold;
            this.label7.Location = new System.Drawing.Point(923, 74);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(164, 18);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 35;
            this.label7.Text = "Photo";
            this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // cobCo_Team
            // 
            this.cobCo_Team.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Co_Team", true));
            this.cobCo_Team.EditValue = "";
            this.cobCo_Team.Location = new System.Drawing.Point(1322, 588);
            this.cobCo_Team.Name = "cobCo_Team";
            this.cobCo_Team.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobCo_Team.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobCo_Team.Size = new System.Drawing.Size(133, 21);
            this.cobCo_Team.TabIndex = 216;
            this.cobCo_Team.Visible = false;
            this.cobCo_Team.SelectedIndexChanged += new System.EventHandler(this.cobCo_Team_SelectedIndexChanged);
            // 
            // cobCountry
            // 
            this.cobCountry.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Country", true));
            this.cobCountry.Location = new System.Drawing.Point(150, 249);
            this.cobCountry.Name = "cobCountry";
            this.cobCountry.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null),
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.cobCountry.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobCountry.Size = new System.Drawing.Size(149, 21);
            this.cobCountry.TabIndex = 217;
            this.cobCountry.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.cobCountry_ButtonClick);
            this.cobCountry.SelectedIndexChanged += new System.EventHandler(this.cobCountry_SelectedIndexChanged);
            // 
            // rEDateDateEdit
            // 
            this.rEDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "REDate", true));
            this.rEDateDateEdit.EditValue = null;
            this.rEDateDateEdit.Location = new System.Drawing.Point(150, 560);
            this.rEDateDateEdit.Name = "rEDateDateEdit";
            this.rEDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rEDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.rEDateDateEdit.Size = new System.Drawing.Size(149, 21);
            this.rEDateDateEdit.TabIndex = 20;
            // 
            // cobDepartmentBd
            // 
            this.cobDepartmentBd.AllowDrop = true;
            this.cobDepartmentBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DeptNameBd", true));
            this.cobDepartmentBd.Location = new System.Drawing.Point(990, 775);
            this.cobDepartmentBd.Name = "cobDepartmentBd";
            this.cobDepartmentBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobDepartmentBd.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobDepartmentBd.Size = new System.Drawing.Size(133, 21);
            this.cobDepartmentBd.TabIndex = 217;
            this.cobDepartmentBd.Visible = false;
            // 
            // label12
            // 
            this.label12.Location = new System.Drawing.Point(23, 272);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(124, 18);
            this.PlatetoolTipController.SetSuperTip(this.label12, null);
            this.label12.TabIndex = 207;
            this.label12.Text = "(Local):";
            this.label12.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label6
            // 
            this.label6.BackColor = System.Drawing.Color.Gold;
            this.label6.Location = new System.Drawing.Point(638, 74);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(264, 18);
            this.PlatetoolTipController.SetSuperTip(this.label6, null);
            this.label6.TabIndex = 35;
            this.label6.Text = "Job Info";
            this.label6.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label11
            // 
            this.label11.Location = new System.Drawing.Point(23, 357);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(124, 18);
            this.PlatetoolTipController.SetSuperTip(this.label11, null);
            this.label11.TabIndex = 207;
            this.label11.Text = "(Local):";
            this.label11.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblWFtemp
            // 
            this.lblWFtemp.Location = new System.Drawing.Point(659, 741);
            this.lblWFtemp.Name = "lblWFtemp";
            this.lblWFtemp.Size = new System.Drawing.Size(126, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWFtemp, null);
            this.lblWFtemp.TabIndex = 23;
            this.lblWFtemp.Text = "Tempory Labors:";
            this.lblWFtemp.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lblWFtemp.Visible = false;
            // 
            // lblIsRelated
            // 
            this.lblIsRelated.Location = new System.Drawing.Point(640, 535);
            this.lblIsRelated.Name = "lblIsRelated";
            this.lblIsRelated.Size = new System.Drawing.Size(129, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblIsRelated, null);
            this.lblIsRelated.TabIndex = 23;
            this.lblIsRelated.Text = "GSD - Workforce:";
            this.lblIsRelated.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labHeadCount
            // 
            this.labHeadCount.Location = new System.Drawing.Point(644, 382);
            this.labHeadCount.Name = "labHeadCount";
            this.labHeadCount.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.labHeadCount, null);
            this.labHeadCount.TabIndex = 23;
            this.labHeadCount.Text = "Head Count (Y/N):";
            this.labHeadCount.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label10
            // 
            this.label10.Location = new System.Drawing.Point(25, 425);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(124, 18);
            this.PlatetoolTipController.SetSuperTip(this.label10, null);
            this.label10.TabIndex = 207;
            this.label10.Text = "(Local):";
            this.label10.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // cobRecEn
            // 
            this.cobRecEn.AllowDrop = true;
            this.cobRecEn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RecEn", true));
            this.cobRecEn.Location = new System.Drawing.Point(482, 406);
            this.cobRecEn.Name = "cobRecEn";
            this.cobRecEn.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobRecEn.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobRecEn.Size = new System.Drawing.Size(133, 21);
            this.cobRecEn.TabIndex = 217;
            // 
            // cobWhere_2_Class
            // 
            this.cobWhere_2_Class.AllowDrop = true;
            this.cobWhere_2_Class.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_2", true));
            this.cobWhere_2_Class.Location = new System.Drawing.Point(1126, 219);
            this.cobWhere_2_Class.Name = "cobWhere_2_Class";
            this.cobWhere_2_Class.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.cobWhere_2_Class.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobWhere_2_Class.Size = new System.Drawing.Size(133, 21);
            this.cobWhere_2_Class.TabIndex = 217;
            this.cobWhere_2_Class.Visible = false;
            // 
            // label9
            // 
            this.label9.Location = new System.Drawing.Point(23, 490);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(124, 18);
            this.PlatetoolTipController.SetSuperTip(this.label9, null);
            this.label9.TabIndex = 207;
            this.label9.Text = "(Local):";
            this.label9.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblCrossRole
            // 
            this.lblCrossRole.Location = new System.Drawing.Point(645, 399);
            this.lblCrossRole.Name = "lblCrossRole";
            this.lblCrossRole.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblCrossRole, null);
            this.lblCrossRole.TabIndex = 23;
            this.lblCrossRole.Text = "Cross Role (Y/N):";
            // 
            // cobCountryBd
            // 
            this.cobCountryBd.AllowDrop = true;
            this.cobCountryBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CountryBd", true));
            this.cobCountryBd.Location = new System.Drawing.Point(518, 657);
            this.cobCountryBd.Name = "cobCountryBd";
            this.cobCountryBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobCountryBd.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobCountryBd.Size = new System.Drawing.Size(149, 21);
            this.cobCountryBd.TabIndex = 209;
            this.cobCountryBd.Visible = false;
            // 
            // cobWhere_1_Team
            // 
            this.cobWhere_1_Team.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_1", true));
            this.cobWhere_1_Team.Location = new System.Drawing.Point(482, 198);
            this.cobWhere_1_Team.Name = "cobWhere_1_Team";
            this.cobWhere_1_Team.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.cobWhere_1_Team.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobWhere_1_Team.Size = new System.Drawing.Size(133, 21);
            this.cobWhere_1_Team.TabIndex = 217;
            // 
            // cobRegionBd
            // 
            this.cobRegionBd.AllowDrop = true;
            this.cobRegionBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionBd", true));
            this.cobRegionBd.Location = new System.Drawing.Point(67, 738);
            this.cobRegionBd.Name = "cobRegionBd";
            this.cobRegionBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobRegionBd.Size = new System.Drawing.Size(149, 21);
            this.cobRegionBd.TabIndex = 209;
            this.cobRegionBd.Visible = false;
            // 
            // lblGrade
            // 
            this.lblGrade.Location = new System.Drawing.Point(641, 359);
            this.lblGrade.Name = "lblGrade";
            this.lblGrade.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblGrade, null);
            this.lblGrade.TabIndex = 23;
            this.lblGrade.Text = "Grade:";
            this.lblGrade.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobAreaBd
            // 
            this.cobAreaBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AreaBd", true));
            this.cobAreaBd.Location = new System.Drawing.Point(67, 766);
            this.cobAreaBd.Name = "cobAreaBd";
            this.cobAreaBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobAreaBd.Size = new System.Drawing.Size(149, 21);
            this.cobAreaBd.TabIndex = 209;
            this.cobAreaBd.Visible = false;
            // 
            // cobTownBd
            // 
            this.cobTownBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TownBd", true));
            this.cobTownBd.Location = new System.Drawing.Point(67, 793);
            this.cobTownBd.Name = "cobTownBd";
            this.cobTownBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobTownBd.Size = new System.Drawing.Size(149, 21);
            this.cobTownBd.TabIndex = 209;
            this.cobTownBd.Visible = false;
            // 
            // label52
            // 
            this.label52.Location = new System.Drawing.Point(644, 477);
            this.label52.Name = "label52";
            this.label52.Size = new System.Drawing.Size(131, 24);
            this.PlatetoolTipController.SetSuperTip(this.label52, null);
            this.label52.TabIndex = 23;
            this.label52.Text = "Stationed at (if any):";
            // 
            // edtTeamNo
            // 
            this.edtTeamNo.Enabled = false;
            this.edtTeamNo.Location = new System.Drawing.Point(1322, 661);
            this.edtTeamNo.Name = "edtTeamNo";
            this.edtTeamNo.Size = new System.Drawing.Size(133, 21);
            this.edtTeamNo.TabIndex = 4;
            this.edtTeamNo.Visible = false;
            // 
            // cobSub_Section_FAE
            // 
            this.cobSub_Section_FAE.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sub_Section_FAE", true));
            this.cobSub_Section_FAE.Location = new System.Drawing.Point(503, 845);
            this.cobSub_Section_FAE.Name = "cobSub_Section_FAE";
            this.cobSub_Section_FAE.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobSub_Section_FAE.Size = new System.Drawing.Size(133, 21);
            this.cobSub_Section_FAE.TabIndex = 217;
            this.cobSub_Section_FAE.Visible = false;
            this.cobSub_Section_FAE.SelectedIndexChanged += new System.EventHandler(this.cobSub_Section_FAE_SelectedIndexChanged);
            // 
            // label13
            // 
            this.label13.Location = new System.Drawing.Point(1179, 587);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(149, 24);
            this.PlatetoolTipController.SetSuperTip(this.label13, null);
            this.label13.TabIndex = 23;
            this.label13.Text = "Sub-Section Linkage (apply to FAE only):";
            this.label13.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.label13.Visible = false;
            // 
            // lblVacancy
            // 
            this.lblVacancy.Location = new System.Drawing.Point(1162, 553);
            this.lblVacancy.Name = "lblVacancy";
            this.lblVacancy.Size = new System.Drawing.Size(84, 19);
            this.PlatetoolTipController.SetSuperTip(this.lblVacancy, null);
            this.lblVacancy.TabIndex = 23;
            this.lblVacancy.Text = "Open Vacancy:";
            this.lblVacancy.Visible = false;
            // 
            // label54
            // 
            this.label54.Location = new System.Drawing.Point(642, 509);
            this.label54.Name = "label54";
            this.label54.Size = new System.Drawing.Size(131, 24);
            this.PlatetoolTipController.SetSuperTip(this.label54, null);
            this.label54.TabIndex = 23;
            this.label54.Text = "Standby (On call) (if any):";
            // 
            // jLDateLabel
            // 
            this.jLDateLabel.Location = new System.Drawing.Point(679, 809);
            this.jLDateLabel.Name = "jLDateLabel";
            this.jLDateLabel.Size = new System.Drawing.Size(124, 24);
            this.PlatetoolTipController.SetSuperTip(this.jLDateLabel, null);
            this.jLDateLabel.TabIndex = 17;
            this.jLDateLabel.Text = "Probation Period (monthy):";
            this.jLDateLabel.Visible = false;
            // 
            // cobWorkForceTyBd
            // 
            this.cobWorkForceTyBd.AllowDrop = true;
            this.cobWorkForceTyBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkForceTyBd", true));
            this.cobWorkForceTyBd.Location = new System.Drawing.Point(1009, 883);
            this.cobWorkForceTyBd.Name = "cobWorkForceTyBd";
            this.cobWorkForceTyBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWorkForceTyBd.Size = new System.Drawing.Size(133, 21);
            this.cobWorkForceTyBd.TabIndex = 217;
            this.cobWorkForceTyBd.Visible = false;
            // 
            // idTextEdit
            // 
            this.idTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Id", true));
            this.idTextEdit.Location = new System.Drawing.Point(147, 46);
            this.idTextEdit.Name = "idTextEdit";
            this.idTextEdit.Size = new System.Drawing.Size(149, 21);
            this.idTextEdit.TabIndex = 2;
            // 
            // workerTypeLabel
            // 
            this.workerTypeLabel.Location = new System.Drawing.Point(639, 251);
            this.workerTypeLabel.Name = "workerTypeLabel";
            this.workerTypeLabel.Size = new System.Drawing.Size(131, 24);
            this.PlatetoolTipController.SetSuperTip(this.workerTypeLabel, null);
            this.workerTypeLabel.TabIndex = 23;
            this.workerTypeLabel.Text = "SM Classification (Eng) (if any):";
            // 
            // WFPartlabel
            // 
            this.WFPartlabel.Location = new System.Drawing.Point(642, 308);
            this.WFPartlabel.Name = "WFPartlabel";
            this.WFPartlabel.Size = new System.Drawing.Size(131, 27);
            this.PlatetoolTipController.SetSuperTip(this.WFPartlabel, null);
            this.WFPartlabel.TabIndex = 23;
            this.WFPartlabel.Text = "Labor cost fon Mgt Acct (Eng):";
            // 
            // jPDateDateEdit
            // 
            this.jPDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JPDate", true));
            this.jPDateDateEdit.EditValue = null;
            this.jPDateDateEdit.Location = new System.Drawing.Point(150, 538);
            this.jPDateDateEdit.Name = "jPDateDateEdit";
            this.jPDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.jPDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.jPDateDateEdit.Size = new System.Drawing.Size(149, 21);
            this.jPDateDateEdit.TabIndex = 16;
            // 
            // factoryComboBoxEdit
            // 
            this.factoryComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.factoryComboBoxEdit.Location = new System.Drawing.Point(791, 45);
            this.factoryComboBoxEdit.Name = "factoryComboBoxEdit";
            this.factoryComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.factoryComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.factoryComboBoxEdit.Size = new System.Drawing.Size(109, 21);
            this.factoryComboBoxEdit.TabIndex = 217;
            // 
            // deptNameTextEdit
            // 
            this.deptNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DeptName", true));
            this.deptNameTextEdit.Location = new System.Drawing.Point(481, 97);
            this.deptNameTextEdit.Name = "deptNameTextEdit";
            this.deptNameTextEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null),
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deptNameTextEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.deptNameTextEdit.Size = new System.Drawing.Size(133, 21);
            this.deptNameTextEdit.TabIndex = 217;
            this.deptNameTextEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.deptNameTextEdit_Properties_ButtonClick);
            // 
            // cobCountryCn
            // 
            this.cobCountryCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CountryCn", true));
            this.cobCountryCn.Location = new System.Drawing.Point(150, 272);
            this.cobCountryCn.Name = "cobCountryCn";
            this.cobCountryCn.Size = new System.Drawing.Size(149, 21);
            this.cobCountryCn.TabIndex = 4;
            // 
            // nameCnTextEdit
            // 
            this.nameCnTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameCn", true));
            this.nameCnTextEdit.Location = new System.Drawing.Point(150, 124);
            this.nameCnTextEdit.Name = "nameCnTextEdit";
            this.nameCnTextEdit.Size = new System.Drawing.Size(149, 21);
            this.nameCnTextEdit.TabIndex = 4;
            // 
            // label36
            // 
            this.label36.Location = new System.Drawing.Point(328, 743);
            this.label36.Name = "label36";
            this.label36.Size = new System.Drawing.Size(124, 26);
            this.PlatetoolTipController.SetSuperTip(this.label36, null);
            this.label36.TabIndex = 3;
            this.label36.Text = "Full Name (Local): (Call/Family/Given)    ";
            this.label36.Visible = false;
            // 
            // labWorkForceTyEn
            // 
            this.labWorkForceTyEn.Location = new System.Drawing.Point(638, 97);
            this.labWorkForceTyEn.Name = "labWorkForceTyEn";
            this.labWorkForceTyEn.Size = new System.Drawing.Size(131, 21);
            this.PlatetoolTipController.SetSuperTip(this.labWorkForceTyEn, null);
            this.labWorkForceTyEn.TabIndex = 23;
            this.labWorkForceTyEn.Text = "Job Group :";
            // 
            // nameCnLabel
            // 
            this.nameCnLabel.Location = new System.Drawing.Point(25, 122);
            this.nameCnLabel.Name = "nameCnLabel";
            this.nameCnLabel.Size = new System.Drawing.Size(124, 26);
            this.PlatetoolTipController.SetSuperTip(this.nameCnLabel, null);
            this.nameCnLabel.TabIndex = 3;
            this.nameCnLabel.Text = "Full Name (Local): (Call/Family/Given)    ";
            // 
            // cobTeamNo
            // 
            this.cobTeamNo.AllowDrop = true;
            this.cobTeamNo.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_2", true));
            this.cobTeamNo.EditValue = "";
            this.cobTeamNo.Location = new System.Drawing.Point(1269, 665);
            this.cobTeamNo.Name = "cobTeamNo";
            this.cobTeamNo.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobTeamNo.Size = new System.Drawing.Size(133, 21);
            this.cobTeamNo.TabIndex = 217;
            this.cobTeamNo.Visible = false;
            this.cobTeamNo.SelectedIndexChanged += new System.EventHandler(this.cobTeamNo_SelectedIndexChanged);
            // 
            // label46
            // 
            this.label46.Location = new System.Drawing.Point(870, 883);
            this.label46.Name = "label46";
            this.label46.Size = new System.Drawing.Size(131, 21);
            this.PlatetoolTipController.SetSuperTip(this.label46, null);
            this.label46.TabIndex = 23;
            this.label46.Text = "(Bd):";
            this.label46.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label46.Visible = false;
            // 
            // nameEnTextEdit
            // 
            this.nameEnTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameEn", true));
            this.nameEnTextEdit.Location = new System.Drawing.Point(150, 95);
            this.nameEnTextEdit.Name = "nameEnTextEdit";
            this.nameEnTextEdit.Size = new System.Drawing.Size(149, 21);
            this.nameEnTextEdit.TabIndex = 6;
            // 
            // labWorkForceTyCn
            // 
            this.labWorkForceTyCn.Location = new System.Drawing.Point(638, 142);
            this.labWorkForceTyCn.Name = "labWorkForceTyCn";
            this.labWorkForceTyCn.Size = new System.Drawing.Size(131, 21);
            this.PlatetoolTipController.SetSuperTip(this.labWorkForceTyCn, null);
            this.labWorkForceTyCn.TabIndex = 23;
            this.labWorkForceTyCn.Text = " (Local):";
            this.labWorkForceTyCn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // nameEnLabel
            // 
            this.nameEnLabel.Location = new System.Drawing.Point(25, 95);
            this.nameEnLabel.Name = "nameEnLabel";
            this.nameEnLabel.Size = new System.Drawing.Size(124, 26);
            this.PlatetoolTipController.SetSuperTip(this.nameEnLabel, null);
            this.nameEnLabel.TabIndex = 5;
            this.nameEnLabel.Text = "Full Name (Call/Family/Given)    ";
            // 
            // lblRemoteCtrl
            // 
            this.lblRemoteCtrl.Location = new System.Drawing.Point(345, 279);
            this.lblRemoteCtrl.Name = "lblRemoteCtrl";
            this.lblRemoteCtrl.Size = new System.Drawing.Size(130, 15);
            this.PlatetoolTipController.SetSuperTip(this.lblRemoteCtrl, null);
            this.lblRemoteCtrl.TabIndex = 23;
            this.lblRemoteCtrl.Text = "Assign";
            this.lblRemoteCtrl.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label17
            // 
            this.label17.Location = new System.Drawing.Point(328, 313);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(151, 12);
            this.PlatetoolTipController.SetSuperTip(this.label17, null);
            this.label17.TabIndex = 23;
            this.label17.Text = "2nd office:";
            this.label17.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblRemotControl_num
            // 
            this.lblRemotControl_num.Location = new System.Drawing.Point(307, 280);
            this.lblRemotControl_num.Name = "lblRemotControl_num";
            this.lblRemotControl_num.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblRemotControl_num, null);
            this.lblRemotControl_num.TabIndex = 23;
            this.lblRemotControl_num.Text = "2";
            this.lblRemotControl_num.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label15
            // 
            this.label15.Location = new System.Drawing.Point(307, 314);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.label15, null);
            this.label15.TabIndex = 23;
            this.label15.Text = "3";
            this.label15.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label3
            // 
            this.label3.BackColor = System.Drawing.Color.Gold;
            this.label3.Location = new System.Drawing.Point(30, 74);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(272, 18);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 35;
            this.label3.Text = "Personal & Region Info";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label18
            // 
            this.label18.Location = new System.Drawing.Point(329, 406);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label18, null);
            this.label18.TabIndex = 207;
            this.label18.Text = "REC Conducted by:";
            this.label18.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label47
            // 
            this.label47.Location = new System.Drawing.Point(638, 175);
            this.label47.Name = "label47";
            this.label47.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.label47, null);
            this.label47.TabIndex = 23;
            this.label47.Text = "Job Title:";
            this.label47.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // regionLabel
            // 
            this.regionLabel.Location = new System.Drawing.Point(39, 334);
            this.regionLabel.Name = "regionLabel";
            this.regionLabel.Size = new System.Drawing.Size(100, 12);
            this.PlatetoolTipController.SetSuperTip(this.regionLabel, null);
            this.regionLabel.TabIndex = 31;
            this.regionLabel.Text = "Province:";
            this.regionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobWhere
            // 
            this.cobWhere.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere", true));
            this.cobWhere.Location = new System.Drawing.Point(481, 146);
            this.cobWhere.Name = "cobWhere";
            this.cobWhere.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.cobWhere.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobWhere.Size = new System.Drawing.Size(133, 21);
            this.cobWhere.TabIndex = 217;
            // 
            // regionComboBoxEdit
            // 
            this.regionComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Region", true));
            this.regionComboBoxEdit.Location = new System.Drawing.Point(150, 331);
            this.regionComboBoxEdit.Name = "regionComboBoxEdit";
            this.regionComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.regionComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.regionComboBoxEdit.Size = new System.Drawing.Size(149, 21);
            this.regionComboBoxEdit.TabIndex = 32;
            this.regionComboBoxEdit.SelectedIndexChanged += new System.EventHandler(this.regionComboBoxEdit_SelectedIndexChanged);
            // 
            // lab1_T
            // 
            this.lab1_T.Location = new System.Drawing.Point(622, 98);
            this.lab1_T.Name = "lab1_T";
            this.lab1_T.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab1_T, null);
            this.lab1_T.TabIndex = 23;
            this.lab1_T.Text = "1";
            this.lab1_T.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label8
            // 
            this.label8.Location = new System.Drawing.Point(39, 469);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(98, 10);
            this.PlatetoolTipController.SetSuperTip(this.label8, null);
            this.label8.TabIndex = 23;
            this.label8.Text = "Town:";
            this.label8.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label45
            // 
            this.label45.Location = new System.Drawing.Point(796, 670);
            this.label45.Name = "label45";
            this.label45.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label45, null);
            this.label45.TabIndex = 207;
            this.label45.Text = "(Bd):";
            this.label45.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label45.Visible = false;
            // 
            // lblWFWhere_2Cn
            // 
            this.lblWFWhere_2Cn.Location = new System.Drawing.Point(1251, 722);
            this.lblWFWhere_2Cn.Name = "lblWFWhere_2Cn";
            this.lblWFWhere_2Cn.Size = new System.Drawing.Size(83, 18);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhere_2Cn, null);
            this.lblWFWhere_2Cn.TabIndex = 207;
            this.lblWFWhere_2Cn.Text = "(Local):";
            this.lblWFWhere_2Cn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblWFWhere_2Cn.Visible = false;
            // 
            // labjPDate
            // 
            this.labjPDate.Location = new System.Drawing.Point(23, 543);
            this.labjPDate.Name = "labjPDate";
            this.labjPDate.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.labjPDate, null);
            this.labjPDate.TabIndex = 23;
            this.labjPDate.Text = "Employment dd:      ";
            this.labjPDate.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobVacancy
            // 
            this.cobVacancy.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Vacancy", true));
            this.cobVacancy.Location = new System.Drawing.Point(622, 711);
            this.cobVacancy.Name = "cobVacancy";
            this.cobVacancy.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobVacancy.Size = new System.Drawing.Size(133, 21);
            this.cobVacancy.TabIndex = 217;
            this.cobVacancy.Visible = false;
            this.cobVacancy.SelectedIndexChanged += new System.EventHandler(this.cobWorkForceTyEn_SelectedIndexChanged);
            // 
            // cobStandby
            // 
            this.cobStandby.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Standby", true));
            this.cobStandby.Location = new System.Drawing.Point(774, 509);
            this.cobStandby.Name = "cobStandby";
            this.cobStandby.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobStandby.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobStandby.Size = new System.Drawing.Size(133, 21);
            this.cobStandby.TabIndex = 217;
            this.cobStandby.SelectedIndexChanged += new System.EventHandler(this.cobWorkForceTyEn_SelectedIndexChanged);
            // 
            // labrEDate
            // 
            this.labrEDate.Location = new System.Drawing.Point(23, 567);
            this.labrEDate.Name = "labrEDate";
            this.labrEDate.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.labrEDate, null);
            this.labrEDate.TabIndex = 23;
            this.labrEDate.Text = "Termination dd:";
            this.labrEDate.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label44
            // 
            this.label44.Location = new System.Drawing.Point(816, 699);
            this.label44.Name = "label44";
            this.label44.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label44, null);
            this.label44.TabIndex = 207;
            this.label44.Text = "(Bd):";
            this.label44.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label44.Visible = false;
            // 
            // lblWFWhere_1Cn
            // 
            this.lblWFWhere_1Cn.Location = new System.Drawing.Point(652, 222);
            this.lblWFWhere_1Cn.Name = "lblWFWhere_1Cn";
            this.lblWFWhere_1Cn.Size = new System.Drawing.Size(114, 18);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhere_1Cn, null);
            this.lblWFWhere_1Cn.TabIndex = 207;
            this.lblWFWhere_1Cn.Text = "(Chn):";
            this.lblWFWhere_1Cn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblseniority
            // 
            this.lblseniority.Location = new System.Drawing.Point(24, 585);
            this.lblseniority.Name = "lblseniority";
            this.lblseniority.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblseniority, null);
            this.lblseniority.TabIndex = 23;
            this.lblseniority.Text = "Seniority:";
            this.lblseniority.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab2_J
            // 
            this.lab2_J.Location = new System.Drawing.Point(622, 176);
            this.lab2_J.Name = "lab2_J";
            this.lab2_J.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab2_J, null);
            this.lab2_J.TabIndex = 23;
            this.lab2_J.Text = "2";
            this.lab2_J.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab4_S
            // 
            this.lab4_S.Location = new System.Drawing.Point(4, 586);
            this.lab4_S.Name = "lab4_S";
            this.lab4_S.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab4_S, null);
            this.lab4_S.TabIndex = 23;
            this.lab4_S.Text = "6";
            this.lab4_S.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label43
            // 
            this.label43.Location = new System.Drawing.Point(52, 872);
            this.label43.Name = "label43";
            this.label43.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label43, null);
            this.label43.TabIndex = 207;
            this.label43.Text = "(Bd):";
            this.label43.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label43.Visible = false;
            // 
            // lab3_P
            // 
            this.lab3_P.Location = new System.Drawing.Point(660, 810);
            this.lab3_P.Name = "lab3_P";
            this.lab3_P.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab3_P, null);
            this.lab3_P.TabIndex = 23;
            this.lab3_P.Text = "2";
            this.lab3_P.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lab3_P.Visible = false;
            // 
            // cobStationed_at
            // 
            this.cobStationed_at.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Stationed_at", true));
            this.cobStationed_at.Location = new System.Drawing.Point(775, 478);
            this.cobStationed_at.Name = "cobStationed_at";
            this.cobStationed_at.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobStationed_at.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobStationed_at.Size = new System.Drawing.Size(133, 21);
            this.cobStationed_at.TabIndex = 217;
            this.cobStationed_at.SelectedIndexChanged += new System.EventHandler(this.cobWorkForceTyEn_SelectedIndexChanged);
            // 
            // lab2_T
            // 
            this.lab2_T.Location = new System.Drawing.Point(4, 567);
            this.lab2_T.Name = "lab2_T";
            this.lab2_T.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab2_T, null);
            this.lab2_T.TabIndex = 23;
            this.lab2_T.Text = "5";
            this.lab2_T.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label42
            // 
            this.label42.Location = new System.Drawing.Point(345, 895);
            this.label42.Name = "label42";
            this.label42.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label42, null);
            this.label42.TabIndex = 207;
            this.label42.Text = "(Bd):";
            this.label42.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label42.Visible = false;
            // 
            // lblSub_Section_FAECn
            // 
            this.lblSub_Section_FAECn.Location = new System.Drawing.Point(343, 874);
            this.lblSub_Section_FAECn.Name = "lblSub_Section_FAECn";
            this.lblSub_Section_FAECn.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.lblSub_Section_FAECn, null);
            this.lblSub_Section_FAECn.TabIndex = 207;
            this.lblSub_Section_FAECn.Text = "(Local):";
            this.lblSub_Section_FAECn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.lblSub_Section_FAECn.Visible = false;
            // 
            // lab1_E
            // 
            this.lab1_E.Location = new System.Drawing.Point(5, 543);
            this.lab1_E.Name = "lab1_E";
            this.lab1_E.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab1_E, null);
            this.lab1_E.TabIndex = 23;
            this.lab1_E.Text = "4";
            this.lab1_E.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab3_S
            // 
            this.lab3_S.Location = new System.Drawing.Point(624, 251);
            this.lab3_S.Name = "lab3_S";
            this.lab3_S.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab3_S, null);
            this.lab3_S.TabIndex = 23;
            this.lab3_S.Text = "3";
            this.lab3_S.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab4_T
            // 
            this.lab4_T.Location = new System.Drawing.Point(6, 469);
            this.lab4_T.Name = "lab4_T";
            this.lab4_T.Size = new System.Drawing.Size(25, 10);
            this.PlatetoolTipController.SetSuperTip(this.lab4_T, null);
            this.lab4_T.TabIndex = 23;
            this.lab4_T.Text = "3.4";
            this.lab4_T.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label41
            // 
            this.label41.Location = new System.Drawing.Point(833, 747);
            this.label41.Name = "label41";
            this.label41.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.label41, null);
            this.label41.TabIndex = 207;
            this.label41.Text = "(Bd):";
            this.label41.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label41.Visible = false;
            // 
            // lblWFWhereCn
            // 
            this.lblWFWhereCn.Location = new System.Drawing.Point(328, 167);
            this.lblWFWhereCn.Name = "lblWFWhereCn";
            this.lblWFWhereCn.Size = new System.Drawing.Size(151, 18);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhereCn, null);
            this.lblWFWhereCn.TabIndex = 207;
            this.lblWFWhereCn.Text = "(Local):";
            this.lblWFWhereCn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lab3_C
            // 
            this.lab3_C.Location = new System.Drawing.Point(6, 407);
            this.lab3_C.Name = "lab3_C";
            this.lab3_C.Size = new System.Drawing.Size(25, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab3_C, null);
            this.lab3_C.TabIndex = 23;
            this.lab3_C.Text = "3.3";
            this.lab3_C.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobGrade
            // 
            this.cobGrade.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Grade", true));
            this.cobGrade.Enabled = false;
            this.cobGrade.Location = new System.Drawing.Point(774, 353);
            this.cobGrade.Name = "cobGrade";
            this.cobGrade.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobGrade.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobGrade.Size = new System.Drawing.Size(133, 21);
            this.cobGrade.TabIndex = 217;
            this.cobGrade.SelectedIndexChanged += new System.EventHandler(this.cobWorkForceTyEn_SelectedIndexChanged);
            // 
            // lab_2P
            // 
            this.lab_2P.Location = new System.Drawing.Point(6, 334);
            this.lab_2P.Name = "lab_2P";
            this.lab_2P.Size = new System.Drawing.Size(25, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab_2P, null);
            this.lab_2P.TabIndex = 23;
            this.lab_2P.Text = "3.2";
            this.lab_2P.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab4_L
            // 
            this.lab4_L.Location = new System.Drawing.Point(624, 308);
            this.lab4_L.Name = "lab4_L";
            this.lab4_L.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab4_L, null);
            this.lab4_L.TabIndex = 23;
            this.lab4_L.Text = "4";
            this.lab4_L.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label16
            // 
            this.label16.Location = new System.Drawing.Point(6, 250);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(25, 13);
            this.PlatetoolTipController.SetSuperTip(this.label16, null);
            this.label16.TabIndex = 23;
            this.label16.Text = "3.1";
            this.label16.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab5_H
            // 
            this.lab5_H.Location = new System.Drawing.Point(623, 382);
            this.lab5_H.Name = "lab5_H";
            this.lab5_H.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab5_H, null);
            this.lab5_H.TabIndex = 23;
            this.lab5_H.Text = "6";
            this.lab5_H.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab2_S
            // 
            this.lab2_S.Location = new System.Drawing.Point(5, 178);
            this.lab2_S.Name = "lab2_S";
            this.lab2_S.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab2_S, null);
            this.lab2_S.TabIndex = 23;
            this.lab2_S.Text = "2";
            this.lab2_S.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobWorkForceTyEn
            // 
            this.cobWorkForceTyEn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkForceTyEn", true));
            this.cobWorkForceTyEn.Location = new System.Drawing.Point(1130, 164);
            this.cobWorkForceTyEn.Name = "cobWorkForceTyEn";
            this.cobWorkForceTyEn.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWorkForceTyEn.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cobWorkForceTyEn.Size = new System.Drawing.Size(133, 21);
            this.cobWorkForceTyEn.TabIndex = 217;
            this.cobWorkForceTyEn.Visible = false;
            this.cobWorkForceTyEn.SelectedIndexChanged += new System.EventHandler(this.cobWorkForceTyEn_SelectedIndexChanged);
            // 
            // lab1_F
            // 
            this.lab1_F.Location = new System.Drawing.Point(6, 96);
            this.lab1_F.Name = "lab1_F";
            this.lab1_F.Size = new System.Drawing.Size(12, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab1_F, null);
            this.lab1_F.TabIndex = 23;
            this.lab1_F.Text = "1";
            this.lab1_F.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab6_Cr
            // 
            this.lab6_Cr.Location = new System.Drawing.Point(623, 399);
            this.lab6_Cr.Name = "lab6_Cr";
            this.lab6_Cr.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab6_Cr, null);
            this.lab6_Cr.TabIndex = 23;
            this.lab6_Cr.Text = "7";
            this.lab6_Cr.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labId
            // 
            this.labId.Location = new System.Drawing.Point(30, 47);
            this.labId.Name = "labId";
            this.labId.Size = new System.Drawing.Size(109, 12);
            this.PlatetoolTipController.SetSuperTip(this.labId, null);
            this.labId.TabIndex = 23;
            this.labId.Text = "Employee ID#:";
            this.labId.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobWhere_2_ClassBd
            // 
            this.cobWhere_2_ClassBd.AllowDrop = true;
            this.cobWhere_2_ClassBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_2Bd", true));
            this.cobWhere_2_ClassBd.Location = new System.Drawing.Point(954, 671);
            this.cobWhere_2_ClassBd.Name = "cobWhere_2_ClassBd";
            this.cobWhere_2_ClassBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWhere_2_ClassBd.Size = new System.Drawing.Size(133, 21);
            this.cobWhere_2_ClassBd.TabIndex = 209;
            this.cobWhere_2_ClassBd.Visible = false;
            // 
            // labSex
            // 
            this.labSex.Location = new System.Drawing.Point(24, 178);
            this.labSex.Name = "labSex";
            this.labSex.Size = new System.Drawing.Size(124, 12);
            this.PlatetoolTipController.SetSuperTip(this.labSex, null);
            this.labSex.TabIndex = 23;
            this.labSex.Text = "Sex:";
            this.labSex.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblCroossRoleDcrp
            // 
            this.lblCroossRoleDcrp.Location = new System.Drawing.Point(498, 766);
            this.lblCroossRoleDcrp.Name = "lblCroossRoleDcrp";
            this.lblCroossRoleDcrp.Size = new System.Drawing.Size(132, 16);
            this.PlatetoolTipController.SetSuperTip(this.lblCroossRoleDcrp, null);
            this.lblCroossRoleDcrp.TabIndex = 211;
            this.lblCroossRoleDcrp.Text = "Cross Role Dcrp:";
            this.lblCroossRoleDcrp.Visible = false;
            // 
            // labArea
            // 
            this.labArea.Location = new System.Drawing.Point(39, 407);
            this.labArea.Name = "labArea";
            this.labArea.Size = new System.Drawing.Size(100, 12);
            this.PlatetoolTipController.SetSuperTip(this.labArea, null);
            this.labArea.TabIndex = 23;
            this.labArea.Text = "City:";
            this.labArea.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // cobWhere_1_TeamBd
            // 
            this.cobWhere_1_TeamBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhere_1Bd", true));
            this.cobWhere_1_TeamBd.Location = new System.Drawing.Point(974, 698);
            this.cobWhere_1_TeamBd.Name = "cobWhere_1_TeamBd";
            this.cobWhere_1_TeamBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWhere_1_TeamBd.Size = new System.Drawing.Size(133, 21);
            this.cobWhere_1_TeamBd.TabIndex = 209;
            this.cobWhere_1_TeamBd.Visible = false;
            // 
            // labCountry
            // 
            this.labCountry.Location = new System.Drawing.Point(40, 249);
            this.labCountry.Name = "labCountry";
            this.labCountry.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.labCountry, null);
            this.labCountry.TabIndex = 23;
            this.labCountry.Text = "Country:";
            this.labCountry.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab7_G
            // 
            this.lab7_G.Location = new System.Drawing.Point(623, 360);
            this.lab7_G.Name = "lab7_G";
            this.lab7_G.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab7_G, null);
            this.lab7_G.TabIndex = 23;
            this.lab7_G.Text = "5";
            this.lab7_G.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // sexComboBoxEdit
            // 
            this.sexComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sex", true));
            this.sexComboBoxEdit.Location = new System.Drawing.Point(151, 175);
            this.sexComboBoxEdit.Name = "sexComboBoxEdit";
            this.sexComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.sexComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Female",
            "Male"});
            this.sexComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.sexComboBoxEdit.Size = new System.Drawing.Size(149, 21);
            this.sexComboBoxEdit.TabIndex = 24;
            // 
            // cobCo_TeamBd
            // 
            this.cobCo_TeamBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Co_TeamBd", true));
            this.cobCo_TeamBd.Location = new System.Drawing.Point(206, 871);
            this.cobCo_TeamBd.Name = "cobCo_TeamBd";
            this.cobCo_TeamBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobCo_TeamBd.Size = new System.Drawing.Size(133, 21);
            this.cobCo_TeamBd.TabIndex = 209;
            this.cobCo_TeamBd.Visible = false;
            // 
            // cobCo_TeamCn
            // 
            this.cobCo_TeamCn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Co_TeamCn", true));
            this.cobCo_TeamCn.Location = new System.Drawing.Point(206, 850);
            this.cobCo_TeamCn.Name = "cobCo_TeamCn";
            this.cobCo_TeamCn.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobCo_TeamCn.Size = new System.Drawing.Size(133, 21);
            this.cobCo_TeamCn.TabIndex = 209;
            this.cobCo_TeamCn.Visible = false;
            // 
            // cobSub_Section_FAEBd
            // 
            this.cobSub_Section_FAEBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sub_Section_FAEBd", true));
            this.cobSub_Section_FAEBd.Location = new System.Drawing.Point(503, 890);
            this.cobSub_Section_FAEBd.Name = "cobSub_Section_FAEBd";
            this.cobSub_Section_FAEBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobSub_Section_FAEBd.Size = new System.Drawing.Size(133, 21);
            this.cobSub_Section_FAEBd.TabIndex = 209;
            this.cobSub_Section_FAEBd.Visible = false;
            // 
            // cobSub_Section_FAECn
            // 
            this.cobSub_Section_FAECn.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sub_Section_FAECn", true));
            this.cobSub_Section_FAECn.Location = new System.Drawing.Point(503, 867);
            this.cobSub_Section_FAECn.Name = "cobSub_Section_FAECn";
            this.cobSub_Section_FAECn.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobSub_Section_FAECn.Size = new System.Drawing.Size(133, 21);
            this.cobSub_Section_FAECn.TabIndex = 209;
            this.cobSub_Section_FAECn.Visible = false;
            // 
            // lab8_S
            // 
            this.lab8_S.Location = new System.Drawing.Point(623, 481);
            this.lab8_S.Name = "lab8_S";
            this.lab8_S.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab8_S, null);
            this.lab8_S.TabIndex = 23;
            this.lab8_S.Text = "9";
            this.lab8_S.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lbl_TemaNo
            // 
            this.lbl_TemaNo.Location = new System.Drawing.Point(1162, 670);
            this.lbl_TemaNo.Name = "lbl_TemaNo";
            this.lbl_TemaNo.Size = new System.Drawing.Size(37, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbl_TemaNo, null);
            this.lbl_TemaNo.TabIndex = 23;
            this.lbl_TemaNo.Text = "1.3.2";
            this.lbl_TemaNo.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lbl_TemaNo.Visible = false;
            // 
            // lab9_S
            // 
            this.lab9_S.AutoSize = true;
            this.lab9_S.Location = new System.Drawing.Point(622, 506);
            this.lab9_S.Name = "lab9_S";
            this.lab9_S.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab9_S, null);
            this.lab9_S.TabIndex = 23;
            this.lab9_S.Text = "10";
            this.lab9_S.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // WFPartlabelCn
            // 
            this.WFPartlabelCn.Location = new System.Drawing.Point(642, 335);
            this.WFPartlabelCn.Name = "WFPartlabelCn";
            this.WFPartlabelCn.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.WFPartlabelCn, null);
            this.WFPartlabelCn.TabIndex = 23;
            this.WFPartlabelCn.Text = " (Local):";
            this.WFPartlabelCn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // cobWFWhereBd
            // 
            this.cobWFWhereBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFWhereBd", true));
            this.cobWFWhereBd.Location = new System.Drawing.Point(990, 748);
            this.cobWFWhereBd.Name = "cobWFWhereBd";
            this.cobWFWhereBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWFWhereBd.Size = new System.Drawing.Size(133, 21);
            this.cobWFWhereBd.TabIndex = 209;
            this.cobWFWhereBd.Visible = false;
            // 
            // cobCroossRoleDcrp
            // 
            this.cobCroossRoleDcrp.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CrossRoleDcrp", true));
            this.cobCroossRoleDcrp.Location = new System.Drawing.Point(630, 761);
            this.cobCroossRoleDcrp.Name = "cobCroossRoleDcrp";
            this.cobCroossRoleDcrp.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobCroossRoleDcrp.Size = new System.Drawing.Size(133, 21);
            this.cobCroossRoleDcrp.TabIndex = 212;
            this.cobCroossRoleDcrp.UseWaitCursor = true;
            this.cobCroossRoleDcrp.Visible = false;
            this.cobCroossRoleDcrp.SelectedIndexChanged += new System.EventHandler(this.workerTypeComboBoxEdit_SelectedIndexChanged);
            // 
            // workerTypeComboBoxEdit
            // 
            this.workerTypeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkerType", true));
            this.workerTypeComboBoxEdit.Location = new System.Drawing.Point(774, 251);
            this.workerTypeComboBoxEdit.Name = "workerTypeComboBoxEdit";
            this.workerTypeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.workerTypeComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.workerTypeComboBoxEdit.Size = new System.Drawing.Size(133, 21);
            this.workerTypeComboBoxEdit.TabIndex = 212;
            this.workerTypeComboBoxEdit.SelectedIndexChanged += new System.EventHandler(this.workerTypeComboBoxEdit_SelectedIndexChanged);
            // 
            // chkCrossRole
            // 
            this.chkCrossRole.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CrossRole", true));
            this.chkCrossRole.Location = new System.Drawing.Point(1230, 429);
            this.chkCrossRole.Name = "chkCrossRole";
            this.chkCrossRole.Properties.Caption = "Y";
            this.chkCrossRole.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.chkCrossRole.Size = new System.Drawing.Size(35, 19);
            this.chkCrossRole.TabIndex = 42;
            this.chkCrossRole.Visible = false;
            this.chkCrossRole.CheckedChanged += new System.EventHandler(this.chkCrossRole_CheckedChanged);
            // 
            // chkIsRelated
            // 
            this.chkIsRelated.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsRelated", true));
            this.chkIsRelated.Location = new System.Drawing.Point(770, 535);
            this.chkIsRelated.Name = "chkIsRelated";
            this.chkIsRelated.Properties.Caption = "";
            this.chkIsRelated.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.chkIsRelated.Size = new System.Drawing.Size(35, 19);
            this.chkIsRelated.TabIndex = 42;
            // 
            // chkHeadCount
            // 
            this.chkHeadCount.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HeadCount", true));
            this.chkHeadCount.Location = new System.Drawing.Point(1231, 404);
            this.chkHeadCount.Name = "chkHeadCount";
            this.chkHeadCount.Properties.Caption = "Y";
            this.chkHeadCount.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.chkHeadCount.Size = new System.Drawing.Size(35, 19);
            this.chkHeadCount.TabIndex = 42;
            this.chkHeadCount.Visible = false;
            this.chkHeadCount.CheckedChanged += new System.EventHandler(this.chkHeadCount_CheckedChanged);
            // 
            // jobTitleEnComboBoxEdit
            // 
            this.jobTitleEnComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JobTitleEn", true));
            this.jobTitleEnComboBoxEdit.Location = new System.Drawing.Point(774, 198);
            this.jobTitleEnComboBoxEdit.Name = "jobTitleEnComboBoxEdit";
            this.jobTitleEnComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.jobTitleEnComboBoxEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.jobTitleEnComboBoxEdit.Size = new System.Drawing.Size(133, 21);
            this.jobTitleEnComboBoxEdit.TabIndex = 208;
            this.jobTitleEnComboBoxEdit.SelectedIndexChanged += new System.EventHandler(this.jobTitleEnComboBoxEdit_SelectedIndexChanged);
            // 
            // jobTitleCodeBd
            // 
            this.jobTitleCodeBd.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "JobTitleBd", true));
            this.jobTitleCodeBd.Location = new System.Drawing.Point(989, 913);
            this.jobTitleCodeBd.Name = "jobTitleCodeBd";
            this.jobTitleCodeBd.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.jobTitleCodeBd.Size = new System.Drawing.Size(133, 21);
            this.jobTitleCodeBd.TabIndex = 209;
            this.jobTitleCodeBd.Visible = false;
            // 
            // label48
            // 
            this.label48.Location = new System.Drawing.Point(852, 914);
            this.label48.Name = "label48";
            this.label48.Size = new System.Drawing.Size(131, 18);
            this.PlatetoolTipController.SetSuperTip(this.label48, null);
            this.label48.TabIndex = 207;
            this.label48.Text = "(Bd):";
            this.label48.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label48.Visible = false;
            // 
            // label5
            // 
            this.label5.BackColor = System.Drawing.Color.Gold;
            this.label5.Location = new System.Drawing.Point(324, 74);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(291, 18);
            this.PlatetoolTipController.SetSuperTip(this.label5, null);
            this.label5.TabIndex = 35;
            this.label5.Text = "Departmental Info";
            this.label5.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // label14
            // 
            this.label14.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.label14.Font = new System.Drawing.Font("SimSun", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.label14.Location = new System.Drawing.Point(22, 15);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(1084, 18);
            this.PlatetoolTipController.SetSuperTip(this.label14, null);
            this.label14.TabIndex = 35;
            this.label14.Text = "WF Information";
            this.label14.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // factoryLabel
            // 
            this.factoryLabel.Location = new System.Drawing.Point(640, 46);
            this.factoryLabel.Name = "factoryLabel";
            this.factoryLabel.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.factoryLabel.Size = new System.Drawing.Size(127, 18);
            this.PlatetoolTipController.SetSuperTip(this.factoryLabel, null);
            this.factoryLabel.TabIndex = 25;
            this.factoryLabel.Text = "Factory/Office Code:";
            this.factoryLabel.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lblSub_Section_FAE
            // 
            this.lblSub_Section_FAE.Location = new System.Drawing.Point(345, 845);
            this.lblSub_Section_FAE.Name = "lblSub_Section_FAE";
            this.lblSub_Section_FAE.Size = new System.Drawing.Size(151, 25);
            this.PlatetoolTipController.SetSuperTip(this.lblSub_Section_FAE, null);
            this.lblSub_Section_FAE.TabIndex = 23;
            this.lblSub_Section_FAE.Text = "Sub-Section (apply to Stitching Section only):";
            this.lblSub_Section_FAE.Visible = false;
            // 
            // lblWFWhere
            // 
            this.lblWFWhere.Location = new System.Drawing.Point(347, 151);
            this.lblWFWhere.Name = "lblWFWhere";
            this.lblWFWhere.Size = new System.Drawing.Size(128, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhere, null);
            this.lblWFWhere.TabIndex = 11;
            this.lblWFWhere.Text = "Section:";
            this.lblWFWhere.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // labDeptName
            // 
            this.labDeptName.Location = new System.Drawing.Point(347, 98);
            this.labDeptName.Name = "labDeptName";
            this.labDeptName.Size = new System.Drawing.Size(128, 18);
            this.PlatetoolTipController.SetSuperTip(this.labDeptName, null);
            this.labDeptName.TabIndex = 23;
            this.labDeptName.Text = "Department :";
            this.labDeptName.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // label40
            // 
            this.label40.Location = new System.Drawing.Point(833, 773);
            this.label40.Name = "label40";
            this.label40.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.label40, null);
            this.label40.TabIndex = 23;
            this.label40.Text = "(Bd):";
            this.label40.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.label40.Visible = false;
            // 
            // lblWFWhere_1
            // 
            this.lblWFWhere_1.Location = new System.Drawing.Point(348, 202);
            this.lblWFWhere_1.Name = "lblWFWhere_1";
            this.lblWFWhere_1.Size = new System.Drawing.Size(128, 16);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhere_1, null);
            this.lblWFWhere_1.TabIndex = 23;
            this.lblWFWhere_1.Text = "Team:";
            this.lblWFWhere_1.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // deptNameCNLabel
            // 
            this.deptNameCNLabel.Location = new System.Drawing.Point(328, 118);
            this.deptNameCNLabel.Name = "deptNameCNLabel";
            this.deptNameCNLabel.Size = new System.Drawing.Size(151, 26);
            this.PlatetoolTipController.SetSuperTip(this.deptNameCNLabel, null);
            this.deptNameCNLabel.TabIndex = 23;
            this.deptNameCNLabel.Text = "(Local):";
            this.deptNameCNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblWFWhere_2
            // 
            this.lblWFWhere_2.Location = new System.Drawing.Point(348, 249);
            this.lblWFWhere_2.Name = "lblWFWhere_2";
            this.lblWFWhere_2.Size = new System.Drawing.Size(128, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblWFWhere_2, null);
            this.lblWFWhere_2.TabIndex = 23;
            this.lblWFWhere_2.Text = "FAE# (for ref.):";
            this.lblWFWhere_2.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lblWFWhere_2.Visible = false;
            // 
            // lab3_Sub
            // 
            this.lab3_Sub.Location = new System.Drawing.Point(1157, 587);
            this.lab3_Sub.Name = "lab3_Sub";
            this.lab3_Sub.Size = new System.Drawing.Size(15, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab3_Sub, null);
            this.lab3_Sub.TabIndex = 23;
            this.lab3_Sub.Text = "2";
            this.lab3_Sub.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lab3_Sub.Visible = false;
            // 
            // lab2_Sec
            // 
            this.lab2_Sec.Location = new System.Drawing.Point(307, 149);
            this.lab2_Sec.Name = "lab2_Sec";
            this.lab2_Sec.Size = new System.Drawing.Size(31, 14);
            this.PlatetoolTipController.SetSuperTip(this.lab2_Sec, null);
            this.lab2_Sec.TabIndex = 23;
            this.lab2_Sec.Text = "1.2";
            this.lab2_Sec.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab6_C
            // 
            this.lab6_C.Location = new System.Drawing.Point(307, 249);
            this.lab6_C.Name = "lab6_C";
            this.lab6_C.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(this.lab6_C, null);
            this.lab6_C.TabIndex = 23;
            this.lab6_C.Text = "1.4";
            this.lab6_C.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.lab6_C.Visible = false;
            // 
            // lab1_D
            // 
            this.lab1_D.Location = new System.Drawing.Point(307, 98);
            this.lab1_D.Name = "lab1_D";
            this.lab1_D.Size = new System.Drawing.Size(31, 18);
            this.PlatetoolTipController.SetSuperTip(this.lab1_D, null);
            this.lab1_D.TabIndex = 23;
            this.lab1_D.Text = "1.1";
            this.lab1_D.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // lab5_T
            // 
            this.lab5_T.Location = new System.Drawing.Point(307, 203);
            this.lab5_T.Name = "lab5_T";
            this.lab5_T.Size = new System.Drawing.Size(38, 16);
            this.PlatetoolTipController.SetSuperTip(this.lab5_T, null);
            this.lab5_T.TabIndex = 23;
            this.lab5_T.Text = "1.3";
            this.lab5_T.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // xtraTabPage5
            // 
            this.xtraTabPage5.Controls.Add(this.longLeaveCheckEdit);
            this.xtraTabPage5.Controls.Add(this.panel1);
            this.xtraTabPage5.Controls.Add(this.wFLevelTextEdit);
            this.xtraTabPage5.Controls.Add(this.wFLevelLabel);
            this.xtraTabPage5.Controls.Add(this.cobWFState);
            this.xtraTabPage5.Controls.Add(this.label1);
            this.xtraTabPage5.Controls.Add(this.label2);
            this.xtraTabPage5.Controls.Add(this.lineCodeComboBoxEdit);
            this.xtraTabPage5.Controls.Add(this.lineCodeLabel);
            this.xtraTabPage5.Name = "xtraTabPage5";
            this.xtraTabPage5.Size = new System.Drawing.Size(796, 937);
            this.xtraTabPage5.Text = "Employee Re-arrangement Function ";
            // 
            // longLeaveCheckEdit
            // 
            this.longLeaveCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LongLeave", true));
            this.longLeaveCheckEdit.Location = new System.Drawing.Point(149, 80);
            this.longLeaveCheckEdit.Name = "longLeaveCheckEdit";
            this.longLeaveCheckEdit.Properties.Caption = "";
            this.longLeaveCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.longLeaveCheckEdit.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.longLeaveCheckEdit.Size = new System.Drawing.Size(27, 19);
            this.longLeaveCheckEdit.TabIndex = 222;
            this.longLeaveCheckEdit.CheckedChanged += new System.EventHandler(this.longLeaveCheckEdit_CheckedChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.speWorkHour);
            this.panel1.Controls.Add(this.timeEdit2);
            this.panel1.Controls.Add(this.timeEdit1);
            this.panel1.Controls.Add(this.longLeaveStartDateDateEdit);
            this.panel1.Controls.Add(this.longLeaveEndDateDateEdit);
            this.panel1.Controls.Add(this.longLeaveEndDateLabel);
            this.panel1.Controls.Add(this.lblTotalworkinghours);
            this.panel1.Controls.Add(this.longLeaveStartDateLabel);
            this.panel1.Location = new System.Drawing.Point(177, 82);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(463, 51);
            this.PlatetoolTipController.SetSuperTip(this.panel1, null);
            this.panel1.TabIndex = 221;
            // 
            // speWorkHour
            // 
            this.speWorkHour.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WorkHour", true));
            this.speWorkHour.EditValue = new decimal(new int[] {
            8,
            0,
            0,
            0});
            this.speWorkHour.Location = new System.Drawing.Point(401, 24);
            this.speWorkHour.Name = "speWorkHour";
            this.speWorkHour.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.speWorkHour.Properties.Increment = new decimal(new int[] {
            5,
            0,
            0,
            65536});
            this.speWorkHour.Size = new System.Drawing.Size(50, 21);
            this.speWorkHour.TabIndex = 216;
            // 
            // timeEdit2
            // 
            this.timeEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LongLeaveEndDate", true));
            this.timeEdit2.EditValue = new System.DateTime(2013, 5, 18, 0, 0, 0, 0);
            this.timeEdit2.Location = new System.Drawing.Point(155, 23);
            this.timeEdit2.Name = "timeEdit2";
            this.timeEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeEdit2.Properties.DisplayFormat.FormatString = "HH:mm";
            this.timeEdit2.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.timeEdit2.Properties.EditFormat.FormatString = "HH:mm";
            this.timeEdit2.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.timeEdit2.Size = new System.Drawing.Size(100, 21);
            this.timeEdit2.TabIndex = 215;
            // 
            // timeEdit1
            // 
            this.timeEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LongLeaveStartDate", true));
            this.timeEdit1.EditValue = new System.DateTime(2013, 5, 18, 0, 0, 0, 0);
            this.timeEdit1.Location = new System.Drawing.Point(155, 3);
            this.timeEdit1.Name = "timeEdit1";
            this.timeEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.timeEdit1.Properties.DisplayFormat.FormatString = "HH:mm";
            this.timeEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.timeEdit1.Properties.EditFormat.FormatString = "HH:mm";
            this.timeEdit1.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.timeEdit1.Size = new System.Drawing.Size(100, 21);
            this.timeEdit1.TabIndex = 215;
            this.timeEdit1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.timeEdit1_MouseDown);
            // 
            // longLeaveStartDateDateEdit
            // 
            this.longLeaveStartDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LongLeaveStartDate", true));
            this.longLeaveStartDateDateEdit.EditValue = null;
            this.longLeaveStartDateDateEdit.Location = new System.Drawing.Point(49, 3);
            this.longLeaveStartDateDateEdit.Name = "longLeaveStartDateDateEdit";
            this.longLeaveStartDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.longLeaveStartDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.longLeaveStartDateDateEdit.Size = new System.Drawing.Size(100, 21);
            this.longLeaveStartDateDateEdit.TabIndex = 213;
            // 
            // longLeaveEndDateDateEdit
            // 
            this.longLeaveEndDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LongLeaveEndDate", true));
            this.longLeaveEndDateDateEdit.EditValue = null;
            this.longLeaveEndDateDateEdit.Location = new System.Drawing.Point(49, 24);
            this.longLeaveEndDateDateEdit.Name = "longLeaveEndDateDateEdit";
            this.longLeaveEndDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.longLeaveEndDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.longLeaveEndDateDateEdit.Size = new System.Drawing.Size(100, 21);
            this.longLeaveEndDateDateEdit.TabIndex = 214;
            // 
            // longLeaveEndDateLabel
            // 
            this.longLeaveEndDateLabel.Font = new System.Drawing.Font("PMingLiU", 9F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.longLeaveEndDateLabel.Location = new System.Drawing.Point(4, 29);
            this.longLeaveEndDateLabel.Name = "longLeaveEndDateLabel";
            this.longLeaveEndDateLabel.Size = new System.Drawing.Size(43, 12);
            this.PlatetoolTipController.SetSuperTip(this.longLeaveEndDateLabel, null);
            this.longLeaveEndDateLabel.TabIndex = 213;
            this.longLeaveEndDateLabel.Text = "To:";
            this.longLeaveEndDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblTotalworkinghours
            // 
            this.lblTotalworkinghours.Location = new System.Drawing.Point(265, 29);
            this.lblTotalworkinghours.Name = "lblTotalworkinghours";
            this.lblTotalworkinghours.Size = new System.Drawing.Size(130, 12);
            this.PlatetoolTipController.SetSuperTip(this.lblTotalworkinghours, null);
            this.lblTotalworkinghours.TabIndex = 15;
            this.lblTotalworkinghours.Text = "Total working Hours:";
            this.lblTotalworkinghours.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // longLeaveStartDateLabel
            // 
            this.longLeaveStartDateLabel.Font = new System.Drawing.Font("PMingLiU", 9F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.longLeaveStartDateLabel.Location = new System.Drawing.Point(2, 9);
            this.longLeaveStartDateLabel.Name = "longLeaveStartDateLabel";
            this.longLeaveStartDateLabel.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(this.longLeaveStartDateLabel, null);
            this.longLeaveStartDateLabel.TabIndex = 212;
            this.longLeaveStartDateLabel.Text = "From:";
            this.longLeaveStartDateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // wFLevelTextEdit
            // 
            this.wFLevelTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFLevel", true));
            this.wFLevelTextEdit.Location = new System.Drawing.Point(151, 138);
            this.wFLevelTextEdit.Name = "wFLevelTextEdit";
            this.wFLevelTextEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.wFLevelTextEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.wFLevelTextEdit.Size = new System.Drawing.Size(175, 21);
            this.wFLevelTextEdit.TabIndex = 220;
            // 
            // wFLevelLabel
            // 
            this.wFLevelLabel.Location = new System.Drawing.Point(2, 141);
            this.wFLevelLabel.Name = "wFLevelLabel";
            this.wFLevelLabel.Size = new System.Drawing.Size(149, 12);
            this.PlatetoolTipController.SetSuperTip(this.wFLevelLabel, null);
            this.wFLevelLabel.TabIndex = 219;
            this.wFLevelLabel.Text = "WF Perf Level:";
            this.wFLevelLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // cobWFState
            // 
            this.cobWFState.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFState", true));
            this.cobWFState.Location = new System.Drawing.Point(151, 55);
            this.cobWFState.Name = "cobWFState";
            this.cobWFState.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cobWFState.Size = new System.Drawing.Size(175, 21);
            this.cobWFState.TabIndex = 16;
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(25, 82);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(126, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 15;
            this.label1.Text = "Leave Status:";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(25, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(126, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 15;
            this.label2.Text = "Opts tasks in hand?";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lineCodeComboBoxEdit
            // 
            this.lineCodeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LineCode", true));
            this.lineCodeComboBoxEdit.Location = new System.Drawing.Point(151, 28);
            this.lineCodeComboBoxEdit.Name = "lineCodeComboBoxEdit";
            this.lineCodeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lineCodeComboBoxEdit.Size = new System.Drawing.Size(175, 21);
            this.lineCodeComboBoxEdit.TabIndex = 14;
            // 
            // lineCodeLabel
            // 
            this.lineCodeLabel.Location = new System.Drawing.Point(25, 31);
            this.lineCodeLabel.Name = "lineCodeLabel";
            this.lineCodeLabel.Size = new System.Drawing.Size(126, 12);
            this.PlatetoolTipController.SetSuperTip(this.lineCodeLabel, null);
            this.lineCodeLabel.TabIndex = 13;
            this.lineCodeLabel.Text = "Where are they now?";
            this.lineCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.Controls.Add(this.comboBoxEdit3);
            this.xtraTabPage3.Controls.Add(this.label4);
            this.xtraTabPage3.Controls.Add(this.matrix_QualityLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_QualitySpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_TeamplayerLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_TeamplayerSpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_StaminalLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_StaminalSpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_StrengthLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_StrengthSpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_SpeedLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_SpeedSpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_AdoptabilityLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_AdoptabilitySpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_AdaptabilityLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_AdaptabilitySpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_AttendanceLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_AttendanceSpinEdit);
            this.xtraTabPage3.Controls.Add(this.matrix_SkillLabel);
            this.xtraTabPage3.Controls.Add(this.matrix_SkillSpinEdit);
            this.xtraTabPage3.Controls.Add(this.chartControl1);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(796, 937);
            this.xtraTabPage3.Text = "Employee Matrix";
            // 
            // comboBoxEdit3
            // 
            this.comboBoxEdit3.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WFLevel", true));
            this.comboBoxEdit3.Location = new System.Drawing.Point(168, 8);
            this.comboBoxEdit3.Name = "comboBoxEdit3";
            this.comboBoxEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit3.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit3.Size = new System.Drawing.Size(100, 21);
            this.comboBoxEdit3.TabIndex = 220;
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(3, 6);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(151, 30);
            this.PlatetoolTipController.SetSuperTip(this.label4, null);
            this.label4.TabIndex = 219;
            this.label4.Text = "dWF Performance Level:\r\n直接性勞動力表現水平 ";
            this.label4.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // matrix_QualitySpinEdit
            // 
            this.matrix_QualitySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Quality", true));
            this.matrix_QualitySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_QualitySpinEdit.Location = new System.Drawing.Point(168, 332);
            this.matrix_QualitySpinEdit.Name = "matrix_QualitySpinEdit";
            this.matrix_QualitySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_QualitySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_QualitySpinEdit.TabIndex = 217;
            this.matrix_QualitySpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_TeamplayerSpinEdit
            // 
            this.matrix_TeamplayerSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Teamplayer", true));
            this.matrix_TeamplayerSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_TeamplayerSpinEdit.Location = new System.Drawing.Point(168, 294);
            this.matrix_TeamplayerSpinEdit.Name = "matrix_TeamplayerSpinEdit";
            this.matrix_TeamplayerSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_TeamplayerSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_TeamplayerSpinEdit.TabIndex = 216;
            this.matrix_TeamplayerSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_StaminalSpinEdit
            // 
            this.matrix_StaminalSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Staminal", true));
            this.matrix_StaminalSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_StaminalSpinEdit.Location = new System.Drawing.Point(168, 257);
            this.matrix_StaminalSpinEdit.Name = "matrix_StaminalSpinEdit";
            this.matrix_StaminalSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_StaminalSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_StaminalSpinEdit.TabIndex = 215;
            this.matrix_StaminalSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_StrengthSpinEdit
            // 
            this.matrix_StrengthSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Strength", true));
            this.matrix_StrengthSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_StrengthSpinEdit.Location = new System.Drawing.Point(168, 220);
            this.matrix_StrengthSpinEdit.Name = "matrix_StrengthSpinEdit";
            this.matrix_StrengthSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_StrengthSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_StrengthSpinEdit.TabIndex = 214;
            this.matrix_StrengthSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_SpeedSpinEdit
            // 
            this.matrix_SpeedSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Speed", true));
            this.matrix_SpeedSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_SpeedSpinEdit.Location = new System.Drawing.Point(168, 183);
            this.matrix_SpeedSpinEdit.Name = "matrix_SpeedSpinEdit";
            this.matrix_SpeedSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_SpeedSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_SpeedSpinEdit.TabIndex = 213;
            this.matrix_SpeedSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_AdoptabilitySpinEdit
            // 
            this.matrix_AdoptabilitySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Adoptability", true));
            this.matrix_AdoptabilitySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_AdoptabilitySpinEdit.Location = new System.Drawing.Point(168, 146);
            this.matrix_AdoptabilitySpinEdit.Name = "matrix_AdoptabilitySpinEdit";
            this.matrix_AdoptabilitySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_AdoptabilitySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_AdoptabilitySpinEdit.TabIndex = 212;
            this.matrix_AdoptabilitySpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_AdaptabilitySpinEdit
            // 
            this.matrix_AdaptabilitySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Adaptability", true));
            this.matrix_AdaptabilitySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_AdaptabilitySpinEdit.Location = new System.Drawing.Point(168, 109);
            this.matrix_AdaptabilitySpinEdit.Name = "matrix_AdaptabilitySpinEdit";
            this.matrix_AdaptabilitySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_AdaptabilitySpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_AdaptabilitySpinEdit.TabIndex = 211;
            this.matrix_AdaptabilitySpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_AttendanceSpinEdit
            // 
            this.matrix_AttendanceSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Attendance", true));
            this.matrix_AttendanceSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_AttendanceSpinEdit.Location = new System.Drawing.Point(168, 72);
            this.matrix_AttendanceSpinEdit.Name = "matrix_AttendanceSpinEdit";
            this.matrix_AttendanceSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_AttendanceSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_AttendanceSpinEdit.TabIndex = 210;
            this.matrix_AttendanceSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // matrix_SkillSpinEdit
            // 
            this.matrix_SkillSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Matrix_Skill", true));
            this.matrix_SkillSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.matrix_SkillSpinEdit.Location = new System.Drawing.Point(168, 40);
            this.matrix_SkillSpinEdit.Name = "matrix_SkillSpinEdit";
            this.matrix_SkillSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.matrix_SkillSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.matrix_SkillSpinEdit.TabIndex = 209;
            this.matrix_SkillSpinEdit.EditValueChanged += new System.EventHandler(this.matrix_SkillSpinEdit_EditValueChanged);
            // 
            // xtraTabPage4
            // 
            this.xtraTabPage4.Controls.Add(this.wfWorkHistory1);
            this.xtraTabPage4.Name = "xtraTabPage4";
            this.xtraTabPage4.Size = new System.Drawing.Size(796, 937);
            this.xtraTabPage4.Text = "Opts task in hand history";
            // 
            // wfWorkHistory1
            // 
            this.wfWorkHistory1.AllowAddRow = true;
            this.wfWorkHistory1.AlwaysShowDesignLayout = false;
            this.wfWorkHistory1.AutoOpenDetailForm = false;
            this.wfWorkHistory1.DataContext = null;
            this.wfWorkHistory1.DataSource = null;
            this.wfWorkHistory1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.wfWorkHistory1.EditorTypeName = null;
            this.wfWorkHistory1.FileID = null;
            this.wfWorkHistory1.FirstForm = null;
            this.wfWorkHistory1.FormName = "WFWorkHistory";
            this.wfWorkHistory1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.wfWorkHistory1.FormTitle = "PH.LWPM.UI.WF.WFWorkHistory";
            this.wfWorkHistory1.IsCancelList = false;
            this.wfWorkHistory1.IsShowPivotTable = false;
            this.wfWorkHistory1.LayoutData = null;
            this.wfWorkHistory1.LayoutName = null;
            this.wfWorkHistory1.ListForm = null;
            this.wfWorkHistory1.Location = new System.Drawing.Point(0, 0);
            this.wfWorkHistory1.MenuID = ((long)(0));
            this.wfWorkHistory1.Name = "wfWorkHistory1";
            this.wfWorkHistory1.NeedCheckPermission = false;
            this.wfWorkHistory1.NextForm = null;
            this.wfWorkHistory1.ParentForm = null;
            this.wfWorkHistory1.PrevForm = null;
            this.wfWorkHistory1.RowChangeAutoSave = true;
            this.wfWorkHistory1.ShowMultiCheck = false;
            this.wfWorkHistory1.SideProgramID = null;
            this.wfWorkHistory1.Size = new System.Drawing.Size(796, 937);
            this.PlatetoolTipController.SetSuperTip(this.wfWorkHistory1, null);
            this.wfWorkHistory1.TabControls = null;
            this.wfWorkHistory1.TabIndex = 0;
            this.wfWorkHistory1.TabPage = null;
            // 
            // skillDataSet
            // 
            this.skillDataSet.DataSetName = "SkillDataSet";
            this.skillDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // workForceBindingSource
            // 
            this.workForceBindingSource.DataMember = "WorkForce";
            this.workForceBindingSource.DataSource = this.skillDataSet;
            // 
            // WFChildFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.AutoSize = true;
            this.Name = "WFChildFrm";
            this.Size = new System.Drawing.Size(1506, 1025);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ChildListFrm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.clsNameComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(radarDiagram1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(radarLineSeriesView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(series1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(radarLineSeriesView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).EndInit();
            this.xtraTabControl2.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.xtraTabPage2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtRECName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup5.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radioGroup1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radIsDeployment.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtFAERef.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtWorkForceTyEn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTitleTypeCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpenVacancyDueDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOpenVacancyDueDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncSupport_N.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncSupport_Y.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncControl_N.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkRemoteFuncControl_Y.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lue_Division.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDeptLocation.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edt_classcn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edt_class.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWorkRegion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueEmptype.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkStaff.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFPart.Properties)).EndInit();
            this.grp2.ResumeLayout(false);
            this.grp2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.edtAudibyHR.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDeptHeader.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtImmeheader.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPreparedHR.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWFPartcn.Properties)).EndInit();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit29.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dWFCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit28.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.inActiveCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit27.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit26.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isRegistAuxiliaryCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit17.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit25.Properties)).EndInit();
            this.panelAuxiliary.ResumeLayout(false);
            this.panelAuxiliary.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.auxiliaryJobTitleComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit24.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit18.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit19.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit20.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit23.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jLDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jLDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit21.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit22.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWageType_TW.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSmfclass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCnComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTitletypecode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecrole_chn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_ClassCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_TeamCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFWhereCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobDepartmentCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.senioritySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTownCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRegionCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobAreaCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.S_cobTown.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.S_cobCity.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTown.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtWageType_Bd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lueWageType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.areaComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.auxiliaryJobTitleComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbReclocation.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecrole_bd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbRecRole.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbDepartalLocation.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbbTransferDept.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCrossRole_N.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHeadCount_N.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkTemp.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.P1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_Team.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountry.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rEDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rEDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobDepartmentBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRecEn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_Class.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountryBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_Team.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobRegionBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobAreaBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTownBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtTeamNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAE.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.idTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jPDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jPDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.factoryComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCountryCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCnTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobTeamNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameEnTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.regionComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobVacancy.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobStandby.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobStationed_at.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobGrade.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWorkForceTyEn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_2_ClassBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWhere_1_TeamBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sexComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_TeamBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCo_TeamCn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAEBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobSub_Section_FAECn.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFWhereBd.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobCroossRoleDcrp.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.workerTypeComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkCrossRole.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkIsRelated.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkHeadCount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleEnComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.jobTitleCodeBd.Properties)).EndInit();
            this.xtraTabPage5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveCheckEdit.Properties)).EndInit();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.speWorkHour.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.timeEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveStartDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveStartDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveEndDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.longLeaveEndDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.wFLevelTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cobWFState.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lineCodeComboBoxEdit.Properties)).EndInit();
            this.xtraTabPage3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_QualitySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_TeamplayerSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_StaminalSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_StrengthSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_SpeedSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AdoptabilitySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AdaptabilitySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_AttendanceSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matrix_SkillSpinEdit.Properties)).EndInit();
            this.xtraTabPage4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.skillDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.workForceBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit clsNameComboBoxEdit;
        private DevExpress.XtraCharts.ChartControl chartControl1;
        private DevExpress.XtraTab.XtraTabControl xtraTabControl2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage4;
        private DevExpress.XtraEditors.SpinEdit matrix_TeamplayerSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_StaminalSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_StrengthSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_SpeedSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_AdoptabilitySpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_AdaptabilitySpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_AttendanceSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_SkillSpinEdit;
        private DevExpress.XtraEditors.SpinEdit matrix_QualitySpinEdit;
        private System.Windows.Forms.Label matrix_QualityLabel;
        private System.Windows.Forms.Label matrix_TeamplayerLabel;
        private System.Windows.Forms.Label matrix_StaminalLabel;
        private System.Windows.Forms.Label matrix_StrengthLabel;
        private System.Windows.Forms.Label matrix_SpeedLabel;
        private System.Windows.Forms.Label matrix_AdoptabilityLabel;
        private System.Windows.Forms.Label matrix_AdaptabilityLabel;
        private System.Windows.Forms.Label matrix_AttendanceLabel;
        private System.Windows.Forms.Label matrix_SkillLabel;
        private PH.WorkForce.UI.Report.SkillDataSet skillDataSet;
        private System.Windows.Forms.BindingSource workForceBindingSource;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit3;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage5;
        private DevExpress.XtraEditors.ComboBoxEdit wFLevelTextEdit;
        private System.Windows.Forms.Label wFLevelLabel;
        private DevExpress.XtraEditors.ComboBoxEdit cobWFState;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.ComboBoxEdit lineCodeComboBoxEdit;
        private System.Windows.Forms.Label lineCodeLabel;
        private System.Windows.Forms.Panel panel1;
        private DevExpress.XtraEditors.DateEdit longLeaveStartDateDateEdit;
        private System.Windows.Forms.Label longLeaveEndDateLabel;
        private System.Windows.Forms.Label longLeaveStartDateLabel;
        private DevExpress.XtraEditors.DateEdit longLeaveEndDateDateEdit;
        private DevExpress.XtraEditors.CheckEdit longLeaveCheckEdit;
        private System.Windows.Forms.Label label1;

        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.PictureEdit P1;
        private System.Windows.Forms.Label label7;
        private DevExpress.XtraEditors.ComboBoxEdit cobCo_Team;
        private DevExpress.XtraEditors.ComboBoxEdit cobCountry;
        private DevExpress.XtraEditors.DateEdit rEDateDateEdit;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label labHeadCount;
        private System.Windows.Forms.Label label10;
        private DevExpress.XtraEditors.ComboBoxEdit cobWhere_2_Class;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label lblCrossRole;
        private DevExpress.XtraEditors.ComboBoxEdit cobWhere_1_Team;
        private System.Windows.Forms.Label lblGrade;
        private System.Windows.Forms.Label label52;
        private DevExpress.XtraEditors.TextEdit edtTeamNo;
        private DevExpress.XtraEditors.ComboBoxEdit cobSub_Section_FAE;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label54;
        private System.Windows.Forms.Label jLDateLabel;
        private DevExpress.XtraEditors.TextEdit idTextEdit;
        private System.Windows.Forms.Label WFPartlabel;
        private DevExpress.XtraEditors.DateEdit jPDateDateEdit;
        private DevExpress.XtraEditors.ComboBoxEdit deptNameTextEdit;
        private DevExpress.XtraEditors.TextEdit nameCnTextEdit;
        private System.Windows.Forms.Label labWorkForceTyEn;
        private System.Windows.Forms.Label nameCnLabel;
        private DevExpress.XtraEditors.TextEdit nameEnTextEdit;
        private System.Windows.Forms.Label labWorkForceTyCn;
        private System.Windows.Forms.Label nameEnLabel;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label47;
        private System.Windows.Forms.Label regionLabel;
        private DevExpress.XtraEditors.ComboBoxEdit cobWhere;
        private DevExpress.XtraEditors.ComboBoxEdit regionComboBoxEdit;
        private System.Windows.Forms.Label lab1_T;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label lblWFWhere_2Cn;
        private System.Windows.Forms.Label labjPDate;
        private DevExpress.XtraEditors.ComboBoxEdit cobStandby;
        private System.Windows.Forms.Label labrEDate;
        private System.Windows.Forms.Label lblWFWhere_1Cn;
        private System.Windows.Forms.Label lblseniority;
        private System.Windows.Forms.Label lab2_J;
        private System.Windows.Forms.Label lab4_S;
        private System.Windows.Forms.Label lab3_P;
        private DevExpress.XtraEditors.ComboBoxEdit cobStationed_at;
        private System.Windows.Forms.Label lab2_T;
        private System.Windows.Forms.Label lblSub_Section_FAECn;
        private System.Windows.Forms.Label lab1_E;
        private System.Windows.Forms.Label lab3_S;
        private System.Windows.Forms.Label lab4_T;
        private System.Windows.Forms.Label lblWFWhereCn;
        private System.Windows.Forms.Label lab3_C;
        private DevExpress.XtraEditors.ComboBoxEdit cobGrade;
        private System.Windows.Forms.Label lab_2P;
        private System.Windows.Forms.Label lab4_L;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label lab5_H;
        private System.Windows.Forms.Label lab2_S;
        private DevExpress.XtraEditors.ComboBoxEdit cobWorkForceTyEn;
        private System.Windows.Forms.Label lab1_F;
        private System.Windows.Forms.Label lab6_Cr;
        private System.Windows.Forms.Label labId;
        private System.Windows.Forms.Label labSex;
        private System.Windows.Forms.Label lblCroossRoleDcrp;
        private System.Windows.Forms.Label labArea;
        private System.Windows.Forms.Label labCountry;
        private System.Windows.Forms.Label lab7_G;
        private DevExpress.XtraEditors.ComboBoxEdit sexComboBoxEdit;
        private DevExpress.XtraEditors.ComboBoxEdit cobCo_TeamCn;
        private DevExpress.XtraEditors.ComboBoxEdit cobSub_Section_FAECn;
        private System.Windows.Forms.Label lab8_S;
        private System.Windows.Forms.Label lab9_S;
        private System.Windows.Forms.Label WFPartlabelCn;
        private DevExpress.XtraEditors.ComboBoxEdit cobCroossRoleDcrp;
        private DevExpress.XtraEditors.ComboBoxEdit workerTypeComboBoxEdit;
        private DevExpress.XtraEditors.CheckEdit chkCrossRole;
        private DevExpress.XtraEditors.CheckEdit chkHeadCount;
        private DevExpress.XtraEditors.ComboBoxEdit jobTitleEnComboBoxEdit;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label factoryLabel;
        private System.Windows.Forms.Label lblSub_Section_FAE;
        private System.Windows.Forms.Label lblWFWhere;
        private System.Windows.Forms.Label labDeptName;
        private System.Windows.Forms.Label lblWFWhere_1;
        private System.Windows.Forms.Label deptNameCNLabel;
        private System.Windows.Forms.Label lblWFWhere_2;
        private System.Windows.Forms.Label lab3_Sub;
        private System.Windows.Forms.Label lab2_Sec;
        private System.Windows.Forms.Label lab6_C;
        private System.Windows.Forms.Label lab1_D;
        private System.Windows.Forms.Label lab5_T;
        private DevExpress.XtraEditors.ComboBoxEdit factoryComboBoxEdit;
        private System.Windows.Forms.Label workerTypeLabel;
        private System.Windows.Forms.Label lblIsRelated;
        private DevExpress.XtraEditors.CheckEdit chkIsRelated;
        private DevExpress.XtraEditors.TimeEdit timeEdit2;
        private DevExpress.XtraEditors.TimeEdit timeEdit1;
        private DevExpress.XtraEditors.SpinEdit speWorkHour;
        private System.Windows.Forms.Label lblTotalworkinghours;
        private DevExpress.XtraEditors.CheckEdit chkTemp;
        private DevExpress.XtraEditors.ComboBoxEdit cobRecEn;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label15;
        private DevExpress.XtraEditors.CheckEdit chkCrossRole_N;
        private DevExpress.XtraEditors.CheckEdit chkHeadCount_N;
        private System.Windows.Forms.Label lblRemotControl_num;
        private System.Windows.Forms.Label lblRemoteCtrl;
        private DevExpress.XtraEditors.ComboBoxEdit cobDepartmentBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobCountryBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobRegionBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobAreaBd;
        private DevExpress.XtraEditors.TextEdit cobCountryCn;
        private System.Windows.Forms.Label label36;
        private System.Windows.Forms.Label label42;
        private System.Windows.Forms.Label label41;
        private DevExpress.XtraEditors.ComboBoxEdit cobSub_Section_FAEBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobWFWhereBd;
        private System.Windows.Forms.Label label40;
        private DevExpress.XtraEditors.ComboBoxEdit cobTownBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobWorkForceTyBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobTeamNo;
        private System.Windows.Forms.Label label46;
        private System.Windows.Forms.Label label45;
        private System.Windows.Forms.Label label44;
        private System.Windows.Forms.Label label43;
        private DevExpress.XtraEditors.ComboBoxEdit cobWhere_2_ClassBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobWhere_1_TeamBd;
        private DevExpress.XtraEditors.ComboBoxEdit cobCo_TeamBd;
        private System.Windows.Forms.Label lbl_TemaNo;
        private DevExpress.XtraEditors.ComboBoxEdit jobTitleCodeBd;
        private System.Windows.Forms.Label label48;
        private System.Windows.Forms.Label lblVacancy;
        private DevExpress.XtraEditors.ComboBoxEdit cobVacancy;
        private DevExpress.XtraEditors.ComboBoxEdit cbbTransferDept;
        private System.Windows.Forms.Label label53;
        private System.Windows.Forms.Label label55;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit2;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit cbbDepartalLocation;
        private DevExpress.XtraEditors.LabelControl lblRecrole;
        private System.Windows.Forms.Label label56;
        private DevExpress.XtraEditors.ComboBoxEdit cbbRecRole;
        private DevExpress.XtraEditors.ComboBoxEdit cbbRecrole_bd;
        private DevExpress.XtraEditors.ComboBoxEdit cbbReclocation;
        private System.Windows.Forms.Label lblReclocation;
        private System.Windows.Forms.Label lblRecRole_chn;
        private System.Windows.Forms.Label workerTypeLabel_chn;
        private System.Windows.Forms.Label label57;
        private System.Windows.Forms.Label label20;
        public System.Windows.Forms.Label lblWFtemp;
        private System.Windows.Forms.Label label59;
        private System.Windows.Forms.Label label58;
        private DevExpress.XtraEditors.ComboBoxEdit auxiliaryJobTitleComboBoxEdit1;
        private System.Windows.Forms.Label auxiliaryJobTitleLabel1;
        private DevExpress.XtraEditors.LookUpEdit areaComboBoxEdit;
        private DevExpress.XtraEditors.LookUpEdit lueWageType;
        private DevExpress.XtraEditors.ComboBoxEdit edtWageType_Bd;
        public System.Windows.Forms.Label lblWageStruct_EN;
        public System.Windows.Forms.Label lblTeamNo;
        public System.Windows.Forms.Label lblWageStruct_TW;
        public System.Windows.Forms.Label lblWageType;
        private DevExpress.XtraEditors.LookUpEdit cobTown;
        private DevExpress.XtraEditors.ComboBoxEdit S_cobTown;
        private DevExpress.XtraEditors.ComboBoxEdit S_cobCity;
        private DevExpress.XtraEditors.TextEdit cobAreaCn;
        private DevExpress.XtraEditors.TextEdit cobRegionCn;
        private DevExpress.XtraEditors.TextEdit cobTownCn;
        private DevExpress.XtraEditors.TextEdit senioritySpinEdit;
        private DevExpress.XtraEditors.TextEdit cobDepartmentCn;
        private DevExpress.XtraEditors.TextEdit cobWFWhereCn;
        private DevExpress.XtraEditors.TextEdit cobWhere_1_TeamCn;
        private DevExpress.XtraEditors.TextEdit cobWhere_2_ClassCn;
        private DevExpress.XtraEditors.TextEdit cbbRecrole_chn;
        private DevExpress.XtraEditors.TextEdit jobTitleCode;
        private DevExpress.XtraEditors.TextEdit edtTitletypecode;
        private DevExpress.XtraEditors.TextEdit cobWorkForceTyCn;
        private DevExpress.XtraEditors.TextEdit jobTitleCnComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit edtSmfclass;
        private DevExpress.XtraEditors.TextEdit edtWageType_TW;
        private System.Windows.Forms.GroupBox groupBox1;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit29;
        private DevExpress.XtraEditors.CheckEdit dWFCheckEdit;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit28;
        private DevExpress.XtraEditors.CheckEdit inActiveCheckEdit;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit27;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit26;
        private DevExpress.XtraEditors.CheckEdit isRegistAuxiliaryCheckEdit;
        private System.Windows.Forms.Label clsNameLabel;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit17;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit25;
        private System.Windows.Forms.Panel panelAuxiliary;
        private DevExpress.XtraEditors.ComboBoxEdit auxiliaryJobTitleComboBoxEdit;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit24;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.Label label25;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit18;
        private System.Windows.Forms.Label label26;
        private System.Windows.Forms.Label label27;
        private System.Windows.Forms.Label label34;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit19;
        private System.Windows.Forms.Label label28;
        private System.Windows.Forms.Label label33;
        private DevExpress.XtraEditors.ComboBoxEdit deptComboBoxEdit;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit20;
        private System.Windows.Forms.Label deptLabel;
        private System.Windows.Forms.Label label29;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit23;
        private DevExpress.XtraEditors.SpinEdit spinEdit2;
        private System.Windows.Forms.Label label30;
        private DevExpress.XtraEditors.CheckEdit checkEdit4;
        private System.Windows.Forms.Label label32;
        private DevExpress.XtraEditors.DateEdit jLDateDateEdit;
        private System.Windows.Forms.Label jobTitleEnLabel;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.PictureEdit pictureEdit2;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit21;
        private DevExpress.XtraEditors.ComboBoxEdit locationComboBoxEdit;
        private System.Windows.Forms.Label label31;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit22;
        private System.Windows.Forms.Label locationLabel;
        private System.Windows.Forms.Label seniorityLabel;
        private System.Windows.Forms.Label jPDateLabel;
        private System.Windows.Forms.Label rEDateLabel;
        private System.Windows.Forms.Label deptNameLabel;
        private System.Windows.Forms.Label idLabel;
        private System.Windows.Forms.Label areaLabel;
        private DevExpress.XtraEditors.TextEdit edtWFPartcn;
        private System.Windows.Forms.GroupBox grp2;
        private DevExpress.XtraEditors.TextEdit edtPreparedHR;
        private DevExpress.XtraEditors.TextEdit edtImmeheader;
        private DevExpress.XtraEditors.TextEdit edtAudibyHR;
        private DevExpress.XtraEditors.TextEdit edtDeptHeader;
        private System.Windows.Forms.Label lblAuditByHR;
        private System.Windows.Forms.Label lblDeptHeader;
        private System.Windows.Forms.Label lblImmeHeader;
        private System.Windows.Forms.Label lblPreparedbyhr;
        private DevExpress.XtraEditors.LookUpEdit cobWFPart;
        private DevExpress.XtraEditors.CheckEdit chkStaff;
        private System.Windows.Forms.Label label37;
        private DevExpress.XtraEditors.LookUpEdit lueEmptype;
        private WFWorkHistory wfWorkHistory1;
        private DevExpress.XtraEditors.TextEdit edtWorkRegion;
        private System.Windows.Forms.Label lblWKRegion_Desc;
        private System.Windows.Forms.Label lblWKRegion;
        private DevExpress.XtraEditors.TextEdit edt_class;
        private DevExpress.XtraEditors.TextEdit edt_classcn;
        private DevExpress.XtraEditors.TextEdit edtDeptLocation;
        private DevExpress.XtraEditors.LookUpEdit lue_Division;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label38;
        private System.Windows.Forms.Label label39;
        private System.Windows.Forms.Label label35;
        private DevExpress.XtraEditors.CheckEdit chkRemoteFuncSupport_N;
        private DevExpress.XtraEditors.CheckEdit chkRemoteFuncSupport_Y;
        private DevExpress.XtraEditors.CheckEdit chkRemoteFuncControl_N;
        private DevExpress.XtraEditors.CheckEdit chkRemoteFuncControl_Y;
        private System.Windows.Forms.Label lbOpenVacancyDueDate;
        private DevExpress.XtraEditors.DateEdit txtOpenVacancyDueDate;
        private DevExpress.XtraEditors.ButtonEdit txtTitleTypeCode;
        private DevExpress.XtraEditors.TextEdit txtWorkForceTyEn;
        private DevExpress.XtraEditors.TextEdit txtFAERef;
        private System.Windows.Forms.Label label50;
        private DevExpress.XtraEditors.RadioGroup radIsDeployment;
        private DevExpress.XtraEditors.RadioGroup radioGroup1;
        private DevExpress.XtraEditors.RadioGroup radioGroup2;
        private DevExpress.XtraEditors.RadioGroup radioGroup3;
        private DevExpress.XtraEditors.RadioGroup radioGroup5;
        private DevExpress.XtraEditors.RadioGroup radioGroup4;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtRECName;
   
    }
}
