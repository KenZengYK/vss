/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.FabricInspection.UI.MasterListForm.cs$   
* $Author: PH.IT  $  
* $Date: 2008/5/2 下午 04:28:00 $   
* $Revision: 0 $   
*/

using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Columns;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraGrid.Views.BandedGrid.ViewInfo;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using PH.FabricInspection.BO;
using PH.FabricInspection.UI.Main;
using PH.FabricInspection.UI.Report.FabricReport;
using PH.MIDc.BO;
using PH.Platform.AuthMgr.BO;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.ExtendLibrary;
using System.Data.Linq;

namespace PH.FabricInspection.UI
{
    public partial class MasterListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraBars.BarButtonItem barBtnTouchScreen;
        private DevExpress.XtraBars.BarMdiChildrenListItem barMdiChildrenListItem1;
        private DevExpress.XtraBars.BarSubItem barSubItemReport;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByPiece;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByLot;
        private DevExpress.XtraBars.BarButtonItem barBtnSaveChangedData;


        private Guid key;

        DateTime time = DateTime.Now;

        private string timeFormat = "yyyy/MM/dd HH:mm:ss";

        private int MAX_SIZE_FOR_SPREAD_DEFECT = 5;
        private int MAX_SIZE_FOR_PARTY_DEFECT = 15;
        private int MAX_SIZE_FOR_WIDTH = 5;
        private int MAX_SIZE_FOR_SIDE_TO_SIDE_WIDTH = 6;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit riMemoExEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox riComboBoxStatus;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOK_Deduce_Rejct;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOK_No_Rejct;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoMouldTrial;
        private DevExpress.XtraBars.BarButtonItem barBtnSpreadDefectProc;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraBars.BarButtonItem barBtnImportData;
        private DevExpress.XtraBars.BarButtonItem barBtnSelectData;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByPieceBackEnd;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintByLotBackEnd;
        private DevExpress.XtraBars.BarButtonItem barBtnSuppliersQAReportBackEnd;
        private DevExpress.XtraBars.BarButtonItem barBtnMaterialsQAReportBackEnd;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoWeftYarn;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoElongation;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private IContainer components;
        private DevExpress.XtraBars.BarButtonItem barBtnItem_getColorGroupStatus;
        private DevExpress.XtraBars.BarButtonItem barBtn_GetListFromDate;
        private DevExpress.XtraBars.BarButtonItem CameraSetup;
        private DevExpress.XtraBars.BarButtonItem barBtnPrintAll;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_OtherQETestingResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_YN;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_LengthWidthResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_IrregularResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_RegularResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ActionLog;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit_n2;
        private ContextMenuStrip contextMenuStrip1;
        private ToolStripMenuItem toolStripMenuItemActionLogByLot;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_OverallFailReason;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_IDIrregularDefectResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_IDRegularResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_LengResultByID;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_WidthResultByBatch;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_ThicknessResultByID;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_OtherAuditResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_OverallResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_OtherOverallResult;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_AuditStage;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_Step2ClaimAction;
        private ToolStripMenuItem toolStripMenuItemCopyto2ndAudit;
        private ToolStripSeparator aaToolStripMenuItem;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultiRow;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_Dashboard;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.BarEditItem barEditItem_BehindSch;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit2;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarEditItem barEditItem_Outstanding;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_DashboardOutstanding;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroupDashboard;
        private DevExpress.XtraBars.BarEditItem barEditItem_ConvertedFabric;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_DashboardConvertedFabirc;
        private DevExpress.XtraBars.BarButtonItem btnShowColumnInfo;
        private DevExpress.XtraBars.BarEditItem barEditItem_LastStageOutstanding;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_DashboardLastStageOutstaing;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBandBasicAuditInfo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_System_NO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Lot_ID;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Item_NO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_StockIn_Date;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Project_NO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Po_NO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_HdoNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Spread_Defect_Exist;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Spread_Proc_Status;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Special_Marker;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Spread_Remark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Mould_Proc_Status;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Mould_Remark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_MouldTrialSolution1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_MouldTrialSolution2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarn;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnClass;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnPercentage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnWastage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSz3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnSolution1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_WeftYarnSolution2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_ElongationWarpResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_ElongationWeftResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_ElongationStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_ElongationSolution1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_ElongationSolution2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Insp_Length;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Gm_Sqm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Actual_Weigth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Usable_Width;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Actual_Width;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Roll_NO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Actual_Length;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Supplier_Batch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Total_Points;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Company;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Item_Description;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Potions_Hundred_Sqm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Deductive_Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Wastage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Insp_Result;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_part_Insp_Result;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Insp_Confirm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_PH_Sample;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Panel_Size1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Panel_Size2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Supplier_Code;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_LightStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_InvoiceNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Create_Date;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Change_Date;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWarehouse;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDays;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAgreedByCutting;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colScoreGrpQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMeasLengthShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRollQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorMatching;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorMatchingResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_Elongation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colElongationResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn Columns_MouldTrial;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMouldTrialResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBonding;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBondingResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLamination;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLaminationResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditType;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRegularLossLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRegularLossWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShortLengthShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShortWidthShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colThicknessResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShortLengthPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLengthResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShortWidthPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWidthResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOverallRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMissingAudit;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSplitFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStandardWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUsableWidthMinByLot;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiffWidthPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNarrowWidthLossLengthShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiffLengthAveByLot;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalLengthByLot;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLengthDiffLossByLotShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRegularDefectResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalActualLengthByLot;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPackageListlengthByBatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorNameShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppRefShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRollQtyByBatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiffWeightPercentShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClaimIrregularDefectQtyFullShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClaimIrregularDefectQtyAQL;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOverAllClaimLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStandardWeightGmSqm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStandardWeightGmSqmMax;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStandardWeightGmSqmMin;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStandardWeightGmSqmS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCodeShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCodeShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOverallClaimPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1DefectTotalPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1Pt100m2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1DefectResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1MeasLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1MeasWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1MeasSq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1DefectScoreShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1LossPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1LossQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1ClaimQtyFull;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep1ClaimQtyAQL;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2IrregularScoreShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2IrregulardLossPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2IrregularLossQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ClaimQtyFull;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ClaimQtyAQL;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2HaveRegular;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2EvadeMarkerLossPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2RegularLossWidth;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ConfirmByCutting;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ClaimRegularQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ClaimSubTotalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStep2ClaimAction;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCutCurling;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCutCurlingResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOtherOverallResult;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOtherOverallResultByBatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOtherOverAllClaimLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOtherOverAllClaimLengthByBatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditStage;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalLenghtByLotExcludePass;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogIsCompleted;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCutOffRollFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChainDefectScoreShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChainDefectWidthPercentShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChainDefectLengthShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChainDefectLengthPercentShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNeedCutOut;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCutOutLength;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCutOutClaimQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartITotalClaimQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartIFinalClaimQtyShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOverallClaimQtyAgreed;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartII_MeasureResultShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartII_FinalClaimQtyShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartIII_FinalClaimQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLog1stStageTargetAgreedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogLastStageTargetCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreate_User;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialType;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditTypeShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEvaluatedAreaShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAuditRollQtyByLot;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private GridBand gridBand7;
        private GridBand gridBand8;
        private GridBand gridBand9;
        private GridBand gridBand10;
        private GridBand gridBand11;
        private GridBand gridBand12;
        private GridBand gridBand13;
        private GridBand gridBand14;
        private GridBand gridBand15;
        private GridBand gridBand16;
        private GridBand gridBand17;
        private GridBand gridBand18;
        private GridBand gridBand19;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_MarkerType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_IaOrIb;
        private BandedGridColumn colMarkerType;
        private BandedGridColumn colVerticalChainDefectClaimByLot;
        private BandedGridColumn colHorizontalChainDefectLossPerentByLot;
        private BandedGridColumn colHorizontalChainDefectClaimByLot;
        private BandedGridColumn colPartIFinalClaimafewth;
        private GridBand gridBand30;
        private GridBand gridBand31;
        private GridBand gridBand32;
        private GridBand gridBand33;
        private GridBand gridBand34;
        private BandedGridColumn colAuditPassQty;
        private BandedGridColumn colAuditSpotDefectQtyByLot;
        private BandedGridColumn colAuditVerticalChainDefectQty;
        private BandedGridColumn colAuditHorizontalChainDefectQty;
        private GridBand gridBand35;
        private GridBand gridBand36;
        private GridBand gridBand37;
        private GridBand gridBand40;
        private GridBand gridBand41;
        private GridBand gridBand42;
        private GridBand gridBand43;
        private GridBand gridBand44;
        private GridBand gridBand45;
        private GridBand gridBand46;
        private GridBand gridBand47;
        private GridBand gridBand48;
        private GridBand gridBand49;
        private GridBand gridBand50;
        private GridBand gridBand51;
        private BandedGridColumn colCutOutLengthPercent;
        private GridBand gridBand53;
        private GridBand gridBand54;
        private GridBand gridBand55;
        private GridBand gridBand56;
        private GridBand gridBand24;
        private GridBand gridBand25;
        private GridBand gridBand26;
        //private GridBand gridBand38;
        private GridBand gridBand23;
        private GridBand gridBand20;
        private GridBand gridBand21;
        private GridBand gridBand22;
        private GridBand gridBand58;
        private GridBand gridBand59;
        private GridBand gridBand60;
        private DevExpress.XtraBars.BarButtonItem barBtnRejectNotice;
        private BandedGridColumn colSpotDefectPointLeve1Show;
        private BandedGridColumn colSpotDefectPointSeparateLine;
        private BandedGridColumn colSpotDefectPointLeve2Show;
        private BandedGridColumn colChainDefectPointLevel1Show;
        private BandedGridColumn colChainDefectPointSeparateLine;
        private BandedGridColumn colChainDefectPointLevel2Show;
        private BandedGridColumn colTotalDefectPointLevel1Show;
        private BandedGridColumn colTotalDefectPointSeparateLine;
        private BandedGridColumn colTotalDefectPointLevel2Show;
        private BandedGridColumn colOverallResultReasonGroup;
        private BandedGridColumn colOverallResultDefectKind;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_OverallResltDefectKind;
        private BandedGridColumn colOverallResultCoreDefecName;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_OverallResultCoreDefectReason;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarEditItem barEditItem_PartIGradeBC;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_DashboardPartIGradeBC;
        private BandedGridColumn colAdjustQty;
        private BandedGridColumn colAdjustQtyByLot;
        private BandedGridColumn colReplenishQtyByLot;
        private BandedGridColumn colReturnQtyByLot;
        private BandedGridColumn colPart1Nature;
        private BandedGridColumn colPart2Nature;
        private BandedGridColumn colPart3Nature;
        private BandedGridColumn colOverallNature;
        private GridBand gridBand1;
        private GridBand gridBand3;
        private GridBand gridBand6;
        private GridBand gridBand27;
        private GridBand gridBand28;
        private GridBand gridBand29;
        private GridBand gridBand39;
        private GridBand gridBand52;
        private GridBand gridBand57;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_Nature;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem5;
        private GridBand gridBand62;
        private GridBand gridBand63;
        private GridBand gridBand64;
        private GridBand gridBand65;
        private GridBand gridBand66;
        private GridBand gridBand67;
        private GridBand gridBand68;
        private GridBand gridBand69;
        private GridBand gridBand70;
        private GridBand gridBand71;
        private GridBand gridBand72;
        private GridBand gridBand73;
        private GridBand gridBand74;
        private GridBand gridBand75;
        private GridBand gridBand61;
        private GridBand gridBand76;
        private GridBand gridBand77;
        private GridBand gridBand78;
        private GridBand gridBand79;
        private GridBand gridBand80;
        private GridBand gridBand81;
        private GridBand gridBand82;
        private GridBand gridBand83;
        private GridBand gridBand84;
        private GridBand gridBand85;
        private GridBand gridBand86;
        private GridBand gridBand87;
        private GridBand gridBand88;
        private GridBand gridBand89;
        private GridBand gridBand90;
        private GridBand gridBand91;
        private GridBand gridBand92;
        private GridBand gridBand93;
        private GridBand gridBand94;
        private BandedGridColumn colUnit;
        private GridBand gridBand95;
        private GridBand gridBand96;
        private GridBand gridBand97;
        private GridBand gridBand98;
        private GridBand gridBand99;
        private DevExpress.XtraBars.BarEditItem barEditItemDashboard;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBoxDashboard;
        private RepositoryItemCheckedComboBoxEdit repositoryItemCheckedComboBoxEdit1;
        private BandedGridColumn colFWStartDate;
        private BandedGridColumn colConcedeQtyByLot;
        private GridBand gridBand38;
        private DevExpress.XtraBars.BarButtonItem barBtnResultNotice;
        private DevExpress.XtraBars.BarButtonItem btnConfirm;
        private BandedGridColumn colOverallResultReasonPart;
        private RepositoryItemCheckedComboBoxEdit repositoryItemCheckedComboBoxEdit_WhichPart;
        private BandedGridColumn colStatus;
        private GridBand gridBand100;
        private RepositoryItemComboBox repositoryItemComboBox_Status;
        private string strVersionNo = "1";

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoEdit_MultiRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.riImageCbOK_Deduce_Rejct = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.riMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.riImageCbOk_Rejct_NoMouldTrial = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemComboBox_OverallResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_IrregularResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_IDIrregularDefectResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.barBtnTouchScreen = new DevExpress.XtraBars.BarButtonItem();
            this.barMdiChildrenListItem1 = new DevExpress.XtraBars.BarMdiChildrenListItem();
            this.barSubItemReport = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPrintByPiece = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnResultNotice = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnRejectNotice = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintAll = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintByLot = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintByPieceBackEnd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrintByLotBackEnd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnSuppliersQAReportBackEnd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnMaterialsQAReportBackEnd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnSaveChangedData = new DevExpress.XtraBars.BarButtonItem();
            this.riComboBoxStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.riImageCbOK_No_Rejct = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.barBtnSpreadDefectProc = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnImportData = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnSelectData = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemDateEdit = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.riImageCbOk_Rejct_NoWeftYarn = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemComboBox_YN = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.riImageCbOk_Rejct_NoElongation = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.repositoryItemButtonEdit_OverallFailReason = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.barBtnItem_getColorGroupStatus = new DevExpress.XtraBars.BarButtonItem();
            this.barBtn_GetListFromDate = new DevExpress.XtraBars.BarButtonItem();
            this.CameraSetup = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemComboBox_OtherAuditResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_OtherQETestingResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_ThicknessResultByID = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_LengthWidthResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_WidthResultByBatch = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_LengResultByID = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemButtonEdit_ActionLog = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.repositoryItemComboBox_RegularResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_IDRegularResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemSpinEdit_n2 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.toolStripMenuItemActionLogByLot = new System.Windows.Forms.ToolStripMenuItem();
            this.aaToolStripMenuItem = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripMenuItemCopyto2ndAudit = new System.Windows.Forms.ToolStripMenuItem();
            this.repositoryItemComboBox_OtherOverallResult = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_Step2ClaimAction = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemComboBox_AuditStage = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.repositoryItemCheckEdit_Dashboard = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.barEditItemDashboard = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBoxDashboard = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.btnShowColumnInfo = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem5 = new DevExpress.XtraBars.BarButtonItem();
            this.btnConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.barEditItem_BehindSch = new DevExpress.XtraBars.BarEditItem();
            this.barEditItem_Outstanding = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemCheckEdit_DashboardOutstanding = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barEditItem_LastStageOutstanding = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemCheckEdit_DashboardLastStageOutstaing = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barEditItem_ConvertedFabric = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemCheckEdit_DashboardConvertedFabirc = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barEditItem_PartIGradeBC = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemCheckEdit_DashboardPartIGradeBC = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemRadioGroupDashboard = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemTextEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBandBasicAuditInfo = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colWarehouse = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRollQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditRollQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Lot_ID = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSplitFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCutOffRollFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCodeShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCodeShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppRefShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Supplier_Code = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Project_NO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Po_NO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_HdoNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Roll_NO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_StockIn_Date = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Create_Date = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDays = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditStage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditTypeShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCreate_User = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand89 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand90 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAuditType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand91 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotalActualLengthByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditPassQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditSpotDefectQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditVerticalChainDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAuditHorizontalChainDefectQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand92 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand93 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnit = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand94 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_Actual_Length = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPackageListlengthByBatch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalLengthByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand38 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colConcedeQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand76 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep1DefectTotalPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEvaluatedAreaShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1Pt100m2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand96 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand97 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep1DefectResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.col = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand77 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand79 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep1MeasSq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1MeasLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1MeasWidth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand80 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSpotDefectPointLeve1Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSpotDefectPointSeparateLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSpotDefectPointLeve2Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectPointLevel1Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectPointSeparateLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectPointLevel2Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalDefectPointLevel1Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalDefectPointSeparateLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalDefectPointLevel2Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2IrregularScoreShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectScoreShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1DefectScoreShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand81 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep1LossQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1LossPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1ClaimQtyFull = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand82 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand83 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep2HaveRegular = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand84 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStep2IrregularLossQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2IrregulardLossPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ClaimQtyFull = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand85 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMarkerType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_MarkerType = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colRegularLossWidth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectWidthPercentShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectLengthShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChainDefectLengthPercentShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2EvadeMarkerLossPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ClaimRegularQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVerticalChainDefectClaimByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand86 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNeedCutOut = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCutOutLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCutOutLengthPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCutOutClaimQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHorizontalChainDefectLossPerentByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHorizontalChainDefectClaimByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand87 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPartITotalClaimQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand98 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand99 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPartIFinalClaimafewth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_IaOrIb = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colPart1Nature = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_Nature = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colPartIFinalClaimQtyShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand30 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand31 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand32 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMeasLengthShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShortLengthShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDiffLengthAveByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLengthResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLengthDiffLossByLotShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand33 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_PH_Sample = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Insp_Length = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand53 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand54 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStandardWidth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Usable_Width = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShortWidthShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Actual_Width = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUsableWidthMinByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDiffWidthPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWidthResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNarrowWidthLossLengthShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand56 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand26 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_Gm_Sqm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Actual_Weigth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDiffWeightPercentShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colThicknessResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand52 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPartII_MeasureResultShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand57 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_part_Insp_Result = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPart2Nature = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPartII_FinalClaimQtyShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand23 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_Supplier_Batch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand40 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorMatching = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorMatchingResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand41 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_Elongation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colElongationResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand42 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_MouldTrial = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMouldTrialResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand43 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBonding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBondingResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand44 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLamination = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLaminationResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand45 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCutCurling = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCutCurlingResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand46 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand29 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOtherOverallResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand39 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPart3Nature = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPartIII_FinalClaimQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand47 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand48 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_InvoiceNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand49 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.Columns_Insp_Result = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverallResultReasonGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverallResultDefectKind = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_OverallResltDefectKind = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colOverallResultReasonPart = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemCheckedComboBoxEdit_WhichPart = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.colOverallResultCoreDefecName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand50 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand27 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOverallNature = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverAllClaimLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand28 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOverallClaimQtyAgreed = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverallClaimPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Insp_Confirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAdjustQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAdjustQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand95 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colReplenishQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colReturnQtyByLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand51 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMissingAudit = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogIsCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand100 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_Status = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colStep2RegularLossWidth = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_System_NO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Item_NO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Spread_Defect_Exist = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Spread_Proc_Status = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Special_Marker = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Spread_Remark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Mould_Proc_Status = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Mould_Remark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_MouldTrialSolution1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_MouldTrialSolution2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarn = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnClass = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnPercentage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnWastage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnSolution1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_WeftYarnSolution2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_ElongationWarpResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_ElongationWeftResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_ElongationStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_ElongationSolution1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_ElongationSolution2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Total_Points = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Item_Description = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Potions_Hundred_Sqm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Deductive_Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Wastage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Panel_Size1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Panel_Size2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_LightStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.Columns_Change_Date = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAgreedByCutting = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSz3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colScoreGrpQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRegularLossLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShortLengthPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShortWidthPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOverallRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRegularDefectResult = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorNameShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRollQtyByBatch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClaimIrregularDefectQtyFullShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClaimIrregularDefectQtyAQL = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStandardWeightGmSqm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStandardWeightGmSqmMax = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStandardWeightGmSqmMin = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStandardWeightGmSqmS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep1ClaimQtyAQL = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ClaimQtyAQL = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ConfirmByCutting = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ClaimSubTotalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStep2ClaimAction = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOtherOverallResultByBatch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOtherOverAllClaimLength = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOtherOverAllClaimLengthByBatch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalLenghtByLotExcludePass = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLog1stStageTargetAgreedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogLastStageTargetCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand55 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand37 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand88 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand78 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand35 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand36 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand34 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand58 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand59 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand60 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand62 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand63 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand64 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand65 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand66 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand67 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand68 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand69 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand70 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand71 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand72 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand73 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand74 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand75 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand61 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.repositoryItemCheckedComboBoxEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_Deduce_Rejct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoMouldTrial)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OverallResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IrregularResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IDIrregularDefectResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riComboBoxStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_No_Rejct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoWeftYarn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_YN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoElongation)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OverallFailReason)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherAuditResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherQETestingResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_ThicknessResultByID)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_LengthWidthResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_WidthResultByBatch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_LengResultByID)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_RegularResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IDRegularResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit_n2)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherOverallResult)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Step2ClaimAction)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_AuditStage)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_Dashboard)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBoxDashboard)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardOutstanding)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardLastStageOutstaing)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardConvertedFabirc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardPartIGradeBC)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroupDashboard)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MarkerType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IaOrIb)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Nature)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OverallResltDefectKind)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit_WhichPart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OverallResultCoreDefectReason)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Status)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1});
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnTouchScreen,
            this.barMdiChildrenListItem1,
            this.barSubItemReport,
            this.barBtnPrintByPiece,
            this.barBtnPrintByLot,
            this.barBtnSaveChangedData,
            this.barBtnSpreadDefectProc,
            this.barButtonItem3,
            this.barButtonItem4,
            this.barBtnImportData,
            this.barBtnSelectData,
            this.barBtnPrintByPieceBackEnd,
            this.barBtnPrintByLotBackEnd,
            this.barBtnSuppliersQAReportBackEnd,
            this.barBtnMaterialsQAReportBackEnd,
            this.barBtnItem_getColorGroupStatus,
            this.barBtn_GetListFromDate,
            this.CameraSetup,
            this.barBtnPrintAll,
            this.barEditItem_BehindSch,
            this.barEditItem_Outstanding,
            this.barEditItem_ConvertedFabric,
            this.btnShowColumnInfo,
            this.barEditItem_LastStageOutstanding,
            this.barBtnRejectNotice,
            this.barButtonItem1,
            this.barEditItem_PartIGradeBC,
            this.barButtonItem2,
            this.barButtonItem5,
            this.barEditItemDashboard,
            this.barBtnResultNotice,
            this.btnConfirm});
            this.objbarManager.MaxItemId = 57;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1,
            this.repositoryItemCheckEdit_Dashboard,
            this.repositoryItemTextEdit2,
            this.repositoryItemCheckEdit1,
            this.repositoryItemCheckEdit_DashboardOutstanding,
            this.repositoryItemRadioGroupDashboard,
            this.repositoryItemCheckEdit_DashboardConvertedFabirc,
            this.repositoryItemCheckEdit_DashboardLastStageOutstaing,
            this.repositoryItemCheckEdit_DashboardPartIGradeBC,
            this.repositoryItemComboBoxDashboard,
            this.repositoryItemCheckedComboBoxEdit1});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.CameraSetup, DevExpress.XtraBars.BarItemPaintStyle.Standard),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnTouchScreen),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItemReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnSaveChangedData, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnSpreadDefectProc, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnSelectData, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnItem_getColorGroupStatus, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_GetListFromDate)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnExpandBase
            // 
            this.barBtnExpandBase.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnCollapseBase
            // 
            this.barBtnCollapseBase.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.ContextMenuStrip = this.contextMenuStrip1;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 57);
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riMemoExEdit1,
            this.riComboBoxStatus,
            this.riImageCbOK_Deduce_Rejct,
            this.riImageCbOK_No_Rejct,
            this.riImageCbOk_Rejct_NoMouldTrial,
            this.riImageCbOk_Rejct_NoWeftYarn,
            this.riImageCbOk_Rejct_NoElongation,
            this.repositoryItemLookUpEdit1,
            this.repositoryItemSpinEdit1,
            this.repositoryItemComboBox_OtherQETestingResult,
            this.repositoryItemComboBox_YN,
            this.repositoryItemComboBox_LengthWidthResult,
            this.repositoryItemComboBox_IrregularResult,
            this.repositoryItemComboBox_RegularResult,
            this.repositoryItemButtonEdit_ActionLog,
            this.repositoryItemSpinEdit_n2,
            this.repositoryItemButtonEdit_OverallFailReason,
            this.repositoryItemComboBox_IDIrregularDefectResult,
            this.repositoryItemComboBox_IDRegularResult,
            this.repositoryItemComboBox_LengResultByID,
            this.repositoryItemComboBox_WidthResultByBatch,
            this.repositoryItemComboBox_ThicknessResultByID,
            this.repositoryItemComboBox_OtherAuditResult,
            this.repositoryItemComboBox_OverallResult,
            this.repositoryItemDateEdit,
            this.repositoryItemComboBox_OtherOverallResult,
            this.repositoryItemComboBox_AuditStage,
            this.repositoryItemComboBox_Step2ClaimAction,
            this.repositoryItemMemoEdit_MultiRow,
            this.repositoryItemComboBox_MarkerType,
            this.repositoryItemComboBox_IaOrIb,
            this.repositoryItemComboBox_OverallResltDefectKind,
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason,
            this.repositoryItemComboBox_Nature,
            this.repositoryItemCheckedComboBoxEdit_WhichPart,
            this.repositoryItemComboBox_Status});
            this.objListGridControl.Size = new System.Drawing.Size(7500, 383);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            this.objListGridControl.Paint += new System.Windows.Forms.PaintEventHandler(this.objListGridControl_Paint);
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOddEvenRowFlag.AppearanceHeader.Options.UseBackColor = true;
            this.colOddEvenRowFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colOddEvenRowFlag.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            this.colOddEvenRowFlag.Width = 111;
            // 
            // repositoryItemMemoEdit_MultiRow
            // 
            this.repositoryItemMemoEdit_MultiRow.Name = "repositoryItemMemoEdit_MultiRow";
            // 
            // riImageCbOK_Deduce_Rejct
            // 
            this.riImageCbOK_Deduce_Rejct.AutoHeight = false;
            this.riImageCbOK_Deduce_Rejct.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOK_Deduce_Rejct.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Pass", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("M.Pass", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Fail", "3", -1)});
            this.riImageCbOK_Deduce_Rejct.Name = "riImageCbOK_Deduce_Rejct";
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit1.DisplayFormat.FormatString = "n2";
            this.repositoryItemSpinEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.EditFormat.FormatString = "n2";
            this.repositoryItemSpinEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.Mask.EditMask = "n";
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // riMemoExEdit1
            // 
            this.riMemoExEdit1.AutoHeight = false;
            this.riMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riMemoExEdit1.Name = "riMemoExEdit1";
            // 
            // riImageCbOk_Rejct_NoMouldTrial
            // 
            this.riImageCbOk_Rejct_NoMouldTrial.AutoHeight = false;
            this.riImageCbOk_Rejct_NoMouldTrial.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoMouldTrial.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Mould Trial", "3", -1)});
            this.riImageCbOk_Rejct_NoMouldTrial.Name = "riImageCbOk_Rejct_NoMouldTrial";
            // 
            // repositoryItemComboBox_OverallResult
            // 
            this.repositoryItemComboBox_OverallResult.AutoHeight = false;
            this.repositoryItemComboBox_OverallResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_OverallResult.Items.AddRange(new object[] {
            "A",
            "B+",
            "B",
            "C"});
            this.repositoryItemComboBox_OverallResult.Name = "repositoryItemComboBox_OverallResult";
            this.repositoryItemComboBox_OverallResult.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_OverallResult_Spin);
            // 
            // repositoryItemComboBox_IrregularResult
            // 
            this.repositoryItemComboBox_IrregularResult.AutoHeight = false;
            this.repositoryItemComboBox_IrregularResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_IrregularResult.Name = "repositoryItemComboBox_IrregularResult";
            // 
            // repositoryItemComboBox_IDIrregularDefectResult
            // 
            this.repositoryItemComboBox_IDIrregularDefectResult.AutoHeight = false;
            this.repositoryItemComboBox_IDIrregularDefectResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_IDIrregularDefectResult.Items.AddRange(new object[] {
            "Pass",
            "M. Pass",
            "Fail"});
            this.repositoryItemComboBox_IDIrregularDefectResult.Name = "repositoryItemComboBox_IDIrregularDefectResult";
            this.repositoryItemComboBox_IDIrregularDefectResult.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_IDIrregularDefectResult_Spin);
            // 
            // barBtnTouchScreen
            // 
            this.barBtnTouchScreen.Caption = "Touch Screen";
            this.barBtnTouchScreen.Id = 10;
            this.barBtnTouchScreen.Name = "barBtnTouchScreen";
            this.barBtnTouchScreen.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnTouchScreen_ItemClick);
            // 
            // barMdiChildrenListItem1
            // 
            this.barMdiChildrenListItem1.Caption = "barMdiChildrenListItem1";
            this.barMdiChildrenListItem1.Id = 11;
            this.barMdiChildrenListItem1.Name = "barMdiChildrenListItem1";
            // 
            // barSubItemReport
            // 
            this.barSubItemReport.Caption = "Report";
            this.barSubItemReport.Id = 13;
            this.barSubItemReport.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrintByPiece),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnResultNotice),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRejectNotice)});
            this.barSubItemReport.Name = "barSubItemReport";
            // 
            // barBtnPrintByPiece
            // 
            this.barBtnPrintByPiece.Caption = "1) iAudit Form";
            this.barBtnPrintByPiece.Id = 14;
            this.barBtnPrintByPiece.Name = "barBtnPrintByPiece";
            this.barBtnPrintByPiece.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintByPiece_ItemClick);
            // 
            // barBtnResultNotice
            // 
            this.barBtnResultNotice.Caption = "2) Result Summary";
            this.barBtnResultNotice.Id = 55;
            this.barBtnResultNotice.Name = "barBtnResultNotice";
            this.barBtnResultNotice.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnResultNotice_ItemClick);
            // 
            // barBtnRejectNotice
            // 
            this.barBtnRejectNotice.Caption = "3) Reject Notice";
            this.barBtnRejectNotice.Id = 48;
            this.barBtnRejectNotice.Name = "barBtnRejectNotice";
            this.barBtnRejectNotice.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRejectNotice_ItemClick);
            // 
            // barBtnPrintAll
            // 
            this.barBtnPrintAll.Caption = "1) Print out - QE result (Item cde + stk-in dd) -  1 set";
            this.barBtnPrintAll.Id = 32;
            this.barBtnPrintAll.Name = "barBtnPrintAll";
            this.barBtnPrintAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintAll_ItemClick);
            // 
            // barBtnPrintByLot
            // 
            this.barBtnPrintByLot.Caption = "1a) Print out - QE result (Item cde + stk-in dd) - summary";
            this.barBtnPrintByLot.Id = 15;
            this.barBtnPrintByLot.Name = "barBtnPrintByLot";
            this.barBtnPrintByLot.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrintByLot_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "2) Suppliers QA Report";
            this.barButtonItem3.Id = 18;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem3_ItemClick);
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Caption = "3) Materials QA Report";
            this.barButtonItem4.Id = 19;
            this.barButtonItem4.Name = "barButtonItem4";
            this.barButtonItem4.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem4_ItemClick);
            // 
            // barBtnPrintByPieceBackEnd
            // 
            this.barBtnPrintByPieceBackEnd.Id = 25;
            this.barBtnPrintByPieceBackEnd.Name = "barBtnPrintByPieceBackEnd";
            // 
            // barBtnPrintByLotBackEnd
            // 
            this.barBtnPrintByLotBackEnd.Id = 26;
            this.barBtnPrintByLotBackEnd.Name = "barBtnPrintByLotBackEnd";
            // 
            // barBtnSuppliersQAReportBackEnd
            // 
            this.barBtnSuppliersQAReportBackEnd.Id = 27;
            this.barBtnSuppliersQAReportBackEnd.Name = "barBtnSuppliersQAReportBackEnd";
            // 
            // barBtnMaterialsQAReportBackEnd
            // 
            this.barBtnMaterialsQAReportBackEnd.Id = 28;
            this.barBtnMaterialsQAReportBackEnd.Name = "barBtnMaterialsQAReportBackEnd";
            // 
            // barBtnSaveChangedData
            // 
            this.barBtnSaveChangedData.Caption = "Save Changed Data";
            this.barBtnSaveChangedData.Id = 16;
            this.barBtnSaveChangedData.Name = "barBtnSaveChangedData";
            this.barBtnSaveChangedData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnSaveChangedData_ItemClick);
            // 
            // riComboBoxStatus
            // 
            this.riComboBoxStatus.AutoHeight = false;
            this.riComboBoxStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riComboBoxStatus.Items.AddRange(new object[] {
            "OK",
            "Deduct",
            "Return"});
            this.riComboBoxStatus.Name = "riComboBoxStatus";
            // 
            // riImageCbOK_No_Rejct
            // 
            this.riImageCbOK_No_Rejct.AutoHeight = false;
            this.riImageCbOK_No_Rejct.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOK_No_Rejct.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Return", "3", -1)});
            this.riImageCbOK_No_Rejct.Name = "riImageCbOK_No_Rejct";
            // 
            // barBtnSpreadDefectProc
            // 
            this.barBtnSpreadDefectProc.Caption = "Regular Defect Process Solutions";
            this.barBtnSpreadDefectProc.Id = 17;
            this.barBtnSpreadDefectProc.Name = "barBtnSpreadDefectProc";
            this.barBtnSpreadDefectProc.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnSpreadDefectProc_ItemClick);
            // 
            // barBtnImportData
            // 
            this.barBtnImportData.Caption = "Data From ERP";
            this.barBtnImportData.Id = 20;
            this.barBtnImportData.Name = "barBtnImportData";
            this.barBtnImportData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImportData_ItemClick);
            // 
            // barBtnSelectData
            // 
            this.barBtnSelectData.Caption = "Select Data";
            this.barBtnSelectData.Id = 30;
            this.barBtnSelectData.Name = "barBtnSelectData";
            this.barBtnSelectData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnSelectData_ItemClick);
            // 
            // repositoryItemDateEdit
            // 
            this.repositoryItemDateEdit.AutoHeight = false;
            this.repositoryItemDateEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit.Name = "repositoryItemDateEdit";
            this.repositoryItemDateEdit.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemDateEdit.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemDateEdit_Spin);
            // 
            // riImageCbOk_Rejct_NoWeftYarn
            // 
            this.riImageCbOk_Rejct_NoWeftYarn.AutoHeight = false;
            this.riImageCbOk_Rejct_NoWeftYarn.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoWeftYarn.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Weft Yarn", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deduct", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.riImageCbOk_Rejct_NoWeftYarn.Name = "riImageCbOk_Rejct_NoWeftYarn";
            // 
            // repositoryItemComboBox_YN
            // 
            this.repositoryItemComboBox_YN.AutoHeight = false;
            this.repositoryItemComboBox_YN.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_YN.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.repositoryItemComboBox_YN.Name = "repositoryItemComboBox_YN";
            this.repositoryItemComboBox_YN.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_YN_Spin);
            // 
            // riImageCbOk_Rejct_NoElongation
            // 
            this.riImageCbOk_Rejct_NoElongation.AutoHeight = false;
            this.riImageCbOk_Rejct_NoElongation.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoElongation.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Elongation", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deduct", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.riImageCbOk_Rejct_NoElongation.Name = "riImageCbOk_Rejct_NoElongation";
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            // 
            // repositoryItemButtonEdit_OverallFailReason
            // 
            this.repositoryItemButtonEdit_OverallFailReason.AutoHeight = false;
            this.repositoryItemButtonEdit_OverallFailReason.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_OverallFailReason.Name = "repositoryItemButtonEdit_OverallFailReason";
            this.repositoryItemButtonEdit_OverallFailReason.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_OverallFailReason_ButtonClick);
            // 
            // barBtnItem_getColorGroupStatus
            // 
            this.barBtnItem_getColorGroupStatus.Caption = "GetColorGroup";
            this.barBtnItem_getColorGroupStatus.Id = 29;
            this.barBtnItem_getColorGroupStatus.Name = "barBtnItem_getColorGroupStatus";
            this.barBtnItem_getColorGroupStatus.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnItem_getColorGroupStatus_ItemClick);
            // 
            // barBtn_GetListFromDate
            // 
            this.barBtn_GetListFromDate.Caption = "GetListFromDate";
            this.barBtn_GetListFromDate.Id = 30;
            this.barBtn_GetListFromDate.Name = "barBtn_GetListFromDate";
            this.barBtn_GetListFromDate.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_GetListFromDate_ItemClick);
            // 
            // CameraSetup
            // 
            this.CameraSetup.Caption = "Camera";
            this.CameraSetup.Glyph = global::PH.FabricInspection.UI.Properties.Resources.Camera;
            this.CameraSetup.Id = 31;
            this.CameraSetup.Name = "CameraSetup";
            this.CameraSetup.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.CameraSetup_ItemClick);
            // 
            // repositoryItemComboBox_OtherAuditResult
            // 
            this.repositoryItemComboBox_OtherAuditResult.AutoHeight = false;
            this.repositoryItemComboBox_OtherAuditResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_OtherAuditResult.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.repositoryItemComboBox_OtherAuditResult.Name = "repositoryItemComboBox_OtherAuditResult";
            this.repositoryItemComboBox_OtherAuditResult.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_OtherAuditResult_Spin);
            // 
            // repositoryItemComboBox_OtherQETestingResult
            // 
            this.repositoryItemComboBox_OtherQETestingResult.AutoHeight = false;
            this.repositoryItemComboBox_OtherQETestingResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_OtherQETestingResult.Name = "repositoryItemComboBox_OtherQETestingResult";
            // 
            // repositoryItemComboBox_ThicknessResultByID
            // 
            this.repositoryItemComboBox_ThicknessResultByID.AutoHeight = false;
            this.repositoryItemComboBox_ThicknessResultByID.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_ThicknessResultByID.Items.AddRange(new object[] {
            "n.a.",
            "A",
            "B"});
            this.repositoryItemComboBox_ThicknessResultByID.Name = "repositoryItemComboBox_ThicknessResultByID";
            this.repositoryItemComboBox_ThicknessResultByID.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_ThicknessResultByID_Spin);
            // 
            // repositoryItemComboBox_LengthWidthResult
            // 
            this.repositoryItemComboBox_LengthWidthResult.AutoHeight = false;
            this.repositoryItemComboBox_LengthWidthResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_LengthWidthResult.Name = "repositoryItemComboBox_LengthWidthResult";
            // 
            // repositoryItemComboBox_WidthResultByBatch
            // 
            this.repositoryItemComboBox_WidthResultByBatch.AutoHeight = false;
            this.repositoryItemComboBox_WidthResultByBatch.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_WidthResultByBatch.Items.AddRange(new object[] {
            "A",
            "B"});
            this.repositoryItemComboBox_WidthResultByBatch.Name = "repositoryItemComboBox_WidthResultByBatch";
            this.repositoryItemComboBox_WidthResultByBatch.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_WidthResultByBatch_Spin);
            // 
            // repositoryItemComboBox_LengResultByID
            // 
            this.repositoryItemComboBox_LengResultByID.AutoHeight = false;
            this.repositoryItemComboBox_LengResultByID.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_LengResultByID.Items.AddRange(new object[] {
            "A",
            "B"});
            this.repositoryItemComboBox_LengResultByID.Name = "repositoryItemComboBox_LengResultByID";
            this.repositoryItemComboBox_LengResultByID.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_LengResultByID_Spin);
            // 
            // repositoryItemButtonEdit_ActionLog
            // 
            this.repositoryItemButtonEdit_ActionLog.AutoHeight = false;
            this.repositoryItemButtonEdit_ActionLog.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_ActionLog.Name = "repositoryItemButtonEdit_ActionLog";
            this.repositoryItemButtonEdit_ActionLog.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.repositoryItemButtonEdit_ActionLog.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ActionLog_ButtonClick);
            // 
            // repositoryItemComboBox_RegularResult
            // 
            this.repositoryItemComboBox_RegularResult.AutoHeight = false;
            this.repositoryItemComboBox_RegularResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_RegularResult.Name = "repositoryItemComboBox_RegularResult";
            // 
            // repositoryItemComboBox_IDRegularResult
            // 
            this.repositoryItemComboBox_IDRegularResult.AutoHeight = false;
            this.repositoryItemComboBox_IDRegularResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_IDRegularResult.Items.AddRange(new object[] {
            "n.a.",
            "Fail"});
            this.repositoryItemComboBox_IDRegularResult.Name = "repositoryItemComboBox_IDRegularResult";
            // 
            // repositoryItemSpinEdit_n2
            // 
            this.repositoryItemSpinEdit_n2.AutoHeight = false;
            this.repositoryItemSpinEdit_n2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit_n2.DisplayFormat.FormatString = "n2";
            this.repositoryItemSpinEdit_n2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit_n2.EditFormat.FormatString = "n2";
            this.repositoryItemSpinEdit_n2.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit_n2.Mask.EditMask = "n2";
            this.repositoryItemSpinEdit_n2.Name = "repositoryItemSpinEdit_n2";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItemActionLogByLot,
            this.aaToolStripMenuItem,
            this.toolStripMenuItemCopyto2ndAudit});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(188, 76);
            this.PlatetoolTipController.SetSuperTip(this.contextMenuStrip1, null);
            // 
            // toolStripMenuItemActionLogByLot
            // 
            this.toolStripMenuItemActionLogByLot.Name = "toolStripMenuItemActionLogByLot";
            this.toolStripMenuItemActionLogByLot.Size = new System.Drawing.Size(187, 22);
            this.toolStripMenuItemActionLogByLot.Text = "Group Action Log";
            this.toolStripMenuItemActionLogByLot.Visible = false;
            // 
            // aaToolStripMenuItem
            // 
            this.aaToolStripMenuItem.Name = "aaToolStripMenuItem";
            this.aaToolStripMenuItem.Size = new System.Drawing.Size(184, 6);
            this.aaToolStripMenuItem.Visible = false;
            // 
            // toolStripMenuItemCopyto2ndAudit
            // 
            this.toolStripMenuItemCopyto2ndAudit.Name = "toolStripMenuItemCopyto2ndAudit";
            this.toolStripMenuItemCopyto2ndAudit.Size = new System.Drawing.Size(187, 22);
            this.toolStripMenuItemCopyto2ndAudit.Text = "Copy to Next Audit";
            this.toolStripMenuItemCopyto2ndAudit.Click += new System.EventHandler(this.toolStripMenuItemCopyto2ndAudit_Click);
            // 
            // repositoryItemComboBox_OtherOverallResult
            // 
            this.repositoryItemComboBox_OtherOverallResult.AutoHeight = false;
            this.repositoryItemComboBox_OtherOverallResult.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_OtherOverallResult.Items.AddRange(new object[] {
            "A",
            "B"});
            this.repositoryItemComboBox_OtherOverallResult.Name = "repositoryItemComboBox_OtherOverallResult";
            this.repositoryItemComboBox_OtherOverallResult.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_OtherOverallResult_Spin);
            // 
            // repositoryItemComboBox_Step2ClaimAction
            // 
            this.repositoryItemComboBox_Step2ClaimAction.AutoHeight = false;
            this.repositoryItemComboBox_Step2ClaimAction.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_Step2ClaimAction.Items.AddRange(new object[] {
            "n.a.",
            "B+",
            "C"});
            this.repositoryItemComboBox_Step2ClaimAction.Name = "repositoryItemComboBox_Step2ClaimAction";
            // 
            // repositoryItemComboBox_AuditStage
            // 
            this.repositoryItemComboBox_AuditStage.AutoHeight = false;
            this.repositoryItemComboBox_AuditStage.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_AuditStage.Items.AddRange(new object[] {
            "1st",
            "2nd",
            "3rd",
            "4th",
            "5th",
            "6th",
            "7th",
            "8th",
            "9th"});
            this.repositoryItemComboBox_AuditStage.Name = "repositoryItemComboBox_AuditStage";
            this.repositoryItemComboBox_AuditStage.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_AuditStage_Spin);
            // 
            // repositoryItemCheckEdit_Dashboard
            // 
            this.repositoryItemCheckEdit_Dashboard.AutoHeight = false;
            this.repositoryItemCheckEdit_Dashboard.AutoWidth = true;
            this.repositoryItemCheckEdit_Dashboard.Name = "repositoryItemCheckEdit_Dashboard";
            this.repositoryItemCheckEdit_Dashboard.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit_Dashboard.ValueGrayed = false;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // bar1
            // 
            this.bar1.BarName = "DashboardTools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 1;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(((DevExpress.XtraBars.BarLinkUserDefines)((DevExpress.XtraBars.BarLinkUserDefines.PaintStyle | DevExpress.XtraBars.BarLinkUserDefines.Width))), this.barEditItemDashboard, "", false, true, true, 185, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnShowColumnInfo, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItem2, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItem5, true)});
            this.bar1.Text = "DashboardTools";
            // 
            // barEditItemDashboard
            // 
            this.barEditItemDashboard.Caption = "Dashboard:";
            this.barEditItemDashboard.Edit = this.repositoryItemComboBoxDashboard;
            this.barEditItemDashboard.Id = 53;
            this.barEditItemDashboard.Name = "barEditItemDashboard";
            this.barEditItemDashboard.Width = 180;
            this.barEditItemDashboard.EditValueChanged += new System.EventHandler(this.barEditItemDashboard_EditValueChanged);
            // 
            // repositoryItemComboBoxDashboard
            // 
            this.repositoryItemComboBoxDashboard.AutoHeight = false;
            this.repositoryItemComboBoxDashboard.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBoxDashboard.Items.AddRange(new object[] {
            "",
            "Audit complete due days",
            "Action log - behind sch.",
            "Action log - o/s(1st)",
            "Action log - o/s(last)",
            "Converted fabric",
            "Part I Grade(B, C)"});
            this.repositoryItemComboBoxDashboard.Name = "repositoryItemComboBoxDashboard";
            this.repositoryItemComboBoxDashboard.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // btnShowColumnInfo
            // 
            this.btnShowColumnInfo.Caption = "Show Column Info";
            this.btnShowColumnInfo.Id = 44;
            this.btnShowColumnInfo.Name = "btnShowColumnInfo";
            this.btnShowColumnInfo.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnShowColumnInfo_ItemClick);
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Load Design Layout";
            this.barButtonItem2.Id = 51;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem2_ItemClick);
            // 
            // barButtonItem5
            // 
            this.barButtonItem5.Caption = "Save Layout";
            this.barButtonItem5.Id = 52;
            this.barButtonItem5.Name = "barButtonItem5";
            this.barButtonItem5.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem5_ItemClick);
            // 
            // btnConfirm
            // 
            this.btnConfirm.Caption = "Confirm";
            this.btnConfirm.Id = 56;
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnConfirm_ItemClick);
            // 
            // barEditItem_BehindSch
            // 
            this.barEditItem_BehindSch.Caption = "Action log - behind sch.";
            this.barEditItem_BehindSch.Edit = this.repositoryItemCheckEdit_Dashboard;
            this.barEditItem_BehindSch.Id = 38;
            this.barEditItem_BehindSch.Name = "barEditItem_BehindSch";
            // 
            // barEditItem_Outstanding
            // 
            this.barEditItem_Outstanding.Caption = "Action log - o/s (1st)";
            this.barEditItem_Outstanding.Edit = this.repositoryItemCheckEdit_DashboardOutstanding;
            this.barEditItem_Outstanding.Id = 41;
            this.barEditItem_Outstanding.Name = "barEditItem_Outstanding";
            // 
            // repositoryItemCheckEdit_DashboardOutstanding
            // 
            this.repositoryItemCheckEdit_DashboardOutstanding.AutoHeight = false;
            this.repositoryItemCheckEdit_DashboardOutstanding.Name = "repositoryItemCheckEdit_DashboardOutstanding";
            this.repositoryItemCheckEdit_DashboardOutstanding.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // barEditItem_LastStageOutstanding
            // 
            this.barEditItem_LastStageOutstanding.Caption = "Action Log - o/s (last)";
            this.barEditItem_LastStageOutstanding.Edit = this.repositoryItemCheckEdit_DashboardLastStageOutstaing;
            this.barEditItem_LastStageOutstanding.Id = 45;
            this.barEditItem_LastStageOutstanding.Name = "barEditItem_LastStageOutstanding";
            // 
            // repositoryItemCheckEdit_DashboardLastStageOutstaing
            // 
            this.repositoryItemCheckEdit_DashboardLastStageOutstaing.AutoHeight = false;
            this.repositoryItemCheckEdit_DashboardLastStageOutstaing.Name = "repositoryItemCheckEdit_DashboardLastStageOutstaing";
            this.repositoryItemCheckEdit_DashboardLastStageOutstaing.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // barEditItem_ConvertedFabric
            // 
            this.barEditItem_ConvertedFabric.Caption = "Converted fabric";
            this.barEditItem_ConvertedFabric.Edit = this.repositoryItemCheckEdit_DashboardConvertedFabirc;
            this.barEditItem_ConvertedFabric.Id = 43;
            this.barEditItem_ConvertedFabric.Name = "barEditItem_ConvertedFabric";
            // 
            // repositoryItemCheckEdit_DashboardConvertedFabirc
            // 
            this.repositoryItemCheckEdit_DashboardConvertedFabirc.AutoHeight = false;
            this.repositoryItemCheckEdit_DashboardConvertedFabirc.Name = "repositoryItemCheckEdit_DashboardConvertedFabirc";
            this.repositoryItemCheckEdit_DashboardConvertedFabirc.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // barEditItem_PartIGradeBC
            // 
            this.barEditItem_PartIGradeBC.Caption = "Part I Grade (B, C)";
            this.barEditItem_PartIGradeBC.Edit = this.repositoryItemCheckEdit_DashboardPartIGradeBC;
            this.barEditItem_PartIGradeBC.Id = 50;
            this.barEditItem_PartIGradeBC.Name = "barEditItem_PartIGradeBC";
            // 
            // repositoryItemCheckEdit_DashboardPartIGradeBC
            // 
            this.repositoryItemCheckEdit_DashboardPartIGradeBC.AutoHeight = false;
            this.repositoryItemCheckEdit_DashboardPartIGradeBC.Name = "repositoryItemCheckEdit_DashboardPartIGradeBC";
            this.repositoryItemCheckEdit_DashboardPartIGradeBC.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "barButtonItem1";
            this.barButtonItem1.Id = 49;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // repositoryItemRadioGroupDashboard
            // 
            this.repositoryItemRadioGroupDashboard.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Action log - behind sch.", "Action log - behind sch."),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("Action Log - Outstanding", "Action Log - Outstanding")});
            this.repositoryItemRadioGroupDashboard.Name = "repositoryItemRadioGroupDashboard";
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit1.ValueGrayed = false;
            // 
            // repositoryItemTextEdit2
            // 
            this.repositoryItemTextEdit2.AutoHeight = false;
            this.repositoryItemTextEdit2.Name = "repositoryItemTextEdit2";
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.FocusedRow.ForeColor = System.Drawing.Color.Black;
            this.bandedGridView1.Appearance.FocusedRow.Options.UseForeColor = true;
            this.bandedGridView1.Appearance.FooterPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.FooterPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.bandedGridView1.Appearance.FooterPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.FooterPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.BandPanelRowHeight = 23;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBandBasicAuditInfo,
            this.gridBand2,
            this.gridBand30,
            this.gridBand4,
            this.gridBand5});
            this.bandedGridView1.ColumnPanelRowHeight = 80;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.Columns_System_NO,
            this.Columns_Lot_ID,
            this.Columns_Item_NO,
            this.Columns_StockIn_Date,
            this.Columns_Project_NO,
            this.Columns_Po_NO,
            this.Columns_HdoNo,
            this.Columns_Spread_Defect_Exist,
            this.Columns_Spread_Proc_Status,
            this.Columns_Special_Marker,
            this.Columns_Spread_Remark,
            this.Columns_MouldTrial,
            this.Columns_Mould_Proc_Status,
            this.Columns_Mould_Remark,
            this.Columns_MouldTrialSolution1,
            this.Columns_MouldTrialSolution2,
            this.Columns_WeftYarn,
            this.Columns_WeftYarnClass,
            this.Columns_WeftYarnPercentage,
            this.Columns_WeftYarnWastage,
            this.Columns_WeftYarnStatus,
            this.Columns_WeftYarnSolution1,
            this.Columns_WeftYarnSolution2,
            this.Columns_Elongation,
            this.Columns_ElongationWarpResult,
            this.Columns_ElongationWeftResult,
            this.Columns_ElongationStatus,
            this.Columns_ElongationSolution1,
            this.Columns_ElongationSolution2,
            this.Columns_Insp_Length,
            this.Columns_Gm_Sqm,
            this.Columns_Actual_Weigth,
            this.Columns_Usable_Width,
            this.Columns_Actual_Width,
            this.Columns_Roll_NO,
            this.Columns_Actual_Length,
            this.Columns_Supplier_Batch,
            this.Columns_Total_Points,
            this.Columns_Company,
            this.Columns_Item_Description,
            this.Columns_Potions_Hundred_Sqm,
            this.Columns_Deductive_Qty,
            this.Columns_Wastage,
            this.Columns_Insp_Result,
            this.Columns_part_Insp_Result,
            this.Columns_Insp_Confirm,
            this.Columns_PH_Sample,
            this.Columns_Panel_Size1,
            this.Columns_Panel_Size2,
            this.Columns_Supplier_Code,
            this.Columns_LightStatus,
            this.Columns_InvoiceNo,
            this.Columns_Create_Date,
            this.Columns_Change_Date,
            this.gridColumn2,
            this.gridColumn1,
            this.gridColumn3,
            this.colWarehouse,
            this.colDays,
            this.colAgreedByCutting,
            this.colSz3,
            this.colScoreGrpQty,
            this.colMeasLengthShow,
            this.colRollQty,
            this.colColorMatching,
            this.colColorMatchingResult,
            this.colElongationResult,
            this.colMouldTrialResult,
            this.colBonding,
            this.colBondingResult,
            this.colLamination,
            this.colLaminationResult,
            this.colAuditType,
            this.colRegularLossLength,
            this.colRegularLossWidth,
            this.colShortLengthShow,
            this.colShortWidthShow,
            this.colThicknessResult,
            this.colShortLengthPercent,
            this.colLengthResult,
            this.colShortWidthPercent,
            this.colWidthResult,
            this.colOverallRemark,
            this.colMissingAudit,
            this.colSplitFlag,
            this.colStandardWidth,
            this.colUsableWidthMinByLot,
            this.colDiffWidthPercent,
            this.colNarrowWidthLossLengthShow,
            this.colDiffLengthAveByLot,
            this.colTotalLengthByLot,
            this.colLengthDiffLossByLotShow,
            this.colRegularDefectResult,
            this.colTotalActualLengthByLot,
            this.colPackageListlengthByBatch,
            this.colColorNameShow,
            this.colSuppRefShow,
            this.colRollQtyByBatch,
            this.colDiffWeightPercentShow,
            this.colClaimIrregularDefectQtyFullShow,
            this.colClaimIrregularDefectQtyAQL,
            this.colPOLength,
            this.colOverAllClaimLength,
            this.colStandardWeightGmSqm,
            this.colStandardWeightGmSqmMax,
            this.colStandardWeightGmSqmMin,
            this.colStandardWeightGmSqmS,
            this.colItemCodeShow,
            this.colColorCodeShow,
            this.colOtherOverallResult,
            this.colOverallClaimPercent,
            this.colStep1DefectTotalPoint,
            this.colStep1Pt100m2,
            this.colStep1DefectResult,
            this.colStep1MeasLength,
            this.colStep1MeasWidth,
            this.colStep1MeasSq,
            this.colStep1DefectScoreShow,
            this.colStep1LossPercent,
            this.colStep1LossQty,
            this.colStep1ClaimQtyFull,
            this.colStep1ClaimQtyAQL,
            this.colStep2IrregularScoreShow,
            this.colStep2IrregulardLossPercent,
            this.colStep2IrregularLossQty,
            this.colStep2ClaimQtyFull,
            this.colStep2ClaimQtyAQL,
            this.colStep2HaveRegular,
            this.colStep2EvadeMarkerLossPercent,
            this.colStep2RegularLossWidth,
            this.colStep2ConfirmByCutting,
            this.colStep2ClaimRegularQty,
            this.colStep2ClaimSubTotalQty,
            this.colStep2ClaimAction,
            this.colCutCurling,
            this.colCutCurlingResult,
            this.colOtherOverallResultByBatch,
            this.colOtherOverAllClaimLength,
            this.colOtherOverAllClaimLengthByBatch,
            this.colAuditStage,
            this.col,
            this.colTotalLenghtByLotExcludePass,
            this.colActionLogIsCompleted,
            this.colCutOffRollFlag,
            this.colChainDefectScoreShow,
            this.colChainDefectWidthPercentShow,
            this.colChainDefectLengthShow,
            this.colChainDefectLengthPercentShow,
            this.colNeedCutOut,
            this.colCutOutLength,
            this.colCutOutClaimQty,
            this.colPartITotalClaimQty,
            this.colPartIFinalClaimQtyShow,
            this.colOverallClaimQtyAgreed,
            this.colPartII_MeasureResultShow,
            this.colPartII_FinalClaimQtyShow,
            this.colPartIII_FinalClaimQty,
            this.colOddEvenRowFlag,
            this.colActionLog1stStageTargetAgreedDate,
            this.colActionLogLastStageTargetCompletedDate,
            this.colCreate_User,
            this.colMaterialType,
            this.colAuditTypeShow,
            this.colEvaluatedAreaShow,
            this.colAuditRollQtyByLot,
            this.colMarkerType,
            this.colVerticalChainDefectClaimByLot,
            this.colHorizontalChainDefectLossPerentByLot,
            this.colHorizontalChainDefectClaimByLot,
            this.colPartIFinalClaimafewth,
            this.colAuditPassQty,
            this.colAuditSpotDefectQtyByLot,
            this.colAuditVerticalChainDefectQty,
            this.colAuditHorizontalChainDefectQty,
            this.colCutOutLengthPercent,
            this.colSpotDefectPointLeve1Show,
            this.colSpotDefectPointSeparateLine,
            this.colSpotDefectPointLeve2Show,
            this.colChainDefectPointLevel1Show,
            this.colChainDefectPointSeparateLine,
            this.colChainDefectPointLevel2Show,
            this.colTotalDefectPointLevel1Show,
            this.colTotalDefectPointSeparateLine,
            this.colTotalDefectPointLevel2Show,
            this.colOverallResultReasonGroup,
            this.colOverallResultDefectKind,
            this.colOverallResultCoreDefecName,
            this.colAdjustQty,
            this.colAdjustQtyByLot,
            this.colReplenishQtyByLot,
            this.colReturnQtyByLot,
            this.colPart1Nature,
            this.colPart2Nature,
            this.colPart3Nature,
            this.colOverallNature,
            this.colUnit,
            this.colFWStartDate,
            this.colConcedeQtyByLot,
            this.colOverallResultReasonPart,
            this.colStatus});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1148, 391, 216, 201);
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colOddEvenRowFlag;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "1";
            this.bandedGridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.DoubleClick += new System.EventHandler(this.bandedGridView1_DoubleClick);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.bandedGridView1_CustomDrawCell);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            this.bandedGridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.bandedGridView1_ValidateRow);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // gridBandBasicAuditInfo
            // 
            this.gridBandBasicAuditInfo.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.gridBandBasicAuditInfo.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 11F, System.Drawing.FontStyle.Bold);
            this.gridBandBasicAuditInfo.AppearanceHeader.Options.UseBackColor = true;
            this.gridBandBasicAuditInfo.AppearanceHeader.Options.UseFont = true;
            this.gridBandBasicAuditInfo.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBandBasicAuditInfo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBandBasicAuditInfo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBandBasicAuditInfo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBandBasicAuditInfo.Caption = "Basic & Audit Info.";
            this.gridBandBasicAuditInfo.Columns.Add(this.colWarehouse);
            this.gridBandBasicAuditInfo.Columns.Add(this.gridColumn3);
            this.gridBandBasicAuditInfo.Columns.Add(this.colRollQty);
            this.gridBandBasicAuditInfo.Columns.Add(this.colAuditRollQtyByLot);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Lot_ID);
            this.gridBandBasicAuditInfo.Columns.Add(this.colSplitFlag);
            this.gridBandBasicAuditInfo.Columns.Add(this.colCutOffRollFlag);
            this.gridBandBasicAuditInfo.Columns.Add(this.colMaterialType);
            this.gridBandBasicAuditInfo.Columns.Add(this.colItemCodeShow);
            this.gridBandBasicAuditInfo.Columns.Add(this.colColorCodeShow);
            this.gridBandBasicAuditInfo.Columns.Add(this.colSuppRefShow);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Supplier_Code);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Project_NO);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Po_NO);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_HdoNo);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Roll_NO);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_StockIn_Date);
            this.gridBandBasicAuditInfo.Columns.Add(this.Columns_Create_Date);
            this.gridBandBasicAuditInfo.Columns.Add(this.colDays);
            this.gridBandBasicAuditInfo.Columns.Add(this.colAuditStage);
            this.gridBandBasicAuditInfo.Columns.Add(this.colAuditTypeShow);
            this.gridBandBasicAuditInfo.Columns.Add(this.colCreate_User);
            this.gridBandBasicAuditInfo.MinWidth = 20;
            this.gridBandBasicAuditInfo.Name = "gridBandBasicAuditInfo";
            this.gridBandBasicAuditInfo.RowCount = 2;
            this.gridBandBasicAuditInfo.Width = 1260;
            // 
            // colWarehouse
            // 
            this.colWarehouse.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colWarehouse.AppearanceHeader.Options.UseBackColor = true;
            this.colWarehouse.AppearanceHeader.Options.UseTextOptions = true;
            this.colWarehouse.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWarehouse.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWarehouse.Caption = "Whse";
            this.colWarehouse.FieldName = "Warehouse";
            this.colWarehouse.Name = "colWarehouse";
            this.colWarehouse.OptionsColumn.AllowEdit = false;
            this.colWarehouse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colWarehouse.Visible = true;
            this.colWarehouse.Width = 41;
            // 
            // gridColumn3
            // 
            this.gridColumn3.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.gridColumn3.AppearanceHeader.Options.UseBackColor = true;
            this.gridColumn3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn3.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridColumn3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn3.Caption = "Audit#\r\n(Single\r\nItem/Clr)";
            this.gridColumn3.FieldName = "AuditNo1";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.AllowEdit = false;
            this.gridColumn3.SummaryItem.FieldName = "RefNo";
            this.gridColumn3.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn3.Visible = true;
            this.gridColumn3.Width = 71;
            // 
            // colRollQty
            // 
            this.colRollQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colRollQty.AppearanceHeader.Options.UseBackColor = true;
            this.colRollQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colRollQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRollQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRollQty.Caption = "Ttl\r\nRolls\r\n**";
            this.colRollQty.FieldName = "RollQty";
            this.colRollQty.Name = "colRollQty";
            this.colRollQty.OptionsColumn.AllowEdit = false;
            this.colRollQty.Visible = true;
            this.colRollQty.Width = 34;
            // 
            // colAuditRollQtyByLot
            // 
            this.colAuditRollQtyByLot.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colAuditRollQtyByLot.AppearanceHeader.Options.UseBackColor = true;
            this.colAuditRollQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditRollQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditRollQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditRollQtyByLot.Caption = "Audit\r\nRolls\r\n**";
            this.colAuditRollQtyByLot.FieldName = "AuditRollQtyByLot";
            this.colAuditRollQtyByLot.Name = "colAuditRollQtyByLot";
            this.colAuditRollQtyByLot.OptionsColumn.AllowEdit = false;
            this.colAuditRollQtyByLot.Visible = true;
            this.colAuditRollQtyByLot.Width = 37;
            // 
            // Columns_Lot_ID
            // 
            this.Columns_Lot_ID.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Lot_ID.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Lot_ID.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Lot_ID.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Lot_ID.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Lot_ID.Caption = "Item id#\r\n(Single SKU)";
            this.Columns_Lot_ID.ColumnEdit = this.repositoryItemMemoEdit_MultiRow;
            this.Columns_Lot_ID.FieldName = "Lot_Id";
            this.Columns_Lot_ID.Name = "Columns_Lot_ID";
            this.Columns_Lot_ID.OptionsColumn.AllowEdit = false;
            this.Columns_Lot_ID.Visible = true;
            this.Columns_Lot_ID.Width = 106;
            // 
            // colSplitFlag
            // 
            this.colSplitFlag.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colSplitFlag.AppearanceHeader.Options.UseBackColor = true;
            this.colSplitFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colSplitFlag.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSplitFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSplitFlag.Caption = "Split\r\nroll\'s\r\nid";
            this.colSplitFlag.FieldName = "SplitFlag";
            this.colSplitFlag.Name = "colSplitFlag";
            this.colSplitFlag.OptionsColumn.AllowEdit = false;
            this.colSplitFlag.Visible = true;
            this.colSplitFlag.Width = 45;
            // 
            // colCutOffRollFlag
            // 
            this.colCutOffRollFlag.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCutOffRollFlag.AppearanceHeader.Options.UseBackColor = true;
            this.colCutOffRollFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutOffRollFlag.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutOffRollFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutOffRollFlag.Caption = "Cut\r\nout\r\nroll\'s\r\nid";
            this.colCutOffRollFlag.FieldName = "CutOffRollFlag";
            this.colCutOffRollFlag.Name = "colCutOffRollFlag";
            this.colCutOffRollFlag.Visible = true;
            this.colCutOffRollFlag.Width = 45;
            // 
            // colMaterialType
            // 
            this.colMaterialType.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colMaterialType.AppearanceHeader.Options.UseBackColor = true;
            this.colMaterialType.AppearanceHeader.Options.UseTextOptions = true;
            this.colMaterialType.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMaterialType.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMaterialType.Caption = "ERP\r\nMat\'l\r\nType";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.OptionsColumn.AllowEdit = false;
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.Visible = true;
            this.colMaterialType.Width = 39;
            // 
            // colItemCodeShow
            // 
            this.colItemCodeShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colItemCodeShow.AppearanceHeader.Options.UseBackColor = true;
            this.colItemCodeShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colItemCodeShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colItemCodeShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colItemCodeShow.Caption = "ERP Item\r\nCde";
            this.colItemCodeShow.FieldName = "ItemCodeShow";
            this.colItemCodeShow.Name = "colItemCodeShow";
            this.colItemCodeShow.OptionsColumn.AllowEdit = false;
            this.colItemCodeShow.Visible = true;
            this.colItemCodeShow.Width = 79;
            // 
            // colColorCodeShow
            // 
            this.colColorCodeShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colColorCodeShow.AppearanceHeader.Options.UseBackColor = true;
            this.colColorCodeShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorCodeShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorCodeShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorCodeShow.Caption = "Clr\r\nCde";
            this.colColorCodeShow.FieldName = "ColorCodeShow";
            this.colColorCodeShow.Name = "colColorCodeShow";
            this.colColorCodeShow.OptionsColumn.AllowEdit = false;
            this.colColorCodeShow.Visible = true;
            this.colColorCodeShow.Width = 37;
            // 
            // colSuppRefShow
            // 
            this.colSuppRefShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colSuppRefShow.AppearanceHeader.Options.UseBackColor = true;
            this.colSuppRefShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colSuppRefShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSuppRefShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSuppRefShow.Caption = "Supp Item Ref";
            this.colSuppRefShow.FieldName = "Supplier_Item_No";
            this.colSuppRefShow.Name = "colSuppRefShow";
            this.colSuppRefShow.OptionsColumn.AllowEdit = false;
            this.colSuppRefShow.Visible = true;
            this.colSuppRefShow.Width = 95;
            // 
            // Columns_Supplier_Code
            // 
            this.Columns_Supplier_Code.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Supplier_Code.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Supplier_Code.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Supplier_Code.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Supplier_Code.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Supplier_Code.Caption = "Supp\r\nCde";
            this.Columns_Supplier_Code.FieldName = "Supplier_Code";
            this.Columns_Supplier_Code.Name = "Columns_Supplier_Code";
            this.Columns_Supplier_Code.OptionsColumn.AllowEdit = false;
            this.Columns_Supplier_Code.Visible = true;
            this.Columns_Supplier_Code.Width = 50;
            // 
            // Columns_Project_NO
            // 
            this.Columns_Project_NO.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Project_NO.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Project_NO.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Project_NO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Project_NO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Project_NO.Caption = "Proj#";
            this.Columns_Project_NO.ColumnEdit = this.repositoryItemMemoEdit_MultiRow;
            this.Columns_Project_NO.FieldName = "ProjectNo";
            this.Columns_Project_NO.Name = "Columns_Project_NO";
            this.Columns_Project_NO.OptionsColumn.AllowEdit = false;
            this.Columns_Project_NO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_Project_NO.Visible = true;
            this.Columns_Project_NO.Width = 92;
            // 
            // Columns_Po_NO
            // 
            this.Columns_Po_NO.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Po_NO.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Po_NO.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Po_NO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Po_NO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Po_NO.Caption = "PO#";
            this.Columns_Po_NO.FieldName = "PO";
            this.Columns_Po_NO.Name = "Columns_Po_NO";
            this.Columns_Po_NO.OptionsColumn.AllowEdit = false;
            this.Columns_Po_NO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_Po_NO.Visible = true;
            this.Columns_Po_NO.Width = 56;
            // 
            // Columns_HdoNo
            // 
            this.Columns_HdoNo.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_HdoNo.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_HdoNo.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_HdoNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_HdoNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_HdoNo.Caption = "HDO#";
            this.Columns_HdoNo.FieldName = "HdoNo";
            this.Columns_HdoNo.Name = "Columns_HdoNo";
            this.Columns_HdoNo.OptionsColumn.AllowEdit = false;
            this.Columns_HdoNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_HdoNo.Visible = true;
            this.Columns_HdoNo.Width = 69;
            // 
            // Columns_Roll_NO
            // 
            this.Columns_Roll_NO.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Roll_NO.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Roll_NO.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Roll_NO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Roll_NO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Roll_NO.Caption = "Pull\r\nRoll\r\n#";
            this.Columns_Roll_NO.FieldName = "Roll_No";
            this.Columns_Roll_NO.Name = "Columns_Roll_NO";
            this.Columns_Roll_NO.Visible = true;
            this.Columns_Roll_NO.Width = 34;
            // 
            // Columns_StockIn_Date
            // 
            this.Columns_StockIn_Date.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_StockIn_Date.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_StockIn_Date.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_StockIn_Date.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_StockIn_Date.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_StockIn_Date.Caption = "id Create dd";
            this.Columns_StockIn_Date.FieldName = "Stock_In_DateShow";
            this.Columns_StockIn_Date.Name = "Columns_StockIn_Date";
            this.Columns_StockIn_Date.OptionsColumn.AllowEdit = false;
            this.Columns_StockIn_Date.Visible = true;
            this.Columns_StockIn_Date.Width = 76;
            // 
            // Columns_Create_Date
            // 
            this.Columns_Create_Date.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Create_Date.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Create_Date.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Create_Date.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Create_Date.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Create_Date.Caption = "id Audit\r\ncompleted\r\ndd";
            this.Columns_Create_Date.ColumnEdit = this.repositoryItemDateEdit;
            this.Columns_Create_Date.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.Columns_Create_Date.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.Columns_Create_Date.FieldName = "Create_Date";
            this.Columns_Create_Date.Name = "Columns_Create_Date";
            this.Columns_Create_Date.Visible = true;
            this.Columns_Create_Date.Width = 73;
            // 
            // colDays
            // 
            this.colDays.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colDays.AppearanceHeader.Options.UseBackColor = true;
            this.colDays.AppearanceHeader.Options.UseTextOptions = true;
            this.colDays.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colDays.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDays.Caption = "Due\r\ndays";
            this.colDays.FieldName = "DueDay";
            this.colDays.Name = "colDays";
            this.colDays.OptionsColumn.AllowEdit = false;
            this.colDays.Visible = true;
            this.colDays.Width = 34;
            // 
            // colAuditStage
            // 
            this.colAuditStage.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colAuditStage.AppearanceHeader.Options.UseBackColor = true;
            this.colAuditStage.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditStage.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditStage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditStage.Caption = "Audit\r\nstage";
            this.colAuditStage.ColumnEdit = this.repositoryItemComboBox_AuditStage;
            this.colAuditStage.FieldName = "AuditStage";
            this.colAuditStage.Name = "colAuditStage";
            this.colAuditStage.Visible = true;
            this.colAuditStage.Width = 49;
            // 
            // colAuditTypeShow
            // 
            this.colAuditTypeShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colAuditTypeShow.AppearanceHeader.Options.UseBackColor = true;
            this.colAuditTypeShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditTypeShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditTypeShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditTypeShow.Caption = "Audit\r\ntype";
            this.colAuditTypeShow.FieldName = "AuditTypeShow";
            this.colAuditTypeShow.Name = "colAuditTypeShow";
            this.colAuditTypeShow.OptionsColumn.AllowEdit = false;
            this.colAuditTypeShow.Visible = true;
            this.colAuditTypeShow.Width = 36;
            // 
            // colCreate_User
            // 
            this.colCreate_User.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCreate_User.AppearanceHeader.Options.UseBackColor = true;
            this.colCreate_User.AppearanceHeader.Options.UseTextOptions = true;
            this.colCreate_User.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCreate_User.Caption = "Auditor";
            this.colCreate_User.FieldName = "Create_User";
            this.colCreate_User.Name = "colCreate_User";
            this.colCreate_User.OptionsColumn.AllowEdit = false;
            this.colCreate_User.Visible = true;
            this.colCreate_User.Width = 62;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.gridBand2.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 11F, System.Drawing.FontStyle.Bold);
            this.gridBand2.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand2.AppearanceHeader.Options.UseFont = true;
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand2.Caption = "PART I - Defect Exam";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand89,
            this.gridBand92,
            this.gridBand76,
            this.gridBand96,
            this.gridBand77,
            this.gridBand82,
            this.gridBand98});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.RowCount = 2;
            this.gridBand2.Width = 2785;
            // 
            // gridBand89
            // 
            this.gridBand89.Caption = "Auditing Figure";
            this.gridBand89.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand90,
            this.gridBand91});
            this.gridBand89.Name = "gridBand89";
            this.gridBand89.Width = 350;
            // 
            // gridBand90
            // 
            this.gridBand90.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand90.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand90.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand90.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand90.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand90.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand90.Caption = "Audit\r\nQty Sz";
            this.gridBand90.Columns.Add(this.colAuditType);
            this.gridBand90.MinWidth = 20;
            this.gridBand90.Name = "gridBand90";
            this.gridBand90.Width = 51;
            // 
            // colAuditType
            // 
            this.colAuditType.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colAuditType.AppearanceHeader.Options.UseBackColor = true;
            this.colAuditType.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditType.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditType.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditType.Caption = "Random\r\n/Full";
            this.colAuditType.FieldName = "SampleSize";
            this.colAuditType.Name = "colAuditType";
            this.colAuditType.OptionsColumn.AllowEdit = false;
            this.colAuditType.Visible = true;
            this.colAuditType.Width = 51;
            // 
            // gridBand91
            // 
            this.gridBand91.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand91.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand91.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand91.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand91.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand91.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand91.Caption = "Audit Smpl Quantum";
            this.gridBand91.Columns.Add(this.colTotalActualLengthByLot);
            this.gridBand91.Columns.Add(this.colAuditPassQty);
            this.gridBand91.Columns.Add(this.colAuditSpotDefectQtyByLot);
            this.gridBand91.Columns.Add(this.colAuditVerticalChainDefectQty);
            this.gridBand91.Columns.Add(this.colAuditHorizontalChainDefectQty);
            this.gridBand91.MinWidth = 20;
            this.gridBand91.Name = "gridBand91";
            this.gridBand91.Width = 299;
            // 
            // colTotalActualLengthByLot
            // 
            this.colTotalActualLengthByLot.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colTotalActualLengthByLot.AppearanceHeader.Options.UseBackColor = true;
            this.colTotalActualLengthByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalActualLengthByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalActualLengthByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalActualLengthByLot.Caption = "Audit\r\nSmpl\r\nQuantum\r\n**";
            this.colTotalActualLengthByLot.DisplayFormat.FormatString = "n2";
            this.colTotalActualLengthByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalActualLengthByLot.FieldName = "TotalActualLengthByLot";
            this.colTotalActualLengthByLot.Name = "colTotalActualLengthByLot";
            this.colTotalActualLengthByLot.OptionsColumn.AllowEdit = false;
            this.colTotalActualLengthByLot.Visible = true;
            this.colTotalActualLengthByLot.Width = 59;
            // 
            // colAuditPassQty
            // 
            this.colAuditPassQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditPassQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditPassQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditPassQty.Caption = "Pass \r\nQty *";
            this.colAuditPassQty.DisplayFormat.FormatString = "N2";
            this.colAuditPassQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAuditPassQty.FieldName = "AuditPassQty";
            this.colAuditPassQty.Name = "colAuditPassQty";
            this.colAuditPassQty.OptionsColumn.AllowEdit = false;
            this.colAuditPassQty.Visible = true;
            this.colAuditPassQty.Width = 59;
            // 
            // colAuditSpotDefectQtyByLot
            // 
            this.colAuditSpotDefectQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditSpotDefectQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditSpotDefectQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditSpotDefectQtyByLot.Caption = "Audit (L) \r\nhas SD \r\n(on B \r\ngrade) \r\n**";
            this.colAuditSpotDefectQtyByLot.DisplayFormat.FormatString = "N2";
            this.colAuditSpotDefectQtyByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAuditSpotDefectQtyByLot.FieldName = "AuditSpotDefectQtyByLot";
            this.colAuditSpotDefectQtyByLot.Name = "colAuditSpotDefectQtyByLot";
            this.colAuditSpotDefectQtyByLot.OptionsColumn.AllowEdit = false;
            this.colAuditSpotDefectQtyByLot.Visible = true;
            this.colAuditSpotDefectQtyByLot.Width = 55;
            // 
            // colAuditVerticalChainDefectQty
            // 
            this.colAuditVerticalChainDefectQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditVerticalChainDefectQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditVerticalChainDefectQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditVerticalChainDefectQty.Caption = "Audit (L) \r\nhas VCD \r\n(covered \r\nwidth) \r\n*";
            this.colAuditVerticalChainDefectQty.DisplayFormat.FormatString = "N2";
            this.colAuditVerticalChainDefectQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAuditVerticalChainDefectQty.FieldName = "AuditVerticalChainDefectQty";
            this.colAuditVerticalChainDefectQty.Name = "colAuditVerticalChainDefectQty";
            this.colAuditVerticalChainDefectQty.OptionsColumn.AllowEdit = false;
            this.colAuditVerticalChainDefectQty.Visible = true;
            this.colAuditVerticalChainDefectQty.Width = 59;
            // 
            // colAuditHorizontalChainDefectQty
            // 
            this.colAuditHorizontalChainDefectQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colAuditHorizontalChainDefectQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAuditHorizontalChainDefectQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAuditHorizontalChainDefectQty.Caption = "Audit (L)\r\nhas HCD\r\n(item\r\nwidth)";
            this.colAuditHorizontalChainDefectQty.DisplayFormat.FormatString = "N2";
            this.colAuditHorizontalChainDefectQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAuditHorizontalChainDefectQty.FieldName = "AuditHorizontalChainDefectQty";
            this.colAuditHorizontalChainDefectQty.Name = "colAuditHorizontalChainDefectQty";
            this.colAuditHorizontalChainDefectQty.OptionsColumn.AllowEdit = false;
            this.colAuditHorizontalChainDefectQty.Visible = true;
            this.colAuditHorizontalChainDefectQty.Width = 67;
            // 
            // gridBand92
            // 
            this.gridBand92.Caption = "Quantity Figure";
            this.gridBand92.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand93,
            this.gridBand94,
            this.gridBand38});
            this.gridBand92.Name = "gridBand92";
            this.gridBand92.Width = 354;
            // 
            // gridBand93
            // 
            this.gridBand93.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand93.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand93.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand93.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand93.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand93.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand93.Caption = "PO qty \r\n**";
            this.gridBand93.Columns.Add(this.colPOLength);
            this.gridBand93.Columns.Add(this.colUnit);
            this.gridBand93.MinWidth = 20;
            this.gridBand93.Name = "gridBand93";
            this.gridBand93.Width = 101;
            // 
            // colPOLength
            // 
            this.colPOLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colPOLength.AppearanceHeader.Options.UseBackColor = true;
            this.colPOLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colPOLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPOLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPOLength.Caption = "(ref.)";
            this.colPOLength.DisplayFormat.FormatString = "n2";
            this.colPOLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOLength.FieldName = "POLength";
            this.colPOLength.Name = "colPOLength";
            this.colPOLength.OptionsColumn.AllowEdit = false;
            this.colPOLength.Visible = true;
            this.colPOLength.Width = 64;
            // 
            // colUnit
            // 
            this.colUnit.AppearanceHeader.Options.UseTextOptions = true;
            this.colUnit.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colUnit.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colUnit.Caption = "u/m";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.OptionsColumn.AllowEdit = false;
            this.colUnit.Visible = true;
            this.colUnit.Width = 37;
            // 
            // gridBand94
            // 
            this.gridBand94.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand94.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand94.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand94.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand94.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand94.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand94.Caption = "Pkg list qty ";
            this.gridBand94.Columns.Add(this.Columns_Actual_Length);
            this.gridBand94.Columns.Add(this.colPackageListlengthByBatch);
            this.gridBand94.Columns.Add(this.colTotalLengthByLot);
            this.gridBand94.MinWidth = 20;
            this.gridBand94.Name = "gridBand94";
            this.gridBand94.Width = 178;
            // 
            // Columns_Actual_Length
            // 
            this.Columns_Actual_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Actual_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Actual_Length.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Actual_Length.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Actual_Length.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Actual_Length.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Actual_Length.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Actual_Length.Caption = "Pkg\r\nList\r\nqty\r\n*";
            this.Columns_Actual_Length.DisplayFormat.FormatString = "n2";
            this.Columns_Actual_Length.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Actual_Length.FieldName = "Actual_Length";
            this.Columns_Actual_Length.Name = "Columns_Actual_Length";
            this.Columns_Actual_Length.Visible = true;
            this.Columns_Actual_Length.Width = 58;
            // 
            // colPackageListlengthByBatch
            // 
            this.colPackageListlengthByBatch.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colPackageListlengthByBatch.AppearanceHeader.Options.UseBackColor = true;
            this.colPackageListlengthByBatch.AppearanceHeader.Options.UseTextOptions = true;
            this.colPackageListlengthByBatch.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPackageListlengthByBatch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPackageListlengthByBatch.Caption = "+\r\n(batch)";
            this.colPackageListlengthByBatch.DisplayFormat.FormatString = "n2";
            this.colPackageListlengthByBatch.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPackageListlengthByBatch.FieldName = "PackageListlengthByBatch";
            this.colPackageListlengthByBatch.Name = "colPackageListlengthByBatch";
            this.colPackageListlengthByBatch.OptionsColumn.AllowEdit = false;
            this.colPackageListlengthByBatch.Visible = true;
            this.colPackageListlengthByBatch.Width = 63;
            // 
            // colTotalLengthByLot
            // 
            this.colTotalLengthByLot.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colTotalLengthByLot.AppearanceHeader.Options.UseBackColor = true;
            this.colTotalLengthByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalLengthByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalLengthByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalLengthByLot.Caption = "**";
            this.colTotalLengthByLot.DisplayFormat.FormatString = "n2";
            this.colTotalLengthByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalLengthByLot.FieldName = "TotalLengthByLot";
            this.colTotalLengthByLot.Name = "colTotalLengthByLot";
            this.colTotalLengthByLot.Visible = true;
            this.colTotalLengthByLot.Width = 57;
            // 
            // gridBand38
            // 
            this.gridBand38.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand38.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand38.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand38.Caption = "Concede Qty ";
            this.gridBand38.Columns.Add(this.colConcedeQtyByLot);
            this.gridBand38.Name = "gridBand38";
            this.gridBand38.Width = 75;
            // 
            // colConcedeQtyByLot
            // 
            this.colConcedeQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colConcedeQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colConcedeQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colConcedeQtyByLot.Caption = "Concede Qty **";
            this.colConcedeQtyByLot.DisplayFormat.FormatString = "n2";
            this.colConcedeQtyByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colConcedeQtyByLot.FieldName = "ConcedeQtyByLot";
            this.colConcedeQtyByLot.Name = "colConcedeQtyByLot";
            this.colConcedeQtyByLot.Visible = true;
            // 
            // gridBand76
            // 
            this.gridBand76.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand76.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand76.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand76.AppearanceHeader.Options.UseFont = true;
            this.gridBand76.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand76.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand76.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand76.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand76.Caption = "Tolerance pts\r\nfor result calc. *\r\n(此計分法: 點數x度數= 分數)";
            this.gridBand76.Columns.Add(this.colStep1DefectTotalPoint);
            this.gridBand76.Columns.Add(this.colEvaluatedAreaShow);
            this.gridBand76.Columns.Add(this.colStep1Pt100m2);
            this.gridBand76.MinWidth = 20;
            this.gridBand76.Name = "gridBand76";
            this.gridBand76.Width = 153;
            // 
            // colStep1DefectTotalPoint
            // 
            this.colStep1DefectTotalPoint.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1DefectTotalPoint.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1DefectTotalPoint.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1DefectTotalPoint.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1DefectTotalPoint.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1DefectTotalPoint.Caption = "Defect \r\nTtl Pts\r\n*";
            this.colStep1DefectTotalPoint.FieldName = "Step1DefectTotalPoint";
            this.colStep1DefectTotalPoint.Name = "colStep1DefectTotalPoint";
            this.colStep1DefectTotalPoint.OptionsColumn.AllowEdit = false;
            this.colStep1DefectTotalPoint.Visible = true;
            this.colStep1DefectTotalPoint.Width = 47;
            // 
            // colEvaluatedAreaShow
            // 
            this.colEvaluatedAreaShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colEvaluatedAreaShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colEvaluatedAreaShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colEvaluatedAreaShow.Caption = "Evaluated\r\nArea **";
            this.colEvaluatedAreaShow.FieldName = "EvaluatedAreaShow";
            this.colEvaluatedAreaShow.Name = "colEvaluatedAreaShow";
            this.colEvaluatedAreaShow.OptionsColumn.AllowEdit = false;
            this.colEvaluatedAreaShow.Visible = true;
            this.colEvaluatedAreaShow.Width = 59;
            // 
            // colStep1Pt100m2
            // 
            this.colStep1Pt100m2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1Pt100m2.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1Pt100m2.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1Pt100m2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1Pt100m2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1Pt100m2.Caption = "Toler-\r\nance\r\nPts *";
            this.colStep1Pt100m2.FieldName = "Step1Pt100m2";
            this.colStep1Pt100m2.Name = "colStep1Pt100m2";
            this.colStep1Pt100m2.OptionsColumn.AllowEdit = false;
            this.colStep1Pt100m2.Visible = true;
            this.colStep1Pt100m2.Width = 47;
            // 
            // gridBand96
            // 
            this.gridBand96.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand96.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand96.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand96.Caption = "Part I";
            this.gridBand96.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand97});
            this.gridBand96.Name = "gridBand96";
            this.gridBand96.Width = 81;
            // 
            // gridBand97
            // 
            this.gridBand97.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand97.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand97.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand97.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand97.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand97.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand97.Caption = "Part I - \r\nDefect \r\nRESULT";
            this.gridBand97.Columns.Add(this.colStep1DefectResult);
            this.gridBand97.Columns.Add(this.col);
            this.gridBand97.MinWidth = 20;
            this.gridBand97.Name = "gridBand97";
            this.gridBand97.RowCount = 3;
            this.gridBand97.Width = 81;
            // 
            // colStep1DefectResult
            // 
            this.colStep1DefectResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1DefectResult.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1DefectResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1DefectResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1DefectResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1DefectResult.Caption = "Grade\r\n*";
            this.colStep1DefectResult.FieldName = "Step1DefectResult";
            this.colStep1DefectResult.Name = "colStep1DefectResult";
            this.colStep1DefectResult.OptionsColumn.AllowEdit = false;
            this.colStep1DefectResult.Visible = true;
            this.colStep1DefectResult.Width = 42;
            // 
            // col
            // 
            this.col.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.col.AppearanceHeader.Options.UseBackColor = true;
            this.col.AppearanceHeader.Options.UseTextOptions = true;
            this.col.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.col.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.col.Caption = "Grade\r\n**";
            this.col.FieldName = "Step1DefectResultByLot";
            this.col.Name = "col";
            this.col.OptionsColumn.AllowEdit = false;
            this.col.Visible = true;
            this.col.Width = 39;
            // 
            // gridBand77
            // 
            this.gridBand77.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand77.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand77.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand77.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand77.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand77.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand77.Caption = "Part Ia - This paragraph is according to 4 pts system to calc. the claim\r\n(此段依照國際" +
                "四分制計算賠償)";
            this.gridBand77.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand79,
            this.gridBand80,
            this.gridBand81});
            this.gridBand77.MinWidth = 20;
            this.gridBand77.Name = "gridBand77";
            this.gridBand77.RowCount = 2;
            this.gridBand77.Width = 518;
            // 
            // gridBand79
            // 
            this.gridBand79.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand79.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand79.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand79.AppearanceHeader.Options.UseFont = true;
            this.gridBand79.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand79.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand79.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand79.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand79.Caption = "Block Sz for claim calc. **";
            this.gridBand79.Columns.Add(this.colStep1MeasSq);
            this.gridBand79.Columns.Add(this.colStep1MeasLength);
            this.gridBand79.Columns.Add(this.colStep1MeasWidth);
            this.gridBand79.MinWidth = 20;
            this.gridBand79.Name = "gridBand79";
            this.gridBand79.Width = 92;
            // 
            // colStep1MeasSq
            // 
            this.colStep1MeasSq.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1MeasSq.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1MeasSq.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1MeasSq.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1MeasSq.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1MeasSq.Caption = "Block\r\nSq. for\r\nL1 claim\r\ncalc.";
            this.colStep1MeasSq.DisplayFormat.FormatString = "n4";
            this.colStep1MeasSq.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1MeasSq.FieldName = "Step1MeasSq";
            this.colStep1MeasSq.Name = "colStep1MeasSq";
            this.colStep1MeasSq.OptionsColumn.AllowEdit = false;
            this.colStep1MeasSq.Visible = true;
            this.colStep1MeasSq.Width = 46;
            // 
            // colStep1MeasLength
            // 
            this.colStep1MeasLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1MeasLength.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1MeasLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1MeasLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1MeasLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1MeasLength.Caption = "Block \r\n(L) for\r\nL2 claim\r\ncalc.";
            this.colStep1MeasLength.DisplayFormat.FormatString = "n2";
            this.colStep1MeasLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1MeasLength.FieldName = "Step1MeasLength";
            this.colStep1MeasLength.Name = "colStep1MeasLength";
            this.colStep1MeasLength.OptionsColumn.AllowEdit = false;
            this.colStep1MeasLength.Visible = true;
            this.colStep1MeasLength.Width = 46;
            // 
            // colStep1MeasWidth
            // 
            this.colStep1MeasWidth.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1MeasWidth.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1MeasWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1MeasWidth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1MeasWidth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1MeasWidth.Caption = "(W)";
            this.colStep1MeasWidth.DisplayFormat.FormatString = "n2";
            this.colStep1MeasWidth.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1MeasWidth.FieldName = "Step1MeasWidth";
            this.colStep1MeasWidth.Name = "colStep1MeasWidth";
            this.colStep1MeasWidth.OptionsColumn.AllowEdit = false;
            this.colStep1MeasWidth.Width = 51;
            // 
            // gridBand80
            // 
            this.gridBand80.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand80.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand80.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand80.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand80.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand80.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand80.Caption = "Defect Ttl Pts 疵點總分數 *\r\n(has level 1 & 2)";
            this.gridBand80.Columns.Add(this.colSpotDefectPointLeve1Show);
            this.gridBand80.Columns.Add(this.colSpotDefectPointSeparateLine);
            this.gridBand80.Columns.Add(this.colSpotDefectPointLeve2Show);
            this.gridBand80.Columns.Add(this.colChainDefectPointLevel1Show);
            this.gridBand80.Columns.Add(this.colChainDefectPointSeparateLine);
            this.gridBand80.Columns.Add(this.colChainDefectPointLevel2Show);
            this.gridBand80.Columns.Add(this.colTotalDefectPointLevel1Show);
            this.gridBand80.Columns.Add(this.colTotalDefectPointSeparateLine);
            this.gridBand80.Columns.Add(this.colTotalDefectPointLevel2Show);
            this.gridBand80.Columns.Add(this.colStep2IrregularScoreShow);
            this.gridBand80.Columns.Add(this.colChainDefectScoreShow);
            this.gridBand80.Columns.Add(this.colStep1DefectScoreShow);
            this.gridBand80.MinWidth = 20;
            this.gridBand80.Name = "gridBand80";
            this.gridBand80.Width = 238;
            // 
            // colSpotDefectPointLeve1Show
            // 
            this.colSpotDefectPointLeve1Show.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.colSpotDefectPointLeve1Show.AppearanceHeader.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(176)))), ((int)(((byte)(80)))));
            this.colSpotDefectPointLeve1Show.AppearanceHeader.Options.UseFont = true;
            this.colSpotDefectPointLeve1Show.AppearanceHeader.Options.UseForeColor = true;
            this.colSpotDefectPointLeve1Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colSpotDefectPointLeve1Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSpotDefectPointLeve1Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSpotDefectPointLeve1Show.Caption = "SD\r\nL1";
            this.colSpotDefectPointLeve1Show.FieldName = "SpotDefectPointLeve1Show";
            this.colSpotDefectPointLeve1Show.Name = "colSpotDefectPointLeve1Show";
            this.colSpotDefectPointLeve1Show.OptionsColumn.AllowEdit = false;
            this.colSpotDefectPointLeve1Show.Visible = true;
            this.colSpotDefectPointLeve1Show.Width = 26;
            // 
            // colSpotDefectPointSeparateLine
            // 
            this.colSpotDefectPointSeparateLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colSpotDefectPointSeparateLine.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSpotDefectPointSeparateLine.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSpotDefectPointSeparateLine.Caption = "/";
            this.colSpotDefectPointSeparateLine.FieldName = "SpotDefectPointSeparateLine";
            this.colSpotDefectPointSeparateLine.Name = "colSpotDefectPointSeparateLine";
            this.colSpotDefectPointSeparateLine.OptionsColumn.AllowEdit = false;
            this.colSpotDefectPointSeparateLine.Visible = true;
            this.colSpotDefectPointSeparateLine.Width = 20;
            // 
            // colSpotDefectPointLeve2Show
            // 
            this.colSpotDefectPointLeve2Show.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.colSpotDefectPointLeve2Show.AppearanceHeader.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(176)))), ((int)(((byte)(80)))));
            this.colSpotDefectPointLeve2Show.AppearanceHeader.Options.UseFont = true;
            this.colSpotDefectPointLeve2Show.AppearanceHeader.Options.UseForeColor = true;
            this.colSpotDefectPointLeve2Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colSpotDefectPointLeve2Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSpotDefectPointLeve2Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSpotDefectPointLeve2Show.Caption = "SD\r\nL2";
            this.colSpotDefectPointLeve2Show.FieldName = "SpotDefectPointLeve2Show";
            this.colSpotDefectPointLeve2Show.Name = "colSpotDefectPointLeve2Show";
            this.colSpotDefectPointLeve2Show.OptionsColumn.AllowEdit = false;
            this.colSpotDefectPointLeve2Show.Visible = true;
            this.colSpotDefectPointLeve2Show.Width = 32;
            // 
            // colChainDefectPointLevel1Show
            // 
            this.colChainDefectPointLevel1Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectPointLevel1Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectPointLevel1Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectPointLevel1Show.Caption = "CD\r\nL1";
            this.colChainDefectPointLevel1Show.FieldName = "ChainDefectPointLevel1Show";
            this.colChainDefectPointLevel1Show.Name = "colChainDefectPointLevel1Show";
            this.colChainDefectPointLevel1Show.OptionsColumn.AllowEdit = false;
            this.colChainDefectPointLevel1Show.Visible = true;
            this.colChainDefectPointLevel1Show.Width = 26;
            // 
            // colChainDefectPointSeparateLine
            // 
            this.colChainDefectPointSeparateLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectPointSeparateLine.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectPointSeparateLine.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectPointSeparateLine.Caption = "/";
            this.colChainDefectPointSeparateLine.FieldName = "ChainDefectPointSeparateLine";
            this.colChainDefectPointSeparateLine.Name = "colChainDefectPointSeparateLine";
            this.colChainDefectPointSeparateLine.OptionsColumn.AllowEdit = false;
            this.colChainDefectPointSeparateLine.Visible = true;
            this.colChainDefectPointSeparateLine.Width = 20;
            // 
            // colChainDefectPointLevel2Show
            // 
            this.colChainDefectPointLevel2Show.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.colChainDefectPointLevel2Show.AppearanceHeader.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(176)))), ((int)(((byte)(80)))));
            this.colChainDefectPointLevel2Show.AppearanceHeader.Options.UseFont = true;
            this.colChainDefectPointLevel2Show.AppearanceHeader.Options.UseForeColor = true;
            this.colChainDefectPointLevel2Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectPointLevel2Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectPointLevel2Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectPointLevel2Show.Caption = "CD\r\nL2";
            this.colChainDefectPointLevel2Show.FieldName = "ChainDefectPointLevel2Show";
            this.colChainDefectPointLevel2Show.Name = "colChainDefectPointLevel2Show";
            this.colChainDefectPointLevel2Show.OptionsColumn.AllowEdit = false;
            this.colChainDefectPointLevel2Show.Visible = true;
            this.colChainDefectPointLevel2Show.Width = 32;
            // 
            // colTotalDefectPointLevel1Show
            // 
            this.colTotalDefectPointLevel1Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalDefectPointLevel1Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalDefectPointLevel1Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalDefectPointLevel1Show.Caption = "Ttl\r\nL1";
            this.colTotalDefectPointLevel1Show.FieldName = "TotalDefectPointLevel1Show";
            this.colTotalDefectPointLevel1Show.Name = "colTotalDefectPointLevel1Show";
            this.colTotalDefectPointLevel1Show.OptionsColumn.AllowEdit = false;
            this.colTotalDefectPointLevel1Show.Visible = true;
            this.colTotalDefectPointLevel1Show.Width = 29;
            // 
            // colTotalDefectPointSeparateLine
            // 
            this.colTotalDefectPointSeparateLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalDefectPointSeparateLine.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalDefectPointSeparateLine.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalDefectPointSeparateLine.Caption = "/";
            this.colTotalDefectPointSeparateLine.FieldName = "TotalDefectPointSeparateLine";
            this.colTotalDefectPointSeparateLine.Name = "colTotalDefectPointSeparateLine";
            this.colTotalDefectPointSeparateLine.OptionsColumn.AllowEdit = false;
            this.colTotalDefectPointSeparateLine.Visible = true;
            this.colTotalDefectPointSeparateLine.Width = 20;
            // 
            // colTotalDefectPointLevel2Show
            // 
            this.colTotalDefectPointLevel2Show.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.colTotalDefectPointLevel2Show.AppearanceHeader.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(176)))), ((int)(((byte)(80)))));
            this.colTotalDefectPointLevel2Show.AppearanceHeader.Options.UseFont = true;
            this.colTotalDefectPointLevel2Show.AppearanceHeader.Options.UseForeColor = true;
            this.colTotalDefectPointLevel2Show.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalDefectPointLevel2Show.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalDefectPointLevel2Show.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalDefectPointLevel2Show.Caption = "Ttl\r\nL2";
            this.colTotalDefectPointLevel2Show.FieldName = "TotalDefectPointLevel2Show";
            this.colTotalDefectPointLevel2Show.Name = "colTotalDefectPointLevel2Show";
            this.colTotalDefectPointLevel2Show.OptionsColumn.AllowEdit = false;
            this.colTotalDefectPointLevel2Show.Visible = true;
            this.colTotalDefectPointLevel2Show.Width = 33;
            // 
            // colStep2IrregularScoreShow
            // 
            this.colStep2IrregularScoreShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2IrregularScoreShow.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2IrregularScoreShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2IrregularScoreShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2IrregularScoreShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2IrregularScoreShow.Caption = "SD / SD\r\nL1    L2";
            this.colStep2IrregularScoreShow.FieldName = "Step2IrregularScoreShow";
            this.colStep2IrregularScoreShow.Name = "colStep2IrregularScoreShow";
            this.colStep2IrregularScoreShow.OptionsColumn.AllowEdit = false;
            this.colStep2IrregularScoreShow.Width = 56;
            // 
            // colChainDefectScoreShow
            // 
            this.colChainDefectScoreShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colChainDefectScoreShow.AppearanceHeader.Options.UseBackColor = true;
            this.colChainDefectScoreShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectScoreShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectScoreShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectScoreShow.Caption = "CD / CD\r\nL1    L2";
            this.colChainDefectScoreShow.FieldName = "ChainDefectScoreShow";
            this.colChainDefectScoreShow.Name = "colChainDefectScoreShow";
            this.colChainDefectScoreShow.OptionsColumn.AllowEdit = false;
            this.colChainDefectScoreShow.Width = 55;
            // 
            // colStep1DefectScoreShow
            // 
            this.colStep1DefectScoreShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1DefectScoreShow.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1DefectScoreShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1DefectScoreShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1DefectScoreShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1DefectScoreShow.Caption = "Ttl / Ttl\r\nL1    L2";
            this.colStep1DefectScoreShow.FieldName = "Step1DefectScoreShow";
            this.colStep1DefectScoreShow.Name = "colStep1DefectScoreShow";
            this.colStep1DefectScoreShow.OptionsColumn.AllowEdit = false;
            this.colStep1DefectScoreShow.Width = 53;
            // 
            // gridBand81
            // 
            this.gridBand81.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand81.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand81.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand81.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand81.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand81.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand81.Caption = "Defect claim**\r\n(Spot + Chain Defect)";
            this.gridBand81.Columns.Add(this.colStep1LossQty);
            this.gridBand81.Columns.Add(this.colStep1LossPercent);
            this.gridBand81.Columns.Add(this.colStep1ClaimQtyFull);
            this.gridBand81.MinWidth = 20;
            this.gridBand81.Name = "gridBand81";
            this.gridBand81.Width = 188;
            // 
            // colStep1LossQty
            // 
            this.colStep1LossQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1LossQty.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1LossQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1LossQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1LossQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1LossQty.Caption = "Basic rule\r\n- Defect\r\nLoss Qty";
            this.colStep1LossQty.DisplayFormat.FormatString = "n2";
            this.colStep1LossQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1LossQty.FieldName = "Step1LossQty";
            this.colStep1LossQty.Name = "colStep1LossQty";
            this.colStep1LossQty.OptionsColumn.AllowEdit = false;
            this.colStep1LossQty.Visible = true;
            this.colStep1LossQty.Width = 60;
            // 
            // colStep1LossPercent
            // 
            this.colStep1LossPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1LossPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1LossPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1LossPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1LossPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1LossPercent.Caption = "Defect\r\nLoss %";
            this.colStep1LossPercent.DisplayFormat.FormatString = "n2";
            this.colStep1LossPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1LossPercent.FieldName = "Step1LossPercent";
            this.colStep1LossPercent.Name = "colStep1LossPercent";
            this.colStep1LossPercent.OptionsColumn.AllowEdit = false;
            this.colStep1LossPercent.Visible = true;
            this.colStep1LossPercent.Width = 59;
            // 
            // colStep1ClaimQtyFull
            // 
            this.colStep1ClaimQtyFull.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1ClaimQtyFull.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1ClaimQtyFull.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1ClaimQtyFull.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1ClaimQtyFull.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1ClaimQtyFull.Caption = "Defect\r\nClaim\r\nbased on \r\nGrading\r\n(1st step)";
            this.colStep1ClaimQtyFull.DisplayFormat.FormatString = "n2";
            this.colStep1ClaimQtyFull.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1ClaimQtyFull.FieldName = "Step1ClaimQtyFull";
            this.colStep1ClaimQtyFull.Name = "colStep1ClaimQtyFull";
            this.colStep1ClaimQtyFull.OptionsColumn.AllowEdit = false;
            this.colStep1ClaimQtyFull.Visible = true;
            this.colStep1ClaimQtyFull.Width = 69;
            // 
            // gridBand82
            // 
            this.gridBand82.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand82.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand82.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand82.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand82.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand82.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand82.Caption = "Part Ib - This paragraph is according to our methods to optimize the claim\r\n(此段依據" +
                "我方的幾種最適合方法計算賠償)";
            this.gridBand82.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand83,
            this.gridBand84,
            this.gridBand85,
            this.gridBand86,
            this.gridBand87});
            this.gridBand82.MinWidth = 20;
            this.gridBand82.Name = "gridBand82";
            this.gridBand82.RowCount = 2;
            this.gridBand82.Width = 1180;
            // 
            // gridBand83
            // 
            this.gridBand83.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand83.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand83.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand83.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand83.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand83.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand83.Caption = "Optimal\r\nClaim?";
            this.gridBand83.Columns.Add(this.colStep2HaveRegular);
            this.gridBand83.MinWidth = 20;
            this.gridBand83.Name = "gridBand83";
            this.gridBand83.Width = 52;
            // 
            // colStep2HaveRegular
            // 
            this.colStep2HaveRegular.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2HaveRegular.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2HaveRegular.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2HaveRegular.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2HaveRegular.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2HaveRegular.Caption = "Y/N?";
            this.colStep2HaveRegular.FieldName = "Step2HaveRegular";
            this.colStep2HaveRegular.Name = "colStep2HaveRegular";
            this.colStep2HaveRegular.OptionsColumn.AllowEdit = false;
            this.colStep2HaveRegular.Visible = true;
            this.colStep2HaveRegular.Width = 52;
            // 
            // gridBand84
            // 
            this.gridBand84.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand84.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand84.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand84.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand84.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand84.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand84.Caption = "Spot Defect **";
            this.gridBand84.Columns.Add(this.colStep2IrregularLossQty);
            this.gridBand84.Columns.Add(this.colStep2IrregulardLossPercent);
            this.gridBand84.Columns.Add(this.colStep2ClaimQtyFull);
            this.gridBand84.MinWidth = 20;
            this.gridBand84.Name = "gridBand84";
            this.gridBand84.Width = 199;
            // 
            // colStep2IrregularLossQty
            // 
            this.colStep2IrregularLossQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2IrregularLossQty.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2IrregularLossQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2IrregularLossQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2IrregularLossQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2IrregularLossQty.Caption = "Basic rule -\r\nS.Defect \r\nLoss Qty";
            this.colStep2IrregularLossQty.DisplayFormat.FormatString = "n2";
            this.colStep2IrregularLossQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2IrregularLossQty.FieldName = "Step2IrregularLossQty";
            this.colStep2IrregularLossQty.Name = "colStep2IrregularLossQty";
            this.colStep2IrregularLossQty.OptionsColumn.AllowEdit = false;
            this.colStep2IrregularLossQty.Visible = true;
            this.colStep2IrregularLossQty.Width = 72;
            // 
            // colStep2IrregulardLossPercent
            // 
            this.colStep2IrregulardLossPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2IrregulardLossPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2IrregulardLossPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2IrregulardLossPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2IrregulardLossPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2IrregulardLossPercent.Caption = "S.Defect \r\nLoss %";
            this.colStep2IrregulardLossPercent.DisplayFormat.FormatString = "n2";
            this.colStep2IrregulardLossPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2IrregulardLossPercent.FieldName = "Step2IrregulardLossPercent";
            this.colStep2IrregulardLossPercent.Name = "colStep2IrregulardLossPercent";
            this.colStep2IrregulardLossPercent.OptionsColumn.AllowEdit = false;
            this.colStep2IrregulardLossPercent.Visible = true;
            this.colStep2IrregulardLossPercent.Width = 56;
            // 
            // colStep2ClaimQtyFull
            // 
            this.colStep2ClaimQtyFull.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ClaimQtyFull.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ClaimQtyFull.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ClaimQtyFull.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ClaimQtyFull.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ClaimQtyFull.Caption = "S.Defect\r\nClaim";
            this.colStep2ClaimQtyFull.DisplayFormat.FormatString = "n2";
            this.colStep2ClaimQtyFull.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2ClaimQtyFull.FieldName = "Step2ClaimQtyFull";
            this.colStep2ClaimQtyFull.Name = "colStep2ClaimQtyFull";
            this.colStep2ClaimQtyFull.OptionsColumn.AllowEdit = false;
            this.colStep2ClaimQtyFull.Visible = true;
            this.colStep2ClaimQtyFull.Width = 71;
            // 
            // gridBand85
            // 
            this.gridBand85.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand85.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand85.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand85.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand85.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand85.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand85.Caption = "Vertical Chain Defect * / **\r\nEvade marker based on covered width / \r\nCompact mar" +
                "ker based on covered width = item width";
            this.gridBand85.Columns.Add(this.colMarkerType);
            this.gridBand85.Columns.Add(this.colRegularLossWidth);
            this.gridBand85.Columns.Add(this.colChainDefectWidthPercentShow);
            this.gridBand85.Columns.Add(this.colChainDefectLengthShow);
            this.gridBand85.Columns.Add(this.colChainDefectLengthPercentShow);
            this.gridBand85.Columns.Add(this.colStep2EvadeMarkerLossPercent);
            this.gridBand85.Columns.Add(this.colStep2ClaimRegularQty);
            this.gridBand85.Columns.Add(this.colVerticalChainDefectClaimByLot);
            this.gridBand85.MinWidth = 20;
            this.gridBand85.Name = "gridBand85";
            this.gridBand85.Width = 484;
            // 
            // colMarkerType
            // 
            this.colMarkerType.AppearanceHeader.Options.UseTextOptions = true;
            this.colMarkerType.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMarkerType.Caption = "Special \r\nmarker\r\n(evade/\r\ncompact)\r\n*";
            this.colMarkerType.ColumnEdit = this.repositoryItemComboBox_MarkerType;
            this.colMarkerType.FieldName = "MarkerType";
            this.colMarkerType.Name = "colMarkerType";
            this.colMarkerType.Visible = true;
            this.colMarkerType.Width = 61;
            // 
            // repositoryItemComboBox_MarkerType
            // 
            this.repositoryItemComboBox_MarkerType.AutoHeight = false;
            this.repositoryItemComboBox_MarkerType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_MarkerType.Items.AddRange(new object[] {
            "",
            "Evade",
            "Compact"});
            this.repositoryItemComboBox_MarkerType.Name = "repositoryItemComboBox_MarkerType";
            this.repositoryItemComboBox_MarkerType.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_MarkerType_Spin);
            // 
            // colRegularLossWidth
            // 
            this.colRegularLossWidth.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colRegularLossWidth.AppearanceHeader.Options.UseBackColor = true;
            this.colRegularLossWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colRegularLossWidth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRegularLossWidth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRegularLossWidth.Caption = "Horizontal\r\n(mm)\r\nX-axis";
            this.colRegularLossWidth.DisplayFormat.FormatString = "n2";
            this.colRegularLossWidth.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colRegularLossWidth.FieldName = "RegularLossWidth";
            this.colRegularLossWidth.Name = "colRegularLossWidth";
            this.colRegularLossWidth.OptionsColumn.AllowEdit = false;
            this.colRegularLossWidth.Visible = true;
            this.colRegularLossWidth.Width = 91;
            // 
            // colChainDefectWidthPercentShow
            // 
            this.colChainDefectWidthPercentShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colChainDefectWidthPercentShow.AppearanceHeader.Options.UseBackColor = true;
            this.colChainDefectWidthPercentShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectWidthPercentShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectWidthPercentShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectWidthPercentShow.Caption = "%";
            this.colChainDefectWidthPercentShow.FieldName = "ChainDefectWidthPercentShow";
            this.colChainDefectWidthPercentShow.Name = "colChainDefectWidthPercentShow";
            this.colChainDefectWidthPercentShow.OptionsColumn.AllowEdit = false;
            this.colChainDefectWidthPercentShow.Visible = true;
            this.colChainDefectWidthPercentShow.Width = 41;
            // 
            // colChainDefectLengthShow
            // 
            this.colChainDefectLengthShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colChainDefectLengthShow.AppearanceHeader.Options.UseBackColor = true;
            this.colChainDefectLengthShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectLengthShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectLengthShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectLengthShow.Caption = "Vertical\r\n(m)\r\nY-axis";
            this.colChainDefectLengthShow.FieldName = "ChainDefectLengthShow";
            this.colChainDefectLengthShow.Name = "colChainDefectLengthShow";
            this.colChainDefectLengthShow.OptionsColumn.AllowEdit = false;
            this.colChainDefectLengthShow.Visible = true;
            this.colChainDefectLengthShow.Width = 65;
            // 
            // colChainDefectLengthPercentShow
            // 
            this.colChainDefectLengthPercentShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colChainDefectLengthPercentShow.AppearanceHeader.Options.UseBackColor = true;
            this.colChainDefectLengthPercentShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colChainDefectLengthPercentShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChainDefectLengthPercentShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChainDefectLengthPercentShow.Caption = "%";
            this.colChainDefectLengthPercentShow.FieldName = "ChainDefectLengthPercentShow";
            this.colChainDefectLengthPercentShow.Name = "colChainDefectLengthPercentShow";
            this.colChainDefectLengthPercentShow.OptionsColumn.AllowEdit = false;
            this.colChainDefectLengthPercentShow.Visible = true;
            this.colChainDefectLengthPercentShow.Width = 35;
            // 
            // colStep2EvadeMarkerLossPercent
            // 
            this.colStep2EvadeMarkerLossPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2EvadeMarkerLossPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2EvadeMarkerLossPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2EvadeMarkerLossPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2EvadeMarkerLossPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2EvadeMarkerLossPercent.Caption = "Loss %\r\n(reduce \r\nmarker\r\nutilization)\r\n*";
            this.colStep2EvadeMarkerLossPercent.DisplayFormat.FormatString = "n2";
            this.colStep2EvadeMarkerLossPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2EvadeMarkerLossPercent.FieldName = "Step2EvadeMarkerLossPercent";
            this.colStep2EvadeMarkerLossPercent.Name = "colStep2EvadeMarkerLossPercent";
            this.colStep2EvadeMarkerLossPercent.OptionsColumn.AllowEdit = false;
            this.colStep2EvadeMarkerLossPercent.Visible = true;
            this.colStep2EvadeMarkerLossPercent.Width = 62;
            // 
            // colStep2ClaimRegularQty
            // 
            this.colStep2ClaimRegularQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ClaimRegularQty.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ClaimRegularQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ClaimRegularQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ClaimRegularQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ClaimRegularQty.Caption = "VCD (L)\r\n[covered\r\nwidth]*";
            this.colStep2ClaimRegularQty.DisplayFormat.FormatString = "n2";
            this.colStep2ClaimRegularQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2ClaimRegularQty.FieldName = "Step2ClaimRegularQty";
            this.colStep2ClaimRegularQty.Name = "colStep2ClaimRegularQty";
            this.colStep2ClaimRegularQty.OptionsColumn.AllowEdit = false;
            this.colStep2ClaimRegularQty.Visible = true;
            this.colStep2ClaimRegularQty.Width = 71;
            // 
            // colVerticalChainDefectClaimByLot
            // 
            this.colVerticalChainDefectClaimByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colVerticalChainDefectClaimByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colVerticalChainDefectClaimByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colVerticalChainDefectClaimByLot.Caption = "VCD\r\nClaim\r\n(item\r\nwidth)\r\n**";
            this.colVerticalChainDefectClaimByLot.DisplayFormat.FormatString = "N2";
            this.colVerticalChainDefectClaimByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colVerticalChainDefectClaimByLot.FieldName = "VerticalChainDefectClaimByLot";
            this.colVerticalChainDefectClaimByLot.Name = "colVerticalChainDefectClaimByLot";
            this.colVerticalChainDefectClaimByLot.OptionsColumn.AllowEdit = false;
            this.colVerticalChainDefectClaimByLot.Visible = true;
            this.colVerticalChainDefectClaimByLot.Width = 58;
            // 
            // gridBand86
            // 
            this.gridBand86.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand86.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand86.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand86.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand86.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand86.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand86.Caption = "Horizontal Chain Defect\r\n(Cut-out length in item width) *";
            this.gridBand86.Columns.Add(this.colNeedCutOut);
            this.gridBand86.Columns.Add(this.colCutOutLength);
            this.gridBand86.Columns.Add(this.colCutOutLengthPercent);
            this.gridBand86.Columns.Add(this.colCutOutClaimQty);
            this.gridBand86.Columns.Add(this.colHorizontalChainDefectLossPerentByLot);
            this.gridBand86.Columns.Add(this.colHorizontalChainDefectClaimByLot);
            this.gridBand86.MinWidth = 20;
            this.gridBand86.Name = "gridBand86";
            this.gridBand86.Width = 374;
            // 
            // colNeedCutOut
            // 
            this.colNeedCutOut.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colNeedCutOut.AppearanceHeader.Options.UseBackColor = true;
            this.colNeedCutOut.AppearanceHeader.Options.UseTextOptions = true;
            this.colNeedCutOut.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colNeedCutOut.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colNeedCutOut.Caption = "Applic\r\n-able\r\n*";
            this.colNeedCutOut.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colNeedCutOut.FieldName = "NeedCutOutShow";
            this.colNeedCutOut.Name = "colNeedCutOut";
            this.colNeedCutOut.OptionsColumn.AllowEdit = false;
            this.colNeedCutOut.Visible = true;
            this.colNeedCutOut.Width = 42;
            // 
            // colCutOutLength
            // 
            this.colCutOutLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCutOutLength.AppearanceHeader.Options.UseBackColor = true;
            this.colCutOutLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutOutLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutOutLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutOutLength.Caption = "Vertical\r\n(m)\r\nY-axis";
            this.colCutOutLength.DisplayFormat.FormatString = "n2";
            this.colCutOutLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCutOutLength.FieldName = "CutOutLength";
            this.colCutOutLength.Name = "colCutOutLength";
            this.colCutOutLength.Visible = true;
            this.colCutOutLength.Width = 62;
            // 
            // colCutOutLengthPercent
            // 
            this.colCutOutLengthPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutOutLengthPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutOutLengthPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutOutLengthPercent.Caption = "%";
            this.colCutOutLengthPercent.DisplayFormat.FormatString = "P";
            this.colCutOutLengthPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCutOutLengthPercent.FieldName = "CutOutLengthPercent";
            this.colCutOutLengthPercent.Name = "colCutOutLengthPercent";
            this.colCutOutLengthPercent.OptionsColumn.AllowEdit = false;
            this.colCutOutLengthPercent.Visible = true;
            this.colCutOutLengthPercent.Width = 53;
            // 
            // colCutOutClaimQty
            // 
            this.colCutOutClaimQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCutOutClaimQty.AppearanceHeader.Options.UseBackColor = true;
            this.colCutOutClaimQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutOutClaimQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutOutClaimQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutOutClaimQty.Caption = "Audit (L)\r\nhas HCD\r\n(item\r\nwidth)";
            this.colCutOutClaimQty.DisplayFormat.FormatString = "n2";
            this.colCutOutClaimQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCutOutClaimQty.FieldName = "CutOutClaimQty";
            this.colCutOutClaimQty.Name = "colCutOutClaimQty";
            this.colCutOutClaimQty.OptionsColumn.AllowEdit = false;
            this.colCutOutClaimQty.Visible = true;
            this.colCutOutClaimQty.Width = 71;
            // 
            // colHorizontalChainDefectLossPerentByLot
            // 
            this.colHorizontalChainDefectLossPerentByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colHorizontalChainDefectLossPerentByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colHorizontalChainDefectLossPerentByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHorizontalChainDefectLossPerentByLot.Caption = "HCD\r\nLoss %\r\n**";
            this.colHorizontalChainDefectLossPerentByLot.DisplayFormat.FormatString = "P";
            this.colHorizontalChainDefectLossPerentByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colHorizontalChainDefectLossPerentByLot.FieldName = "HorizontalChainDefectLossPerentByLot";
            this.colHorizontalChainDefectLossPerentByLot.Name = "colHorizontalChainDefectLossPerentByLot";
            this.colHorizontalChainDefectLossPerentByLot.OptionsColumn.AllowEdit = false;
            this.colHorizontalChainDefectLossPerentByLot.Visible = true;
            this.colHorizontalChainDefectLossPerentByLot.Width = 68;
            // 
            // colHorizontalChainDefectClaimByLot
            // 
            this.colHorizontalChainDefectClaimByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colHorizontalChainDefectClaimByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colHorizontalChainDefectClaimByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHorizontalChainDefectClaimByLot.Caption = "HCD\r\nClaim\r\n**";
            this.colHorizontalChainDefectClaimByLot.DisplayFormat.FormatString = "N2";
            this.colHorizontalChainDefectClaimByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colHorizontalChainDefectClaimByLot.FieldName = "HorizontalChainDefectClaimByLot";
            this.colHorizontalChainDefectClaimByLot.Name = "colHorizontalChainDefectClaimByLot";
            this.colHorizontalChainDefectClaimByLot.OptionsColumn.AllowEdit = false;
            this.colHorizontalChainDefectClaimByLot.Visible = true;
            this.colHorizontalChainDefectClaimByLot.Width = 78;
            // 
            // gridBand87
            // 
            this.gridBand87.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand87.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand87.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand87.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand87.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand87.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand87.Caption = "Ttl claim \r\n**";
            this.gridBand87.Columns.Add(this.colPartITotalClaimQty);
            this.gridBand87.MinWidth = 20;
            this.gridBand87.Name = "gridBand87";
            this.gridBand87.Width = 71;
            // 
            // colPartITotalClaimQty
            // 
            this.colPartITotalClaimQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colPartITotalClaimQty.AppearanceHeader.Options.UseBackColor = true;
            this.colPartITotalClaimQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartITotalClaimQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartITotalClaimQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartITotalClaimQty.Caption = "(last \r\nstep)";
            this.colPartITotalClaimQty.DisplayFormat.FormatString = "n2";
            this.colPartITotalClaimQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPartITotalClaimQty.FieldName = "PartITotalClaimQty";
            this.colPartITotalClaimQty.Name = "colPartITotalClaimQty";
            this.colPartITotalClaimQty.OptionsColumn.AllowEdit = false;
            this.colPartITotalClaimQty.Visible = true;
            this.colPartITotalClaimQty.Width = 71;
            // 
            // gridBand98
            // 
            this.gridBand98.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand98.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand98.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand98.Caption = "PART I **";
            this.gridBand98.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand99});
            this.gridBand98.Name = "gridBand98";
            this.gridBand98.RowCount = 2;
            this.gridBand98.Width = 149;
            // 
            // gridBand99
            // 
            this.gridBand99.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand99.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand99.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand99.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand99.Caption = "PART I\r\nFinal Claim\r\n**";
            this.gridBand99.Columns.Add(this.colPartIFinalClaimafewth);
            this.gridBand99.Columns.Add(this.colPart1Nature);
            this.gridBand99.Columns.Add(this.colPartIFinalClaimQtyShow);
            this.gridBand99.MinWidth = 20;
            this.gridBand99.Name = "gridBand99";
            this.gridBand99.Width = 149;
            // 
            // colPartIFinalClaimafewth
            // 
            this.colPartIFinalClaimafewth.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIFinalClaimafewth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIFinalClaimafewth.Caption = "Ia?\r\nor \r\nIb?";
            this.colPartIFinalClaimafewth.ColumnEdit = this.repositoryItemComboBox_IaOrIb;
            this.colPartIFinalClaimafewth.FieldName = "PartIFinalClaimafewth";
            this.colPartIFinalClaimafewth.Name = "colPartIFinalClaimafewth";
            this.colPartIFinalClaimafewth.Visible = true;
            this.colPartIFinalClaimafewth.Width = 40;
            // 
            // repositoryItemComboBox_IaOrIb
            // 
            this.repositoryItemComboBox_IaOrIb.AutoHeight = false;
            this.repositoryItemComboBox_IaOrIb.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_IaOrIb.Items.AddRange(new object[] {
            "",
            "Ia",
            "Ib"});
            this.repositoryItemComboBox_IaOrIb.Name = "repositoryItemComboBox_IaOrIb";
            this.repositoryItemComboBox_IaOrIb.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colPart1Nature
            // 
            this.colPart1Nature.AppearanceHeader.Options.UseTextOptions = true;
            this.colPart1Nature.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPart1Nature.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPart1Nature.Caption = "Part1Nature";
            this.colPart1Nature.ColumnEdit = this.repositoryItemComboBox_Nature;
            this.colPart1Nature.FieldName = "Part1Nature";
            this.colPart1Nature.Name = "colPart1Nature";
            this.colPart1Nature.Visible = true;
            this.colPart1Nature.Width = 50;
            // 
            // repositoryItemComboBox_Nature
            // 
            this.repositoryItemComboBox_Nature.AutoHeight = false;
            this.repositoryItemComboBox_Nature.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_Nature.Items.AddRange(new object[] {
            "None",
            "Replenish",
            "Return"});
            this.repositoryItemComboBox_Nature.Name = "repositoryItemComboBox_Nature";
            this.repositoryItemComboBox_Nature.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.repositoryItemComboBox_Nature_Spin);
            // 
            // colPartIFinalClaimQtyShow
            // 
            this.colPartIFinalClaimQtyShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colPartIFinalClaimQtyShow.AppearanceHeader.Options.UseBackColor = true;
            this.colPartIFinalClaimQtyShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIFinalClaimQtyShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIFinalClaimQtyShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartIFinalClaimQtyShow.Caption = "Qty";
            this.colPartIFinalClaimQtyShow.DisplayFormat.FormatString = "n2";
            this.colPartIFinalClaimQtyShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPartIFinalClaimQtyShow.FieldName = "PartIFinalClaimQty";
            this.colPartIFinalClaimQtyShow.Name = "colPartIFinalClaimQtyShow";
            this.colPartIFinalClaimQtyShow.OptionsColumn.AllowEdit = false;
            this.colPartIFinalClaimQtyShow.Visible = true;
            this.colPartIFinalClaimQtyShow.Width = 59;
            // 
            // gridBand30
            // 
            this.gridBand30.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.gridBand30.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 11F, System.Drawing.FontStyle.Bold);
            this.gridBand30.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand30.AppearanceHeader.Options.UseFont = true;
            this.gridBand30.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand30.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand30.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand30.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand30.Caption = "PART II - Measurement & Counting";
            this.gridBand30.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand31,
            this.gridBand53,
            this.gridBand25,
            this.gridBand22,
            this.gridBand23});
            this.gridBand30.MinWidth = 20;
            this.gridBand30.Name = "gridBand30";
            this.gridBand30.RowCount = 2;
            this.gridBand30.Width = 1257;
            // 
            // gridBand31
            // 
            this.gridBand31.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand31.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand31.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand31.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand31.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand31.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand31.Caption = "Length";
            this.gridBand31.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand32,
            this.gridBand33});
            this.gridBand31.MinWidth = 20;
            this.gridBand31.Name = "gridBand31";
            this.gridBand31.RowCount = 2;
            this.gridBand31.Width = 330;
            // 
            // gridBand32
            // 
            this.gridBand32.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand32.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand32.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand32.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand32.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand32.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand32.Caption = "Length Measure Result";
            this.gridBand32.Columns.Add(this.colMeasLengthShow);
            this.gridBand32.Columns.Add(this.colShortLengthShow);
            this.gridBand32.Columns.Add(this.colDiffLengthAveByLot);
            this.gridBand32.Columns.Add(this.colLengthResult);
            this.gridBand32.Columns.Add(this.colLengthDiffLossByLotShow);
            this.gridBand32.MinWidth = 20;
            this.gridBand32.Name = "gridBand32";
            this.gridBand32.Width = 273;
            // 
            // colMeasLengthShow
            // 
            this.colMeasLengthShow.AppearanceCell.Options.UseTextOptions = true;
            this.colMeasLengthShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colMeasLengthShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colMeasLengthShow.AppearanceHeader.Options.UseBackColor = true;
            this.colMeasLengthShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colMeasLengthShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMeasLengthShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMeasLengthShow.Caption = "Meas.\r\nQty\r\n*";
            this.colMeasLengthShow.DisplayFormat.FormatString = "n2";
            this.colMeasLengthShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMeasLengthShow.FieldName = "MeasLengthShow";
            this.colMeasLengthShow.Name = "colMeasLengthShow";
            this.colMeasLengthShow.OptionsColumn.AllowEdit = false;
            this.colMeasLengthShow.Visible = true;
            this.colMeasLengthShow.Width = 51;
            // 
            // colShortLengthShow
            // 
            this.colShortLengthShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colShortLengthShow.AppearanceHeader.Options.UseBackColor = true;
            this.colShortLengthShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colShortLengthShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colShortLengthShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colShortLengthShow.Caption = "Diff *";
            this.colShortLengthShow.DisplayFormat.FormatString = "n2";
            this.colShortLengthShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colShortLengthShow.FieldName = "ShortLengthShow";
            this.colShortLengthShow.Name = "colShortLengthShow";
            this.colShortLengthShow.OptionsColumn.AllowEdit = false;
            this.colShortLengthShow.Visible = true;
            this.colShortLengthShow.Width = 48;
            // 
            // colDiffLengthAveByLot
            // 
            this.colDiffLengthAveByLot.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colDiffLengthAveByLot.AppearanceHeader.Options.UseBackColor = true;
            this.colDiffLengthAveByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colDiffLengthAveByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colDiffLengthAveByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDiffLengthAveByLot.Caption = "diff % \r\nbased \r\non \r\npkg list\r\n**";
            this.colDiffLengthAveByLot.DisplayFormat.FormatString = "n2";
            this.colDiffLengthAveByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDiffLengthAveByLot.FieldName = "DiffLengthAveByLot";
            this.colDiffLengthAveByLot.Name = "colDiffLengthAveByLot";
            this.colDiffLengthAveByLot.OptionsColumn.AllowEdit = false;
            this.colDiffLengthAveByLot.Visible = true;
            this.colDiffLengthAveByLot.Width = 60;
            // 
            // colLengthResult
            // 
            this.colLengthResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colLengthResult.AppearanceHeader.Options.UseBackColor = true;
            this.colLengthResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colLengthResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLengthResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLengthResult.Caption = "RESULT\r\n**";
            this.colLengthResult.ColumnEdit = this.repositoryItemComboBox_LengResultByID;
            this.colLengthResult.FieldName = "LengthResultByLot";
            this.colLengthResult.Name = "colLengthResult";
            this.colLengthResult.OptionsColumn.AllowEdit = false;
            this.colLengthResult.Visible = true;
            this.colLengthResult.Width = 53;
            // 
            // colLengthDiffLossByLotShow
            // 
            this.colLengthDiffLossByLotShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colLengthDiffLossByLotShow.AppearanceHeader.Options.UseBackColor = true;
            this.colLengthDiffLossByLotShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colLengthDiffLossByLotShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLengthDiffLossByLotShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLengthDiffLossByLotShow.Caption = "CLAIM \r\nShort\r\nLength\r\nQty\r\n**";
            this.colLengthDiffLossByLotShow.DisplayFormat.FormatString = "n2";
            this.colLengthDiffLossByLotShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colLengthDiffLossByLotShow.FieldName = "LengthDiffLossByLot";
            this.colLengthDiffLossByLotShow.Name = "colLengthDiffLossByLotShow";
            this.colLengthDiffLossByLotShow.OptionsColumn.AllowEdit = false;
            this.colLengthDiffLossByLotShow.Visible = true;
            this.colLengthDiffLossByLotShow.Width = 61;
            // 
            // gridBand33
            // 
            this.gridBand33.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand33.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand33.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand33.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand33.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand33.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand33.Caption = "Cut Length";
            this.gridBand33.Columns.Add(this.Columns_PH_Sample);
            this.gridBand33.Columns.Add(this.Columns_Insp_Length);
            this.gridBand33.MinWidth = 20;
            this.gridBand33.Name = "gridBand33";
            this.gridBand33.Width = 57;
            // 
            // Columns_PH_Sample
            // 
            this.Columns_PH_Sample.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_PH_Sample.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_PH_Sample.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_PH_Sample.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_PH_Sample.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_PH_Sample.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_PH_Sample.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_PH_Sample.Caption = "For\r\nTesting\r\n*";
            this.Columns_PH_Sample.DisplayFormat.FormatString = "n2";
            this.Columns_PH_Sample.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_PH_Sample.FieldName = "PH_Sample";
            this.Columns_PH_Sample.Name = "Columns_PH_Sample";
            this.Columns_PH_Sample.OptionsColumn.AllowEdit = false;
            this.Columns_PH_Sample.Visible = true;
            this.Columns_PH_Sample.Width = 57;
            // 
            // Columns_Insp_Length
            // 
            this.Columns_Insp_Length.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Insp_Length.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Insp_Length.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Insp_Length.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Insp_Length.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Insp_Length.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Insp_Length.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Insp_Length.Caption = "Revised\r\nid Qty\r\n*";
            this.Columns_Insp_Length.DisplayFormat.FormatString = "n2";
            this.Columns_Insp_Length.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Insp_Length.FieldName = "Insp_Length";
            this.Columns_Insp_Length.Name = "Columns_Insp_Length";
            this.Columns_Insp_Length.Width = 48;
            // 
            // gridBand53
            // 
            this.gridBand53.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand53.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand53.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand53.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand53.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand53.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand53.Caption = "Width";
            this.gridBand53.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand54,
            this.gridBand56});
            this.gridBand53.MinWidth = 20;
            this.gridBand53.Name = "gridBand53";
            this.gridBand53.RowCount = 2;
            this.gridBand53.Width = 503;
            // 
            // gridBand54
            // 
            this.gridBand54.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand54.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand54.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand54.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand54.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand54.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand54.Caption = "Width Measure";
            this.gridBand54.Columns.Add(this.colStandardWidth);
            this.gridBand54.Columns.Add(this.Columns_Usable_Width);
            this.gridBand54.Columns.Add(this.colShortWidthShow);
            this.gridBand54.Columns.Add(this.Columns_Actual_Width);
            this.gridBand54.Columns.Add(this.colUsableWidthMinByLot);
            this.gridBand54.Columns.Add(this.colDiffWidthPercent);
            this.gridBand54.Columns.Add(this.colWidthResult);
            this.gridBand54.Columns.Add(this.colNarrowWidthLossLengthShow);
            this.gridBand54.MinWidth = 20;
            this.gridBand54.Name = "gridBand54";
            this.gridBand54.Width = 503;
            // 
            // colStandardWidth
            // 
            this.colStandardWidth.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStandardWidth.AppearanceHeader.Options.UseBackColor = true;
            this.colStandardWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colStandardWidth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStandardWidth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStandardWidth.Caption = "Agreed\r\nUsable\r\nwidth\r\n**";
            this.colStandardWidth.DisplayFormat.FormatString = "n2";
            this.colStandardWidth.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStandardWidth.FieldName = "StandardWidth";
            this.colStandardWidth.Name = "colStandardWidth";
            this.colStandardWidth.Visible = true;
            this.colStandardWidth.Width = 62;
            // 
            // Columns_Usable_Width
            // 
            this.Columns_Usable_Width.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Usable_Width.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Usable_Width.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Usable_Width.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Usable_Width.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Usable_Width.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Usable_Width.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Usable_Width.Caption = "Meas.\r\nusable\r\nwidth\r\n(narrow\r\n-est) *";
            this.Columns_Usable_Width.DisplayFormat.FormatString = "n2";
            this.Columns_Usable_Width.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Usable_Width.FieldName = "Usable_Width";
            this.Columns_Usable_Width.Name = "Columns_Usable_Width";
            this.Columns_Usable_Width.OptionsColumn.AllowEdit = false;
            this.Columns_Usable_Width.Visible = true;
            this.Columns_Usable_Width.Width = 65;
            // 
            // colShortWidthShow
            // 
            this.colShortWidthShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colShortWidthShow.AppearanceHeader.Options.UseBackColor = true;
            this.colShortWidthShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colShortWidthShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colShortWidthShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colShortWidthShow.Caption = "Diff\r\n*";
            this.colShortWidthShow.DisplayFormat.FormatString = "n2";
            this.colShortWidthShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colShortWidthShow.FieldName = "ShortWidthShow";
            this.colShortWidthShow.Name = "colShortWidthShow";
            this.colShortWidthShow.OptionsColumn.AllowEdit = false;
            this.colShortWidthShow.Visible = true;
            this.colShortWidthShow.Width = 57;
            // 
            // Columns_Actual_Width
            // 
            this.Columns_Actual_Width.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Actual_Width.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Actual_Width.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Actual_Width.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Actual_Width.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Actual_Width.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Actual_Width.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Actual_Width.Caption = "Meas.\r\nedge to\r\nedge\r\n(narrow\r\n-est) *";
            this.Columns_Actual_Width.DisplayFormat.FormatString = "n2";
            this.Columns_Actual_Width.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Actual_Width.FieldName = "SideToSideH_Width";
            this.Columns_Actual_Width.Name = "Columns_Actual_Width";
            this.Columns_Actual_Width.OptionsColumn.AllowEdit = false;
            this.Columns_Actual_Width.Visible = true;
            this.Columns_Actual_Width.Width = 66;
            // 
            // colUsableWidthMinByLot
            // 
            this.colUsableWidthMinByLot.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colUsableWidthMinByLot.AppearanceHeader.Options.UseBackColor = true;
            this.colUsableWidthMinByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colUsableWidthMinByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colUsableWidthMinByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colUsableWidthMinByLot.Caption = "Meas.\r\nusable\r\nwidth\r\n(narrow\r\n-est) +";
            this.colUsableWidthMinByLot.DisplayFormat.FormatString = "n2";
            this.colUsableWidthMinByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colUsableWidthMinByLot.FieldName = "UsableWidthMinByLot";
            this.colUsableWidthMinByLot.Name = "colUsableWidthMinByLot";
            this.colUsableWidthMinByLot.OptionsColumn.AllowEdit = false;
            this.colUsableWidthMinByLot.Visible = true;
            this.colUsableWidthMinByLot.Width = 65;
            // 
            // colDiffWidthPercent
            // 
            this.colDiffWidthPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colDiffWidthPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colDiffWidthPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colDiffWidthPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colDiffWidthPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDiffWidthPercent.Caption = "Marker\r\nloss%\r\n(N.W.)\r\n+";
            this.colDiffWidthPercent.FieldName = "DiffWidthPercent";
            this.colDiffWidthPercent.Name = "colDiffWidthPercent";
            this.colDiffWidthPercent.Visible = true;
            this.colDiffWidthPercent.Width = 60;
            // 
            // colWidthResult
            // 
            this.colWidthResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colWidthResult.AppearanceHeader.Options.UseBackColor = true;
            this.colWidthResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colWidthResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWidthResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWidthResult.Caption = "RESULT\r\n+\r\n(batch)";
            this.colWidthResult.ColumnEdit = this.repositoryItemComboBox_WidthResultByBatch;
            this.colWidthResult.FieldName = "WidthResultByBatch";
            this.colWidthResult.Name = "colWidthResult";
            this.colWidthResult.OptionsColumn.AllowEdit = false;
            this.colWidthResult.Visible = true;
            this.colWidthResult.Width = 65;
            // 
            // colNarrowWidthLossLengthShow
            // 
            this.colNarrowWidthLossLengthShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colNarrowWidthLossLengthShow.AppearanceHeader.Options.UseBackColor = true;
            this.colNarrowWidthLossLengthShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colNarrowWidthLossLengthShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colNarrowWidthLossLengthShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colNarrowWidthLossLengthShow.Caption = "CLAIM\r\nN.W. \r\nQty + \r\n(batch)";
            this.colNarrowWidthLossLengthShow.DisplayFormat.FormatString = "n2";
            this.colNarrowWidthLossLengthShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colNarrowWidthLossLengthShow.FieldName = "NarrowWidthLossLengthShow";
            this.colNarrowWidthLossLengthShow.Name = "colNarrowWidthLossLengthShow";
            this.colNarrowWidthLossLengthShow.OptionsColumn.AllowEdit = false;
            this.colNarrowWidthLossLengthShow.Visible = true;
            this.colNarrowWidthLossLengthShow.Width = 63;
            // 
            // gridBand56
            // 
            this.gridBand56.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand56.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand56.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand56.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand56.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand56.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand56.MinWidth = 20;
            this.gridBand56.Name = "gridBand56";
            this.gridBand56.Visible = false;
            this.gridBand56.Width = 75;
            // 
            // gridBand25
            // 
            this.gridBand25.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand25.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand25.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand25.Caption = "Thickness";
            this.gridBand25.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand26});
            this.gridBand25.MinWidth = 20;
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.RowCount = 2;
            this.gridBand25.Width = 258;
            // 
            // gridBand26
            // 
            this.gridBand26.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand26.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand26.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand26.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand26.Caption = "Thickness Measure";
            this.gridBand26.Columns.Add(this.Columns_Gm_Sqm);
            this.gridBand26.Columns.Add(this.Columns_Actual_Weigth);
            this.gridBand26.Columns.Add(this.colDiffWeightPercentShow);
            this.gridBand26.Columns.Add(this.colThicknessResult);
            this.gridBand26.MinWidth = 20;
            this.gridBand26.Name = "gridBand26";
            this.gridBand26.Width = 258;
            // 
            // Columns_Gm_Sqm
            // 
            this.Columns_Gm_Sqm.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Gm_Sqm.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Gm_Sqm.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Gm_Sqm.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Gm_Sqm.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Gm_Sqm.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Gm_Sqm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Gm_Sqm.Caption = "gm/sqm \r\n(range)\r\n-MIDc\r\n**";
            this.Columns_Gm_Sqm.FieldName = "GmSqmShow";
            this.Columns_Gm_Sqm.Name = "Columns_Gm_Sqm";
            this.Columns_Gm_Sqm.OptionsColumn.AllowEdit = false;
            this.Columns_Gm_Sqm.Visible = true;
            this.Columns_Gm_Sqm.Width = 89;
            // 
            // Columns_Actual_Weigth
            // 
            this.Columns_Actual_Weigth.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Actual_Weigth.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Actual_Weigth.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Actual_Weigth.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Actual_Weigth.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Actual_Weigth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Actual_Weigth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Actual_Weigth.Caption = "Act.\r\nWeight\r\n*";
            this.Columns_Actual_Weigth.DisplayFormat.FormatString = "n2";
            this.Columns_Actual_Weigth.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Actual_Weigth.FieldName = "Actual_Weight";
            this.Columns_Actual_Weigth.Name = "Columns_Actual_Weigth";
            this.Columns_Actual_Weigth.Visible = true;
            this.Columns_Actual_Weigth.Width = 62;
            // 
            // colDiffWeightPercentShow
            // 
            this.colDiffWeightPercentShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colDiffWeightPercentShow.AppearanceHeader.Options.UseBackColor = true;
            this.colDiffWeightPercentShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colDiffWeightPercentShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colDiffWeightPercentShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDiffWeightPercentShow.Caption = "Deviat\r\n-ion *";
            this.colDiffWeightPercentShow.DisplayFormat.FormatString = "n2";
            this.colDiffWeightPercentShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDiffWeightPercentShow.FieldName = "DiffWeightPercentShow";
            this.colDiffWeightPercentShow.Name = "colDiffWeightPercentShow";
            this.colDiffWeightPercentShow.OptionsColumn.AllowEdit = false;
            this.colDiffWeightPercentShow.Visible = true;
            this.colDiffWeightPercentShow.Width = 56;
            // 
            // colThicknessResult
            // 
            this.colThicknessResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colThicknessResult.AppearanceHeader.Options.UseBackColor = true;
            this.colThicknessResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colThicknessResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colThicknessResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colThicknessResult.Caption = "RESULT \r\n**";
            this.colThicknessResult.ColumnEdit = this.repositoryItemComboBox_ThicknessResultByID;
            this.colThicknessResult.FieldName = "ThicknessResultByLot";
            this.colThicknessResult.Name = "colThicknessResult";
            this.colThicknessResult.OptionsColumn.AllowEdit = false;
            this.colThicknessResult.Visible = true;
            this.colThicknessResult.Width = 51;
            // 
            // gridBand22
            // 
            this.gridBand22.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand22.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand22.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand22.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand22.Caption = "PART II **";
            this.gridBand22.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand52,
            this.gridBand57});
            this.gridBand22.MinWidth = 20;
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.RowCount = 2;
            this.gridBand22.Width = 166;
            // 
            // gridBand52
            // 
            this.gridBand52.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand52.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand52.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand52.Caption = "RESULT";
            this.gridBand52.Columns.Add(this.colPartII_MeasureResultShow);
            this.gridBand52.MinWidth = 20;
            this.gridBand52.Name = "gridBand52";
            this.gridBand52.Width = 53;
            // 
            // colPartII_MeasureResultShow
            // 
            this.colPartII_MeasureResultShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colPartII_MeasureResultShow.AppearanceHeader.Options.UseBackColor = true;
            this.colPartII_MeasureResultShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_MeasureResultShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_MeasureResultShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartII_MeasureResultShow.Caption = "Meas.";
            this.colPartII_MeasureResultShow.FieldName = "PartII_MeasureResultShow";
            this.colPartII_MeasureResultShow.Name = "colPartII_MeasureResultShow";
            this.colPartII_MeasureResultShow.OptionsColumn.AllowEdit = false;
            this.colPartII_MeasureResultShow.Visible = true;
            this.colPartII_MeasureResultShow.Width = 53;
            // 
            // gridBand57
            // 
            this.gridBand57.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand57.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand57.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand57.Caption = "Final Claim";
            this.gridBand57.Columns.Add(this.Columns_part_Insp_Result);
            this.gridBand57.Columns.Add(this.colPart2Nature);
            this.gridBand57.Columns.Add(this.colPartII_FinalClaimQtyShow);
            this.gridBand57.MinWidth = 20;
            this.gridBand57.Name = "gridBand57";
            this.gridBand57.Width = 113;
            // 
            // Columns_part_Insp_Result
            // 
            this.Columns_part_Insp_Result.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_part_Insp_Result.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_part_Insp_Result.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_part_Insp_Result.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_part_Insp_Result.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_part_Insp_Result.Caption = "Dj) id S.D. RESULT";
            this.Columns_part_Insp_Result.ColumnEdit = this.repositoryItemComboBox_IDIrregularDefectResult;
            this.Columns_part_Insp_Result.FieldName = "Party_Insp_Result";
            this.Columns_part_Insp_Result.Name = "Columns_part_Insp_Result";
            this.Columns_part_Insp_Result.Width = 101;
            // 
            // colPart2Nature
            // 
            this.colPart2Nature.AppearanceHeader.Options.UseTextOptions = true;
            this.colPart2Nature.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPart2Nature.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPart2Nature.Caption = "Part2Nature";
            this.colPart2Nature.ColumnEdit = this.repositoryItemComboBox_Nature;
            this.colPart2Nature.FieldName = "Part2Nature";
            this.colPart2Nature.Name = "colPart2Nature";
            this.colPart2Nature.Visible = true;
            this.colPart2Nature.Width = 59;
            // 
            // colPartII_FinalClaimQtyShow
            // 
            this.colPartII_FinalClaimQtyShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colPartII_FinalClaimQtyShow.AppearanceHeader.Options.UseBackColor = true;
            this.colPartII_FinalClaimQtyShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_FinalClaimQtyShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_FinalClaimQtyShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartII_FinalClaimQtyShow.Caption = "Final\r\nClaim";
            this.colPartII_FinalClaimQtyShow.DisplayFormat.FormatString = "n2";
            this.colPartII_FinalClaimQtyShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPartII_FinalClaimQtyShow.FieldName = "PartIIFinalClaimQty";
            this.colPartII_FinalClaimQtyShow.Name = "colPartII_FinalClaimQtyShow";
            this.colPartII_FinalClaimQtyShow.OptionsColumn.AllowEdit = false;
            this.colPartII_FinalClaimQtyShow.Visible = true;
            this.colPartII_FinalClaimQtyShow.Width = 54;
            // 
            // gridBand23
            // 
            this.gridBand23.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand23.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand23.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand23.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand23.MinWidth = 20;
            this.gridBand23.Name = "gridBand23";
            this.gridBand23.Visible = false;
            this.gridBand23.Width = 80;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.gridBand4.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 11F, System.Drawing.FontStyle.Bold);
            this.gridBand4.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand4.AppearanceHeader.Options.UseFont = true;
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand4.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand4.Caption = "PART III - Others";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand24,
            this.gridBand40,
            this.gridBand41,
            this.gridBand42,
            this.gridBand43,
            this.gridBand44,
            this.gridBand45,
            this.gridBand46,
            this.gridBand47});
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.RowCount = 2;
            this.gridBand4.Width = 743;
            // 
            // gridBand24
            // 
            this.gridBand24.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand24.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand24.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand24.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand24.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand24.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand24.Caption = "Batch (#)";
            this.gridBand24.Columns.Add(this.Columns_Supplier_Batch);
            this.gridBand24.MinWidth = 20;
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.Width = 87;
            // 
            // Columns_Supplier_Batch
            // 
            this.Columns_Supplier_Batch.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Supplier_Batch.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Supplier_Batch.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Supplier_Batch.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Supplier_Batch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Supplier_Batch.Caption = "- -";
            this.Columns_Supplier_Batch.FieldName = "Supplich_Batch";
            this.Columns_Supplier_Batch.Name = "Columns_Supplier_Batch";
            this.Columns_Supplier_Batch.Visible = true;
            this.Columns_Supplier_Batch.Width = 87;
            // 
            // gridBand40
            // 
            this.gridBand40.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand40.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand40.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand40.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand40.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand40.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand40.Caption = "Shade Grpg *";
            this.gridBand40.Columns.Add(this.colColorMatching);
            this.gridBand40.Columns.Add(this.colColorMatchingResult);
            this.gridBand40.MinWidth = 20;
            this.gridBand40.Name = "gridBand40";
            this.gridBand40.Width = 75;
            // 
            // colColorMatching
            // 
            this.colColorMatching.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colColorMatching.AppearanceHeader.Options.UseBackColor = true;
            this.colColorMatching.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorMatching.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorMatching.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorMatching.Caption = "Y/N";
            this.colColorMatching.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colColorMatching.FieldName = "ColorMatching";
            this.colColorMatching.Name = "colColorMatching";
            this.colColorMatching.Visible = true;
            this.colColorMatching.Width = 33;
            // 
            // colColorMatchingResult
            // 
            this.colColorMatchingResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colColorMatchingResult.AppearanceHeader.Options.UseBackColor = true;
            this.colColorMatchingResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorMatchingResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorMatchingResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorMatchingResult.Caption = "Result";
            this.colColorMatchingResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colColorMatchingResult.FieldName = "ColorMatchingResult";
            this.colColorMatchingResult.Name = "colColorMatchingResult";
            this.colColorMatchingResult.Visible = true;
            this.colColorMatchingResult.Width = 42;
            // 
            // gridBand41
            // 
            this.gridBand41.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand41.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand41.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand41.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand41.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand41.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand41.Caption = "Elongation *";
            this.gridBand41.Columns.Add(this.Columns_Elongation);
            this.gridBand41.Columns.Add(this.colElongationResult);
            this.gridBand41.MinWidth = 20;
            this.gridBand41.Name = "gridBand41";
            this.gridBand41.Width = 80;
            // 
            // Columns_Elongation
            // 
            this.Columns_Elongation.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Elongation.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Elongation.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Elongation.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Elongation.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Elongation.Caption = "Y/N";
            this.Columns_Elongation.ColumnEdit = this.repositoryItemComboBox_YN;
            this.Columns_Elongation.FieldName = "Elongation";
            this.Columns_Elongation.Name = "Columns_Elongation";
            this.Columns_Elongation.Visible = true;
            this.Columns_Elongation.Width = 30;
            // 
            // colElongationResult
            // 
            this.colElongationResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colElongationResult.AppearanceHeader.Options.UseBackColor = true;
            this.colElongationResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colElongationResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colElongationResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colElongationResult.Caption = "RESULT";
            this.colElongationResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colElongationResult.FieldName = "ElongationResult";
            this.colElongationResult.Name = "colElongationResult";
            this.colElongationResult.Visible = true;
            this.colElongationResult.Width = 50;
            // 
            // gridBand42
            // 
            this.gridBand42.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand42.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand42.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand42.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand42.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand42.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand42.Caption = "Moulding *";
            this.gridBand42.Columns.Add(this.Columns_MouldTrial);
            this.gridBand42.Columns.Add(this.colMouldTrialResult);
            this.gridBand42.MinWidth = 20;
            this.gridBand42.Name = "gridBand42";
            this.gridBand42.Width = 81;
            // 
            // Columns_MouldTrial
            // 
            this.Columns_MouldTrial.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_MouldTrial.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_MouldTrial.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_MouldTrial.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_MouldTrial.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_MouldTrial.Caption = "Y/N";
            this.Columns_MouldTrial.ColumnEdit = this.repositoryItemComboBox_YN;
            this.Columns_MouldTrial.FieldName = "MouldTrial";
            this.Columns_MouldTrial.Name = "Columns_MouldTrial";
            this.Columns_MouldTrial.Visible = true;
            this.Columns_MouldTrial.Width = 31;
            // 
            // colMouldTrialResult
            // 
            this.colMouldTrialResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colMouldTrialResult.AppearanceHeader.Options.UseBackColor = true;
            this.colMouldTrialResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colMouldTrialResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMouldTrialResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMouldTrialResult.Caption = "RESULT";
            this.colMouldTrialResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colMouldTrialResult.FieldName = "MouldTrialResult";
            this.colMouldTrialResult.Name = "colMouldTrialResult";
            this.colMouldTrialResult.Visible = true;
            this.colMouldTrialResult.Width = 50;
            // 
            // gridBand43
            // 
            this.gridBand43.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand43.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand43.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand43.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand43.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand43.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand43.Caption = "Bonding *";
            this.gridBand43.Columns.Add(this.colBonding);
            this.gridBand43.Columns.Add(this.colBondingResult);
            this.gridBand43.MinWidth = 20;
            this.gridBand43.Name = "gridBand43";
            this.gridBand43.Width = 81;
            // 
            // colBonding
            // 
            this.colBonding.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colBonding.AppearanceHeader.Options.UseBackColor = true;
            this.colBonding.AppearanceHeader.Options.UseTextOptions = true;
            this.colBonding.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colBonding.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colBonding.Caption = "Y/N";
            this.colBonding.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colBonding.FieldName = "Bonding";
            this.colBonding.Name = "colBonding";
            this.colBonding.Visible = true;
            this.colBonding.Width = 31;
            // 
            // colBondingResult
            // 
            this.colBondingResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colBondingResult.AppearanceHeader.Options.UseBackColor = true;
            this.colBondingResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colBondingResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colBondingResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colBondingResult.Caption = "RESULT";
            this.colBondingResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colBondingResult.FieldName = "BondingResult";
            this.colBondingResult.Name = "colBondingResult";
            this.colBondingResult.Visible = true;
            this.colBondingResult.Width = 50;
            // 
            // gridBand44
            // 
            this.gridBand44.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand44.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand44.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand44.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand44.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand44.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand44.Caption = "Lamination *";
            this.gridBand44.Columns.Add(this.colLamination);
            this.gridBand44.Columns.Add(this.colLaminationResult);
            this.gridBand44.MinWidth = 20;
            this.gridBand44.Name = "gridBand44";
            this.gridBand44.Width = 82;
            // 
            // colLamination
            // 
            this.colLamination.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colLamination.AppearanceHeader.Options.UseBackColor = true;
            this.colLamination.AppearanceHeader.Options.UseTextOptions = true;
            this.colLamination.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLamination.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLamination.Caption = "Y/N";
            this.colLamination.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colLamination.FieldName = "Lamination";
            this.colLamination.Name = "colLamination";
            this.colLamination.Visible = true;
            this.colLamination.Width = 30;
            // 
            // colLaminationResult
            // 
            this.colLaminationResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colLaminationResult.AppearanceHeader.Options.UseBackColor = true;
            this.colLaminationResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colLaminationResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLaminationResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLaminationResult.Caption = "RESULT";
            this.colLaminationResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colLaminationResult.FieldName = "LaminationResult";
            this.colLaminationResult.Name = "colLaminationResult";
            this.colLaminationResult.Visible = true;
            this.colLaminationResult.Width = 52;
            // 
            // gridBand45
            // 
            this.gridBand45.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand45.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand45.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand45.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand45.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand45.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand45.Caption = "Cut curling *";
            this.gridBand45.Columns.Add(this.colCutCurling);
            this.gridBand45.Columns.Add(this.colCutCurlingResult);
            this.gridBand45.MinWidth = 20;
            this.gridBand45.Name = "gridBand45";
            this.gridBand45.Width = 80;
            // 
            // colCutCurling
            // 
            this.colCutCurling.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCutCurling.AppearanceHeader.Options.UseBackColor = true;
            this.colCutCurling.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutCurling.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutCurling.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutCurling.Caption = "Y/N";
            this.colCutCurling.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colCutCurling.FieldName = "CutCurling";
            this.colCutCurling.Name = "colCutCurling";
            this.colCutCurling.Visible = true;
            this.colCutCurling.Width = 30;
            // 
            // colCutCurlingResult
            // 
            this.colCutCurlingResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colCutCurlingResult.AppearanceHeader.Options.UseBackColor = true;
            this.colCutCurlingResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colCutCurlingResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCutCurlingResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCutCurlingResult.Caption = "RESULT";
            this.colCutCurlingResult.ColumnEdit = this.repositoryItemComboBox_OtherAuditResult;
            this.colCutCurlingResult.FieldName = "CutCurlingResult";
            this.colCutCurlingResult.Name = "colCutCurlingResult";
            this.colCutCurlingResult.Visible = true;
            this.colCutCurlingResult.Width = 50;
            // 
            // gridBand46
            // 
            this.gridBand46.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand46.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand46.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand46.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand46.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand46.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand46.Caption = "Part III **";
            this.gridBand46.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand29,
            this.gridBand39});
            this.gridBand46.MinWidth = 20;
            this.gridBand46.Name = "gridBand46";
            this.gridBand46.RowCount = 2;
            this.gridBand46.Width = 177;
            // 
            // gridBand29
            // 
            this.gridBand29.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand29.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand29.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand29.Caption = "RESULT";
            this.gridBand29.Columns.Add(this.colOtherOverallResult);
            this.gridBand29.MinWidth = 20;
            this.gridBand29.Name = "gridBand29";
            this.gridBand29.Width = 53;
            // 
            // colOtherOverallResult
            // 
            this.colOtherOverallResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOtherOverallResult.AppearanceHeader.Options.UseBackColor = true;
            this.colOtherOverallResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colOtherOverallResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOtherOverallResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOtherOverallResult.Caption = "Testing";
            this.colOtherOverallResult.ColumnEdit = this.repositoryItemComboBox_OtherOverallResult;
            this.colOtherOverallResult.FieldName = "OtherOverallResult";
            this.colOtherOverallResult.Name = "colOtherOverallResult";
            this.colOtherOverallResult.OptionsColumn.AllowEdit = false;
            this.colOtherOverallResult.Visible = true;
            this.colOtherOverallResult.Width = 53;
            // 
            // gridBand39
            // 
            this.gridBand39.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand39.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand39.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand39.Caption = "Final Claim";
            this.gridBand39.Columns.Add(this.colPart3Nature);
            this.gridBand39.Columns.Add(this.colPartIII_FinalClaimQty);
            this.gridBand39.MinWidth = 20;
            this.gridBand39.Name = "gridBand39";
            this.gridBand39.Width = 124;
            // 
            // colPart3Nature
            // 
            this.colPart3Nature.AppearanceHeader.Options.UseTextOptions = true;
            this.colPart3Nature.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPart3Nature.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPart3Nature.Caption = "Part3Nature";
            this.colPart3Nature.ColumnEdit = this.repositoryItemComboBox_Nature;
            this.colPart3Nature.FieldName = "Part3Nature";
            this.colPart3Nature.Name = "colPart3Nature";
            this.colPart3Nature.Visible = true;
            this.colPart3Nature.Width = 56;
            // 
            // colPartIII_FinalClaimQty
            // 
            this.colPartIII_FinalClaimQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colPartIII_FinalClaimQty.AppearanceHeader.Options.UseBackColor = true;
            this.colPartIII_FinalClaimQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIII_FinalClaimQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIII_FinalClaimQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartIII_FinalClaimQty.Caption = "Qty";
            this.colPartIII_FinalClaimQty.DisplayFormat.FormatString = "n2";
            this.colPartIII_FinalClaimQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPartIII_FinalClaimQty.FieldName = "PARTIIIFinalClaimQty";
            this.colPartIII_FinalClaimQty.Name = "colPartIII_FinalClaimQty";
            this.colPartIII_FinalClaimQty.OptionsColumn.AllowEdit = false;
            this.colPartIII_FinalClaimQty.Visible = true;
            this.colPartIII_FinalClaimQty.Width = 68;
            // 
            // gridBand47
            // 
            this.gridBand47.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand47.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand47.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand47.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand47.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand47.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand47.MinWidth = 20;
            this.gridBand47.Name = "gridBand47";
            this.gridBand47.Visible = false;
            this.gridBand47.Width = 39;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(217)))), ((int)(((byte)(217)))), ((int)(((byte)(217)))));
            this.gridBand5.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 11F, System.Drawing.FontStyle.Bold);
            this.gridBand5.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand5.AppearanceHeader.Options.UseFont = true;
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand5.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand5.Caption = "Overall Result Info.";
            this.gridBand5.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand48,
            this.gridBand49,
            this.gridBand50,
            this.gridBand1,
            this.gridBand51,
            this.gridBand100});
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.RowCount = 2;
            this.gridBand5.Width = 1309;
            // 
            // gridBand48
            // 
            this.gridBand48.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand48.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand48.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand48.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand48.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand48.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand48.Columns.Add(this.Columns_InvoiceNo);
            this.gridBand48.MinWidth = 20;
            this.gridBand48.Name = "gridBand48";
            this.gridBand48.Width = 104;
            // 
            // Columns_InvoiceNo
            // 
            this.Columns_InvoiceNo.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_InvoiceNo.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_InvoiceNo.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_InvoiceNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_InvoiceNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_InvoiceNo.Caption = "Invoice#";
            this.Columns_InvoiceNo.FieldName = "InvoiceNo";
            this.Columns_InvoiceNo.Name = "Columns_InvoiceNo";
            this.Columns_InvoiceNo.Visible = true;
            this.Columns_InvoiceNo.Width = 104;
            // 
            // gridBand49
            // 
            this.gridBand49.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand49.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand49.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand49.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand49.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand49.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand49.Caption = "Overall RESULT with core reasons, if any *";
            this.gridBand49.Columns.Add(this.Columns_Insp_Result);
            this.gridBand49.Columns.Add(this.colOverallResultReasonGroup);
            this.gridBand49.Columns.Add(this.colOverallResultDefectKind);
            this.gridBand49.Columns.Add(this.colOverallResultReasonPart);
            this.gridBand49.Columns.Add(this.colOverallResultCoreDefecName);
            this.gridBand49.Columns.Add(this.gridColumn1);
            this.gridBand49.MinWidth = 20;
            this.gridBand49.Name = "gridBand49";
            this.gridBand49.Width = 445;
            // 
            // Columns_Insp_Result
            // 
            this.Columns_Insp_Result.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Insp_Result.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Insp_Result.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Insp_Result.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Insp_Result.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Insp_Result.Caption = "Grade";
            this.Columns_Insp_Result.ColumnEdit = this.repositoryItemComboBox_OverallResult;
            this.Columns_Insp_Result.FieldName = "Insp_Result";
            this.Columns_Insp_Result.Name = "Columns_Insp_Result";
            this.Columns_Insp_Result.Visible = true;
            this.Columns_Insp_Result.Width = 39;
            // 
            // colOverallResultReasonGroup
            // 
            this.colOverallResultReasonGroup.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallResultReasonGroup.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallResultReasonGroup.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallResultReasonGroup.Caption = "Reason\r\nGrp";
            this.colOverallResultReasonGroup.FieldName = "OverallResultReasonGroup";
            this.colOverallResultReasonGroup.Name = "colOverallResultReasonGroup";
            this.colOverallResultReasonGroup.OptionsColumn.AllowEdit = false;
            this.colOverallResultReasonGroup.Visible = true;
            this.colOverallResultReasonGroup.Width = 46;
            // 
            // colOverallResultDefectKind
            // 
            this.colOverallResultDefectKind.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallResultDefectKind.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallResultDefectKind.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallResultDefectKind.Caption = "Defect\r\nkinds";
            this.colOverallResultDefectKind.ColumnEdit = this.repositoryItemComboBox_OverallResltDefectKind;
            this.colOverallResultDefectKind.FieldName = "OverallResultDefectKind";
            this.colOverallResultDefectKind.Name = "colOverallResultDefectKind";
            this.colOverallResultDefectKind.Visible = true;
            this.colOverallResultDefectKind.Width = 44;
            // 
            // repositoryItemComboBox_OverallResltDefectKind
            // 
            this.repositoryItemComboBox_OverallResltDefectKind.AutoHeight = false;
            this.repositoryItemComboBox_OverallResltDefectKind.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_OverallResltDefectKind.Items.AddRange(new object[] {
            "",
            "n.a.",
            "Spot",
            "Chain"});
            this.repositoryItemComboBox_OverallResltDefectKind.Name = "repositoryItemComboBox_OverallResltDefectKind";
            this.repositoryItemComboBox_OverallResltDefectKind.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colOverallResultReasonPart
            // 
            this.colOverallResultReasonPart.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallResultReasonPart.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallResultReasonPart.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallResultReasonPart.Caption = "Where are they";
            this.colOverallResultReasonPart.ColumnEdit = this.repositoryItemCheckedComboBoxEdit_WhichPart;
            this.colOverallResultReasonPart.FieldName = "OverallResultReasonPart";
            this.colOverallResultReasonPart.Name = "colOverallResultReasonPart";
            this.colOverallResultReasonPart.Visible = true;
            this.colOverallResultReasonPart.Width = 82;
            // 
            // repositoryItemCheckedComboBoxEdit_WhichPart
            // 
            this.repositoryItemCheckedComboBoxEdit_WhichPart.AutoHeight = false;
            this.repositoryItemCheckedComboBoxEdit_WhichPart.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemCheckedComboBoxEdit_WhichPart.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("PI"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("PII"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("PIII"),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("All Part")});
            this.repositoryItemCheckedComboBoxEdit_WhichPart.Name = "repositoryItemCheckedComboBoxEdit_WhichPart";
            this.repositoryItemCheckedComboBoxEdit_WhichPart.ParseEditValue += new DevExpress.XtraEditors.Controls.ConvertEditValueEventHandler(this.repositoryItemCheckedComboBoxEdit_WhichPart_ParseEditValue);
            // 
            // colOverallResultCoreDefecName
            // 
            this.colOverallResultCoreDefecName.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallResultCoreDefecName.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallResultCoreDefecName.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallResultCoreDefecName.Caption = "Core reasons of all PART\r\n- D2 shows reason of level 2 only";
            this.colOverallResultCoreDefecName.ColumnEdit = this.repositoryItemButtonEdit_OverallResultCoreDefectReason;
            this.colOverallResultCoreDefecName.FieldName = "OverallResultCoreDefecName";
            this.colOverallResultCoreDefecName.Name = "colOverallResultCoreDefecName";
            this.colOverallResultCoreDefecName.Visible = true;
            this.colOverallResultCoreDefecName.Width = 234;
            // 
            // repositoryItemButtonEdit_OverallResultCoreDefectReason
            // 
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason.AutoHeight = false;
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason.Name = "repositoryItemButtonEdit_OverallResultCoreDefectReason";
            this.repositoryItemButtonEdit_OverallResultCoreDefectReason.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_OverallResultCoreDefectReason_ButtonClick);
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridColumn1.AppearanceHeader.Options.UseBackColor = true;
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn1.Caption = "Core reasons of all PART\r\n- D2 shows reason of level 2 only ";
            this.gridColumn1.ColumnEdit = this.repositoryItemButtonEdit_OverallFailReason;
            this.gridColumn1.FieldName = "Insp_Result_Reason";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Width = 405;
            // 
            // gridBand50
            // 
            this.gridBand50.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand50.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand50.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand50.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand50.Caption = "OVERALL Claim **";
            this.gridBand50.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand27,
            this.gridBand28});
            this.gridBand50.MinWidth = 20;
            this.gridBand50.Name = "gridBand50";
            this.gridBand50.RowCount = 2;
            this.gridBand50.Width = 318;
            // 
            // gridBand27
            // 
            this.gridBand27.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand27.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand27.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand27.Caption = "Proposal";
            this.gridBand27.Columns.Add(this.colOverallNature);
            this.gridBand27.Columns.Add(this.colOverAllClaimLength);
            this.gridBand27.MinWidth = 20;
            this.gridBand27.Name = "gridBand27";
            this.gridBand27.Width = 130;
            // 
            // colOverallNature
            // 
            this.colOverallNature.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallNature.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallNature.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallNature.Caption = "OverallNature";
            this.colOverallNature.ColumnEdit = this.repositoryItemComboBox_Nature;
            this.colOverallNature.FieldName = "OverallNature";
            this.colOverallNature.Name = "colOverallNature";
            this.colOverallNature.Visible = true;
            this.colOverallNature.Width = 59;
            // 
            // colOverAllClaimLength
            // 
            this.colOverAllClaimLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colOverAllClaimLength.AppearanceHeader.Options.UseBackColor = true;
            this.colOverAllClaimLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverAllClaimLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverAllClaimLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverAllClaimLength.Caption = "Proposal";
            this.colOverAllClaimLength.ColumnEdit = this.repositoryItemSpinEdit_n2;
            this.colOverAllClaimLength.DisplayFormat.FormatString = "n2";
            this.colOverAllClaimLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOverAllClaimLength.FieldName = "OverAllClaimLength";
            this.colOverAllClaimLength.Name = "colOverAllClaimLength";
            this.colOverAllClaimLength.OptionsColumn.AllowEdit = false;
            this.colOverAllClaimLength.Visible = true;
            this.colOverAllClaimLength.Width = 71;
            // 
            // gridBand28
            // 
            this.gridBand28.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand28.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand28.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand28.Caption = "Agreed";
            this.gridBand28.Columns.Add(this.colOverallClaimQtyAgreed);
            this.gridBand28.Columns.Add(this.colOverallClaimPercent);
            this.gridBand28.Columns.Add(this.Columns_Insp_Confirm);
            this.gridBand28.MinWidth = 20;
            this.gridBand28.Name = "gridBand28";
            this.gridBand28.Width = 188;
            // 
            // colOverallClaimQtyAgreed
            // 
            this.colOverallClaimQtyAgreed.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colOverallClaimQtyAgreed.AppearanceHeader.Options.UseBackColor = true;
            this.colOverallClaimQtyAgreed.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallClaimQtyAgreed.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallClaimQtyAgreed.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallClaimQtyAgreed.Caption = "Agreed";
            this.colOverallClaimQtyAgreed.DisplayFormat.FormatString = "n2";
            this.colOverallClaimQtyAgreed.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOverallClaimQtyAgreed.FieldName = "OverallClaimQtyAgreed";
            this.colOverallClaimQtyAgreed.Name = "colOverallClaimQtyAgreed";
            this.colOverallClaimQtyAgreed.Visible = true;
            this.colOverallClaimQtyAgreed.Width = 62;
            // 
            // colOverallClaimPercent
            // 
            this.colOverallClaimPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colOverallClaimPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colOverallClaimPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallClaimPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallClaimPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallClaimPercent.Caption = "%";
            this.colOverallClaimPercent.DisplayFormat.FormatString = "n2";
            this.colOverallClaimPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOverallClaimPercent.FieldName = "OverallClaimPercent";
            this.colOverallClaimPercent.Name = "colOverallClaimPercent";
            this.colOverallClaimPercent.OptionsColumn.AllowEdit = false;
            this.colOverallClaimPercent.Visible = true;
            this.colOverallClaimPercent.Width = 59;
            // 
            // Columns_Insp_Confirm
            // 
            this.Columns_Insp_Confirm.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Insp_Confirm.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Insp_Confirm.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Insp_Confirm.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Insp_Confirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Insp_Confirm.Caption = "Cfmd by";
            this.Columns_Insp_Confirm.FieldName = "Insp_Confirm";
            this.Columns_Insp_Confirm.Name = "Columns_Insp_Confirm";
            this.Columns_Insp_Confirm.Visible = true;
            this.Columns_Insp_Confirm.Width = 67;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Stk-in  Processing";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3,
            this.gridBand95,
            this.gridBand6});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.RowCount = 2;
            this.gridBand1.Width = 239;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand3.Caption = "id Adjust\r\n(+/-)";
            this.gridBand3.Columns.Add(this.colAdjustQty);
            this.gridBand3.Columns.Add(this.colAdjustQtyByLot);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 78;
            // 
            // colAdjustQty
            // 
            this.colAdjustQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colAdjustQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAdjustQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAdjustQty.Caption = "*";
            this.colAdjustQty.DisplayFormat.FormatString = "n2";
            this.colAdjustQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAdjustQty.FieldName = "AdjustQty";
            this.colAdjustQty.Name = "colAdjustQty";
            this.colAdjustQty.OptionsColumn.AllowEdit = false;
            this.colAdjustQty.Visible = true;
            this.colAdjustQty.Width = 39;
            // 
            // colAdjustQtyByLot
            // 
            this.colAdjustQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colAdjustQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAdjustQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAdjustQtyByLot.Caption = "**";
            this.colAdjustQtyByLot.DisplayFormat.FormatString = "n2";
            this.colAdjustQtyByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAdjustQtyByLot.FieldName = "AdjustQtyByLot";
            this.colAdjustQtyByLot.Name = "colAdjustQtyByLot";
            this.colAdjustQtyByLot.OptionsColumn.AllowEdit = false;
            this.colAdjustQtyByLot.Visible = true;
            this.colAdjustQtyByLot.Width = 39;
            // 
            // gridBand95
            // 
            this.gridBand95.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand95.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand95.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand95.Caption = "id Replenish\r\nRequisition (-)";
            this.gridBand95.Columns.Add(this.colReplenishQtyByLot);
            this.gridBand95.Name = "gridBand95";
            this.gridBand95.Width = 90;
            // 
            // colReplenishQtyByLot
            // 
            this.colReplenishQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colReplenishQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colReplenishQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colReplenishQtyByLot.Caption = "**";
            this.colReplenishQtyByLot.DisplayFormat.FormatString = "n2";
            this.colReplenishQtyByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colReplenishQtyByLot.FieldName = "ReplenishQtyByLot";
            this.colReplenishQtyByLot.Name = "colReplenishQtyByLot";
            this.colReplenishQtyByLot.OptionsColumn.AllowEdit = false;
            this.colReplenishQtyByLot.Visible = true;
            this.colReplenishQtyByLot.Width = 90;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand6.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand6.Caption = "id Return\r\n(-)";
            this.gridBand6.Columns.Add(this.colReturnQtyByLot);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 71;
            // 
            // colReturnQtyByLot
            // 
            this.colReturnQtyByLot.AppearanceHeader.Options.UseTextOptions = true;
            this.colReturnQtyByLot.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colReturnQtyByLot.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colReturnQtyByLot.Caption = "**";
            this.colReturnQtyByLot.DisplayFormat.FormatString = "n2";
            this.colReturnQtyByLot.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colReturnQtyByLot.FieldName = "ReturnQtyByLot";
            this.colReturnQtyByLot.Name = "colReturnQtyByLot";
            this.colReturnQtyByLot.OptionsColumn.AllowEdit = false;
            this.colReturnQtyByLot.Visible = true;
            this.colReturnQtyByLot.Width = 71;
            // 
            // gridBand51
            // 
            this.gridBand51.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand51.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand51.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand51.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand51.Caption = "Action log **";
            this.gridBand51.Columns.Add(this.colMissingAudit);
            this.gridBand51.Columns.Add(this.colActionLogIsCompleted);
            this.gridBand51.MinWidth = 20;
            this.gridBand51.Name = "gridBand51";
            this.gridBand51.Width = 128;
            // 
            // colMissingAudit
            // 
            this.colMissingAudit.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colMissingAudit.AppearanceHeader.Options.UseBackColor = true;
            this.colMissingAudit.AppearanceHeader.Options.UseTextOptions = true;
            this.colMissingAudit.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMissingAudit.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colMissingAudit.Caption = "Seq#";
            this.colMissingAudit.ColumnEdit = this.repositoryItemButtonEdit_ActionLog;
            this.colMissingAudit.FieldName = "MissingAudit";
            this.colMissingAudit.Name = "colMissingAudit";
            this.colMissingAudit.Visible = true;
            this.colMissingAudit.Width = 69;
            // 
            // colActionLogIsCompleted
            // 
            this.colActionLogIsCompleted.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colActionLogIsCompleted.AppearanceHeader.Options.UseBackColor = true;
            this.colActionLogIsCompleted.AppearanceHeader.Options.UseTextOptions = true;
            this.colActionLogIsCompleted.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colActionLogIsCompleted.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colActionLogIsCompleted.Caption = "Comp? \r\n(Y/N)";
            this.colActionLogIsCompleted.FieldName = "ActionLogIsCompleted";
            this.colActionLogIsCompleted.Name = "colActionLogIsCompleted";
            this.colActionLogIsCompleted.OptionsColumn.AllowEdit = false;
            this.colActionLogIsCompleted.Visible = true;
            this.colActionLogIsCompleted.Width = 59;
            // 
            // gridBand100
            // 
            this.gridBand100.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand100.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand100.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand100.Caption = "Status";
            this.gridBand100.Columns.Add(this.colStatus);
            this.gridBand100.Columns.Add(this.colStep2RegularLossWidth);
            this.gridBand100.Name = "gridBand100";
            this.gridBand100.Width = 75;
            // 
            // colStatus
            // 
            this.colStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.colStatus.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStatus.Caption = "**";
            this.colStatus.ColumnEdit = this.repositoryItemComboBox_Status;
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            // 
            // repositoryItemComboBox_Status
            // 
            this.repositoryItemComboBox_Status.AutoHeight = false;
            this.repositoryItemComboBox_Status.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_Status.Items.AddRange(new object[] {
            "WIP",
            "Completed"});
            this.repositoryItemComboBox_Status.Name = "repositoryItemComboBox_Status";
            // 
            // colStep2RegularLossWidth
            // 
            this.colStep2RegularLossWidth.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2RegularLossWidth.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2RegularLossWidth.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2RegularLossWidth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2RegularLossWidth.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2RegularLossWidth.Caption = "Step2 Regular Loss Width";
            this.colStep2RegularLossWidth.FieldName = "Step2RegularLossWidth";
            this.colStep2RegularLossWidth.Name = "colStep2RegularLossWidth";
            this.colStep2RegularLossWidth.OptionsColumn.AllowEdit = false;
            this.colStep2RegularLossWidth.Width = 135;
            // 
            // Columns_System_NO
            // 
            this.Columns_System_NO.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_System_NO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_System_NO.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_System_NO.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_System_NO.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_System_NO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_System_NO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_System_NO.Caption = "System No";
            this.Columns_System_NO.FieldName = "System_Install_No";
            this.Columns_System_NO.Name = "Columns_System_NO";
            this.Columns_System_NO.OptionsColumn.AllowEdit = false;
            this.Columns_System_NO.Width = 63;
            // 
            // Columns_Item_NO
            // 
            this.Columns_Item_NO.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Item_NO.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Item_NO.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Item_NO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Item_NO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Item_NO.Caption = "Item/Clr Cde";
            this.Columns_Item_NO.FieldName = "Item_No";
            this.Columns_Item_NO.Name = "Columns_Item_NO";
            this.Columns_Item_NO.OptionsColumn.AllowEdit = false;
            this.Columns_Item_NO.Width = 90;
            // 
            // Columns_Spread_Defect_Exist
            // 
            this.Columns_Spread_Defect_Exist.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_Spread_Defect_Exist.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Spread_Defect_Exist.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Spread_Defect_Exist.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Spread_Defect_Exist.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Spread_Defect_Exist.Caption = "Defect\r\nNature";
            this.Columns_Spread_Defect_Exist.FieldName = "Spread_Defect_Exist";
            this.Columns_Spread_Defect_Exist.Name = "Columns_Spread_Defect_Exist";
            this.Columns_Spread_Defect_Exist.OptionsColumn.AllowEdit = false;
            this.Columns_Spread_Defect_Exist.Width = 55;
            // 
            // Columns_Spread_Proc_Status
            // 
            this.Columns_Spread_Proc_Status.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Spread_Proc_Status.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Spread_Proc_Status.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Spread_Proc_Status.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Spread_Proc_Status.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Spread_Proc_Status.Caption = "Defect Result";
            this.Columns_Spread_Proc_Status.ColumnEdit = this.riImageCbOK_Deduce_Rejct;
            this.Columns_Spread_Proc_Status.FieldName = "Spread_Insp_Result";
            this.Columns_Spread_Proc_Status.Name = "Columns_Spread_Proc_Status";
            this.Columns_Spread_Proc_Status.Width = 77;
            // 
            // Columns_Special_Marker
            // 
            this.Columns_Special_Marker.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Special_Marker.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Special_Marker.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Special_Marker.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Special_Marker.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Special_Marker.Caption = "dl) Evade Marker Loss%";
            this.Columns_Special_Marker.ColumnEdit = this.repositoryItemSpinEdit1;
            this.Columns_Special_Marker.FieldName = "Special_Marker";
            this.Columns_Special_Marker.Name = "Columns_Special_Marker";
            this.Columns_Special_Marker.OptionsColumn.AllowEdit = false;
            this.Columns_Special_Marker.Width = 128;
            // 
            // Columns_Spread_Remark
            // 
            this.Columns_Spread_Remark.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Spread_Remark.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Spread_Remark.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Spread_Remark.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Spread_Remark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Spread_Remark.Caption = "Defect Remark";
            this.Columns_Spread_Remark.ColumnEdit = this.riMemoExEdit1;
            this.Columns_Spread_Remark.FieldName = "Spread_Remark";
            this.Columns_Spread_Remark.Name = "Columns_Spread_Remark";
            this.Columns_Spread_Remark.Width = 83;
            // 
            // Columns_Mould_Proc_Status
            // 
            this.Columns_Mould_Proc_Status.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Mould_Proc_Status.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Mould_Proc_Status.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Mould_Proc_Status.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Mould_Proc_Status.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Mould_Proc_Status.Caption = "Mould Proc Status";
            this.Columns_Mould_Proc_Status.ColumnEdit = this.riImageCbOk_Rejct_NoMouldTrial;
            this.Columns_Mould_Proc_Status.FieldName = "Mould_Trial_Result";
            this.Columns_Mould_Proc_Status.Name = "Columns_Mould_Proc_Status";
            this.Columns_Mould_Proc_Status.Width = 98;
            // 
            // Columns_Mould_Remark
            // 
            this.Columns_Mould_Remark.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Mould_Remark.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Mould_Remark.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Mould_Remark.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Mould_Remark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Mould_Remark.Caption = "Mould Remark";
            this.Columns_Mould_Remark.ColumnEdit = this.riMemoExEdit1;
            this.Columns_Mould_Remark.FieldName = "Mould_Trial_Remark";
            this.Columns_Mould_Remark.Name = "Columns_Mould_Remark";
            this.Columns_Mould_Remark.Width = 79;
            // 
            // Columns_MouldTrialSolution1
            // 
            this.Columns_MouldTrialSolution1.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_MouldTrialSolution1.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_MouldTrialSolution1.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_MouldTrialSolution1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_MouldTrialSolution1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_MouldTrialSolution1.Caption = "Mould Trial Solution1";
            this.Columns_MouldTrialSolution1.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_MouldTrialSolution1.FieldName = "MouldTrialSolution1";
            this.Columns_MouldTrialSolution1.Name = "Columns_MouldTrialSolution1";
            this.Columns_MouldTrialSolution1.Width = 110;
            // 
            // Columns_MouldTrialSolution2
            // 
            this.Columns_MouldTrialSolution2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_MouldTrialSolution2.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_MouldTrialSolution2.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_MouldTrialSolution2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_MouldTrialSolution2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_MouldTrialSolution2.Caption = "Mould Trial Solution2";
            this.Columns_MouldTrialSolution2.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_MouldTrialSolution2.FieldName = "MouldTrialSolution2";
            this.Columns_MouldTrialSolution2.Name = "Columns_MouldTrialSolution2";
            this.Columns_MouldTrialSolution2.Width = 110;
            // 
            // Columns_WeftYarn
            // 
            this.Columns_WeftYarn.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarn.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarn.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarn.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarn.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarn.Caption = "Weft Yarn(Y/N)";
            this.Columns_WeftYarn.FieldName = "WeftYarn";
            this.Columns_WeftYarn.Name = "Columns_WeftYarn";
            this.Columns_WeftYarn.OptionsColumn.AllowEdit = false;
            this.Columns_WeftYarn.Width = 86;
            // 
            // Columns_WeftYarnClass
            // 
            this.Columns_WeftYarnClass.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarnClass.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnClass.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnClass.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnClass.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnClass.Caption = "Weft Yarn Class";
            this.Columns_WeftYarnClass.FieldName = "WeftYarnClass";
            this.Columns_WeftYarnClass.Name = "Columns_WeftYarnClass";
            this.Columns_WeftYarnClass.OptionsColumn.AllowEdit = false;
            this.Columns_WeftYarnClass.Width = 89;
            // 
            // Columns_WeftYarnPercentage
            // 
            this.Columns_WeftYarnPercentage.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarnPercentage.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnPercentage.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnPercentage.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnPercentage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnPercentage.Caption = "Weft Yarn %";
            this.Columns_WeftYarnPercentage.FieldName = "WeftYarnPercentage";
            this.Columns_WeftYarnPercentage.Name = "Columns_WeftYarnPercentage";
            this.Columns_WeftYarnPercentage.OptionsColumn.AllowEdit = false;
            // 
            // Columns_WeftYarnWastage
            // 
            this.Columns_WeftYarnWastage.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarnWastage.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnWastage.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnWastage.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnWastage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnWastage.Caption = "Weft Yarn Wast%";
            this.Columns_WeftYarnWastage.FieldName = "WeftYarnWastage";
            this.Columns_WeftYarnWastage.Name = "Columns_WeftYarnWastage";
            this.Columns_WeftYarnWastage.Width = 100;
            // 
            // Columns_WeftYarnStatus
            // 
            this.Columns_WeftYarnStatus.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarnStatus.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnStatus.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnStatus.Caption = "Weft Yarn Status";
            this.Columns_WeftYarnStatus.ColumnEdit = this.riImageCbOk_Rejct_NoWeftYarn;
            this.Columns_WeftYarnStatus.FieldName = "WeftYarnStatus";
            this.Columns_WeftYarnStatus.Name = "Columns_WeftYarnStatus";
            this.Columns_WeftYarnStatus.Width = 95;
            // 
            // Columns_WeftYarnSolution1
            // 
            this.Columns_WeftYarnSolution1.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_WeftYarnSolution1.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnSolution1.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnSolution1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnSolution1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnSolution1.Caption = "Weft Yarn Solution1";
            this.Columns_WeftYarnSolution1.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_WeftYarnSolution1.FieldName = "WeftYarnSolution1";
            this.Columns_WeftYarnSolution1.Name = "Columns_WeftYarnSolution1";
            this.Columns_WeftYarnSolution1.Width = 108;
            // 
            // Columns_WeftYarnSolution2
            // 
            this.Columns_WeftYarnSolution2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.Columns_WeftYarnSolution2.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_WeftYarnSolution2.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_WeftYarnSolution2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_WeftYarnSolution2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_WeftYarnSolution2.Caption = "Fail Solution \r\n*";
            this.Columns_WeftYarnSolution2.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_WeftYarnSolution2.FieldName = "WeftYarnSolution2";
            this.Columns_WeftYarnSolution2.Name = "Columns_WeftYarnSolution2";
            this.Columns_WeftYarnSolution2.Width = 94;
            // 
            // Columns_ElongationWarpResult
            // 
            this.Columns_ElongationWarpResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_ElongationWarpResult.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_ElongationWarpResult.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_ElongationWarpResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_ElongationWarpResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_ElongationWarpResult.Caption = "Elongation Warp Result";
            this.Columns_ElongationWarpResult.FieldName = "ElongationWarpResult";
            this.Columns_ElongationWarpResult.Name = "Columns_ElongationWarpResult";
            this.Columns_ElongationWarpResult.Width = 124;
            // 
            // Columns_ElongationWeftResult
            // 
            this.Columns_ElongationWeftResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_ElongationWeftResult.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_ElongationWeftResult.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_ElongationWeftResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_ElongationWeftResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_ElongationWeftResult.Caption = "Elongation Weft Result";
            this.Columns_ElongationWeftResult.FieldName = "ElongationWeftResult";
            this.Columns_ElongationWeftResult.Name = "Columns_ElongationWeftResult";
            this.Columns_ElongationWeftResult.Width = 122;
            // 
            // Columns_ElongationStatus
            // 
            this.Columns_ElongationStatus.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_ElongationStatus.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_ElongationStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_ElongationStatus.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_ElongationStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_ElongationStatus.Caption = "Elongation Status";
            this.Columns_ElongationStatus.ColumnEdit = this.riImageCbOk_Rejct_NoElongation;
            this.Columns_ElongationStatus.FieldName = "ElongationStatus";
            this.Columns_ElongationStatus.Name = "Columns_ElongationStatus";
            this.Columns_ElongationStatus.Width = 96;
            // 
            // Columns_ElongationSolution1
            // 
            this.Columns_ElongationSolution1.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_ElongationSolution1.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_ElongationSolution1.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_ElongationSolution1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_ElongationSolution1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_ElongationSolution1.Caption = "Elongation Solution1";
            this.Columns_ElongationSolution1.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_ElongationSolution1.FieldName = "ElongationSolution1";
            this.Columns_ElongationSolution1.Name = "Columns_ElongationSolution1";
            this.Columns_ElongationSolution1.Width = 109;
            // 
            // Columns_ElongationSolution2
            // 
            this.Columns_ElongationSolution2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_ElongationSolution2.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_ElongationSolution2.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_ElongationSolution2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_ElongationSolution2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_ElongationSolution2.Caption = "Elongation Solution2";
            this.Columns_ElongationSolution2.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.Columns_ElongationSolution2.FieldName = "ElongationSolution2";
            this.Columns_ElongationSolution2.Name = "Columns_ElongationSolution2";
            this.Columns_ElongationSolution2.Width = 109;
            // 
            // Columns_Total_Points
            // 
            this.Columns_Total_Points.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Total_Points.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Total_Points.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Total_Points.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Total_Points.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Total_Points.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Total_Points.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Total_Points.Caption = "dc) Defect Ttl Pts *";
            this.Columns_Total_Points.FieldName = "Total_Points";
            this.Columns_Total_Points.Name = "Columns_Total_Points";
            this.Columns_Total_Points.OptionsColumn.AllowEdit = false;
            this.Columns_Total_Points.Width = 104;
            // 
            // Columns_Company
            // 
            this.Columns_Company.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Company.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Company.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Company.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Company.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Company.Caption = "Co.";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.OptionsColumn.AllowEdit = false;
            this.Columns_Company.Width = 29;
            // 
            // Columns_Item_Description
            // 
            this.Columns_Item_Description.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Item_Description.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Item_Description.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Item_Description.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Item_Description.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Item_Description.Caption = "Supp Item Ref/Clr Name";
            this.Columns_Item_Description.FieldName = "Item_Desc";
            this.Columns_Item_Description.Name = "Columns_Item_Description";
            this.Columns_Item_Description.Width = 161;
            // 
            // Columns_Potions_Hundred_Sqm
            // 
            this.Columns_Potions_Hundred_Sqm.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Potions_Hundred_Sqm.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Potions_Hundred_Sqm.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Potions_Hundred_Sqm.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Potions_Hundred_Sqm.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Potions_Hundred_Sqm.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Potions_Hundred_Sqm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Potions_Hundred_Sqm.Caption = "dd) \r\nPts/\r\n100m2\r\n*\r\n(Pass Pts)";
            this.Columns_Potions_Hundred_Sqm.DisplayFormat.FormatString = "#0";
            this.Columns_Potions_Hundred_Sqm.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Potions_Hundred_Sqm.FieldName = "Points_Hundred_SQM";
            this.Columns_Potions_Hundred_Sqm.Name = "Columns_Potions_Hundred_Sqm";
            this.Columns_Potions_Hundred_Sqm.OptionsColumn.AllowEdit = false;
            this.Columns_Potions_Hundred_Sqm.Width = 60;
            // 
            // Columns_Deductive_Qty
            // 
            this.Columns_Deductive_Qty.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Deductive_Qty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Deductive_Qty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Deductive_Qty.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Deductive_Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Deductive_Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Deductive_Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Deductive_Qty.Caption = "Deductive Qty";
            this.Columns_Deductive_Qty.DisplayFormat.FormatString = "n2";
            this.Columns_Deductive_Qty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Deductive_Qty.FieldName = "Deductive_Qty";
            this.Columns_Deductive_Qty.Name = "Columns_Deductive_Qty";
            this.Columns_Deductive_Qty.OptionsColumn.AllowEdit = false;
            this.Columns_Deductive_Qty.Width = 57;
            // 
            // Columns_Wastage
            // 
            this.Columns_Wastage.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Wastage.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Wastage.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Wastage.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Wastage.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Wastage.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Wastage.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Wastage.Caption = "di) Std Loss% **";
            this.Columns_Wastage.DisplayFormat.FormatString = "p";
            this.Columns_Wastage.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Wastage.FieldName = "Wastage";
            this.Columns_Wastage.Name = "Columns_Wastage";
            this.Columns_Wastage.OptionsColumn.AllowEdit = false;
            this.Columns_Wastage.Width = 93;
            // 
            // Columns_Panel_Size1
            // 
            this.Columns_Panel_Size1.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Panel_Size1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Panel_Size1.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Panel_Size1.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Panel_Size1.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Panel_Size1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Panel_Size1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Panel_Size1.Caption = "(L) \r\nlevel 2\r\nmeas.";
            this.Columns_Panel_Size1.DisplayFormat.FormatString = "n2";
            this.Columns_Panel_Size1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Panel_Size1.FieldName = "Panel_Size1";
            this.Columns_Panel_Size1.Name = "Columns_Panel_Size1";
            this.Columns_Panel_Size1.OptionsColumn.AllowEdit = false;
            this.Columns_Panel_Size1.Width = 101;
            // 
            // Columns_Panel_Size2
            // 
            this.Columns_Panel_Size2.AppearanceCell.Options.UseTextOptions = true;
            this.Columns_Panel_Size2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.Columns_Panel_Size2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Panel_Size2.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Panel_Size2.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Panel_Size2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Panel_Size2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Panel_Size2.Caption = "(W)";
            this.Columns_Panel_Size2.DisplayFormat.FormatString = "n2";
            this.Columns_Panel_Size2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Panel_Size2.FieldName = "Panel_Size2";
            this.Columns_Panel_Size2.Name = "Columns_Panel_Size2";
            this.Columns_Panel_Size2.OptionsColumn.AllowEdit = false;
            this.Columns_Panel_Size2.Width = 108;
            // 
            // Columns_LightStatus
            // 
            this.Columns_LightStatus.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_LightStatus.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_LightStatus.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_LightStatus.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_LightStatus.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_LightStatus.Caption = "Light Source";
            this.Columns_LightStatus.FieldName = "LightStatus";
            this.Columns_LightStatus.Name = "Columns_LightStatus";
            this.Columns_LightStatus.OptionsColumn.AllowEdit = false;
            this.Columns_LightStatus.Width = 120;
            // 
            // Columns_Change_Date
            // 
            this.Columns_Change_Date.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.Columns_Change_Date.AppearanceHeader.Options.UseBackColor = true;
            this.Columns_Change_Date.AppearanceHeader.Options.UseTextOptions = true;
            this.Columns_Change_Date.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.Columns_Change_Date.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Columns_Change_Date.Caption = "Inspect End Date";
            this.Columns_Change_Date.ColumnEdit = this.repositoryItemDateEdit;
            this.Columns_Change_Date.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.Columns_Change_Date.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.Columns_Change_Date.FieldName = "Change_Date";
            this.Columns_Change_Date.Name = "Columns_Change_Date";
            this.Columns_Change_Date.Width = 95;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.gridColumn2.AppearanceHeader.Options.UseBackColor = true;
            this.gridColumn2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridColumn2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn2.Caption = "Color_Group_Status";
            this.gridColumn2.FieldName = "Color_Group_Status";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Width = 196;
            // 
            // colAgreedByCutting
            // 
            this.colAgreedByCutting.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colAgreedByCutting.AppearanceHeader.Options.UseBackColor = true;
            this.colAgreedByCutting.AppearanceHeader.Options.UseTextOptions = true;
            this.colAgreedByCutting.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAgreedByCutting.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAgreedByCutting.Caption = "dn) Cfmd by Cutting";
            this.colAgreedByCutting.FieldName = "AgreedByCutting";
            this.colAgreedByCutting.Name = "colAgreedByCutting";
            this.colAgreedByCutting.Width = 109;
            // 
            // colSz3
            // 
            this.colSz3.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colSz3.AppearanceHeader.Options.UseBackColor = true;
            this.colSz3.AppearanceHeader.Options.UseTextOptions = true;
            this.colSz3.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSz3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSz3.Caption = "dh) Block meas. (Sq)";
            this.colSz3.DisplayFormat.FormatString = "n2";
            this.colSz3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSz3.FieldName = "ShowSize3";
            this.colSz3.Name = "colSz3";
            this.colSz3.OptionsColumn.AllowEdit = false;
            this.colSz3.Width = 110;
            // 
            // colScoreGrpQty
            // 
            this.colScoreGrpQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colScoreGrpQty.AppearanceHeader.Options.UseBackColor = true;
            this.colScoreGrpQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colScoreGrpQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colScoreGrpQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colScoreGrpQty.Caption = "Score Grp Qty";
            this.colScoreGrpQty.FieldName = "ShowScoreGrpQty";
            this.colScoreGrpQty.Name = "colScoreGrpQty";
            this.colScoreGrpQty.OptionsColumn.AllowEdit = false;
            this.colScoreGrpQty.Width = 80;
            // 
            // colRegularLossLength
            // 
            this.colRegularLossLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colRegularLossLength.AppearanceHeader.Options.UseBackColor = true;
            this.colRegularLossLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colRegularLossLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRegularLossLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRegularLossLength.Caption = "dp) CLAIM C.D. Qty by id";
            this.colRegularLossLength.DisplayFormat.FormatString = "n2";
            this.colRegularLossLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colRegularLossLength.FieldName = "RegularLossLength";
            this.colRegularLossLength.Name = "colRegularLossLength";
            this.colRegularLossLength.OptionsColumn.AllowEdit = false;
            this.colRegularLossLength.Width = 134;
            // 
            // colShortLengthPercent
            // 
            this.colShortLengthPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colShortLengthPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colShortLengthPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colShortLengthPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colShortLengthPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colShortLengthPercent.Caption = "Short Length %";
            this.colShortLengthPercent.FieldName = "ShortLengthPercent";
            this.colShortLengthPercent.Name = "colShortLengthPercent";
            this.colShortLengthPercent.OptionsColumn.AllowEdit = false;
            this.colShortLengthPercent.Width = 88;
            // 
            // colShortWidthPercent
            // 
            this.colShortWidthPercent.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colShortWidthPercent.AppearanceHeader.Options.UseBackColor = true;
            this.colShortWidthPercent.AppearanceHeader.Options.UseTextOptions = true;
            this.colShortWidthPercent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colShortWidthPercent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colShortWidthPercent.Caption = "Short Width %";
            this.colShortWidthPercent.FieldName = "ShortWidthPercent";
            this.colShortWidthPercent.Name = "colShortWidthPercent";
            this.colShortWidthPercent.OptionsColumn.AllowEdit = false;
            this.colShortWidthPercent.Width = 83;
            // 
            // colOverallRemark
            // 
            this.colOverallRemark.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOverallRemark.AppearanceHeader.Options.UseBackColor = true;
            this.colOverallRemark.AppearanceHeader.Options.UseTextOptions = true;
            this.colOverallRemark.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOverallRemark.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOverallRemark.Caption = "zd) Remark";
            this.colOverallRemark.ColumnEdit = this.riMemoExEdit1;
            this.colOverallRemark.FieldName = "OverallRemark";
            this.colOverallRemark.Name = "colOverallRemark";
            this.colOverallRemark.Width = 66;
            // 
            // colRegularDefectResult
            // 
            this.colRegularDefectResult.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colRegularDefectResult.AppearanceHeader.Options.UseBackColor = true;
            this.colRegularDefectResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colRegularDefectResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRegularDefectResult.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRegularDefectResult.Caption = "Do) id C.D. RESULT";
            this.colRegularDefectResult.ColumnEdit = this.repositoryItemComboBox_IDRegularResult;
            this.colRegularDefectResult.FieldName = "RegularDefectResult";
            this.colRegularDefectResult.Name = "colRegularDefectResult";
            this.colRegularDefectResult.Width = 105;
            // 
            // colColorNameShow
            // 
            this.colColorNameShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colColorNameShow.AppearanceHeader.Options.UseBackColor = true;
            this.colColorNameShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorNameShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorNameShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorNameShow.Caption = "Clr Name";
            this.colColorNameShow.FieldName = "ColorName";
            this.colColorNameShow.Name = "colColorNameShow";
            this.colColorNameShow.Width = 64;
            // 
            // colRollQtyByBatch
            // 
            this.colRollQtyByBatch.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colRollQtyByBatch.AppearanceHeader.Options.UseBackColor = true;
            this.colRollQtyByBatch.AppearanceHeader.Options.UseTextOptions = true;
            this.colRollQtyByBatch.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRollQtyByBatch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRollQtyByBatch.Caption = "Ttl\r\nRoll\r\n+";
            this.colRollQtyByBatch.FieldName = "RollQtyByBatch";
            this.colRollQtyByBatch.Name = "colRollQtyByBatch";
            this.colRollQtyByBatch.OptionsColumn.AllowEdit = false;
            this.colRollQtyByBatch.Width = 40;
            // 
            // colClaimIrregularDefectQtyFullShow
            // 
            this.colClaimIrregularDefectQtyFullShow.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colClaimIrregularDefectQtyFullShow.AppearanceHeader.Options.UseBackColor = true;
            this.colClaimIrregularDefectQtyFullShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colClaimIrregularDefectQtyFullShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colClaimIrregularDefectQtyFullShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colClaimIrregularDefectQtyFullShow.Caption = "dk.f) CLAIM Ir.D. Qty vs Full audit";
            this.colClaimIrregularDefectQtyFullShow.FieldName = "ClaimIrregularDefectQtyFullShow";
            this.colClaimIrregularDefectQtyFullShow.Name = "colClaimIrregularDefectQtyFullShow";
            this.colClaimIrregularDefectQtyFullShow.OptionsColumn.AllowEdit = false;
            this.colClaimIrregularDefectQtyFullShow.Width = 176;
            // 
            // colClaimIrregularDefectQtyAQL
            // 
            this.colClaimIrregularDefectQtyAQL.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colClaimIrregularDefectQtyAQL.AppearanceHeader.Options.UseBackColor = true;
            this.colClaimIrregularDefectQtyAQL.AppearanceHeader.Options.UseTextOptions = true;
            this.colClaimIrregularDefectQtyAQL.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colClaimIrregularDefectQtyAQL.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colClaimIrregularDefectQtyAQL.Caption = "dk.a) CLAIM Ir.D. Qty vs AQL audit";
            this.colClaimIrregularDefectQtyAQL.FieldName = "ClaimIrregularDefectQtyAQL";
            this.colClaimIrregularDefectQtyAQL.Name = "colClaimIrregularDefectQtyAQL";
            this.colClaimIrregularDefectQtyAQL.OptionsColumn.AllowEdit = false;
            this.colClaimIrregularDefectQtyAQL.Width = 182;
            // 
            // colStandardWeightGmSqm
            // 
            this.colStandardWeightGmSqm.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStandardWeightGmSqm.AppearanceHeader.Options.UseBackColor = true;
            this.colStandardWeightGmSqm.AppearanceHeader.Options.UseTextOptions = true;
            this.colStandardWeightGmSqm.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStandardWeightGmSqm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStandardWeightGmSqm.Caption = "Standard Weight GmSqm";
            this.colStandardWeightGmSqm.DisplayFormat.FormatString = "n2";
            this.colStandardWeightGmSqm.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStandardWeightGmSqm.FieldName = "StandardWeightGmSqm";
            this.colStandardWeightGmSqm.Name = "colStandardWeightGmSqm";
            this.colStandardWeightGmSqm.OptionsColumn.AllowEdit = false;
            this.colStandardWeightGmSqm.Width = 131;
            // 
            // colStandardWeightGmSqmMax
            // 
            this.colStandardWeightGmSqmMax.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStandardWeightGmSqmMax.AppearanceHeader.Options.UseBackColor = true;
            this.colStandardWeightGmSqmMax.AppearanceHeader.Options.UseTextOptions = true;
            this.colStandardWeightGmSqmMax.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStandardWeightGmSqmMax.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStandardWeightGmSqmMax.Caption = "Standard Weight GmSqm Max";
            this.colStandardWeightGmSqmMax.DisplayFormat.FormatString = "n2";
            this.colStandardWeightGmSqmMax.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStandardWeightGmSqmMax.FieldName = "StandardWeightGmSqmMax";
            this.colStandardWeightGmSqmMax.Name = "colStandardWeightGmSqmMax";
            this.colStandardWeightGmSqmMax.OptionsColumn.AllowEdit = false;
            this.colStandardWeightGmSqmMax.Width = 154;
            // 
            // colStandardWeightGmSqmMin
            // 
            this.colStandardWeightGmSqmMin.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStandardWeightGmSqmMin.AppearanceHeader.Options.UseBackColor = true;
            this.colStandardWeightGmSqmMin.AppearanceHeader.Options.UseTextOptions = true;
            this.colStandardWeightGmSqmMin.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStandardWeightGmSqmMin.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStandardWeightGmSqmMin.Caption = "Standard Weight GmSqm Min";
            this.colStandardWeightGmSqmMin.DisplayFormat.FormatString = "n2";
            this.colStandardWeightGmSqmMin.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStandardWeightGmSqmMin.FieldName = "StandardWeightGmSqmMin";
            this.colStandardWeightGmSqmMin.Name = "colStandardWeightGmSqmMin";
            this.colStandardWeightGmSqmMin.OptionsColumn.AllowEdit = false;
            this.colStandardWeightGmSqmMin.Width = 150;
            // 
            // colStandardWeightGmSqmS
            // 
            this.colStandardWeightGmSqmS.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStandardWeightGmSqmS.AppearanceHeader.Options.UseBackColor = true;
            this.colStandardWeightGmSqmS.AppearanceHeader.Options.UseTextOptions = true;
            this.colStandardWeightGmSqmS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStandardWeightGmSqmS.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStandardWeightGmSqmS.Caption = "Standard Weight GmSqm Desc";
            this.colStandardWeightGmSqmS.FieldName = "StandardWeightGmSqmS";
            this.colStandardWeightGmSqmS.Name = "colStandardWeightGmSqmS";
            this.colStandardWeightGmSqmS.OptionsColumn.AllowEdit = false;
            this.colStandardWeightGmSqmS.Width = 157;
            // 
            // colStep1ClaimQtyAQL
            // 
            this.colStep1ClaimQtyAQL.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.colStep1ClaimQtyAQL.AppearanceHeader.Options.UseBackColor = true;
            this.colStep1ClaimQtyAQL.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep1ClaimQtyAQL.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep1ClaimQtyAQL.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep1ClaimQtyAQL.Caption = "dk (AQL) CLAIM D. Qty (excl. pass) **";
            this.colStep1ClaimQtyAQL.DisplayFormat.FormatString = "n2";
            this.colStep1ClaimQtyAQL.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep1ClaimQtyAQL.FieldName = "Step1ClaimQtyAQL";
            this.colStep1ClaimQtyAQL.Name = "colStep1ClaimQtyAQL";
            this.colStep1ClaimQtyAQL.OptionsColumn.AllowEdit = false;
            this.colStep1ClaimQtyAQL.Width = 197;
            // 
            // colStep2ClaimQtyAQL
            // 
            this.colStep2ClaimQtyAQL.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ClaimQtyAQL.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ClaimQtyAQL.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ClaimQtyAQL.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ClaimQtyAQL.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ClaimQtyAQL.Caption = "dki (AQL) CLAIM S.D. Qty (excl. pass) **";
            this.colStep2ClaimQtyAQL.DisplayFormat.FormatString = "n2";
            this.colStep2ClaimQtyAQL.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2ClaimQtyAQL.FieldName = "Step2ClaimQtyAQL";
            this.colStep2ClaimQtyAQL.Name = "colStep2ClaimQtyAQL";
            this.colStep2ClaimQtyAQL.OptionsColumn.AllowEdit = false;
            this.colStep2ClaimQtyAQL.Width = 209;
            // 
            // colStep2ConfirmByCutting
            // 
            this.colStep2ConfirmByCutting.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ConfirmByCutting.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ConfirmByCutting.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ConfirmByCutting.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ConfirmByCutting.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ConfirmByCutting.Caption = "do) Cfmd by Cutting *";
            this.colStep2ConfirmByCutting.FieldName = "Step2ConfirmByCutting";
            this.colStep2ConfirmByCutting.Name = "colStep2ConfirmByCutting";
            this.colStep2ConfirmByCutting.Width = 118;
            // 
            // colStep2ClaimSubTotalQty
            // 
            this.colStep2ClaimSubTotalQty.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ClaimSubTotalQty.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ClaimSubTotalQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ClaimSubTotalQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ClaimSubTotalQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ClaimSubTotalQty.Caption = "dq) CLAIM Accu. Qty (excl. pass) ** (Opt2)";
            this.colStep2ClaimSubTotalQty.DisplayFormat.FormatString = "n2";
            this.colStep2ClaimSubTotalQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStep2ClaimSubTotalQty.FieldName = "Step2ClaimSubTotalQty";
            this.colStep2ClaimSubTotalQty.Name = "colStep2ClaimSubTotalQty";
            this.colStep2ClaimSubTotalQty.OptionsColumn.AllowEdit = false;
            this.colStep2ClaimSubTotalQty.Width = 222;
            // 
            // colStep2ClaimAction
            // 
            this.colStep2ClaimAction.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colStep2ClaimAction.AppearanceHeader.Options.UseBackColor = true;
            this.colStep2ClaimAction.AppearanceHeader.Options.UseTextOptions = true;
            this.colStep2ClaimAction.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStep2ClaimAction.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStep2ClaimAction.Caption = "dr) Claim action (excl. pass) ** (Opt 2)";
            this.colStep2ClaimAction.ColumnEdit = this.repositoryItemComboBox_Step2ClaimAction;
            this.colStep2ClaimAction.FieldName = "Step2ClaimAction";
            this.colStep2ClaimAction.Name = "colStep2ClaimAction";
            this.colStep2ClaimAction.Width = 198;
            // 
            // colOtherOverallResultByBatch
            // 
            this.colOtherOverallResultByBatch.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOtherOverallResultByBatch.AppearanceHeader.Options.UseBackColor = true;
            this.colOtherOverallResultByBatch.AppearanceHeader.Options.UseTextOptions = true;
            this.colOtherOverallResultByBatch.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOtherOverallResultByBatch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOtherOverallResultByBatch.Caption = "Oa (AQL) Other\'s Grp Overall RESULT +";
            this.colOtherOverallResultByBatch.ColumnEdit = this.repositoryItemComboBox_OtherOverallResult;
            this.colOtherOverallResultByBatch.FieldName = "OtherOverallResultByBatch";
            this.colOtherOverallResultByBatch.Name = "colOtherOverallResultByBatch";
            this.colOtherOverallResultByBatch.Width = 203;
            // 
            // colOtherOverAllClaimLength
            // 
            this.colOtherOverAllClaimLength.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOtherOverAllClaimLength.AppearanceHeader.Options.UseBackColor = true;
            this.colOtherOverAllClaimLength.AppearanceHeader.Options.UseTextOptions = true;
            this.colOtherOverAllClaimLength.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOtherOverAllClaimLength.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOtherOverAllClaimLength.Caption = "ob (Full) Other\'s Grp Overall CLAIM *";
            this.colOtherOverAllClaimLength.DisplayFormat.FormatString = "n2";
            this.colOtherOverAllClaimLength.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOtherOverAllClaimLength.FieldName = "OtherOverAllClaimLength";
            this.colOtherOverAllClaimLength.Name = "colOtherOverAllClaimLength";
            this.colOtherOverAllClaimLength.OptionsColumn.AllowEdit = false;
            this.colOtherOverAllClaimLength.Width = 189;
            // 
            // colOtherOverAllClaimLengthByBatch
            // 
            this.colOtherOverAllClaimLengthByBatch.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colOtherOverAllClaimLengthByBatch.AppearanceHeader.Options.UseBackColor = true;
            this.colOtherOverAllClaimLengthByBatch.AppearanceHeader.Options.UseTextOptions = true;
            this.colOtherOverAllClaimLengthByBatch.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colOtherOverAllClaimLengthByBatch.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOtherOverAllClaimLengthByBatch.Caption = "ob (AQL) Other\'s Grp Overall CLAIM +";
            this.colOtherOverAllClaimLengthByBatch.DisplayFormat.FormatString = "n2";
            this.colOtherOverAllClaimLengthByBatch.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colOtherOverAllClaimLengthByBatch.FieldName = "OtherOverAllClaimLengthByBatch";
            this.colOtherOverAllClaimLengthByBatch.Name = "colOtherOverAllClaimLengthByBatch";
            this.colOtherOverAllClaimLengthByBatch.OptionsColumn.AllowEdit = false;
            this.colOtherOverAllClaimLengthByBatch.Width = 195;
            // 
            // colTotalLenghtByLotExcludePass
            // 
            this.colTotalLenghtByLotExcludePass.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(197)))), ((int)(((byte)(217)))), ((int)(((byte)(241)))));
            this.colTotalLenghtByLotExcludePass.AppearanceHeader.Options.UseBackColor = true;
            this.colTotalLenghtByLotExcludePass.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalLenghtByLotExcludePass.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalLenghtByLotExcludePass.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalLenghtByLotExcludePass.Caption = "ljj) Pkg list qty (excl. pass) **";
            this.colTotalLenghtByLotExcludePass.DisplayFormat.FormatString = "n2";
            this.colTotalLenghtByLotExcludePass.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalLenghtByLotExcludePass.FieldName = "TotalLenghtByLotExcludePass";
            this.colTotalLenghtByLotExcludePass.Name = "colTotalLenghtByLotExcludePass";
            this.colTotalLenghtByLotExcludePass.OptionsColumn.AllowEdit = false;
            this.colTotalLenghtByLotExcludePass.Width = 153;
            // 
            // colActionLog1stStageTargetAgreedDate
            // 
            this.colActionLog1stStageTargetAgreedDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colActionLog1stStageTargetAgreedDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colActionLog1stStageTargetAgreedDate.Caption = "1st stage\r\ntarget\r\nagreed\r\ndd";
            this.colActionLog1stStageTargetAgreedDate.DisplayFormat.FormatString = "MM-dd";
            this.colActionLog1stStageTargetAgreedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLog1stStageTargetAgreedDate.FieldName = "ActionLog1stStageTargetAgreedDate";
            this.colActionLog1stStageTargetAgreedDate.Name = "colActionLog1stStageTargetAgreedDate";
            this.colActionLog1stStageTargetAgreedDate.OptionsColumn.AllowEdit = false;
            this.colActionLog1stStageTargetAgreedDate.Width = 74;
            // 
            // colActionLogLastStageTargetCompletedDate
            // 
            this.colActionLogLastStageTargetCompletedDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colActionLogLastStageTargetCompletedDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colActionLogLastStageTargetCompletedDate.Caption = "Last stage\r\ntarget\r\ncompleted\r\ndd";
            this.colActionLogLastStageTargetCompletedDate.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogLastStageTargetCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogLastStageTargetCompletedDate.FieldName = "ActionLogLastStageTargetCompletedDate";
            this.colActionLogLastStageTargetCompletedDate.Name = "colActionLogLastStageTargetCompletedDate";
            this.colActionLogLastStageTargetCompletedDate.OptionsColumn.AllowEdit = false;
            this.colActionLogLastStageTargetCompletedDate.Width = 80;
            // 
            // colFWStartDate
            // 
            this.colFWStartDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colFWStartDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colFWStartDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colFWStartDate.Caption = "FW Start Date";
            this.colFWStartDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFWStartDate.FieldName = "FWStartDate";
            this.colFWStartDate.Name = "colFWStartDate";
            this.colFWStartDate.OptionsColumn.AllowEdit = false;
            // 
            // gridBand55
            // 
            this.gridBand55.Name = "gridBand55";
            // 
            // gridBand37
            // 
            this.gridBand37.Name = "gridBand37";
            // 
            // gridBand88
            // 
            this.gridBand88.Name = "gridBand88";
            // 
            // gridBand78
            // 
            this.gridBand78.Name = "gridBand78";
            // 
            // gridBand35
            // 
            this.gridBand35.Name = "gridBand35";
            // 
            // gridBand36
            // 
            this.gridBand36.Name = "gridBand36";
            // 
            // gridBand34
            // 
            this.gridBand34.Name = "gridBand34";
            // 
            // gridBand58
            // 
            this.gridBand58.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand58.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand58.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand58.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand58.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand58.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand58.Caption = "Audit\r\nQty Sz";
            this.gridBand58.MinWidth = 20;
            this.gridBand58.Name = "gridBand58";
            this.gridBand58.Width = 51;
            // 
            // gridBand59
            // 
            this.gridBand59.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand59.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand59.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand59.AppearanceHeader.Options.UseFont = true;
            this.gridBand59.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand59.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand59.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand59.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand59.Caption = "Tolerance pts\r\nfor result calc. *\r\n(此計分法: 點數x度數= 分數)";
            this.gridBand59.MinWidth = 20;
            this.gridBand59.Name = "gridBand59";
            this.gridBand59.Width = 153;
            // 
            // gridBand9
            // 
            this.gridBand9.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand9.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand9.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand9.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand9.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand9.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand9.Caption = "Part Ia - This paragraph is according to 4 pts system to calc. the claim\r\n(此段依照國際" +
                "四分制計算賠償)";
            this.gridBand9.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand11,
            this.gridBand12,
            this.gridBand13,
            this.gridBand14});
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.RowCount = 2;
            this.gridBand9.Width = 599;
            // 
            // gridBand11
            // 
            this.gridBand11.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand11.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand11.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand11.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand11.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand11.Caption = "Part I - \r\nDefect \r\nRESULT";
            this.gridBand11.MinWidth = 20;
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.RowCount = 3;
            this.gridBand11.Width = 81;
            // 
            // gridBand12
            // 
            this.gridBand12.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand12.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand12.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand12.AppearanceHeader.Options.UseFont = true;
            this.gridBand12.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand12.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand12.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand12.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand12.Caption = "Block Sz for claim calc. **";
            this.gridBand12.MinWidth = 20;
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Width = 92;
            // 
            // gridBand13
            // 
            this.gridBand13.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand13.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand13.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand13.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand13.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand13.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand13.Caption = "Defect Ttl Pts 疵點總分數 *\r\n(has level 1 & 2)";
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Width = 238;
            // 
            // gridBand14
            // 
            this.gridBand14.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand14.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand14.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand14.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand14.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand14.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand14.Caption = "Defect claim**\r\n(Spot + Chain Defect)";
            this.gridBand14.MinWidth = 20;
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Width = 188;
            // 
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand10.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand10.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand10.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand10.Caption = "Part Ib - This paragraph is according to our methods to optimize the claim\r\n(此段依據" +
                "我方的幾種最適合方法計算賠償)";
            this.gridBand10.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand15,
            this.gridBand16,
            this.gridBand17,
            this.gridBand18,
            this.gridBand19,
            this.gridBand60});
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.RowCount = 2;
            this.gridBand10.Width = 1279;
            // 
            // gridBand15
            // 
            this.gridBand15.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand15.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand15.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand15.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand15.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand15.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand15.Caption = "Optimal\r\nClaim?";
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Width = 52;
            // 
            // gridBand16
            // 
            this.gridBand16.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand16.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand16.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand16.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand16.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand16.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand16.Caption = "Spot Defect **";
            this.gridBand16.MinWidth = 20;
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Width = 199;
            // 
            // gridBand17
            // 
            this.gridBand17.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand17.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand17.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand17.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand17.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand17.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand17.Caption = "Vertical Chain Defect * / **\r\nEvade marker based on covered width / \r\nCompact mar" +
                "ker based on covered width = item width";
            this.gridBand17.MinWidth = 20;
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Width = 484;
            // 
            // gridBand18
            // 
            this.gridBand18.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand18.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand18.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand18.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand18.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand18.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand18.Caption = "Horizontal Chain Defect\r\n(Cut-out length in item width) *";
            this.gridBand18.MinWidth = 20;
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Width = 374;
            // 
            // gridBand19
            // 
            this.gridBand19.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand19.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand19.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand19.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand19.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand19.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand19.Caption = "Ttl claim \r\n**";
            this.gridBand19.MinWidth = 20;
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Width = 71;
            // 
            // gridBand60
            // 
            this.gridBand60.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand60.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand60.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand60.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand60.Caption = "PART I\r\nFinal Claim\r\n**";
            this.gridBand60.MinWidth = 20;
            this.gridBand60.Name = "gridBand60";
            this.gridBand60.Width = 99;
            // 
            // gridBand20
            // 
            this.gridBand20.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand20.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand20.Caption = "Audit\r\nQty ";
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Width = 75;
            // 
            // gridBand21
            // 
            this.gridBand21.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand21.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand21.Caption = "Tolerance Pts \r\nfor Result calculation *";
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.RowCount = 2;
            this.gridBand21.Width = 253;
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand7.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand7.Caption = "Audit\r\nQty ";
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 75;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand8.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand8.Caption = "Tolerance Pts\r\nCalculation *";
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.RowCount = 2;
            this.gridBand8.Width = 253;
            // 
            // gridBand62
            // 
            this.gridBand62.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand62.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand62.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand62.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand62.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand62.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand62.Caption = "Audit\r\nQty Sz";
            this.gridBand62.MinWidth = 20;
            this.gridBand62.Name = "gridBand62";
            this.gridBand62.Width = 51;
            // 
            // gridBand63
            // 
            this.gridBand63.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand63.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand63.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand63.AppearanceHeader.Options.UseFont = true;
            this.gridBand63.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand63.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand63.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand63.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand63.Caption = "Tolerance pts\r\nfor result calc. *\r\n(此計分法: 點數x度數= 分數)";
            this.gridBand63.MinWidth = 20;
            this.gridBand63.Name = "gridBand63";
            this.gridBand63.Width = 153;
            // 
            // gridBand64
            // 
            this.gridBand64.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand64.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand64.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand64.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand64.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand64.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand64.Caption = "Part Ia - This paragraph is according to 4 pts system to calc. the claim\r\n(此段依照國際" +
                "四分制計算賠償)";
            this.gridBand64.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand65,
            this.gridBand66,
            this.gridBand67,
            this.gridBand68});
            this.gridBand64.MinWidth = 20;
            this.gridBand64.Name = "gridBand64";
            this.gridBand64.RowCount = 2;
            this.gridBand64.Width = 599;
            // 
            // gridBand65
            // 
            this.gridBand65.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand65.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand65.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand65.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand65.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand65.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand65.Caption = "Part I - \r\nDefect \r\nRESULT";
            this.gridBand65.MinWidth = 20;
            this.gridBand65.Name = "gridBand65";
            this.gridBand65.RowCount = 3;
            this.gridBand65.Width = 81;
            // 
            // gridBand66
            // 
            this.gridBand66.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand66.AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.gridBand66.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand66.AppearanceHeader.Options.UseFont = true;
            this.gridBand66.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand66.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand66.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand66.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand66.Caption = "Block Sz for claim calc. **";
            this.gridBand66.MinWidth = 20;
            this.gridBand66.Name = "gridBand66";
            this.gridBand66.Width = 92;
            // 
            // gridBand67
            // 
            this.gridBand67.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand67.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand67.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand67.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand67.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand67.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand67.Caption = "Defect Ttl Pts 疵點總分數 *\r\n(has level 1 & 2)";
            this.gridBand67.MinWidth = 20;
            this.gridBand67.Name = "gridBand67";
            this.gridBand67.Width = 238;
            // 
            // gridBand68
            // 
            this.gridBand68.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(230)))), ((int)(((byte)(241)))));
            this.gridBand68.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand68.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand68.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand68.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand68.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand68.Caption = "Defect claim**\r\n(Spot + Chain Defect)";
            this.gridBand68.MinWidth = 20;
            this.gridBand68.Name = "gridBand68";
            this.gridBand68.Width = 188;
            // 
            // gridBand69
            // 
            this.gridBand69.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand69.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand69.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand69.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand69.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand69.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand69.Caption = "Part Ib - This paragraph is according to our methods to optimize the claim\r\n(此段依據" +
                "我方的幾種最適合方法計算賠償)";
            this.gridBand69.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand70,
            this.gridBand71,
            this.gridBand72,
            this.gridBand73,
            this.gridBand74,
            this.gridBand75});
            this.gridBand69.MinWidth = 20;
            this.gridBand69.Name = "gridBand69";
            this.gridBand69.RowCount = 2;
            this.gridBand69.Width = 1279;
            // 
            // gridBand70
            // 
            this.gridBand70.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand70.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand70.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand70.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand70.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand70.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand70.Caption = "Optimal\r\nClaim?";
            this.gridBand70.MinWidth = 20;
            this.gridBand70.Name = "gridBand70";
            this.gridBand70.Width = 52;
            // 
            // gridBand71
            // 
            this.gridBand71.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand71.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand71.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand71.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand71.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand71.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand71.Caption = "Spot Defect **";
            this.gridBand71.MinWidth = 20;
            this.gridBand71.Name = "gridBand71";
            this.gridBand71.Width = 199;
            // 
            // gridBand72
            // 
            this.gridBand72.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand72.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand72.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand72.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand72.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand72.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand72.Caption = "Vertical Chain Defect * / **\r\nEvade marker based on covered width / \r\nCompact mar" +
                "ker based on covered width = item width";
            this.gridBand72.MinWidth = 20;
            this.gridBand72.Name = "gridBand72";
            this.gridBand72.Width = 484;
            // 
            // gridBand73
            // 
            this.gridBand73.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand73.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand73.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand73.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand73.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand73.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand73.Caption = "Horizontal Chain Defect\r\n(Cut-out length in item width) *";
            this.gridBand73.MinWidth = 20;
            this.gridBand73.Name = "gridBand73";
            this.gridBand73.Width = 374;
            // 
            // gridBand74
            // 
            this.gridBand74.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(235)))), ((int)(((byte)(241)))), ((int)(((byte)(222)))));
            this.gridBand74.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand74.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand74.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand74.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand74.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand74.Caption = "Ttl claim \r\n**";
            this.gridBand74.MinWidth = 20;
            this.gridBand74.Name = "gridBand74";
            this.gridBand74.Width = 71;
            // 
            // gridBand75
            // 
            this.gridBand75.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand75.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridBand75.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand75.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand75.Caption = "PART I\r\nFinal Claim\r\n**";
            this.gridBand75.MinWidth = 20;
            this.gridBand75.Name = "gridBand75";
            this.gridBand75.Width = 99;
            // 
            // gridBand61
            // 
            this.gridBand61.Name = "gridBand61";
            // 
            // repositoryItemCheckedComboBoxEdit1
            // 
            this.repositoryItemCheckedComboBoxEdit1.AutoHeight = false;
            this.repositoryItemCheckedComboBoxEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemCheckedComboBoxEdit1.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem(null),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem(null),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem(null),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem(null),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem(null)});
            this.repositoryItemCheckedComboBoxEdit1.Name = "repositoryItemCheckedComboBoxEdit1";
            // 
            // MasterListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MasterListForm";
            this.Size = new System.Drawing.Size(7500, 440);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.MastertsListForm_Load);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_Deduce_Rejct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoMouldTrial)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OverallResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IrregularResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IDIrregularDefectResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riComboBoxStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_No_Rejct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoWeftYarn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_YN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoElongation)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OverallFailReason)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherAuditResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherQETestingResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_ThicknessResultByID)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_LengthWidthResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_WidthResultByBatch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_LengResultByID)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_RegularResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IDRegularResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit_n2)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OtherOverallResult)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Step2ClaimAction)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_AuditStage)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_Dashboard)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBoxDashboard)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardOutstanding)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardLastStageOutstaing)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardConvertedFabirc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_DashboardPartIGradeBC)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroupDashboard)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MarkerType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_IaOrIb)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Nature)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_OverallResltDefectKind)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit_WhichPart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OverallResultCoreDefectReason)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_Status)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckedComboBoxEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public MasterListForm()
        {
            this.Disposed += new EventHandler(MasterListForm_Disposed);
            InitializeComponent();

            //this.EditorTypeName = typeof(MasterDetailForm).FullName;

            //StyleFormatCondition condition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            //condition1.Appearance.BackColor = System.Drawing.Color.SeaShell;
            //condition1.Appearance.Options.UseBackColor = true;
            //condition1.Condition = FormatConditionEnum.Expression;
            //condition1.Expression = "[Name] != ?";   //Name字段不为空
            //gridView1.FormatConditions.Add(condition1);
        }

        string _Status;
        public MasterListForm(string AStatus)
            : this()
        {
            _Status = AStatus;  //WIP 或 Completed
            MasterTableUtil.Status = AStatus;
        }

        string _DailyDate = "";
        public MasterListForm(string ADailyDate, string AWarehouse)
            : this()
        {
            _DailyDate = ADailyDate;
            _Warehouse = AWarehouse;
        }

        string _FromDate = "";
        string _ToDate = "";
        string _Warehouse = "";
        public MasterListForm(string AFromDate, string AToDate, string AWarehouse)
            : this()
        {
            _FromDate = AFromDate;
            _ToDate = AToDate;
            _Warehouse = AWarehouse;
        }

        bool _OnlyShowIncompleted;
        public MasterListForm(bool AOnlyShowIncompleted)
            : this()
        {
            _OnlyShowIncompleted = AOnlyShowIncompleted;
        }

        public override void DataBind()
        {
            btnShowColumnInfo.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                btnShowColumnInfo.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }

            //this.AlwaysShowDesignLayout = true;

            Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
            this.DataContext = fabric_Insp_HeaderList.CurrentDataContext;
            this.EditorTypeName = typeof(MasterDetailForm).FullName;
            this.bandedGridView1.OptionsBehavior.Editable = true;


            //取数据前先计算好一些计算字段，如：Split id Flag、Diff Length 合计 By Lot、Usable Width最小值 By Lot
            //这些本来可以在BO中用计算字段来实现，但速度太慢，所以改为用存储过程来实现, 由david加入 2020-10-14
            string strToday = MasterTableUtil.getTodayBefore60String();
            string SqlStr = string.Format("exec sp_CalculateShowData '{0}'", strToday);
            fabric_Insp_HeaderList.CurrentDataContext.ExecuteCommand(SqlStr);


            if (!string.IsNullOrEmpty(_DailyDate)) //只查一天的数据
            {
                this.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilterByDailyDate(_DailyDate, _Warehouse);
            }
            else if (!string.IsNullOrEmpty(_FromDate)) //查某一时间段内的数据(Monthly或Weekly)
            {
                this.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilterByDateRange(_FromDate, _ToDate, _Warehouse);
            }
            else //查150天内的数据
            {
                var lists = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(Convert.ToInt32(strToday), _Status);

                if (_OnlyShowIncompleted) //只查Incompleted的数据
                {
                    lists = lists.Where(p => p.ActionLogIsCompleted == "N");
                    //barEditItemDashboard.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    bar1.Visible = false;
                }

                this.BindingSource.DataSource = lists;
            }


            Auth_FunRight ConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Confirm");
            btnConfirm.Enabled = (ConfirmRight != null);

            //repositoryItemCheckEdit_Dashboard.CheckedChanged += new EventHandler(repositoryItemCheckEdit_Dashboard_CheckedChanged);
            //repositoryItemCheckEdit_DashboardOutstanding.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardOutstanding_CheckedChanged);
            //repositoryItemCheckEdit_DashboardLastStageOutstaing.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardLastStageOutstaing_CheckedChanged);
            //repositoryItemCheckEdit_DashboardConvertedFabirc.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardConvertedFabirc_CheckedChanged);
            //repositoryItemCheckEdit_DashboardPartIGradeBC.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardPartIGradeBC_CheckedChanged);

            //HeaderList = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(strToday).ToList();

            ////Xsj2012-05-12:注釋掉上面，添加下面
            //DataBindAction(strToday);

            //由David加入 2020-10-20
            //PHPlatformMiscDataContext dict_DB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            //var lists = dict_DB.Misc_DataDictionaries.Where(p => p.DataType == "PH.Fabric.OtherQETestingResult").Select(p => p.DataName).ToList();
            //repositoryItemComboBox_OtherQETestingResult.Items.Clear();
            //repositoryItemComboBox_OtherQETestingResult.Items.AddRange(lists);

            //repositoryItemComboBox_LengthWidthResult.Items.Clear();
            //var lists1 = dict_DB.Misc_DataDictionaries.Where(p => p.DataType == "PH.Fabric.WidthResult").Select(p => p.DataName).ToList();
            //repositoryItemComboBox_LengthWidthResult.Items.AddRange(lists1);

            //repositoryItemComboBox_RegularResult.Items.Clear();
            //var RegularResultList = dict_DB.Misc_DataDictionaries.Where(p => p.DataType == "PH.Fablric.RegularResult").OrderBy(p => p.DataCode).Select(p => p.DataName).ToList();
            //repositoryItemComboBox_RegularResult.Items.AddRange(RegularResultList);

            //repositoryItemComboBox_IrregularResult.Items.Clear();
            //var IrregularResultList = dict_DB.Misc_DataDictionaries.Where(p => p.DataType == "PH.Fablric.IRregularResult").OrderBy(p => p.DataCode).Select(p => p.DataName).ToList();
            //repositoryItemComboBox_IrregularResult.Items.AddRange(IrregularResultList);
        }





        //object SaveAllData = null;
        //void repositoryItemCheckEdit_Dashboard_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_ConvertedFabric.EditValue)) { barEditItem_ConvertedFabric.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_PartIGradeBC.EditValue)) { barEditItem_PartIGradeBC.EditValue = false; }

        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsOverDueEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        //void repositoryItemCheckEdit_DashboardOutstanding_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_ConvertedFabric.EditValue)) { barEditItem_ConvertedFabric.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_PartIGradeBC.EditValue)) { barEditItem_PartIGradeBC.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        //void repositoryItemCheckEdit_DashboardLastStageOutstaing_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_ConvertedFabric.EditValue)) { barEditItem_ConvertedFabric.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_PartIGradeBC.EditValue)) { barEditItem_PartIGradeBC.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsLastStageOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}


        //void repositoryItemCheckEdit_DashboardConvertedFabirc_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_PartIGradeBC.EditValue)) { barEditItem_PartIGradeBC.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsConvertedSupp);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        //void repositoryItemCheckEdit_DashboardPartIGradeBC_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_ConvertedFabric.EditValue)) { barEditItem_ConvertedFabric.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsPartIGradeBC);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}



        //void CheckRefNo()
        //{
        //    FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //    var lists = db.Fabric_Insp_Headers.Where(p => !p.RefNo.HasValue);
        //    foreach (var obj in lists)
        //    {
        //        obj.RefNo = this.GetMaxRefNo(db, obj.Stock_In_Date, obj.Item_No);
        //        obj.Save();
        //        db.SubmitChanges();
        //    }
        //}




        public void DataBindAction(string StartFromDate, string EndDate)
        {
            Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
            this.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(StartFromDate, EndDate);
            this.DataContext = fabric_Insp_HeaderList.CurrentDataContext;
            this.EditorTypeName = typeof(MasterDetailForm).FullName;
            this.bandedGridView1.OptionsBehavior.Editable = true;
        }


        /// <summary>
        /// Xsj20121220:add,关闭页签时，清除相机资源。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void MasterListForm_Disposed(object sender, EventArgs e)
        {
            if (!MyCameraController.CameraController.IsDisposed)
            {
                MyCameraController.CameraController.CloseForm();
                MyCameraController.CameraController.Dispose();
                MyCameraController.CameraController = null;
            }
        }

        private void MastertsListForm_Load(object sender, EventArgs e)
        {
            //if (!DesignMode)
            //{
            //    PH.FabricInspection.BO.FabricInspectionDataContext context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
            //    this.DataContext = context;
            //    this.BindingSource.DataSource = from c in context.Fabric_Insp_Headers select c;
            //}
            //this.objListGridView.OptionsBehavior.Editable = true;
            ////this.DataContext.Log = new StreamWriter("./FIS_Log.log", true); 

            string strParameterType = "SDPS";


            PH.FabricInspection.BO.FabricInspectionDataContext db = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
            SysParamHelper sph = SysParamHelper.Instance;
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.Parameter_Desc }).ToList();
                Lists.Insert(0, null);
                this.repositoryItemLookUpEdit1.DataSource = Lists;
                this.repositoryItemLookUpEdit1.DisplayMember = "Solution";
                this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
                this.repositoryItemLookUpEdit1.NullText = "";
                this.repositoryItemLookUpEdit1.ValueMember = "Code";
            }
            else
            {
                var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.ParameterEnglishDesc }).ToList();
                Lists.Insert(0, null);
                this.repositoryItemLookUpEdit1.DataSource = Lists;
                this.repositoryItemLookUpEdit1.DisplayMember = "Solution";
                this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
                this.repositoryItemLookUpEdit1.NullText = "";
                this.repositoryItemLookUpEdit1.ValueMember = "Code";
            }



            #region
            //Xsj20121220:更改相机连接时机为：用户进入Information Maintenace界面时进行连接。
            //原来的是在用户进入触摸屏时进行连接，这样会出现检测不一个lot_id后要重新进行相机连接。频繁的连接会造成相机通信的不稳定。
            //现在改用进入Information Maintenace界面时一次相连。效果有待观察。
            try
            {
                //Xsj2012-01-09:在沒有拍照功能的主機上運行時，讓其提示異常，但允許其繼續進行後面的作業  
                MyCameraController.PhotoDirecClear();
            }
            catch (Exception ex)
            {
            }

            #endregion

        }






        private void barBtnSaveChangedData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            //Xsj:添加如下代碼，用於保存前關閉表格編者按輯
            this.bandedGridView1.CloseEditor();

            try
            {
                PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;

                if (currentIQC != null)
                {

                    currentIQC.Change_User = GlobalInfo.GetCurrentUserId();
                    currentIQC.Change_Date = DateTime.Now;
                    if (currentIQC.Special_Marker == null)
                    {
                        currentIQC.Special_Marker = 0;
                    }

                    if (currentIQC.Turn_Size == null)
                    {
                        currentIQC.Turn_Size = 0;
                    }
                    MasterTableUtil.RecalcMasterValue(this.DataContext as FabricInspectionDataContext, currentIQC);
                    ByLotSavePartIFinalClaimIaIb(currentIQC);

                }

                this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                MessageBox.Show("保存成功!", "保存記錄");
            }
            catch (ChangeConflictException conflictEx)
            {
                foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
                DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失敗!Error happened \n" + ex.Message, "保存記錄");
            }
            finally
            {
                this.Cursor = currCursor;
            }
        }


        //public bool CheckEidt = false;

        //public override void ProcessFunctionRight()
        //{
        //    base.ProcessFunctionRight();


        //    PH.Platform.AuthMgr.BO.Auth_FunRight checkFunctionRight =
        //        PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Allow Matl View Width Edit");

        //    CheckEidt =  checkFunctionRight != null;
        //}



        private void barBtnTouchScreen_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //Xsj20121220:add 打开触摸屏前，先关闭相机控制窗口
            HideCameraControlUI();
            //-------End


            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            try
            {
                if (this.BindingSource.Count <= 0)
                {
                    FrmBlankDefectsSetting.ShowBlankDefectsSetting(this, null);
                }
                else
                {

                    FrmBlankDefectsSetting.ShowBlankDefectsSetting(this, (PH.FabricInspection.BO.Fabric_Insp_Header)this.BindingSource.Current);
                    //FrmBlankDefectsSetting.ShowBlankDefectsSetting(AllInspectionInformations[selectedRows[0]]);

                }
                //PH.FabricInspection.BO.FabricInspectionDataContext context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new PH.FabricInspection.BO.FabricInspectionDataContext();
                //this.DataContext = context;
                //this.BindingSource.DataSource = from c in context.Fabric_Insp_Headers select c;

                //Xsj(补)20110919:如下代码与DataBind()重复
                string strToday = MasterTableUtil.getTodayBefore60String();
                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();
                this.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(Convert.ToInt32(strToday), _Status);
                this.DataContext = fabric_Insp_HeaderList.CurrentDataContext;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }
        }

        private void barBtnPrintByPiece_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;
            FabricByIDReport rpt = new FabricByIDReport(obj.Item_No, obj.Stock_In_Date, obj.AuditStage);
            rpt.ShowPreview();

            ////Cursor currCursor = this.Cursor;
            ////this.Cursor = Cursors.WaitCursor;

            //try
            //{
            //    //FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
            //    //if (from.ShowDialog() == DialogResult.OK)
            //    //{
            //    //List<MaterialByPiece> dataByLot = getDataByPiece(strVersionNo);
            //    List<MaterialByPiece> dataByLot = getDataByPiece("1");
            //    string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
            //    SysParamHelper sph = SysParamHelper.Instance;
            //    //if (sph.LangID == "TH")
            //    //    FrmPreview.PreviewReport(strAppPath + "informationByPiece_Thai.repx", dataByLot);
            //    //else
            //    //    FrmPreview.PreviewReport(strAppPath + "informationByPiece.repx", dataByLot);

            //    //Xsj20120910:為添加報表自動上傳Web功能而注釋掉上面，添加下面 
            //    string repTitle = string.Format("informationByPiece_V{0}.pdf", strVersionNo);
            //    PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
            //    //---End

            //    //由David改写， 2020-09-28
            //    PH.FabricInspection.UI.Report.InformationByPiece byPieceRpt = new PH.FabricInspection.UI.Report.InformationByPiece();
            //    FrmPreview.ShowReport(byPieceRpt, dataByLot, repTitle, fisHeader);


            //    //if (sph.LangID == "TH")
            //    //    FrmPreview.ShowReport(strAppPath + "informationByPiece_Thai.repx", dataByLot, repTitle, fisHeader);
            //    //else
            //    //{
            //    //    // FrmPreview.ShowReport(strAppPath + "informationByPiece.repx", dataByLot, repTitle, fisHeader);
            //    //}

            //    //}

            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show("Error happened when preview report\n" + ex.Message);
            //}
            //finally
            //{
            //    //this.Cursor = currCursor;
            //}

        }

        private List<MaterialByPiece> getDataByPiece(string tempVersionNo)
        {
            NumberFormatInfo provider = new NumberFormatInfo();
            provider.NumberDecimalDigits = 4;
            provider.NumberGroupSeparator = ".";


            List<MaterialByPiece> resultData = new List<MaterialByPiece>();
            MaterialByPiece tempMaterialByPiece = null;
            Fabric_Insp_Header temp = null;
            List<PH984Field> allPH984Fields = new List<PH984Field>();
            //int j = 0;
            //objListGridView.MoveFirst();

            //List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.AuditStage);

            List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.Item_No, Fobj.Stock_In_Date, Fobj.AuditStage);
            //while (j < objListGridView.RowCount)
            for (int j = 0; j < visibleRowHandles.Count; j++)
            {
                //j++;
                //temp = (Fabric_Insp_Header)objListGridView.GetFocusedRow();
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[j]);
                if (temp.Insp_Length > 0)
                {
                    if (!isItemNoExistInPH984Fields(temp.Item_No, allPH984Fields))
                    {
                        List<PH984Field> tempPH984Fields = PH984Field.GetAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);
                        allPH984Fields.AddRange(tempPH984Fields);
                    }
                    PH984Field tempPH984Field = getPH984FieldWithItemNoLotID(temp.Item_No, temp.Lot_Id, temp.Stock_In_Date, allPH984Fields);

                    tempMaterialByPiece = new MaterialByPiece();
                    tempMaterialByPiece.SideToSideH_Width = (int)temp.SideToSideH_Width;

                    tempMaterialByPiece.Company = temp.Company;
                    tempMaterialByPiece.VersionNo = tempVersionNo;
                    tempMaterialByPiece.System_Install_No = temp.System_Install_No;

                    //tempMaterialByPiece.Item_No = temp.Item_No;
                    tempMaterialByPiece.Item_No = temp.Item_No.Substring(0, 9);
                    tempMaterialByPiece.StockInDate = temp.Stock_In_Date;
                    tempMaterialByPiece.ColorNo = temp.Item_No.Substring(9, 3);
                    tempMaterialByPiece.ReceiveDate = temp.Stock_In_Date;

                    tempMaterialByPiece.Lot_Id = temp.Lot_Id;
                    tempMaterialByPiece.IQC_Reference = temp.IQC_Reference;
                    tempMaterialByPiece.Actual_Length = Math.Round((decimal)temp.Actual_Length, 2);

                    if (tempPH984Field != null)
                    {
                        tempMaterialByPiece.Actual_Length = tempPH984Field.Actual_Length;
                    }
                    tempMaterialByPiece.Actual_Weight = (int)temp.Actual_Weight;
                    tempMaterialByPiece.Supplier_Length_Unit = temp.Supplier_Length_Unit;
                    tempMaterialByPiece.Supplier_Width = (int)temp.Supplier_Width;
                    tempMaterialByPiece.Supplier_Width_Unit = temp.Supplier_Width_Unit;
                    tempMaterialByPiece.Insp_Length = Math.Round((decimal)temp.Insp_Length, 2);
                    tempMaterialByPiece.GM_SQM = (int)temp.GM_SQM;
                    if (tempPH984Field != null)
                    {
                        tempMaterialByPiece.GM_SQM = tempPH984Field.GM_SQM;
                    }
                    tempMaterialByPiece.Usable_Width = (int)(temp.Usable_Width ?? 0);
                    tempMaterialByPiece.Supplich_Batch = temp.Supplich_Batch;
                    tempMaterialByPiece.Roll_No = temp.Roll_No;
                    tempMaterialByPiece.Total_Points = (int)(temp.Total_Points ?? 0);
                    tempMaterialByPiece.Points_Hundred_SQM = (decimal)(temp.Points_Hundred_SQM ?? 0);
                    tempMaterialByPiece.Deductive_Qty = (decimal)(temp.Deductive_Qty ?? 0);
                    tempMaterialByPiece.Wastage = (decimal)(temp.Wastage ?? 0);
                    tempMaterialByPiece.Insp_Result = temp.Insp_Result;
                    tempMaterialByPiece.Party_Insp_Result = temp.Party_Insp_Result;
                    tempMaterialByPiece.Spread_Insp_Result = temp.Spread_Insp_Result;
                    tempMaterialByPiece.Mould_Trial_Result = temp.Mould_Trial_Result;
                    tempMaterialByPiece.Spread_Defect_Exist = temp.Spread_Defect_Exist;


                    tempMaterialByPiece.Insp_Confirm = temp.Insp_Confirm;
                    //tempMaterialByPiece.RN_number = (int)temp.RN_number;

                    tempMaterialByPiece.PH_Sample = (decimal)temp.PH_Sample;
                    // begin 2010/04/13 sharly
                    tempMaterialByPiece.ActualMeasureLength = (decimal)(tempMaterialByPiece.Insp_Length + tempMaterialByPiece.PH_Sample);
                    tempMaterialByPiece.Supplier_Item_No = temp.Supplier_Item_No;
                    tempMaterialByPiece.SupplierItemColor = temp.SupplierItemColor;
                    // end 2010/04/13 sharly
                    tempMaterialByPiece.Panel_Size1 = (decimal)temp.Panel_Size1;
                    tempMaterialByPiece.Panel_Size2 = (decimal)temp.Panel_Size2;

                    tempMaterialByPiece.Special_Marker = (decimal)temp.Special_Marker;
                    tempMaterialByPiece.Mould_Trial_Remark = temp.Mould_Trial_Remark;

                    tempMaterialByPiece.Inspector = temp.Inspector;
                    tempMaterialByPiece.Create_User = temp.Create_User;
                    if (temp.Create_Date != null)
                    {
                        tempMaterialByPiece.Create_Date = (DateTime)temp.Create_Date;
                    }
                    tempMaterialByPiece.Change_User = temp.Change_User;
                    if (temp.Change_Date != null)
                    {
                        tempMaterialByPiece.Change_Date = (DateTime)temp.Change_Date;
                    }

                    tempMaterialByPiece.Use_Status = temp.Use_Status;
                    tempMaterialByPiece.WaftYarnPercentage = temp.WeftYarnPercentage / 100;

                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TH")
                    {
                        if (temp.WeftYarnClass == "Skewness")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "ด้ายขวางเฉียง:                 Weft Yarn-Skewness:";
                        }
                        else if (temp.WeftYarnClass == "Bow")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "ด้ายขวางโค้ง:                 Weft Yarn-Bow:";
                        }
                        else if (temp.WeftYarnClass == "Haft Bow")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "ด้ายขวางโค้งครึ่งวง:             Weft Yarn-Haft Bow:";
                        }
                        else
                        {
                            tempMaterialByPiece.WaftYarnClassName = "ไม่ต้องการตรวจการทอด้ายขวาง:     No Need Insp. Weft Yarn:";
                        }
                    }
                    else
                    {
                        if (temp.WeftYarnClass == "Skewness")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "緯紗-斜線:                  Weft Yarn-Skewness:";
                        }
                        else if (temp.WeftYarnClass == "Bow")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "緯紗-全弓形:                Weft Yarn-Bow:";
                        }
                        else if (temp.WeftYarnClass == "Haft Bow")
                        {
                            tempMaterialByPiece.WaftYarnClassName = "緯紗-半弓形:                Weft Yarn-Haft Bow:";
                        }
                        else
                        {
                            tempMaterialByPiece.WaftYarnClassName = "不需檢測緯紗:               No Need Insp. Weft Yarn:";
                        }
                    }

                    //detail
                    //iqc04Items
                    tempMaterialByPiece.SpreadDefectDetailItems.Clear();


                    //List<SpreadDefectInfoForReportByPiece> spreadDefectItems = new List<SpreadDefectInfoForReportByPiece>(); zxz
                    SpreadDefectInfoForReportByPiece DetailSpreadDefect = null;
                    Fabric_Insp_SpreadDefect tempSpreadDefectDetail = null;

                    for (int i = 0, iSize = temp.Fabric_Insp_SpreadDefects.Count; i < iSize; i++)
                    {
                        tempSpreadDefectDetail = temp.Fabric_Insp_SpreadDefects[i];
                        //SpreadDefectInfoForReportByPiece Detail = new SpreadDefectInfoForReportByPiece();
                        string DefectName = null;

                        DefectName = tempSpreadDefectDetail.Defect_NameCode;

                        switch (i)
                        {
                            case 0:
                                {
                                    DetailSpreadDefect = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name0 = DefectName;
                                    //DetailSpreadDefect.Defect_Type0 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place0 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place0 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree0 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 1:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name1 = DefectName;
                                    //detail.Defect_Type1 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place1 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place1 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree1 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 2:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name2 = DefectName;
                                    //detail.Defect_Type2 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place2 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place2 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree2 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 3:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name3 = DefectName;
                                    //detail.Defect_Type3 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place3 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place3 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree3 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 4:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name4 = DefectName;
                                    //detail.Defect_Type4 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place4 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place4 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree4 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 5:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name5 = DefectName;
                                    //detail.Defect_Type5 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place5 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place5 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree5 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 6:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name6 = DefectName;
                                    //detail.Defect_Type6 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place6 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place6 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree6 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 7:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name7 = DefectName;
                                    //detail.Defect_Type7 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place7 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place7 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree7 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 8:
                                {
                                    DetailSpreadDefect = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name8 = DefectName;
                                    //DetailSpreadDefect.Defect_Type0 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place8 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place8 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree0 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 9:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name9 = DefectName;
                                    //detail.Defect_Type1 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place9 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place9 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree9 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 10:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name10 = DefectName;
                                    //detail.Defect_Type2 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place10 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place10 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree10 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 11:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name11 = DefectName;
                                    //detail.Defect_Type3 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place11 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place11 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree11 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 12:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name12 = DefectName;
                                    //detail.Defect_Type4 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place12 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place12 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree12 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 13:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name13 = DefectName;
                                    //detail.Defect_Type5 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place13 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place13 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree13 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 14:
                                {
                                    //SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name14 = DefectName;
                                    //detail.Defect_Type6 = tempSpreadDefectDetail.Defect_Type;
                                    DetailSpreadDefect.From_Place14 = tempSpreadDefectDetail.From_Place + "";
                                    DetailSpreadDefect.To_Place14 = tempSpreadDefectDetail.To_Place + "";
                                    DetailSpreadDefect.Spread_Defect_Degree14 = tempSpreadDefectDetail.Spread_Defect_Degree;
                                    tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            //break;

                        }

                    }
                    ////max size = 5
                    //for (int i = tempMaterialByPiece.SpreadDefectDetailItems.Count, iSize = MAX_SIZE_FOR_SPREAD_DEFECT; i < iSize; i++)
                    //{
                    //    SpreadDefectInfoForReportByPiece detail = new SpreadDefectInfoForReportByPiece();
                    //    tempMaterialByPiece.SpreadDefectDetailItems.Add(detail);
                    //}

                    //if (tempMaterialByPiece.SpreadDefectDetailItems.Count > MAX_SIZE_FOR_SPREAD_DEFECT)
                    //{
                    //    tempMaterialByPiece.SpreadDefectDetailItems.RemoveRange(MAX_SIZE_FOR_SPREAD_DEFECT, tempMaterialByPiece.SpreadDefectDetailItems.Count - MAX_SIZE_FOR_SPREAD_DEFECT);
                    //}



                    //PartyDefectDetailItems
                    tempMaterialByPiece.PartyDefectDetailItems.Clear();
                    PartDefectInfoForReportByPiece DetailPartDefect = null;
                    PartDefectInfoForReportByPiece tempPartDefect = null;
                    int x = 0;
                    int n = 0;
                    string Found = "";
                    //int y = 0;
                    List<PartDefectInfoForReportByPiece> partDefectItems = groupPartDefectDetailsByDefectName(temp);
                    DetailPartDefect = new PartDefectInfoForReportByPiece();
                    for (int i = 0, iSize = partDefectItems.Count; i < iSize; i++)
                    {
                        tempPartDefect = partDefectItems[i];

                        if (tempMaterialByPiece.SpreadDefectDetailItems.Count() == 0)
                        {
                            n = i;
                            DetailSpreadDefect = new SpreadDefectInfoForReportByPiece();
                        }
                        else
                        {

                            if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name0)
                            {
                                Found = "1";
                                n = 0;
                            }
                            else
                            {
                                if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name1)
                                {
                                    Found = "1";
                                    n = 1;
                                }
                                else
                                {
                                    if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name2)
                                    {
                                        Found = "1";
                                        n = 2;
                                    }
                                    else
                                    {
                                        if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name3)
                                        {
                                            Found = "1";
                                            n = 3;
                                        }
                                        else
                                        {
                                            if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name4)
                                                n = 4;

                                            else
                                            {
                                                if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name5)
                                                {
                                                    Found = "1";
                                                    n = 5;
                                                }
                                                else
                                                {
                                                    if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name6)
                                                    {
                                                        Found = "1";
                                                        n = 6;
                                                    }
                                                    else
                                                    {
                                                        if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name7)
                                                        {
                                                            Found = "1";
                                                            n = 7;
                                                        }
                                                        else
                                                        {
                                                            if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name8)
                                                            {
                                                                Found = "1";
                                                                n = 8;
                                                            }
                                                            else
                                                            {
                                                                if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name9)
                                                                {
                                                                    Found = "1";
                                                                    n = 9;
                                                                }
                                                                else
                                                                {
                                                                    if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name10)
                                                                    {
                                                                        Found = "1";
                                                                        n = 10;
                                                                    }
                                                                    else
                                                                    {
                                                                        if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name11)
                                                                        {
                                                                            Found = "1";
                                                                            n = 11;
                                                                        }
                                                                        else
                                                                        {
                                                                            if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name12)
                                                                            {
                                                                                Found = "1";
                                                                                n = 12;
                                                                            }

                                                                            else
                                                                            {
                                                                                if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name13)
                                                                                {
                                                                                    Found = "1";
                                                                                    n = 13;
                                                                                }
                                                                                else
                                                                                {
                                                                                    if (tempPartDefect.Defect_Name == tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name14)
                                                                                    {
                                                                                        Found = "1";
                                                                                        n = 14;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        //  x = temp.Fabric_Insp_SpreadDefects.Count;

                                                                                        x = tempMaterialByPiece.SpreadDefectDetailItems.Count;

                                                                                        Found = "";
                                                                                        //y = y + 1;
                                                                                        n = x;

                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        switch (n)
                        {
                            case 0:
                                {
                                    //DetailPartDefect = new PartDefectInfoForReportByPiece();
                                    //DetailSpreadDefect = new SpreadDefectInfoForReportByPiece();
                                    DetailSpreadDefect.Defect_Name0 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count0 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count0 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count0 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count0 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 1:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name1 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name1 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count1 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count1 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count1 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count1 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                            case 2:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name2 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name2 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count2 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count2 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count2 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count2 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 3:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name3 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name3 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count3 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count3 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count3 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count3 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 4:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name1 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name4 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count4 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count4 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count4 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count4 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                            case 5:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name5 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name5 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count5 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count5 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count5 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count5 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 6:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name6 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name6 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count6 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count6 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count6 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count6 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 7:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name7 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name7 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count7 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count7 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count7 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count7 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                            case 8:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name8 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name8 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count8 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count8 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count8 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count8 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 9:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name9 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name9 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count9 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count9 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count9 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count9 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 10:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name10 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name10 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count10 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count10 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count10 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count10 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                            case 11:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name11 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name11 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count11 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count11 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count11 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count11 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 12:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name12 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name12 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count12 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count12 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count12 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count12 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }
                            case 13:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name13 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name13 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count13 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count13 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count13 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count13 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                            case 14:
                                {
                                    //tempMaterialByPiece.SpreadDefectDetailItems[0].Defect_Name14 = tempPartDefect.Defect_Name;
                                    DetailSpreadDefect.Defect_Name14 = tempPartDefect.Defect_Name;
                                    DetailPartDefect.Level1_Defect_Degree_Count14 = tempPartDefect.Level1_Defect_Degree_Count;
                                    DetailPartDefect.Level2_Defect_Degree_Count14 = tempPartDefect.Level2_Defect_Degree_Count;
                                    DetailPartDefect.Level3_Defect_Degree_Count14 = tempPartDefect.Level3_Defect_Degree_Count;
                                    DetailPartDefect.Level4_Defect_Degree_Count14 = tempPartDefect.Level4_Defect_Degree_Count;
                                    tempMaterialByPiece.PartyDefectDetailItems.Add(DetailPartDefect);
                                    if (Found == "")
                                        tempMaterialByPiece.SpreadDefectDetailItems.Add(DetailSpreadDefect);
                                    break;
                                }

                                break;
                        }



                    }

                    //tempMaterialByPiece.PartyDefectDetailItems.AddRange(partDefectItems);

                    //      // begin sharly 20100409
                    ////max size = 15
                    //for (int i = tempMaterialByPiece.PartyDefectDetailItems.Count, iSize = MAX_SIZE_FOR_PARTY_DEFECT; i < iSize; i++)
                    //{

                    //    PartDefectInfoForReportByPiece detail = new PartDefectInfoForReportByPiece();
                    //    tempMaterialByPiece.PartyDefectDetailItems.Add(detail);
                    //}

                    //if (tempMaterialByPiece.PartyDefectDetailItems.Count > MAX_SIZE_FOR_PARTY_DEFECT)
                    //{
                    //    tempMaterialByPiece.PartyDefectDetailItems.RemoveRange(MAX_SIZE_FOR_PARTY_DEFECT, tempMaterialByPiece.PartyDefectDetailItems.Count - MAX_SIZE_FOR_PARTY_DEFECT);
                    //}
                    //      // end sharly 20100409

                    //      // begin sharly 20100409

                    //      //WidthDetailItems
                    //      tempMaterialByPiece.WidthDetailItems.Clear();

                    Fabric_Insp_Width tempWidthDetail = null;
                    //      for (int i = 0, iSize = temp.Fabric_Insp_Widths.Count; i < iSize; i++)
                    //      {
                    //          tempWidthDetail = temp.Fabric_Insp_Widths[i];
                    //          WidthDetailForReportPiece detail = new WidthDetailForReportPiece();
                    //          detail.Detect_Turn_No = tempWidthDetail.Detect_Turn_No + "";
                    //          detail.Usable_Width = tempWidthDetail.Usable_Width + "";
                    //          detail.SideToSide_Width = tempWidthDetail.SideToSide_Width + "";
                    //          tempMaterialByPiece.WidthDetailItems.Add(detail);
                    //      }

                    //      string widthString = "";
                    //      int k = 1;
                    //      bool isFirstTime = true;
                    //      foreach (WidthDetailForReportPiece widthDetail in tempMaterialByPiece.WidthDetailItems)
                    //      {
                    //          if (k != 1)
                    //          {
                    //              widthString = widthString + "," + widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
                    //          }
                    //          else
                    //          {
                    //              if (!isFirstTime)
                    //              {
                    //                  widthString = widthString + "\n" + widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
                    //              }
                    //              else
                    //              {
                    //                  widthString = widthDetail.Usable_Width + "/" + widthDetail.SideToSide_Width + "(" + widthDetail.Detect_Turn_No + ")";
                    //              }
                    //          }
                    //          isFirstTime = false;
                    //          k++;
                    //          if (k == 6)
                    //          {
                    //              StrWidthDetailForReportPiece strWidthDetail = new StrWidthDetailForReportPiece();
                    //              strWidthDetail.Str_Usable_Width = widthString;
                    //              tempMaterialByPiece.StrWidthDetailItems.Add(strWidthDetail);
                    //              widthString = "";
                    //              k = 1;
                    //          }
                    //      }
                    //      if ((k < 6) && (k > 0))
                    //      {
                    //          StrWidthDetailForReportPiece strWidthDetail = new StrWidthDetailForReportPiece();
                    //          strWidthDetail.Str_Usable_Width = widthString;
                    //          tempMaterialByPiece.StrWidthDetailItems.Add(strWidthDetail);
                    //      }



                    //      //max size = 5
                    //      for (int i = tempMaterialByPiece.StrWidthDetailItems.Count, iSize = MAX_SIZE_FOR_WIDTH; i < iSize; i++)
                    //      {
                    //          StrWidthDetailForReportPiece detail = new StrWidthDetailForReportPiece();
                    //          tempMaterialByPiece.StrWidthDetailItems.Add(detail);
                    //      }

                    //      if (tempMaterialByPiece.StrWidthDetailItems.Count > MAX_SIZE_FOR_WIDTH)
                    //      {
                    //          tempMaterialByPiece.StrWidthDetailItems.RemoveRange(MAX_SIZE_FOR_WIDTH, tempMaterialByPiece.StrWidthDetailItems.Count - MAX_SIZE_FOR_WIDTH);
                    //      }
                    //// end sharly 20100409

                    //TwoColumnsWidthDetailItems
                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Clear();


                    TwoColumnsWidthDetailForReportPiece detailTwoColumnsWidth = null;
                    for (int i = 0, iSize = temp.Fabric_Insp_Widths.Count; i < iSize; i++)
                    {
                        tempWidthDetail = temp.Fabric_Insp_Widths[i];
                        switch (i)
                        {
                            case 0:
                                {
                                    detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No1 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width1 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width1 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 1:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No2 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width2 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width2 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 2:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No3 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width3 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width3 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 3:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No4 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width4 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width4 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 4:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No5 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width5 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width5 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 5:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No6 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width6 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width6 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 6:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No7 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width7 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width7 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 7:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No8 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width8 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width8 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 8:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No9 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width9 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width9 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 9:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No10 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width10 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width10 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 10:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No11 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width11 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width11 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 11:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No12 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width12 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width12 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 12:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No13 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width13 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width13 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 13:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No14 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width14 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width14 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }
                            case 14:
                                {
                                    //detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                                    detailTwoColumnsWidth.Detect_Turn_No15 = tempWidthDetail.Detect_Turn_No + "";
                                    detailTwoColumnsWidth.Usable_Width15 = tempWidthDetail.Usable_Width + "";
                                    detailTwoColumnsWidth.SideToSide_Width15 = tempWidthDetail.SideToSide_Width + "";
                                    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                                    break;
                                }

                                break;
                        }
                        //if (i % 2 == 0)
                        //{
                        //    detailTwoColumnsWidth = new TwoColumnsWidthDetailForReportPiece();
                        //    detailTwoColumnsWidth.Detect_Turn_No = tempWidthDetail.Detect_Turn_No + "";
                        //    detailTwoColumnsWidth.Usable_Width = tempWidthDetail.Usable_Width + "";
                        //    detailTwoColumnsWidth.SideToSide_Width = tempWidthDetail.SideToSide_Width + "";
                        //    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detailTwoColumnsWidth);
                        //}
                        //else
                        //{
                        //    detailTwoColumnsWidth.Detect_Turn_No2 = tempWidthDetail.Detect_Turn_No + "";
                        //    detailTwoColumnsWidth.Usable_Width2 = tempWidthDetail.Usable_Width + "";
                        //    detailTwoColumnsWidth.SideToSide_Width2 = tempWidthDetail.SideToSide_Width + "";
                        //}
                        //if (i >= 16)
                        //{
                        //    break;

                        //}
                    }

                    //max size = 6
                    //for (int i = tempMaterialByPiece.TwoColumnsWidthDetailItems.Count, iSize = MAX_SIZE_FOR_SIDE_TO_SIDE_WIDTH; i < iSize; i++)
                    //{
                    //    TwoColumnsWidthDetailForReportPiece detail = new TwoColumnsWidthDetailForReportPiece();
                    //    tempMaterialByPiece.TwoColumnsWidthDetailItems.Add(detail);
                    //}


                    resultData.Add(tempMaterialByPiece);
                }
                bandedGridView1.MoveNext();
            }
            return resultData;
        }

        private bool isItemNoExistInPH984Fields(String strItemNo, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if (materialByLot.Item_No == strItemNo)
                {
                    return true;
                }
            }
            return false;
        }


        private PH984Field getPH984FieldWithItemNoLotID(string strItemNo, string strLotID, string strStockInDate, List<PH984Field> resultData)
        {
            foreach (PH984Field materialByLot in resultData)
            {
                if ((materialByLot.Item_No == strItemNo)
                    && (materialByLot.Lot_Id == strLotID)
                    && (materialByLot.Stock_In_Date == strStockInDate))
                {
                    return materialByLot;
                }
            }
            return null;
        }

        private List<PartDefectInfoForReportByPiece> groupPartDefectDetailsByDefectName(Fabric_Insp_Header temp)
        {
            List<PartDefectInfoForReportByPiece> groupedPartDefectDetailsByTurnNoAndDefectName = new List<PartDefectInfoForReportByPiece>();
            //1: group by broadno and defecttype
            Hashtable hsSelectedPartDefectDetailsByTurnNo = new Hashtable();
            #region
            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
            {
                PartDefectInfoForReportByPiece partyDefectDetail = getPartyDefectDetailByDefectNameAndBroadNo(groupedPartDefectDetailsByTurnNoAndDefectName, tempPartDefectDetail.Defect_Name, tempPartDefectDetail.Detect_Turn_No);

                if (partyDefectDetail == null)
                {
                    partyDefectDetail = new PartDefectInfoForReportByPiece();
                    partyDefectDetail.Detect_Turn_No = tempPartDefectDetail.Detect_Turn_No;

                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
                    if (tempPartDefectDetail.Defect_Degree == 1)
                    {
                        partyDefectDetail.Int_Level1_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 2)
                    {
                        partyDefectDetail.Int_Level2_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 3)
                    {
                        partyDefectDetail.Int_Level3_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 4)
                    {
                        partyDefectDetail.Int_Level4_Defect_Degree_Count = (int)tempPartDefectDetail.Defect_Degree_Count;
                    }

                    groupedPartDefectDetailsByTurnNoAndDefectName.Add(partyDefectDetail);

                }
                else
                {

                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
                    if (tempPartDefectDetail.Defect_Degree == 1)
                    {
                        partyDefectDetail.Int_Level1_Defect_Degree_Count = (int)partyDefectDetail.Int_Level1_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 2)
                    {
                        partyDefectDetail.Int_Level2_Defect_Degree_Count = (int)partyDefectDetail.Int_Level2_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 3)
                    {
                        partyDefectDetail.Int_Level3_Defect_Degree_Count = (int)partyDefectDetail.Int_Level3_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
                    }
                    else if (tempPartDefectDetail.Defect_Degree == 4)
                    {
                        partyDefectDetail.Int_Level4_Defect_Degree_Count = (int)partyDefectDetail.Int_Level4_Defect_Degree_Count + (int)tempPartDefectDetail.Defect_Degree_Count;
                    }

                }
                //if (!hsSelectedPartDefectDetailsByTurnNo.ContainsKey(partyDefectDetail.Detect_Turn_No))
                //{
                //    hsSelectedPartDefectDetailsByTurnNo.Add(partyDefectDetail.Detect_Turn_No, new List<PartDefectInfoForReportByPiece>());
                //}
                if (!hsSelectedPartDefectDetailsByTurnNo.ContainsKey(partyDefectDetail.Detect_Turn_No.ToString() + partyDefectDetail.Defect_Name))
                {
                    hsSelectedPartDefectDetailsByTurnNo.Add(partyDefectDetail.Detect_Turn_No.ToString() + partyDefectDetail.Defect_Name, new List<PartDefectInfoForReportByPiece>());
                }

            }
            #endregion step1 groupby broadno and defect name

            //2:select fited level count by broadno and defect name

            foreach (DictionaryEntry objDE in hsSelectedPartDefectDetailsByTurnNo)
            {
                bool selected = false;
                //A: select level 4
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {
                        if (partDefectInfoForReport.Int_Level4_Defect_Degree_Count >= 1)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);

                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 1;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 0;


                            selected = true;
                            break;
                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion A:select level4

                //B: select level3
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {
                        if (partDefectInfoForReport.Int_Level3_Defect_Degree_Count >= 1)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 1;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
                            {
                                partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;

                                selected = true;
                                break;
                            }
                            else
                            {
                                //select level1 count >= 1
                                #region
                                foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                                {
                                    if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                                    {
                                        if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
                                        {
                                            tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;

                                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
                                            selected = true;
                                            break;
                                        }
                                    }
                                }
                                selected = true;
                                break;
                                #endregion select level1 count >= 1
                            }

                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion B:select level3

                //C:select level2
                #region

                //select level2 Count >= 2
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count >= 2)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 2;
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            selected = true;
                            break;
                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion select level2 Count >= 2

                //select level2 Count == 1
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count == 1)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 1;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 2)
                            {
                                partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
                                selected = true;
                                break;
                            }
                            else
                            {
                                //select level1 count==2
                                #region
                                foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                                {
                                    if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                                    {
                                        if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 2)
                                        {
                                            tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
                                            tempPartDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
                                            tempPartDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                                            tempPartDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;

                                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
                                            selected = true;
                                            break;
                                        }
                                    }
                                }
                                if (selected)
                                {
                                    break;
                                }
                                #endregion  select level1 count ==2

                                //select level1 count==1
                                #region
                                if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 1)
                                {
                                    partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
                                    selected = true;
                                    break;
                                }
                                else
                                {
                                    foreach (PartDefectInfoForReportByPiece tempPartDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                                    {
                                        if ((tempPartDefectInfoForReport.Detect_Turn_No.ToString() + tempPartDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                                        {
                                            if (tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count == 1)
                                            {
                                                tempPartDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
                                                tempPartDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;
                                                tempPartDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                                                tempPartDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;

                                                ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(tempPartDefectInfoForReport);
                                                selected = true;
                                                break;
                                            }
                                        }
                                    }
                                    if (selected)
                                    {
                                        break;
                                    }
                                }
                                #endregion select level1 count == 1
                            }
                            selected = true;
                            break;

                        }
                    }
                }


                if (selected)
                {
                    continue;
                }
                #endregion select level count == 1

                #endregion C: select level2

                //D:select level1
                #region
                //select level1 Count == 4
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count >= 4)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 4;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            selected = true;
                            break;

                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion select level1 Count == 4

                //select level1 Count == 3
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 3)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 3;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            selected = true;
                            break;

                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion select level1 Count == 3

                //select level1 Count == 2
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 2)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 2;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            selected = true;
                            break;

                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion select level1 Count == 2

                //select level1 Count == 1
                #region
                foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByTurnNoAndDefectName)
                {
                    if ((partDefectInfoForReport.Detect_Turn_No.ToString() + partDefectInfoForReport.Defect_Name) == (string)objDE.Key)
                    {

                        if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count == 1)
                        {
                            ((List<PartDefectInfoForReportByPiece>)objDE.Value).Add(partDefectInfoForReport);
                            partDefectInfoForReport.Int_Level1_Defect_Degree_Count = 1;
                            partDefectInfoForReport.Int_Level2_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level3_Defect_Degree_Count = 0;
                            partDefectInfoForReport.Int_Level4_Defect_Degree_Count = 0;

                            selected = true;
                            break;

                        }
                    }
                }
                if (selected)
                {
                    continue;
                }
                #endregion select level1 Count=1

                #endregion //D:select level1 //end of D:select level1



            }


            //3: group by defectname
            List<PartDefectInfoForReportByPiece> groupedPartDefectDetailsByDefectName = new List<PartDefectInfoForReportByPiece>();

            foreach (DictionaryEntry objDE in hsSelectedPartDefectDetailsByTurnNo)
            {
                foreach (PartDefectInfoForReportByPiece tempPartDefectDetail in (List<PartDefectInfoForReportByPiece>)objDE.Value)
                {
                    PartDefectInfoForReportByPiece partyDefectDetail = getPartyDefectDetailByDefectName(groupedPartDefectDetailsByDefectName, tempPartDefectDetail.Defect_Name);

                    if (partyDefectDetail == null)
                    {
                        groupedPartDefectDetailsByDefectName.Add(tempPartDefectDetail);

                    }
                    else
                    {

                        partyDefectDetail.Int_Level1_Defect_Degree_Count = partyDefectDetail.Int_Level1_Defect_Degree_Count + tempPartDefectDetail.Int_Level1_Defect_Degree_Count;
                        partyDefectDetail.Int_Level2_Defect_Degree_Count = partyDefectDetail.Int_Level2_Defect_Degree_Count + tempPartDefectDetail.Int_Level2_Defect_Degree_Count;
                        partyDefectDetail.Int_Level3_Defect_Degree_Count = partyDefectDetail.Int_Level3_Defect_Degree_Count + tempPartDefectDetail.Int_Level3_Defect_Degree_Count;
                        partyDefectDetail.Int_Level4_Defect_Degree_Count = partyDefectDetail.Int_Level4_Defect_Degree_Count + tempPartDefectDetail.Int_Level4_Defect_Degree_Count;

                    }
                }
            }

            //4:convert int_value to  str_value

            int i = 0;
            foreach (PartDefectInfoForReportByPiece partDefectInfoForReport in groupedPartDefectDetailsByDefectName)
            {

                if (partDefectInfoForReport.Int_Level4_Defect_Degree_Count > 0)
                {
                    partDefectInfoForReport.Level4_Defect_Degree_Count = partDefectInfoForReport.Int_Level4_Defect_Degree_Count + "";
                }

                if (partDefectInfoForReport.Int_Level3_Defect_Degree_Count > 0)
                {
                    partDefectInfoForReport.Level3_Defect_Degree_Count = partDefectInfoForReport.Int_Level3_Defect_Degree_Count + "";
                }
                if (partDefectInfoForReport.Int_Level2_Defect_Degree_Count > 0)
                {
                    partDefectInfoForReport.Level2_Defect_Degree_Count = partDefectInfoForReport.Int_Level2_Defect_Degree_Count + "";
                }

                if (partDefectInfoForReport.Int_Level1_Defect_Degree_Count > 0)
                {
                    partDefectInfoForReport.Level1_Defect_Degree_Count = partDefectInfoForReport.Int_Level1_Defect_Degree_Count + "";
                }
            }

            return groupedPartDefectDetailsByDefectName;
        }


        private string generateQueryString(string company, string strItemNo, string strStockInDate)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時輸入的公司
            sb.Append("'").Append(company).Append("'").Append(", ");

            //4 LOT_ID 為空
            sb.Append("'").Append("").Append("'").Append(", ");


            //5  ITEM_NO
            sb.Append("'").Append(strItemNo).Append("'").Append(", ");

            //6 STOCK_IN_DATE 為零
            //sb.Append("'").Append("000000").Append("'").Append(", ");
            sb.Append("'").Append(strStockInDate).Append("'").Append(", ");

            //7  MESSAGE為空
            sb.Append("''");

            return sb.ToString();

        }


        private PartDefectInfoForReportByPiece getPartyDefectDetailByDefectNameAndBroadNo(List<PartDefectInfoForReportByPiece> partDefects, string name, int broadNo)
        {
            PartDefectInfoForReportByPiece partyDefectDetail = null;
            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = partDefects[i];
                if ((partyDefectDetail.Defect_Name == name)
                    && (partyDefectDetail.Detect_Turn_No == broadNo))
                {
                    return partyDefectDetail;
                }
            }


            return null;
        }


        private PartDefectInfoForReportByPiece getPartyDefectDetailByDefectName(List<PartDefectInfoForReportByPiece> partDefects, string name)
        {
            PartDefectInfoForReportByPiece partyDefectDetail = null;
            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = partDefects[i];
                if (partyDefectDetail.Defect_Name == name)
                {
                    return partyDefectDetail;
                }
            }
            return null;
        }

        Fabric_Insp_Header Fobj = new Fabric_Insp_Header();

        private void barBtnPrintByLot_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
            //if (from.ShowDialog() == DialogResult.OK)
            // {
            strVersionNo = "1"; //from.currentValue;
            //獲取報表數據源
            Fobj = this.BindingSource.Current as Fabric_Insp_Header;

            List<MaterialByLot> dataByLot = getDataByLot(strVersionNo);
            string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
            SysParamHelper sph = SysParamHelper.Instance;
            //if (sph.LangID == "TH")
            //    FrmPreview.PreviewReport(strAppPath + "informationBylot_Thai.repx", dataByLot);
            //else
            //    FrmPreview.PreviewReport(strAppPath + "informationBylot.repx", dataByLot);

            //Xsj20120910:為添加報表自動上傳Web功能而注釋掉以上代碼，添加下面  
            string repTitle = string.Format("informationBylot_V{0}.pdf", strVersionNo);
            //PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
            PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = Fobj;




            PH.FabricInspection.BO.FabricInspectionDataContext db1 = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();    
            string sqlstr = string.Format("select top(1) SupplierName from [PH.BasicInfo]..SupplierProfile where ERPSupplier ='{0}'", Fobj.Supplier_Code);


            string SupplierDescription = db1.ExecuteDataSet(sqlstr, new DataSet(), "Opts").Tables[0].Rows[0]["SupplierName"].ToString();

            foreach (MaterialByLot obj in dataByLot)
            {
                obj.ProjectNo = string.IsNullOrEmpty(obj.ProjectNo) ? Fobj.ProjectNo : obj.ProjectNo;
                obj.PO = string.IsNullOrEmpty(obj.PO) ? Fobj.PO : obj.PO;
                obj.Supplier = string.IsNullOrEmpty(obj.Supplier) ? Fobj.Supplier_Code : obj.Supplier;
                obj.InvoiceNo = string.IsNullOrEmpty(obj.InvoiceNo) ? Fobj.InvoiceNo : obj.InvoiceNo;
                obj.HdoNo = string.IsNullOrEmpty(obj.HdoNo) ? Fobj.HdoNo : obj.HdoNo;
                obj.Supplier_Item_No = string.IsNullOrEmpty(obj.Supplier_Item_No) ? Fobj.Supplier_Item_No : obj.Supplier_Item_No;
                obj.SupplierDescription = string.IsNullOrEmpty(obj.SupplierDescription) ? SupplierDescription : obj.SupplierDescription;
            }


            PH.FabricInspection.UI.Report.InformationBylot byLotRpt = new PH.FabricInspection.UI.Report.InformationBylot();
            FrmPreview.ShowReport(byLotRpt, dataByLot, repTitle, fisHeader);

            //if (sph.LangID == "TH")
            //{
            //    //FrmPreview.ShowReport(strAppPath + "informationBylot_Thai.repx", dataByLot, repTitle, fisHeader);
            //    PH.FabricInspection.UI.Report.InformationBylot_Thai byLotRpt = new PH.FabricInspection.UI.Report.InformationBylot_Thai();
            //    FrmPreview.ShowReport(byLotRpt, dataByLot, repTitle, fisHeader);
            //}
            //else
            //{
            //FrmPreview.ShowReport(strAppPath + "informationBylot.repx", dataByLot, repTitle, fisHeader);
            //PH.FabricInspection.UI.Report.InformationBylot byLotRpt = new PH.FabricInspection.UI.Report.InformationBylot();
            //FrmPreview.ShowReport(byLotRpt, dataByLot, repTitle, fisHeader);
            //}
            // }

        }

        private List<MaterialByLot> getDataByLot(string tempVersionNo)
        {
            NumberFormatInfo provider = new NumberFormatInfo();
            provider.NumberDecimalDigits = 0;
            provider.NumberGroupSeparator = ".";


            List<MaterialByLot> resultData = new List<MaterialByLot>();
            MaterialByLot tempMaterialByLot = null;
            Fabric_Insp_Header temp = null;
            string _ItemNo = "";

            //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。
            decimal avgPoints_Hundred_SQM = getAllVisibleRowAvgPoints_Hundred_SQM();
            //----End


            //List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.AuditStage);
            List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.Item_No, Fobj.Stock_In_Date, Fobj.AuditStage);


            for (int j = 0; j < visibleRowHandles.Count; j++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[j]);
                _ItemNo = temp.Item_No.Trim();
                //Xsj:获取唯一的Item_No,Stock_In_Date的Lot_ID质料集合
                if (isItemNoExistInMaterialByLot(temp.Item_No, temp.Stock_In_Date, resultData))
                {
                    continue;
                }

                List<PH984Field> tempPH984Fields = PH984Field.GetAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);

                tempMaterialByLot = new MaterialByLot();


                tempMaterialByLot.RefNo = temp.RefNo; //由David加入 2020-09-29

                tempMaterialByLot.AuditStage = temp.AuditStage; //由shulin加入 2020-11-21

                tempMaterialByLot.Supplier_Item_No = tempMaterialByLot.Supplier_Item_No ?? temp.Supplier_Item_No;//由shulin加入 2021-01-02 由於Supplier_Item_No在ERP中取不到數據，取Fabric_Insp_Header表中的Supplier_Item_No


                //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。 
                tempMaterialByLot.Average_Punish_Points = avgPoints_Hundred_SQM;
                //----End

                tempMaterialByLot.SideToSideH_Width = (int)(temp.SideToSideH_Width ?? 0);
                tempMaterialByLot.VersionNo = tempVersionNo;
                tempMaterialByLot.ItemNo = temp.Item_No.Substring(0, 9);
                tempMaterialByLot.StockInDate = temp.Stock_In_Date;
                tempMaterialByLot.ColorNo = temp.Item_No.Substring(9, 3);
                //tempMaterialByLot.Wastage = getSumWastage(temp.Item_No, temp.Stock_In_Date, visibleRowHandles) * 100;
                //tempMaterialByLot.Deduct = getSumDeduct(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);

                tempMaterialByLot.ReceiveDate = temp.Stock_In_Date;
                //Xsj:计算最小的InspectionNo
                tempMaterialByLot.InspectionNo = (int)getMinSystemInstallNo(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //Xsj:计算ERP实际的收料长度(因為FIS可能只檢驗部份數據，所以必須從ERP才能取得總數)---OK
                tempMaterialByLot.ReceiveLength = Math.Round(getSumActualLength(temp.Item_No, tempPH984Fields), 2);
                //Xsj:计算FIS实际的收料长度
                tempMaterialByLot.InspectionLength = Math.Round(getSumInspcetionLength(temp.Item_No, temp.Stock_In_Date, visibleRowHandles), 2);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//
                //Xsj:计算FIS实际的收料长度
                tempMaterialByLot.ActualLength = (decimal)getSumActualLength(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//
                //Xsj:计算断码率
                tempMaterialByLot.ShortPercent = getShortPercent(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //Xsj(补):计算因PartDefect的退料数
                tempMaterialByLot.PartReturnQty = getPartReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //Xsj(补):计算所有因素的退料数
                tempMaterialByLot.ReturnQty = getReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);

                //Xsj(补):计算长短码数量
                tempMaterialByLot.MoreOrLessLength = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * tempMaterialByLot.ShortPercent / 100;
                tempMaterialByLot.MoreOrLessLength = Math.Round(tempMaterialByLot.MoreOrLessLength, 2);

                if ((tempMaterialByLot.InspectionLength == tempMaterialByLot.ReturnQty) && (tempMaterialByLot.PartReturnQty == tempMaterialByLot.PartReturnQty))
                {
                    tempMaterialByLot.Wastage = 100;
                    tempMaterialByLot.Deduct = tempMaterialByLot.ReceiveLength;
                }
                else
                {
                    tempMaterialByLot.Wastage = (getSumDeduct(temp.Item_No, temp.Stock_In_Date, visibleRowHandles)) / (tempMaterialByLot.InspectionLength - tempMaterialByLot.ReturnQty) * 100;


                    #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                    //tempMaterialByLot.Deduct = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * (1 - tempMaterialByLot.ShortPercent / 100) * tempMaterialByLot.Wastage / 100;
                    //長短碼率不應該參與計算
                    tempMaterialByLot.Deduct = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * tempMaterialByLot.Wastage / 100;
                    #endregion
                }

                SysParamHelper sph = SysParamHelper.Instance;
                if (tempMaterialByLot.MoreOrLessLength > 0)
                {

                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        tempMaterialByLot.ShortLengthString = "長碼 Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

                    if (sph.LangID == "TH")
                        tempMaterialByLot.ShortLengthString = "ส่วนเกิน(ฟรี) Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        tempMaterialByLot.ShortLengthString = "Extra Ship(Free) Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
                }
                else
                {
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        tempMaterialByLot.ShortLengthString = "短碼 Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

                    if (sph.LangID == "TH")
                        tempMaterialByLot.ShortLengthString = "ความยาวผ้าไม่ครบ Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        tempMaterialByLot.ShortLengthString = "Shot length Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
                }

                if (tempMaterialByLot.ReceiveLength != 0) tempMaterialByLot.InspectionRate = Math.Round((100 * tempMaterialByLot.ActualLength / tempMaterialByLot.ReceiveLength), 2);

                tempMaterialByLot.Total_PHSample = (decimal)getSumPHSample(tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, visibleRowHandles);
                tempMaterialByLot.InspectionDate = getMaxInspectionData(tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, visibleRowHandles);
                //todo 標準布封(mm)
                //tempMaterialByLot.UsableWidth
                //實際布封(mm)
                decimal iMinActualUsableWidth = getMinAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                decimal iMaxActualUsableWidth = getMaxAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //tempMaterialByLot.ActualUsableWidth = Convert.ToString(iMinActualUsableWidth, provider) + " - " + Convert.ToString(iMaxActualUsableWidth, provider);
                tempMaterialByLot.ActualUsableWidth = iMinActualUsableWidth.ToString() + " - " + iMaxActualUsableWidth.ToString();

                //sharly 20100226 Begin
                //實際邊至邊布封(mm)
                decimal iMinActEtoEWidth = getMinActEtoEWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                decimal iMaxActEtoEWidth = getMaxActEtoEWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                tempMaterialByLot.ActEtoEWidth = iMinActEtoEWidth.ToString() + " - " + iMaxActEtoEWidth.ToString();
                //sharly 20100226 End
                ///Summary
                ///Modified By:Michael
                ///Modified at:2008-09-01
                ///Function Description:獲取抽檢匹數
                ///Summary
                tempMaterialByLot.Detect_Piece = visibleRowHandles.Count;

                //todo 標準克重(spm)
                if (tempPH984Fields.Count > 0)
                {
                    tempMaterialByLot.Weight = (int)tempPH984Fields[0].GM_SQM;
                    tempMaterialByLot.Supplier_Width = (int)tempPH984Fields[0].Supplier_Width;
                    tempMaterialByLot.UsableWidth = (int)tempPH984Fields[0].Usable_Width;

                    ///Summary
                    ///Modified By:Michael
                    ///Modified at:2008-09-01
                    ///Function Description:獲取回料匹數
                    ///Summary
                    tempMaterialByLot.GRN_Piece = tempPH984Fields.Count;

                }

                tempMaterialByLot.DifferenceUsableWidth = (iMinActualUsableWidth - tempMaterialByLot.UsableWidth).ToString()
                    + " - " + ((int)(iMaxActualUsableWidth - tempMaterialByLot.UsableWidth)).ToString();

                //todo 實際克重(spm)
                //                M1:被選擇的條件中最小的ACTUAL_WEIGHT  (ACTUAL_WEIGHT這個字段是需要新增的)
                int iMinActualWeight = (int)getMinAcutalWeight(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //M2:被選擇的條件中最大的ACTUAL_WEIGHT
                int iMaxActualWeight = (int)getMaxAcutalWeight(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);


                //tempMaterialByLot.ActualWeight = Convert.ToString(iMinActualWeight, provider) + " - " + Convert.ToString(iMaxActualWeight, provider);
                tempMaterialByLot.ActualWeight = ((int)iMinActualWeight).ToString() + " - " + ((int)iMaxActualWeight).ToString();
                //tempMaterialByLot.DifferenceWeight = Convert.ToString((iMinActualWeight - tempMaterialByLot.Weight), provider) + " - " + Convert.ToString((iMaxActualWeight - tempMaterialByLot.Weight), provider);
                tempMaterialByLot.DifferenceWeight = ((int)(iMinActualWeight - tempMaterialByLot.Weight)).ToString() + " - " + ((int)(iMaxActualWeight - tempMaterialByLot.Weight)).ToString();

                //tempMaterialByLot.ShortPercent = getShortPercent(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //tempMaterialByLot.ReturnQty = getReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                //tempMaterialByLot.MoreOrLengthString = temp  getMoreLengthString(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
                tempMaterialByLot.PO = getAllPONo(temp.Item_No, tempPH984Fields);
                tempMaterialByLot.HdoNo = getAllHDONo(temp.Item_No, tempPH984Fields);
                tempMaterialByLot.ProjectNo = getAllProjectNo(temp.Item_No, tempPH984Fields);

                tempMaterialByLot.PO = string.IsNullOrEmpty(tempMaterialByLot.PO) ? temp.PO : tempMaterialByLot.PO;
                tempMaterialByLot.HdoNo = string.IsNullOrEmpty(tempMaterialByLot.HdoNo) ? temp.HdoNo : tempMaterialByLot.HdoNo;
                tempMaterialByLot.ProjectNo = string.IsNullOrEmpty(tempMaterialByLot.ProjectNo) ? temp.ProjectNo : tempMaterialByLot.ProjectNo;

                ///Summary
                ///Modified By:Michael
                ///Modified at:2008-09-01
                ///Function Description:obtain Invoice No
                ///Summary
                tempMaterialByLot.InvoiceNo = getAllInvoiceNo(temp.Item_No, tempPH984Fields);
                tempMaterialByLot.InvoiceNo = string.IsNullOrEmpty(tempMaterialByLot.InvoiceNo) ? temp.InvoiceNo : tempMaterialByLot.InvoiceNo;


                ///==========================================================================
                ///Summary
                ///Modified By:Michael
                ///Modified at:2008-09-01
                ///Function Description:obtain Supplier Item No
                ///Summary
                ///==========================================================================
                if (tempPH984Fields.Count > 0)
                {
                    tempMaterialByLot.Supplier_Item_No = string.IsNullOrEmpty(tempPH984Fields[0].Supplier_Item_No) ? temp.Supplier_Item_No : tempPH984Fields[0].Supplier_Item_No;
                    tempMaterialByLot.Supplier = string.IsNullOrEmpty(tempPH984Fields[0].SupplierName) ? temp.Supplier_Code : tempPH984Fields[0].SupplierName;
                    tempMaterialByLot.SupplierDescription = tempPH984Fields[0].Supplier_Description;
                }



                ///======================================================================================
                /// <summary>
                /// Modified By:Michael Luo
                /// Modified at:2008-09-01
                /// Function Desction:
                /// 1.把每個LOT ID 每板的相同的局部疵點的分數累加(同一個板數若分數為4分,則取第一個4分的,
                /// 若超過一個板數的一條記錄超過4分的統一按4分計算;若同一板數多條記錄少於4分,則取多條記錄;
                /// 若同一板數多條記錄大於4分,則取累計分數為4分的記錄
                /// 2.再將不同疵點的分數分別累加後,將分數最嚴重的五個局部疵點
                ///======================================================================================

                calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date);
                //calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);
                ///======================================================================================

                //S: 將所有的不同的散佈疵點顯示出來
                getSpreadDefects(temp.Item_No, tempMaterialByLot, visibleRowHandles);
                //T: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
                //U: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
                getMouldTrialAndColorAndWeftYarnInfo(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);
                getInsepctionHeaderPartDefectsAndSpreadDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);

                ///============================================================================
                ///Modified By:Michael
                ///Modified At:2008-07-25
                getSpreadDefectProcSolution(_ItemNo, tempMaterialByLot);
                ///============================================================================
                ///


                tempMaterialByLot.ShortLengthString2 = getShortLengthString2Value(tempMaterialByLot, _ItemNo, tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, tempMaterialByLot.InspectionLength);
                tempMaterialByLot.ShortLengthString3 = getShortLengthString3Value(tempMaterialByLot, _ItemNo, tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, tempMaterialByLot.InspectionLength);
                tempMaterialByLot.StdWeight = getStdWeight(tempMaterialByLot.Supplier_Item_No);
                tempMaterialByLot.StdUsableWidth = getStdUsableWidth(tempMaterialByLot.Supplier_Item_No);
                SetStdMidcValue(tempMaterialByLot, tempMaterialByLot.Supplier_Item_No);
                SetStatusValue(tempMaterialByLot, tempMaterialByLot.Supplier_Item_No, temp.Usable_Width, temp.Actual_Weight);

                resultData.Add(tempMaterialByLot);
            }

            return resultData;
        }


        //private List<MaterialByLot> getDataByLot(string tempVersionNo)
        //{
        //    NumberFormatInfo provider = new NumberFormatInfo();
        //    provider.NumberDecimalDigits = 0;
        //    provider.NumberGroupSeparator = ".";


        //    List<MaterialByLot> resultData = new List<MaterialByLot>();
        //    MaterialByLot tempMaterialByLot = null;
        //    Fabric_Insp_Header temp = null;
        //    string _ItemNo = "";

        //    //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。
        //    decimal avgPoints_Hundred_SQM = getAllVisibleRowAvgPoints_Hundred_SQM();
        //    //----End


        //    //List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.AuditStage);
        //    List<int> visibleRowHandles = getAllVisibleRowHandle(Fobj.Item_No, Fobj.Stock_In_Date, Fobj.AuditStage);


        //    for (int j = 0; j < visibleRowHandles.Count; j++)
        //    {
        //        temp = (Fabric_Insp_Header)objListGridView.GetRow(visibleRowHandles[j]);
        //        _ItemNo = temp.Item_No.Trim();
        //        //Xsj:获取唯一的Item_No,Stock_In_Date的Lot_ID质料集合
        //        if (isItemNoExistInMaterialByLot(temp.Item_No, temp.Stock_In_Date, resultData))
        //        {
        //            continue;
        //        }

        //        List<PH984Field> tempPH984Fields = PH984Field.GetAllDataFromAS400WithItemNo(temp.Company, temp.Item_No, temp.Stock_In_Date);

        //        tempMaterialByLot = new MaterialByLot();


        //        tempMaterialByLot.RefNo = temp.RefNo; //由David加入 2020-09-29

        //        tempMaterialByLot.AuditStage = temp.AuditStage; //由shulin加入 2020-11-21

        //        //Xsj20130617:By Lot Report中計算平均點數範圍的邏輯沒有觸發，查看2011-3-4的代碼，發確也缺失這部份邏輯的觸發，具休原因不知。 
        //        tempMaterialByLot.Average_Punish_Points = avgPoints_Hundred_SQM;
        //        //----End

        //        tempMaterialByLot.SideToSideH_Width = (int)(temp.SideToSideH_Width ?? 0);
        //        tempMaterialByLot.VersionNo = tempVersionNo;
        //        tempMaterialByLot.ItemNo = temp.Item_No.Substring(0, 9);
        //        tempMaterialByLot.StockInDate = temp.Stock_In_Date;
        //        tempMaterialByLot.ColorNo = temp.Item_No.Substring(9, 3);
        //        //tempMaterialByLot.Wastage = getSumWastage(temp.Item_No, temp.Stock_In_Date, visibleRowHandles) * 100;
        //        //tempMaterialByLot.Deduct = getSumDeduct(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);

        //        tempMaterialByLot.ReceiveDate = temp.Stock_In_Date;
        //        //Xsj:计算最小的InspectionNo
        //        tempMaterialByLot.InspectionNo = (int)getMinSystemInstallNo(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //Xsj:计算ERP实际的收料长度(因為FIS可能只檢驗部份數據，所以必須從ERP才能取得總數)---OK
        //        tempMaterialByLot.ReceiveLength = Math.Round(getSumActualLength(temp.Item_No, tempPH984Fields), 2);
        //        //Xsj:计算FIS实际的收料长度
        //        tempMaterialByLot.InspectionLength = Math.Round(getSumInspcetionLength(temp.Item_No, temp.Stock_In_Date, visibleRowHandles), 2);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//
        //        //Xsj:计算FIS实际的收料长度
        //        tempMaterialByLot.ActualLength = (decimal)getSumActualLength(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);//getSumInspectionLength(temp.Item_No, tempPH984Fields);//
        //        //Xsj:计算断码率
        //        tempMaterialByLot.ShortPercent = getShortPercent(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //Xsj(补):计算因PartDefect的退料数
        //        tempMaterialByLot.PartReturnQty = getPartReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //Xsj(补):计算所有因素的退料数
        //        tempMaterialByLot.ReturnQty = getReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);

        //        //Xsj(补):计算长短码数量
        //        tempMaterialByLot.MoreOrLessLength = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * tempMaterialByLot.ShortPercent / 100;
        //        tempMaterialByLot.MoreOrLessLength = Math.Round(tempMaterialByLot.MoreOrLessLength, 2);

        //        if ((tempMaterialByLot.InspectionLength == tempMaterialByLot.ReturnQty) && (tempMaterialByLot.PartReturnQty == tempMaterialByLot.PartReturnQty))
        //        {
        //            tempMaterialByLot.Wastage = 100;
        //            tempMaterialByLot.Deduct = tempMaterialByLot.ReceiveLength;
        //        }
        //        else
        //        {
        //            tempMaterialByLot.Wastage = (getSumDeduct(temp.Item_No, temp.Stock_In_Date, visibleRowHandles)) / (tempMaterialByLot.InspectionLength - tempMaterialByLot.ReturnQty) * 100;


        //            #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
        //            //tempMaterialByLot.Deduct = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * (1 - tempMaterialByLot.ShortPercent / 100) * tempMaterialByLot.Wastage / 100;
        //            //長短碼率不應該參與計算
        //            tempMaterialByLot.Deduct = (tempMaterialByLot.ReceiveLength - tempMaterialByLot.ReturnQty) * tempMaterialByLot.Wastage / 100;
        //            #endregion
        //        }

        //        SysParamHelper sph = SysParamHelper.Instance;
        //        if (tempMaterialByLot.MoreOrLessLength > 0)
        //        {

        //            if (sph.LangID == "TW" || sph.LangID == "CN")
        //                tempMaterialByLot.ShortLengthString = "長碼 Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

        //            if (sph.LangID == "TH")
        //                tempMaterialByLot.ShortLengthString = "ส่วนเกิน(ฟรี) Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

        //            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
        //                tempMaterialByLot.ShortLengthString = "Extra Ship(Free) Length: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
        //        }
        //        else
        //        {
        //            if (sph.LangID == "TW" || sph.LangID == "CN")
        //                tempMaterialByLot.ShortLengthString = "短碼 Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

        //            if (sph.LangID == "TH")
        //                tempMaterialByLot.ShortLengthString = "ความยาวผ้าไม่ครบ Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";

        //            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
        //                tempMaterialByLot.ShortLengthString = "Shot length Short: " + tempMaterialByLot.MoreOrLessLength.ToString() + " (" + tempMaterialByLot.ShortPercent.ToString() + "%)";
        //        }

        //        if (tempMaterialByLot.ReceiveLength != 0) tempMaterialByLot.InspectionRate = Math.Round((100 * tempMaterialByLot.ActualLength / tempMaterialByLot.ReceiveLength), 2);

        //        tempMaterialByLot.Total_PHSample = (decimal)getSumPHSample(tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        tempMaterialByLot.InspectionDate = getMaxInspectionData(tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //todo 標準布封(mm)
        //        //tempMaterialByLot.UsableWidth
        //        //實際布封(mm)
        //        decimal iMinActualUsableWidth = getMinAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        decimal iMaxActualUsableWidth = getMaxAcutalUsableWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //tempMaterialByLot.ActualUsableWidth = Convert.ToString(iMinActualUsableWidth, provider) + " - " + Convert.ToString(iMaxActualUsableWidth, provider);
        //        tempMaterialByLot.ActualUsableWidth = iMinActualUsableWidth.ToString() + " - " + iMaxActualUsableWidth.ToString();

        //        //sharly 20100226 Begin
        //        //實際邊至邊布封(mm)
        //        decimal iMinActEtoEWidth = getMinActEtoEWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        decimal iMaxActEtoEWidth = getMaxActEtoEWidth(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        tempMaterialByLot.ActEtoEWidth = iMinActEtoEWidth.ToString() + " - " + iMaxActEtoEWidth.ToString();
        //        //sharly 20100226 End
        //        ///Summary
        //        ///Modified By:Michael
        //        ///Modified at:2008-09-01
        //        ///Function Description:獲取抽檢匹數
        //        ///Summary
        //        tempMaterialByLot.Detect_Piece = visibleRowHandles.Count;

        //        //todo 標準克重(spm)
        //        if (tempPH984Fields.Count > 0)
        //        {
        //            tempMaterialByLot.Weight = (int)tempPH984Fields[0].GM_SQM;
        //            tempMaterialByLot.Supplier_Width = (int)tempPH984Fields[0].Supplier_Width;
        //            tempMaterialByLot.UsableWidth = (int)tempPH984Fields[0].Usable_Width;

        //            ///Summary
        //            ///Modified By:Michael
        //            ///Modified at:2008-09-01
        //            ///Function Description:獲取回料匹數
        //            ///Summary
        //            tempMaterialByLot.GRN_Piece = tempPH984Fields.Count;

        //        }

        //        tempMaterialByLot.DifferenceUsableWidth = (iMinActualUsableWidth - tempMaterialByLot.UsableWidth).ToString()
        //            + " - " + ((int)(iMaxActualUsableWidth - tempMaterialByLot.UsableWidth)).ToString();

        //        //todo 實際克重(spm)
        //        //                M1:被選擇的條件中最小的ACTUAL_WEIGHT  (ACTUAL_WEIGHT這個字段是需要新增的)
        //        int iMinActualWeight = (int)getMinAcutalWeight(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //M2:被選擇的條件中最大的ACTUAL_WEIGHT
        //        int iMaxActualWeight = (int)getMaxAcutalWeight(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);


        //        //tempMaterialByLot.ActualWeight = Convert.ToString(iMinActualWeight, provider) + " - " + Convert.ToString(iMaxActualWeight, provider);
        //        tempMaterialByLot.ActualWeight = ((int)iMinActualWeight).ToString() + " - " + ((int)iMaxActualWeight).ToString();
        //        //tempMaterialByLot.DifferenceWeight = Convert.ToString((iMinActualWeight - tempMaterialByLot.Weight), provider) + " - " + Convert.ToString((iMaxActualWeight - tempMaterialByLot.Weight), provider);
        //        tempMaterialByLot.DifferenceWeight = ((int)(iMinActualWeight - tempMaterialByLot.Weight)).ToString() + " - " + ((int)(iMaxActualWeight - tempMaterialByLot.Weight)).ToString();

        //        //tempMaterialByLot.ShortPercent = getShortPercent(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //tempMaterialByLot.ReturnQty = getReturnQty(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        //tempMaterialByLot.MoreOrLengthString = temp  getMoreLengthString(temp.Item_No, temp.Stock_In_Date, visibleRowHandles);
        //        tempMaterialByLot.PO = getAllPONo(temp.Item_No, tempPH984Fields);
        //        tempMaterialByLot.HdoNo = getAllHDONo(temp.Item_No, tempPH984Fields);
        //        tempMaterialByLot.ProjectNo = getAllProjectNo(temp.Item_No, tempPH984Fields);

        //        ///Summary
        //        ///Modified By:Michael
        //        ///Modified at:2008-09-01
        //        ///Function Description:obtain Invoice No
        //        ///Summary
        //        tempMaterialByLot.InvoiceNo = getAllInvoiceNo(temp.Item_No, tempPH984Fields);

        //        ///==========================================================================
        //        ///Summary
        //        ///Modified By:Michael
        //        ///Modified at:2008-09-01
        //        ///Function Description:obtain Supplier Item No
        //        ///Summary
        //        ///==========================================================================
        //        if (tempPH984Fields.Count > 0)
        //        {
        //            tempMaterialByLot.Supplier_Item_No = tempPH984Fields[0].Supplier_Item_No;
        //            tempMaterialByLot.Supplier = tempPH984Fields[0].SupplierName;
        //            tempMaterialByLot.SupplierDescription = tempPH984Fields[0].Supplier_Description;
        //        }



        //        ///======================================================================================
        //        /// <summary>
        //        /// Modified By:Michael Luo
        //        /// Modified at:2008-09-01
        //        /// Function Desction:
        //        /// 1.把每個LOT ID 每板的相同的局部疵點的分數累加(同一個板數若分數為4分,則取第一個4分的,
        //        /// 若超過一個板數的一條記錄超過4分的統一按4分計算;若同一板數多條記錄少於4分,則取多條記錄;
        //        /// 若同一板數多條記錄大於4分,則取累計分數為4分的記錄
        //        /// 2.再將不同疵點的分數分別累加後,將分數最嚴重的五個局部疵點
        //        ///======================================================================================

        //        calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date);
        //        //calcPartDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);
        //        ///======================================================================================

        //        //S: 將所有的不同的散佈疵點顯示出來
        //        getSpreadDefects(temp.Item_No, tempMaterialByLot, visibleRowHandles);
        //        //T: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
        //        //U: 具體內容請參考我8月9號發給你的郵件 (郵件名稱:參考用戶提供的EXCEL)
        //        getMouldTrialAndColorAndWeftYarnInfo(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);
        //        getInsepctionHeaderPartDefectsAndSpreadDefects(temp.Item_No, tempMaterialByLot, temp.Stock_In_Date, visibleRowHandles);

        //        ///============================================================================
        //        ///Modified By:Michael
        //        ///Modified At:2008-07-25
        //        getSpreadDefectProcSolution(_ItemNo, tempMaterialByLot);
        //        ///============================================================================
        //        ///

        //        tempMaterialByLot.ShortLengthString2 = getShortLengthString2Value(tempMaterialByLot, _ItemNo, tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, tempMaterialByLot.InspectionLength);
        //        tempMaterialByLot.ShortLengthString3 = getShortLengthString3Value(tempMaterialByLot, _ItemNo, tempMaterialByLot.Supplier_Item_No, temp.Stock_In_Date, tempMaterialByLot.InspectionLength);
        //        tempMaterialByLot.StdWeight = getStdWeight(tempMaterialByLot.Supplier_Item_No);
        //        tempMaterialByLot.StdUsableWidth = getStdUsableWidth(tempMaterialByLot.Supplier_Item_No);
        //        SetStdMidcValue(tempMaterialByLot, tempMaterialByLot.Supplier_Item_No);
        //        SetStatusValue(tempMaterialByLot, tempMaterialByLot.Supplier_Item_No, temp.Usable_Width, temp.Actual_Weight);

        //        resultData.Add(tempMaterialByLot);
        //    }

        //    return resultData;
        //}

        /// <summary>
        /// //Xsj(补)20110919:獲取所有可見行
        /// </summary>
        /// <returns></returns>
        private List<int> getAllVisibleRowHandle(string Item_No, string Stock_In_Date, string AuditStage)
        {

            List<int> resultRowHandles = new List<int>();
            int j = 0;
            bandedGridView1.MoveFirst();
            Fabric_Insp_Header obj = new Fabric_Insp_Header();
            while (j < bandedGridView1.RowCount)
            {
                j++;

                int[] rowHandles = bandedGridView1.GetSelectedRows();
                if (rowHandles.Length > 0)
                {
                    obj = bandedGridView1.GetRow(rowHandles[0]) as Fabric_Insp_Header;
                    if (obj.AuditStage == AuditStage && obj.Item_No == Item_No && obj.Stock_In_Date == Stock_In_Date)
                        resultRowHandles.Add(rowHandles[0]);

                }

                bandedGridView1.MoveNext();
            }
            return resultRowHandles;

        }

        /// <summary>
        /// Xsj20110919:獲取所有可見行的平均Points_Hundred_SQM
        /// </summary>
        /// <returns></returns>
        private decimal getAllVisibleRowAvgPoints_Hundred_SQM()
        {
            decimal totalPoints_Hundred_SQM = 0;
            decimal avgPoints_Hundred_SQM = 0;
            int j = 0;
            bandedGridView1.MoveFirst();
            while (j < bandedGridView1.RowCount)
            {
                j++;
                int[] rowHandles = bandedGridView1.GetSelectedRows();
                if (rowHandles.Length > 0)
                {
                    Fabric_Insp_Header fisHeader = bandedGridView1.GetRow(rowHandles[0]) as Fabric_Insp_Header;
                    if (fisHeader != null)
                    {
                        totalPoints_Hundred_SQM += Convert.ToInt32(fisHeader.Points_Hundred_SQM ?? 0);
                    }
                }

                bandedGridView1.MoveNext();
            }

            if (bandedGridView1.RowCount > 0)
            {
                avgPoints_Hundred_SQM = totalPoints_Hundred_SQM / bandedGridView1.RowCount;
            }

            return avgPoints_Hundred_SQM;

        }

        /// <summary>
        /// Xsj(补)：检查相同的ItemNo和stockInDate的资料是否已存在
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="resultData"></param>
        /// <returns></returns>
        private bool isItemNoExistInMaterialByLot(String strItemNo, string stockInDate, List<MaterialByLot> resultData)
        {
            foreach (MaterialByLot materialByLot in resultData)
            {
                if ((materialByLot.ItemNo == strItemNo.Substring(0, 9)) && (materialByLot.StockInDate == stockInDate))
                {
                    return true;
                }
            }
            return false;
        }

        private decimal getSumWastage(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal dSumWastage = 0;
            decimal dSumActualLength = 0;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                    //dSumWastage = dSumWastage + (decimal)temp.Actual_Length * (decimal)(temp.Wastage ?? 0);
                    //dSumActualLength = dSumActualLength + (decimal)temp.Actual_Length;

                    dSumWastage = dSumWastage + (decimal)((temp.Insp_Length ?? 0) + (temp.PH_Sample ?? 0)) * (decimal)(temp.Wastage ?? 0);
                    dSumActualLength = dSumActualLength + (decimal)((temp.Insp_Length ?? 0) + (temp.PH_Sample ?? 0));
                    #endregion

                }

            }
            if (dSumActualLength == 0)
            {
                return 0;
            }
            else
            {
                return dSumWastage / dSumActualLength;
            }
        }


        private decimal getSumDeduct(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                //string status = temp.Color_Group_Status.Length > 1 ? temp.Color_Group_Status.Substring(0, 1) : "";
                string status = !string.IsNullOrEmpty(temp.Color_Group_Status) && temp.Color_Group_Status.Length > 1 ? temp.Color_Group_Status.Substring(0, 1) : "";


                #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                //if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate) && (temp.Spread_Insp_Result != "3") && (temp.Party_Insp_Result != "3") && (temp.Mould_Trial_Result != "2") && (status != "?")
                    && (temp.WeftYarnStatus != "3") && (temp.ElongationStatus != "3"))
                #endregion
                {
                    #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                    //dSum = dSum + (decimal)temp.Actual_Length * (decimal)temp.Wastage;
                    //dSum = dSum + (decimal)((temp.Insp_Length ?? 0) + (temp.PH_Sample ?? 0)) * (decimal)temp.Wastage;
                    //只用入庫數乘以費料率，不用考驗剪板數
                    decimal val = (decimal)(temp.Insp_Length ?? 0) * (decimal)temp.Wastage;
                    dSum = dSum + val;
                    #endregion
                }

            }
            return dSum;
        }

        /// <summary>
        /// Xsj(补):获取最小的System_Install_No，也就是最早的检验记录
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="visibleRowHandles"></param>
        /// <returns></returns>
        private int getMinSystemInstallNo(String strItemNo, string stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            int iMin = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMin = temp.System_Install_No;
                        isFirst = false;
                    }
                    if (temp.System_Install_No < iMin)
                    {
                        iMin = temp.System_Install_No;
                    }
                }

            }
            return iMin;
        }

        /// <summary>
        /// 短碼數 = [ ( 累加檢測且非ReturnID的實際檢測到的數量 + 累加檢測且非ReturnID的PH sample - 累加檢測且非ReturnID的回料數量 ) 
        ///            /累加檢測且非ReturnID的回料數量
        ///          ] * 該水回料非Return的回料總數;
        /// </summary>
        private decimal getShortPercent(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal shortPercent = 0;
            decimal sumInsp_Length = 0;
            decimal sumActual_Length = 0;
            decimal sumPH_Sample = 0;

            //Xsj20120607:為了調整長短碼計算而添加以下代碼
            PH.FabricInspection.BO.FabricInspectionDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();

            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                string status = !string.IsNullOrEmpty(temp.Color_Group_Status) && temp.Color_Group_Status.Length > 1 ? temp.Color_Group_Status.Substring(0, 1) : "";

                //Xsj(补):120605合计非退料的Insp_Length, Actual_Lengt,PH_Sample
                #region
                //Xsj20120607:為了調整長短碼計算而修改以下條件,添加(temp.WeftYarnStatus != "3") && (temp.ElongationStatus != "3")退料的判斷情況。
                //if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
                //    && (temp.Spread_Insp_Result != "3") && (temp.Party_Insp_Result != "3") && (temp.Mould_Trial_Result != "2") && (status != "?") && (temp.Insp_Length > 0))
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
                                   && (temp.Spread_Insp_Result != "3") && (temp.Party_Insp_Result != "3") && (temp.Mould_Trial_Result != "2") && (status != "?") && (temp.Insp_Length > 0)
                                   && (temp.WeftYarnStatus != "3") && (temp.ElongationStatus != "3"))
                #endregion
                {
                    sumInsp_Length = sumInsp_Length + (decimal)temp.Insp_Length;
                    sumActual_Length = sumActual_Length + (decimal)temp.Actual_Length;
                    sumPH_Sample = sumPH_Sample + (decimal)temp.PH_Sample;
                }
                #region
                //Xsj20120607:為了調整長短碼計算而添加以下代碼
                //將退料ID的實際檢驗長度作為其理論長度
                else
                {
                    //Xsj:退料ID為00的情況
                    if (temp.Lot_Id.EndsWith("00"))
                    {
                        //if ((decimal)temp.Actual_Length > ((decimal)temp.Insp_Length + temp.PH_Sample ?? 0))
                        //{
                        //    sumActual_Length = sumActual_Length + (decimal)temp.Actual_Length - ((decimal)temp.Insp_Length + temp.PH_Sample ?? 0);
                        //} 

                        string LotId13 = temp.Lot_Id.Substring(0, 13);
                        var objs = from c in context.Fabric_Insp_Headers
                                   where c.Lot_Id.Substring(0, 13) == LotId13 && c.Actual_Length == 0
                                   select c;
                        if (objs.Count() > 0)
                        {
                            sumActual_Length = sumActual_Length + objs.Sum(p => (p.Insp_Length ?? 0) + (p.PH_Sample ?? 0));
                        }
                    }
                    else
                    {
                        sumActual_Length = sumActual_Length - ((decimal)temp.Insp_Length + temp.PH_Sample ?? 0);
                    }
                }
                #endregion

            }
            if (sumActual_Length != 0)
            {
                shortPercent = (sumInsp_Length - sumActual_Length + sumPH_Sample) / sumActual_Length * 100;
            }
            return Math.Round(shortPercent, 2); ;
        }

        /// <summary>
        /// Xsj(补):计算退料数
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="visibleRowHandles"></param>
        /// <returns></returns>
        private decimal getReturnQty(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal ReturnQty = 0;
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                string status = !string.IsNullOrEmpty(temp.Color_Group_Status) && temp.Color_Group_Status.Length > 1 ? temp.Color_Group_Status.Substring(0, 1) : "";

                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
                    && (temp.Insp_Length > 0) && ((temp.Spread_Insp_Result == "3") || (temp.Party_Insp_Result == "3") || (temp.Mould_Trial_Result == "2") || (status == "?")
                    || (temp.WeftYarnStatus == "3") || (temp.ElongationStatus == "3")))
                {
                    #region
                    //Xsj20120612:因調整長短碼計算而注釋掉以上代碼添加以下代碼
                    //ReturnQty = ReturnQty + (decimal)temp.Actual_Length;
                    ReturnQty = ReturnQty + (decimal)((temp.Insp_Length ?? 0) + (temp.PH_Sample ?? 0));
                    #endregion
                }

            }

            return Math.Round(ReturnQty, 2); ;
        }

        /// <summary>
        /// Xsj(补):计算PartDefect的退料数
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="visibleRowHandles"></param>
        /// <returns></returns>
        private decimal getPartReturnQty(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal PartReturnQty = 0;
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                string status = !string.IsNullOrEmpty(temp.Color_Group_Status) && temp.Color_Group_Status.Length > 1 ? temp.Color_Group_Status.Substring(0, 1) : "";

                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate)
                    && (temp.Insp_Length > 0) && (temp.Party_Insp_Result == "3"))
                {
                    #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                    //PartReturnQty = PartReturnQty + (decimal)temp.Actual_Length;
                    PartReturnQty = PartReturnQty + (decimal)((temp.Insp_Length ?? 0) + (temp.PH_Sample ?? 0));
                    #endregion

                }

            }

            return Math.Round(PartReturnQty, 2); ;
        }


        private decimal getMinAcutalWeight(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMin = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMin = (decimal)temp.Actual_Weight;
                        isFirst = false;
                    }

                    if (temp.Actual_Weight < iMin)
                    {
                        iMin = (decimal)temp.Actual_Weight;
                    }
                }

            }
            return iMin;
        }

        private decimal getMaxAcutalWeight(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMax = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMax = (decimal)temp.Actual_Weight;
                        isFirst = false;
                    }

                    if (temp.Actual_Weight > iMax)
                    {
                        iMax = (decimal)temp.Actual_Weight;
                    }
                }

            }
            return iMax;
        }

        private decimal getMinAcutalUsableWidth(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMin = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMin = (decimal)temp.Usable_Width;
                        isFirst = false;
                    }

                    if (temp.Usable_Width < iMin)
                    {
                        iMin = (decimal)temp.Usable_Width;
                    }
                }

            }
            return Math.Round(iMin, 2);
        }

        // sharly 20100226 begin
        private decimal getMinActEtoEWidth(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMin = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMin = (decimal)temp.SideToSideH_Width;
                        isFirst = false;
                    }

                    if (temp.SideToSideH_Width < iMin)
                    {
                        iMin = (decimal)temp.SideToSideH_Width;
                    }
                }

            }
            return Math.Round(iMin, 2);
        }
        private decimal getMaxActEtoEWidth(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMax = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMax = (decimal)temp.SideToSideH_Width;
                        isFirst = false;
                    }

                    if (temp.SideToSideH_Width > iMax)
                    {
                        iMax = (decimal)temp.SideToSideH_Width;
                    }
                }

            }
            return Math.Round(iMax, 2);
        }
        // sharly 20100226 end

        /// <summary>
        /// Xsj(补):计算ERP的实际Actual_Length
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="tempInspectionHeaders"></param>
        /// <returns></returns>
        private decimal getSumActualLength(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            decimal dSum = 0;
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {

                    dSum = dSum + temp.Actual_Length;

                }

            }
            return Math.Round(dSum, 2);
        }

        /// <summary>
        /// Xsj(补):计算所有的Lot_ID的Insp_Length
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="visibleRowHandles"></param>
        /// <returns></returns>
        private decimal getSumInspcetionLength(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {

                    #region//Xsj20120607:為了調整長短碼計算而注釋掉以上代碼，添加以下代碼
                    //dSum = dSum + (decimal)temp.Actual_Length;
                    dSum = dSum + (decimal)temp.Insp_Length;
                    #endregion
                }

            }
            return Math.Round(dSum, 2);
        }

        /// <summary>
        /// Xsj(补):计算所有的Lot_ID的Actual_Length
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="stockInDate"></param>
        /// <param name="visibleRowHandles"></param>
        /// <returns></returns>
        private decimal getSumActualLength(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    dSum = dSum + (decimal)temp.Actual_Length;
                }

            }
            return Math.Round(dSum, 2);
        }

        private decimal getSumPHSample(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal dSum = 0;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    dSum = dSum + (decimal)temp.Panel_Size1 * (decimal)temp.Panel_Size2;
                }

            }
            return Math.Round(dSum, 2);
        }

        private DateTime getMaxInspectionData(String strItemNo, string stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            DateTime dMax = DateTime.Now;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (temp.Create_Date != null)
                    {
                        if (isFirst)
                        {
                            dMax = (DateTime)temp.Create_Date;
                            isFirst = false;
                        }

                        if (((DateTime)temp.Create_Date).CompareTo(dMax) > 0)
                        {
                            dMax = (DateTime)temp.Create_Date;
                        }
                    }
                }

            }
            return dMax;
        }

        public string getStdUsableWidth(string itemNo)
        {
            #region  说明......
            /*
                 * ?H取數方式  
                    SELECT SupplierWidthS, SupplierWidth from [ph.midc].dbo.detail 
                    WHERE SuppRef = 上述報表中的<供應商物料名稱>
                    如果 SupplierWidthS 不等於空白時,?H = SupplierWidths;
                    如果 SupplierWidthS 等於空白時,?H = SupplierWidth;

                 */
            #endregion

            string strReturn = "";

            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == itemNo select c;

            if (objs.Count() != 0)
            {
                strReturn = objs.First<PH.MIDc.BO.Detail>().SupplierWidthS;
                if (String.IsNullOrEmpty(strReturn))
                {
                    strReturn = ((objs.First<PH.MIDc.BO.Detail>().SupplierWidth ?? 0) / 1000.00M).ToString();
                }
            }

            return strReturn;
        }

        public string getStdWeight(string itemNo)
        {

            #region  说明......
            /*
                 * ?J取數方式  
                    SELECT WeightGmSqmS from [ph.midc].dbo.detail 
                    WHERE SuppRef = 上述報表中的<供應商物料名稱>
                    如果WeightGmSqmS 不等於空白時,?J = WeightGmSqmS;
                    如果WeightGmSqmS 等於空白時,?J = WeightGmSqm;


                 */
            #endregion

            string strReturn = null;

            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == itemNo select c;

            if (objs.Count() != 0)
            {
                strReturn = objs.First<PH.MIDc.BO.Detail>().WeightGmSqmS;
                if (String.IsNullOrEmpty(strReturn))
                {
                    strReturn = (objs.First<PH.MIDc.BO.Detail>().WeightGmSqm ?? 0).ToString();
                }

            }

            return strReturn;


        }

        private string getAllPONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strPO = "";

            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.PO) < 0)
                    {
                        strNos.Add(temp.PO);
                    }


                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strPO.Length == 0)
                {
                    strPO = strNos[i];
                }
                else
                {
                    strPO = strPO + "," + strNos[i];
                }

            }

            return strPO;
        }

        private string getAllHDONo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strHdoNo = "";
            List<string> strNos = new List<string>();

            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.HdoNo) < 0)
                    {
                        strNos.Add(temp.HdoNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strHdoNo.Length == 0)
                {
                    strHdoNo = strNos[i];
                }
                else
                {
                    strHdoNo = strHdoNo + "," + strNos[i];
                }

            }
            return strHdoNo;
        }


        private string getAllProjectNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strProjectNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.ProjectNo) < 0)
                    {
                        strNos.Add(temp.ProjectNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strProjectNo.Length == 0)
                {
                    strProjectNo = strNos[i];
                }
                else
                {
                    strProjectNo = strProjectNo + "," + strNos[i];
                }

            }


            return strProjectNo;
        }

        private string getAllInvoiceNo(String strItemNo, List<PH984Field> tempInspectionHeaders)
        {
            PH984Field temp = null;
            string strInvioceNo = "";
            List<string> strNos = new List<string>();
            for (int i = 0, iSize = tempInspectionHeaders.Count; i < iSize; i++)
            {
                temp = tempInspectionHeaders[i];
                if (temp.Item_No == strItemNo)
                {
                    if (strNos.IndexOf(temp.InvoiceNo) < 0)
                    {
                        strNos.Add(temp.InvoiceNo);
                    }

                }

            }

            for (int i = 0, iSize = strNos.Count; i < iSize; i++)
            {
                if (strInvioceNo.Length == 0)
                {
                    strInvioceNo = strNos[i];
                }
                else
                {
                    strInvioceNo = strInvioceNo + "," + strNos[i];
                }

            }


            return strInvioceNo;
        }

        /// <summary>
        /// Modified By:Michael Luo
        /// Modified at:2008-09-01
        /// Function Desction:
        /// 1.把每個LOT ID 每板的相同的局部疵點的分數累加(同一個板數若分數為4分,則取第一個4分的,
        /// 若超過一個板數的一條記錄超過4分的統一按4分計算;若同一板數多條記錄少於4分,則取多條記錄;
        /// 若同一板數多條記錄大於4分,則取累計分數為4分的記錄
        /// 2.再將不同疵點的分數分別累加後,將分數最嚴重的五個局部疵點
        /// </summary>
        /// <param name="strItemNo"></param>
        /// <param name="materialByLot"></param>
        /// <param name="stockInDate"></param>
        private void calcPartDefects(String strItemNo, MaterialByLot materialByLot, string stockInDate)
        {
            if (materialByLot.PartyDefectDetailItems == null)
            {
                materialByLot.PartyDefectDetailItems = new List<PartDefectInfo>();
            }
            DataTable dt = new DataTable();
            dt = Exe_GetPartyDefectName_CountFour(strItemNo, stockInDate);
            int cx = 1;

            foreach (DataRow row in dt.Rows)
            {
                List<PartDefectInfo> groupedPartDefectDetails = new List<PartDefectInfo>();
                PartDefectInfo partyDefectDetail = new PartDefectInfo();
                partyDefectDetail.Defect_Name = row["Defect_Name"].ToString();
                groupedPartDefectDetails.Add(partyDefectDetail);
                if (cx <= 5) materialByLot.PartyDefectDetailItems.AddRange(groupedPartDefectDetails);
                cx++;
            }
        }

        DataTable Exe_GetPartyDefectName_CountFour(string pItem_No, string pStock_In_Date)
        {
            ///Summary
            ///Obtain Spread Defect Records for current select Spread Defect Records.
            ///Summary

            PH.FabricInspection.BO.FabricInspectionDataContext ms = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
            string strConn = "";
            strConn = ms.Connection.ConnectionString.ToString();
            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "sp_GetPartyDefectName_CountFour";
            command.Parameters.Add("@Item_No", SqlDbType.VarChar, 15).Value = pItem_No;
            command.Parameters.Add("@Stock_In_Date", SqlDbType.VarChar, 10).Value = pStock_In_Date;

            DataTable dt = new DataTable();

            try
            {
                SqlDataAdapter adpt = new SqlDataAdapter(command);
                adpt.Fill(dt);
                return dt;

            }
            catch (Exception ex)
            {
                command.Parameters.Clear();
                command.Dispose();
                conn.Dispose();
                ms.Dispose();
                MessageBox.Show(ex.Message);
                return dt;
            }

            finally
            {
                command.Parameters.Clear();
                command.Dispose();
                conn.Dispose();
                ms.Dispose();

            }

        }

        private void calcPartDefects(String strItemNo, MaterialByLot materialByLot, string stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            if (materialByLot.PartyDefectDetailItems == null)
            {
                materialByLot.PartyDefectDetailItems = new List<PartDefectInfo>();
            }

            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    List<PartDefectInfo> groupedPartDefectInfos = groupPartDefectDetailsByTurnNoAndDefectName(temp);
                    List<PartDefectInfo> groupedMaxPartDefectInfos = calcGroupedPartDefects(groupedPartDefectInfos);
                    materialByLot.PartyDefectDetailItems.AddRange(groupedMaxPartDefectInfos);
                }

            }

        }

        private void getSpreadDefects(String strItemNo, MaterialByLot materialByLot, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            if (materialByLot.SpreadDefectDetailItems == null)
            {
                materialByLot.SpreadDefectDetailItems = new List<SpreadDefectInfoByReport>();
            }
            SpreadDefectInfoByReport spreadInfo = null;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                //temp = (Fabric_Insp_Header)bandedGridView1.GetRow(i);
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                foreach (Fabric_Insp_SpreadDefect spreadDetail in temp.Fabric_Insp_SpreadDefects)
                {
                    spreadInfo = new SpreadDefectInfoByReport();
                    spreadInfo.Company = spreadDetail.Company;
                    spreadInfo.System_Install_No = spreadDetail.System_Install_No;
                    //?? 2008-07-11
                    //                    spreadInfo.Item_No = spreadDetail.Item_No;
                    //                    spreadInfo.Lot_Id = spreadDetail.Lot_Id;
                    //
                    spreadInfo.Defect_Type = spreadDetail.Defect_Type;

                    spreadInfo.Defect_Name = spreadDetail.Defect_Name;

                    spreadInfo.Spread_Defect_Degree = spreadDetail.Spread_Defect_Degree;
                    spreadInfo.From_Place = spreadDetail.From_Place;

                    spreadInfo.To_Place = spreadDetail.To_Place;
                    spreadInfo.Spread_Insp_Result = temp.Spread_Insp_Result;

                    materialByLot.SpreadDefectDetailItems.Add(spreadInfo);
                }

            }

        }
        private void getSpreadDefectProcSolution(String strItemNo, MaterialByLot materialByLot)
        {
            Fabric_Insp_Header temp = null;
            PH.FabricInspection.BO.FabricInspectionDataContext sm = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
            string strConn = sm.Connection.ConnectionString.ToString();

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            command.Connection = conn;
            DataTable dt = new DataTable();
            String RN_Status = "";
            string KS_Status = "";
            String OK_Status = "";

            if (materialByLot.SpreadDefectProcSolutions == null)
            {
                materialByLot.SpreadDefectProcSolutions = new List<SpreadDefectProcSolutionByReport>();
            }
            SpreadDefectProcSolutionByReport spreadInfo = null;
            //??
            temp = (Fabric_Insp_Header)bandedGridView1.GetRow(0);

            string strSQL = "";
            string strResult = "";
            string strResult1 = "";
            string strResult2 = "";

            decimal WastageQty1 = 0;
            decimal WastageQty2 = 0;
            decimal KSQty_1 = 0;
            decimal QNum_1 = 0;
            decimal SaveKSQty = 0;
            decimal SaveWastageQty = 0;
            decimal SaveQNum = 0;
            int seq1 = 0;

            //Xsj20120608(補):獲取指定Item_No,Stock_In_date的所有Spread_Insp_Result種類信息
            strSQL = "Select Item_No,Stock_In_Date,Spread_Insp_Result from dbo.view_SpreadDefect where Spread_Insp_Result is not null and Item_No='" + temp.Item_No + "' and Stock_In_date = '" + temp.Stock_In_Date + "' ";
            strSQL = strSQL + "Group by Item_No,Stock_In_Date,Spread_Insp_Result";
            command.CommandText = strSQL;
            SqlDataAdapter adpt = new SqlDataAdapter(command);
            adpt.Fill(dt);
            //Xsj20120608(補):取得指定Item_No,Stock_In_date的所有Spread_Insp_Result種類信息
            foreach (DataRow row in dt.Rows)
            {
                switch (row["Spread_Insp_Result"].ToString())
                {
                    case "3":  //Return
                        RN_Status = "3";
                        break;
                    case "2":  //Deduct
                        KS_Status = "2";
                        break;
                    case "1":  //OK
                        OK_Status = "1";
                        break;
                }
            }

            dt.Dispose();

            //Xsj(補):退料、扣收 
            if ((RN_Status == "3" && KS_Status == "2" && OK_Status == "OK") || (RN_Status == "3" && KS_Status == "2"))
            {
                #region

                spreadInfo = new SpreadDefectProcSolutionByReport();

                //Xsj(補):退料
                #region //Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                //strSQL = "SELECT  Item_No, Stock_In_Date, sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('2') ";
                strSQL = "SELECT  Item_No, Stock_In_Date, sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('2') ";
                #endregion

                strSQL += " And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                strSQL += "GROUP BY Item_No, Stock_In_Date";
                //strSQL = "SELECT  Item_No, Stock_In_Date FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('2') ";
                //strSQL += " And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                //strSQL += "GROUP BY Item_No, Stock_In_Date";
                dt = getTable(strSQL);
                if (dt.Rows.Count > 0)
                {
                    #region
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;

                    DataTable dtWas = new DataTable();
                    // SHARLY 20100224
                    //strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL = "Select Item_No,Stock_In_Date,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName  from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";
                    //strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";// SHARLY 20100224
                    strSQL += "Group by Item_No,Stock_In_Date,Special_Marker "; // SHARLY 20100224

                    dtWas = getTable(strSQL);
                    string strWastage = "";
                    decimal Special_Marker1 = 0;
                    // SHARLY 20100224
                    //if (getReplace(dtWas, "Special_Marker").IndexOf("/") > 0)
                    if (dtWas.Rows.Count > 1)
                        strWastage = "";
                    else
                    {
                        if (dtWas.Rows.Count != 0)
                        {
                            //strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
                            Special_Marker1 = Math.Round(Convert.ToDecimal(dtWas.Rows[0]["Special_Marker"]), 2) * 100;
                            strWastage = Special_Marker1.ToString();
                        }
                    }

                    spreadInfo.Wastage = strWastage;


                    //=============================非唯一疵點等於色差的Deduct的損耗數量
                    //==COUNT(*)
                    DataTable dtcount = new DataTable();

                    //================================Xsj20120617:注釋掉原來的代碼，修正統計卷數
                    //strSQL = "select count(*) as QNum ";
                    strSQL = "select count(distinct System_Install_No) as QNum ";
                    //================================End
                    strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";

                    dtcount = getTable(strSQL);
                    if (dtcount.Rows.Count != 0)
                    {
                        spreadInfo.QNum = dtcount.Rows[0]["QNum"].ToString();
                        SaveQNum = System.Math.Round(Convert.ToDecimal(dtcount.Rows[0]["QNum"].ToString()), 2);
                    }

                    //==KSQty , WastageQty
                    DataTable dtKSQty = new DataTable();
                    #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                    //strSQL = "select sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty ";
                    strSQL = "select sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty ";
                    #endregion

                    strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";

                    dtKSQty = getTable(strSQL);
                    if (dtKSQty.Rows.Count != 0)
                    {
                        //spreadInfo.KSQty = dtKSQty.Rows[0]["Actual_Length"].ToString();
                        //spreadInfo.WastageQty = dtKSQty.Rows[0]["WastageQty"].ToString();
                        SaveKSQty = 0;
                        SaveWastageQty = 0;
                        if (dtKSQty.Rows[0]["Actual_Length"] != null && dtKSQty.Rows[0]["Actual_Length"].ToString() != "")
                            SaveKSQty = System.Math.Round(Convert.ToDecimal(dtKSQty.Rows[0]["Actual_Length"].ToString()), 2);
                        if (dtKSQty.Rows[0]["WastageQty"] != null && dtKSQty.Rows[0]["WastageQty"].ToString() != "")
                            SaveWastageQty = System.Math.Round(Convert.ToDecimal(dtKSQty.Rows[0]["WastageQty"].ToString()), 2);
                        spreadInfo.KSQty = SaveKSQty.ToString();
                        spreadInfo.WastageQty = SaveWastageQty.ToString();
                    }


                    //==SOLUTION
                    DataTable dtDefect = new DataTable();
                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {

                        strSQL = "select DefectChineseName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%'  and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                        dtDefect = getTable(strSQL);
                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectSolution");
                    }

                    if (sph.LangID == "TH")
                    {

                        strSQL = "select DefectThaiName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%'  and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                        dtDefect = getTable(strSQL);
                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectSolution");
                    }
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {

                        strSQL = "select DefectEnglishName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%'  and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                        dtDefect = getTable(strSQL);
                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectSolution");
                    }

                    if (spreadInfo.QNum != "" && spreadInfo.QNum != null && spreadInfo.QNum != "0")
                    {
                        seq1 = seq1 + 1;
                        //SysParamHelper sph = SysParamHelper.Instance;
                        if (strWastage == "")
                        {

                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "根據CAD排麥所超用量" + spreadInfo.WastageQty + "m" + "; \n";

                            if (sph.LangID == "TH")
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m" + "; \n";

                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "According to CAD" + spreadInfo.WastageQty + "m" + "; \n";
                        }
                        else
                        {
                            if (sph.LangID == "TW" || sph.LangID == "CN")
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "根據CAD排麥所超用量" + spreadInfo.WastageQty + "m(損耗率" + spreadInfo.Wastage + ")" + "; \n";


                            #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                            //if (sph.LangID == "TW" || sph.LangID == "CN")
                            if (sph.LangID == "TH")
                            #endregion
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m(ค่าสูญเสีย" + spreadInfo.Wastage + ")" + "; \n";

                            #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                            //if (sph.LangID == "TW" || sph.LangID == "CN")
                            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                            #endregion
                                strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "According to CAD" + spreadInfo.WastageQty + "m(Wastage" + spreadInfo.Wastage + ")" + "; \n";



                        }
                    }
                    DataTable dtWastageQty = new DataTable();
                    //=============================唯一疵點等於色差的Deduct的損耗數量
                    DataTable dtWas1 = new DataTable();
                    // SHARLY 20100224
                    //strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL = "Select Item_No,Stock_In_Date,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1)) ";
                    //strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";// SHARLY 20100224
                    strSQL += "Group by Item_No,Stock_In_Date,Special_Marker "; // SHARLY 20100224
                    dtWas = getTable(strSQL);
                    string strWastage_1 = "";
                    decimal Special_Marker1_1 = 0;
                    //if (getReplace(dtWas, "Special_Marker").IndexOf("/") > 0)// SHARLY 20100224
                    if (dtWas.Rows.Count > 1)// SHARLY 20100224
                    {
                        strWastage_1 = "";
                    }
                    else
                    {
                        if (dtWas.Rows.Count != 0)
                        {
                            //strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
                            Special_Marker1_1 = Math.Round(Convert.ToDecimal(dtWas.Rows[0]["Special_Marker"]), 2) * 100;
                            strWastage_1 = Special_Marker1_1.ToString();
                        }
                    }

                    spreadInfo.Wastage = strWastage_1;

                    //==COUNT(*)
                    //DataTable dtcount1 = new DataTable();
                    //strSQL = "select count(*) as QNum ";
                    //strSQL += "from view_SpreadDefect where Defect_Name LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "and System_Install_No in(select System_Install_No from ";
                    //strSQL += "(select System_Install_No,count(*) as cont from ";
                    //strSQL += "(select System_Install_No , Defect_Name from view_SpreadDefect where Proc_Status IN('2') ";
                    //strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "Group by System_Install_No, Defect_Name) a ";
                    //strSQL += "Group by System_Install_No) b where cont = 1) ";

                    //dtcount1 = getTable(strSQL);
                    //if (dtcount1.Rows.Count != 0)
                    //{
                    //    spreadInfo.QNum = dtcount1.Rows[0]["QNum"].ToString();
                    //}

                    //==KSQTY
                    DataTable dtKSQty1 = new DataTable();

                    #region Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加下一行代碼
                    //strSQL = "SELECT count(*) as QNum,SUM(Actual_Length) as Actual_Length FROM Fabric_Insp_Header WHERE ";
                    strSQL = "SELECT count(*) as QNum,SUM(Insp_Length) as Actual_Length FROM Fabric_Insp_Header WHERE ";
                    #endregion

                    strSQL += " Spread_Insp_Result not in('3') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";

                    dtKSQty1 = getTable(strSQL);
                    if (dtKSQty1.Rows.Count != 0)
                    {
                        //spreadInfo.KSQty = dtKSQty1.Rows[0]["Actual_Length"].ToString();
                        KSQty_1 = 0;
                        if (dtKSQty1.Rows[0]["Actual_Length"] != null && dtKSQty1.Rows[0]["Actual_Length"].ToString() != "")
                            KSQty_1 = System.Math.Round(Convert.ToDecimal(dtKSQty1.Rows[0]["Actual_Length"].ToString()), 2);
                        KSQty_1 = KSQty_1 - SaveKSQty;
                        spreadInfo.KSQty = KSQty_1.ToString("#0.00");
                        QNum_1 = 0;
                        if (dtKSQty1.Rows[0]["QNum"] != null && dtKSQty1.Rows[0]["QNum"].ToString() != "")
                            QNum_1 = System.Math.Round(Convert.ToDecimal(dtKSQty1.Rows[0]["QNum"].ToString()), 2);
                        QNum_1 = QNum_1 - SaveQNum;
                        spreadInfo.QNum = QNum_1.ToString("#");
                    }


                    //==WASTAGE QTY
                    DataTable dtWastageQty1 = new DataTable();
                    strSQL = "select sum(isnull(Special_Marker,0)) as WastageQty ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) ";

                    dtWastageQty1 = getTable(strSQL);
                    WastageQty2 = 0;
                    if (dtWastageQty1.Rows.Count != 0)
                    {
                        if (dtWastageQty1.Rows[0]["WastageQty"] != null && dtWastageQty1.Rows[0]["WastageQty"].ToString() != "")
                        {
                            WastageQty1 = System.Math.Round(Convert.ToDecimal(dtWastageQty1.Rows[0]["WastageQty"].ToString()), 2);
                            WastageQty2 = (KSQty_1 * WastageQty1) - SaveWastageQty;
                        }
                        spreadInfo.WastageQty = WastageQty2.ToString("#0.00");
                    }

                    //==SOLUTION
                    DataTable dtDefect3 = new DataTable();
                    //SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "select DefectChineseName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }
                    if (sph.LangID == "TH")
                    {
                        strSQL = "select DefectThaiName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {
                        strSQL = "select DefectEnglishName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }
                    dtDefect3 = getTable(strSQL);
                    if (dtDefect3.Rows.Count != 0)
                    {
                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect3, "DefectSolution");
                        //} SHARLY 20100224

                        //============================
                        if (spreadInfo.QNum != "" && spreadInfo.QNum != null && spreadInfo.QNum != "0")
                        {
                            seq1 = seq1 + 1;


                            if (strWastage_1 == "")
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",根據CAD排麥所超用量" + spreadInfo.WastageQty + "m";

                                if (sph.LangID == "TH")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",According to CAD" + spreadInfo.WastageQty + "m";
                            }
                            else
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",根據CAD排麥所超用量" + spreadInfo.WastageQty + "m(損耗率" + spreadInfo.Wastage + ")";

                                if (sph.LangID == "TH")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m(ค่าสูญเสีย" + spreadInfo.Wastage + ")";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult1 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + ",According to CAD" + spreadInfo.WastageQty + "m(Wastage" + spreadInfo.Wastage + ")";
                            }


                        }
                    } //SHARLY 20100224
                    spreadInfo.SpreadDefectResult = strResult1;

                    //materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
                    #endregion
                }

                ///===================================================================
                //spreadInfo = new SpreadDefectProcSolutionByReport();

                #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                //strSQL = "SELECT  Item_No, Stock_In_Date, sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('3') ";

                strSQL = "SELECT  Item_No, Stock_In_Date, sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE Spread_Insp_Result IN('3') ";
                #endregion

                strSQL += " And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                strSQL += "GROUP BY Item_No, Stock_In_Date";

                dt = getTable(strSQL);
                if (dt.Rows.Count > 0)
                {
                    #region

                    decimal ReturnQty_1 = 0;
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
                    ReturnQty_1 = 0;
                    if (dt.Rows[0]["Actual_Length"] != null && dt.Rows[0]["Actual_Length"].ToString() != "")
                        ReturnQty_1 = Convert.ToDecimal(dt.Rows[0]["Actual_Length"].ToString());
                    spreadInfo.ReturnQty = ReturnQty_1.ToString("#0.00");

                    DataTable dtWas = new DataTable();
                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
                    dtWas = getTable(strSQL);

                    DataTable dtDefect = new DataTable();

                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "Select DefectChineseName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectChineseName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectChineseName");
                    }
                    if (sph.LangID == "TH")
                    {
                        strSQL = "Select DefectThaiName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectThaiName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectThaiName");
                    }
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {
                        strSQL = "Select DefectEnglishName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectEnglishName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectEnglishName");
                    }
                    DataTable dtSolution = new DataTable();

                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Proc_Status IN('3') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
                    dtSolution = getTable(strSQL);

                    string[] strSpreadDefectSolution = new string[5];
                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);
                    seq1 = seq1 + 1;
                    //SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        strResult2 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.ReturnQty + "m 全卷性" + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "拒收,退貨";

                    if (sph.LangID == "TH")
                        strResult2 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.ReturnQty + "m ทั้งม้วน" + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "รีเจค,ส่งคืน";

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        strResult2 = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.ReturnQty + "m Whole roll" + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "Reject,Return";


                    spreadInfo.SpreadDefectResult = strResult1 + "\n" + strResult2;
                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
                    ///===================================================================
                    ///
                    #endregion
                }

                #endregion
            }
            //Xsj(補):退料、OK 
            else if (RN_Status == "3" && OK_Status == "1")
            {
                #region

                spreadInfo = new SpreadDefectProcSolutionByReport();

                #region //Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                //strSQL = "SELECT  Item_No, Stock_In_Date, sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";

                strSQL = "SELECT  Item_No, Stock_In_Date, sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";
                #endregion

                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                strSQL += "GROUP BY Item_No, Stock_In_Date";

                dt = getTable(strSQL);
                if (dt.Rows.Count > 0)
                {
                    decimal ReturnQty_1 = 0;
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
                    ReturnQty_1 = 0;
                    if (dt.Rows[0]["Actual_Length"] != null && dt.Rows[0]["Actual_Length"].ToString() != "")
                        ReturnQty_1 = Convert.ToDecimal(dt.Rows[0]["Actual_Length"].ToString());
                    spreadInfo.ReturnQty = ReturnQty_1.ToString("#0.00");

                    DataTable dtWas = new DataTable();
                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
                    dtWas = getTable(strSQL);

                    DataTable dtDefect = new DataTable();
                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "Select DefectChineseName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectChineseName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectChineseName");
                    }

                    if (sph.LangID == "TH")
                    {
                        strSQL = "Select DefectThaiName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectThaiName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectThaiName");
                    }

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {

                        strSQL = "Select DefectEnglishName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectEnglishName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectEnglishName");
                    }

                    DataTable dtSolution = new DataTable();

                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Proc_Status IN('3') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
                    dtSolution = getTable(strSQL);

                    string[] strSpreadDefectSolution = new string[5];
                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);
                    seq1 = seq1 + 1;
                    //SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.ReturnQty + "m 全卷性 " + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "拒收,退貨";
                    if (sph.LangID == "TH")
                        strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.ReturnQty + "m ทั้งม้วน " + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "รีเจค,ส่งคืน";
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.ReturnQty + "m Whole roll " + spreadInfo.SpreadDefect_Name + spreadInfo.SpreadDefeceSolution + "Reject,Return";
                    spreadInfo.SpreadDefectResult = strResult;
                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
                }

                #endregion
            }
            //Xsj(補):扣收
            else if (KS_Status == "2")
            {
                #region

                spreadInfo = new SpreadDefectProcSolutionByReport();

                strSQL = "SELECT  Item_No, Stock_In_Date FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '2') ";
                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                strSQL += "GROUP BY Item_No, Stock_In_Date";

                dt = getTable(strSQL);
                if (dt.Rows.Count > 0)
                {
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;

                    DataTable dtWas = new DataTable();
                    //SHARLY 20100224
                    //strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL = "Select Item_No,Stock_In_Date,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";
                    //strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";//SHARLY 20100224
                    strSQL += "Group by Item_No,Stock_In_Date,Special_Marker ";//SHARLY 20100224

                    dtWas = getTable(strSQL);
                    string strWastage = "";
                    decimal Special_Marker1 = 0;
                    //if (getReplace(dtWas, "Special_Marker").IndexOf("/") > 0)//SHARLY 20100224
                    if (dtWas.Rows.Count > 1)//SHARLY 20100224
                        strWastage = "";
                    else
                    {
                        if (dtWas.Rows.Count != 0)
                        {
                            //strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
                            Special_Marker1 = Math.Round(Convert.ToDecimal(dtWas.Rows[0]["Special_Marker"]), 2) * 100;
                            strWastage = Special_Marker1.ToString();
                        }
                    }

                    spreadInfo.Wastage = strWastage;

                    //=============================非唯一疵點等於色差的Deduct的損耗數量
                    //==COUNT(*)
                    DataTable dtcount = new DataTable();

                    //================================Xsj20120617:注釋掉原來的代碼，修正統計卷數
                    strSQL = "select count(*) as QNum ";
                    //strSQL = "select count(distinct System_Install_No) as QNum ";
                    //================================End
                    strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";

                    dtcount = getTable(strSQL);
                    if (dtcount.Rows.Count != 0)
                    {
                        spreadInfo.QNum = dtcount.Rows[0]["QNum"].ToString();
                        SaveQNum = 0;
                        if (dtcount.Rows[0]["QNum"] != null && dtcount.Rows[0]["QNum"].ToString() != "")
                            SaveQNum = System.Math.Round(Convert.ToDecimal(dtcount.Rows[0]["QNum"].ToString()), 2);
                    }

                    //==KSQty , WastageQty
                    DataTable dtKSQty = new DataTable();

                    #region//============================ //Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼 Xsj:Start
                    //strSQL = "select sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty ";
                    //strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "and System_Install_No not in (select System_Install_No ";
                    //strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "and System_Install_No in(select System_Install_No from ";
                    //strSQL += "(select System_Install_No,count(*) as cont from ";
                    //strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    //strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    //strSQL += "Group by System_Install_No) b where cont = 1) )";


                    strSQL = "select sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty ";
                    strSQL += "from( ";
                    strSQL += "select distinct System_Install_No,Item_No,Actual_Length,  Insp_Length,Special_Marker ";
                    strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No not in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) )";
                    strSQL += ") A ";
                    #endregion//============================Xsj:End




                    dtKSQty = getTable(strSQL);
                    if (dtKSQty.Rows.Count != 0)
                    {
                        //spreadInfo.KSQty = dtKSQty.Rows[0]["Actual_Length"].ToString();
                        //spreadInfo.WastageQty = dtKSQty.Rows[0]["WastageQty"].ToString();
                        SaveQNum = 0;
                        if (dtKSQty.Rows[0]["Actual_Length"] != null && dtKSQty.Rows[0]["Actual_Length"].ToString() != "")
                            SaveKSQty = System.Math.Round(Convert.ToDecimal(dtKSQty.Rows[0]["Actual_Length"].ToString()), 2);
                        SaveWastageQty = 0;
                        if (dtKSQty.Rows[0]["WastageQty"] != null && dtKSQty.Rows[0]["WastageQty"].ToString() != "")
                            SaveWastageQty = System.Math.Round(Convert.ToDecimal(dtKSQty.Rows[0]["WastageQty"].ToString()), 2);
                        spreadInfo.KSQty = SaveKSQty.ToString();
                        spreadInfo.WastageQty = SaveWastageQty.ToString();
                    }
                    //WastageQty1 = 0;

                    //============================

                    //==SOLUTION
                    DataTable dtDefect = new DataTable();
                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "select DefectChineseName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                    }

                    if (sph.LangID == "TH")
                    {
                        strSQL = "select DefectThaiName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                    }

                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {
                        strSQL = "select DefectEnglishName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No not in (select System_Install_No ";
                        strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) )";
                    }

                    dtDefect = getTable(strSQL);
                    if (dtDefect.Rows.Count != 0)
                    {

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectSolution");
                        //}//SHARLY 20100224

                        if (spreadInfo.QNum != "" && spreadInfo.QNum != null && spreadInfo.QNum != "0")
                        {
                            seq1 = seq1 + 1;
                            //SysParamHelper sph = SysParamHelper.Instance;
                            if (strWastage == "")
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "根據CAD排麥所超用量" + spreadInfo.WastageQty + "m" + ";\n";

                                if (sph.LangID == "TH")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m" + ";\n";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "According to CAD" + spreadInfo.WastageQty + "m" + ";\n";

                            }
                            else
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "根據CAD排麥所超用量" + spreadInfo.WastageQty + "m(損耗率" + spreadInfo.Wastage + "%)" + ";\n";

                                if (sph.LangID == "TH")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "ตามที่ CAD แจ้ง" + spreadInfo.WastageQty + "m(ค่าสูญเสีย" + spreadInfo.Wastage + "%)" + ";\n";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + "m " + spreadInfo.SpreadDefect_Name + "According to CAD" + spreadInfo.WastageQty + "m(Wastage" + spreadInfo.Wastage + "%)" + ";\n";
                            }

                        }

                    }//SHARLY 20100224

                    DataTable dtWastageQty = new DataTable();
                    //=============================唯一疵點等於色差的Deduct的損耗數量
                    DataTable dtWas2 = new DataTable();
                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in (select System_Install_No ";
                    strSQL += "from view_SpreadDefect where DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1))";

                    dtWas = getTable(strSQL);
                    string strWastage_1 = "";
                    decimal Special_Marker1_1 = 0;
                    //if (getReplace(dtWas2, "Special_Marker").IndexOf("/") > 0)//SHARLY 20100224
                    if (dtWas.Rows.Count > 1)//SHARLY 20100224
                        strWastage_1 = "";
                    else
                    {
                        if (dtWas.Rows.Count != 0)
                        {
                            //strWastage = dtWas.Rows[0]["Special_Marker"].ToString();
                            Special_Marker1_1 = Math.Round(Convert.ToDecimal(dtWas.Rows[0]["Special_Marker"]), 2) * 100;
                            strWastage_1 = Special_Marker1_1.ToString();
                        }
                    }

                    spreadInfo.Wastage = strWastage_1;

                    //==COUNT(*)
                    //DataTable dtQNum1 = new DataTable();
                    //strSQL = "select count(*) as QNum";
                    //strSQL += "from view_SpreadDefect where Defect_Name LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "and System_Install_No in(select System_Install_No from ";
                    //strSQL += "(select System_Install_No,count(*) as cont from ";
                    //strSQL += "(select System_Install_No , Defect_Name from view_SpreadDefect where Proc_Status IN('2') ";
                    //strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    //strSQL += "Group by System_Install_No, Defect_Name) a ";
                    //strSQL += "Group by System_Install_No) b where cont = 1) ";
                    //dtQNum1 = getTable(strSQL);
                    //if (dtQNum1.Rows.Count != 0)
                    //{
                    //    spreadInfo.QNum = dtQNum1.Rows[0]["QNum"].ToString();
                    //}

                    //==KSQTY
                    DataTable dtKSQty1 = new DataTable();

                    #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                    //strSQL = "SELECT count(*) as QNum,SUM(Actual_Length) as Actual_Length FROM Fabric_Insp_Header WHERE ";

                    strSQL = "SELECT count(*) as QNum,SUM(Insp_Length) as Actual_Length FROM Fabric_Insp_Header WHERE ";
                    strSQL += " Spread_Insp_Result not in('3') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";

                    #endregion


                    dtKSQty1 = getTable(strSQL);
                    if (dtKSQty1.Rows.Count != 0)
                    {
                        spreadInfo.KSQty = dtKSQty1.Rows[0]["Actual_Length"].ToString();
                        KSQty_1 = 0;
                        if (dtKSQty1.Rows[0]["Actual_Length"] != null && dtKSQty1.Rows[0]["Actual_Length"].ToString() != "")
                            KSQty_1 = System.Math.Round(Convert.ToDecimal(dtKSQty1.Rows[0]["Actual_Length"].ToString()), 2);
                        KSQty_1 = KSQty_1 - SaveKSQty;
                        spreadInfo.KSQty = KSQty_1.ToString("#0.00");
                        QNum_1 = 0;
                        if (dtKSQty1.Rows[0]["QNum"] != null && dtKSQty1.Rows[0]["QNum"].ToString() != "")
                            QNum_1 = System.Math.Round(Convert.ToDecimal(dtKSQty1.Rows[0]["QNum"].ToString()), 2);
                        QNum_1 = QNum_1 - SaveQNum;
                        spreadInfo.QNum = QNum_1.ToString("#");
                    }

                    //==WASTAGE QTY
                    DataTable dtWastageQty1 = new DataTable();
                    strSQL = "select sum(isnull(Special_Marker,0)) as WastageQty ";
                    strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "and System_Install_No in(select System_Install_No from ";
                    strSQL += "(select System_Install_No,count(*) as cont from ";
                    strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                    strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by System_Install_No, DefectChineseName) a ";
                    strSQL += "Group by System_Install_No) b where cont = 1) ";

                    dtWastageQty1 = getTable(strSQL);
                    WastageQty2 = 0;
                    if (dtWastageQty1.Rows.Count != 0)
                    {
                        if (dtWastageQty1.Rows[0]["WastageQty"] != null && dtWastageQty1.Rows[0]["WastageQty"].ToString() != "")
                        {
                            WastageQty1 = System.Math.Round(Convert.ToDecimal(dtWastageQty1.Rows[0]["WastageQty"].ToString()), 2);
                            WastageQty2 = (KSQty_1 * WastageQty1) - SaveWastageQty;
                        }
                        spreadInfo.WastageQty = WastageQty2.ToString("#0.00");
                    }


                    //==SOLUTION
                    DataTable dtDefect3 = new DataTable();

                    //SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "select DefectChineseName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }
                    if (sph.LangID == "TH")
                    {
                        strSQL = "select DefectThaiName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {
                        strSQL = "select DefectEnglishName + isnull(Solution1,'') + isnull(Solution2,'') + isnull(Solution3,'') + isnull(Solution4,'') + isnull(Solution5,'') as DefectSolution ";
                        strSQL += "from view_SpreadDefect where  DefectChineseName LIKE '%色差%' and Proc_Status in('2') and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "and System_Install_No in(select System_Install_No from ";
                        strSQL += "(select System_Install_No,count(*) as cont from ";
                        strSQL += "(select System_Install_No , DefectChineseName from view_SpreadDefect where Proc_Status IN('2') ";
                        strSQL += "and Spread_Insp_Result in('2') and Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                        strSQL += "Group by System_Install_No, DefectChineseName) a ";
                        strSQL += "Group by System_Install_No) b where cont = 1) ";
                    }

                    dtDefect3 = getTable(strSQL);
                    if (dtDefect3.Rows.Count != 0)
                    {
                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectSolution");

                        //}//SHARLY 20100224

                        //============================
                        if (spreadInfo.QNum != "" && spreadInfo.QNum != null && spreadInfo.QNum != "0")
                        {
                            seq1 = seq1 + 1;
                            //SysParamHelper sph = SysParamHelper.Instance;
                            if (strWastage_1 == "")
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",根據CAD排麥所超用量是:" + spreadInfo.WastageQty + "m";

                                if (sph.LangID == "TH")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",ตามที่ CAD แจ้ง:" + spreadInfo.WastageQty + "m";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",According to CAD:" + spreadInfo.WastageQty + "m";

                            }
                            else
                            {
                                if (sph.LangID == "TW" || sph.LangID == "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "卷/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",根據CAD排麥所超用量是:" + spreadInfo.WastageQty + "m(損耗率:" + spreadInfo.Wastage + ")";

                                if (sph.LangID == "TH")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "ม้วน/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",ตามที่ CAD แจ้ง:" + spreadInfo.WastageQty + "m(ค่าสูญเสีย:" + spreadInfo.Wastage + ")";

                                if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                                    strResult = "(" + seq1.ToString() + ")" + spreadInfo.QNum + "Roll/" + spreadInfo.KSQty + spreadInfo.SpreadDefect_Name + ",According to CAD:" + spreadInfo.WastageQty + "m(Wastage :" + spreadInfo.Wastage + ")";

                            }

                        }
                    }//SHARLY 20100224
                    spreadInfo.SpreadDefectResult = strResult;
                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);
                }

                #endregion
            }
            //Xsj(補):退料
            else if (RN_Status == "3")
            {
                #region

                spreadInfo = new SpreadDefectProcSolutionByReport();

                #region//Xsj20120608:因調整長短碼計算公式的需要，注釋掉上一行代碼，添加以下一行代碼
                //strSQL = "SELECT  Item_No, Stock_In_Date, sum(Actual_Length) AS Actual_Length, sum(Actual_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";

                strSQL = "SELECT  Item_No, Stock_In_Date, sum(Insp_Length) AS Actual_Length, sum(Insp_Length * Special_Marker) AS WastageQty, COUNT(*) AS QNum FROM Fabric_Insp_Header WHERE (Spread_Insp_Result = '3') ";

                #endregion

                strSQL += "And Item_No='" + temp.Item_No + "' And Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                strSQL += "GROUP BY Item_No, Stock_In_Date";

                dt = getTable(strSQL);
                if (dt.Rows.Count > 0)
                {
                    decimal ReturnQty_1 = 0;
                    spreadInfo.Item_No = temp.Item_No;
                    spreadInfo.Stock_In_Date = temp.Stock_In_Date;
                    spreadInfo.QNum = dt.Rows[0]["QNum"].ToString();
                    ReturnQty_1 = 0;
                    if (dt.Rows[0]["Actual_Length"] != null && dt.Rows[0]["Actual_Length"].ToString() != "")
                        ReturnQty_1 = Convert.ToDecimal(dt.Rows[0]["Actual_Length"].ToString());
                    spreadInfo.ReturnQty = ReturnQty_1.ToString("#0.00");

                    DataTable dtWas = new DataTable();
                    strSQL = "Select Item_No,Stock_In_Date,System_Install_No,Special_Marker from Fabric_Insp_Header where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,System_Install_No,Special_Marker ";
                    dtWas = getTable(strSQL);

                    DataTable dtDefect = new DataTable();
                    SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                    {
                        strSQL = "Select DefectChineseName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectChineseName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectChineseName");

                    }
                    if (sph.LangID == "TH")
                    {
                        strSQL = "Select DefectThaiName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectThaiName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectThaiName");

                    }
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                    {
                        strSQL = "Select DefectEnglishName from view_SpreadDefect where Proc_Status IN('3') and Defect_Name is not null and Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "'  ";
                        strSQL += "Group by Item_No,Stock_In_Date,DefectEnglishName";

                        dtDefect = getTable(strSQL);

                        spreadInfo.SpreadDefect_Name = getReplace(dtDefect, "DefectEnglishName");
                    }

                    DataTable dtSolution = new DataTable();


                    strSQL = "Select Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 from dbo.view_SpreadDefect where Item_No='" + temp.Item_No + "' and Stock_In_Date = '" + temp.Stock_In_Date + "' ";
                    strSQL += "Group by Item_No,Stock_In_Date,Solution1,Solution2,Solution3,Solution4,Solution5 ";
                    dtSolution = getTable(strSQL);

                    string[] strSpreadDefectSolution = new string[5];
                    strSpreadDefectSolution[0] = getReplace(dtSolution, "Solution1");
                    strSpreadDefectSolution[1] = getReplace(dtSolution, "Solution2");
                    strSpreadDefectSolution[2] = getReplace(dtSolution, "Solution3");
                    strSpreadDefectSolution[3] = getReplace(dtSolution, "Solution4");
                    strSpreadDefectSolution[4] = getReplace(dtSolution, "Solution5");

                    spreadInfo.SpreadDefeceSolution = getReplace(strSpreadDefectSolution);
                    seq1 = seq1 + 1;
                    //SysParamHelper sph = SysParamHelper.Instance;
                    if (sph.LangID == "TW" || sph.LangID == "CN")
                        strResult = "(" + seq1.ToString() + ")" + "全卷性 " + spreadInfo.SpreadDefect_Name + "拒收,退貨.";
                    if (sph.LangID == "TH")
                        strResult = "(" + seq1.ToString() + ")" + "ทั้งม้วน " + spreadInfo.SpreadDefect_Name + "รีเจค,ส่งคืน.";
                    if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
                        strResult = "(" + seq1.ToString() + ")" + "Whole roll " + spreadInfo.SpreadDefect_Name + "Reject,Return.";

                    spreadInfo.SpreadDefectResult = strResult;
                    materialByLot.SpreadDefectProcSolutions.Add(spreadInfo);

                }
                #endregion
            }
        }

        private DataTable getTable(string strSQL)
        {
            DataTable dt = new DataTable();
            PH.FabricInspection.BO.FabricInspectionDataContext sm = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>(); //new FabricInspectionDataContext();
            string strConn = sm.Connection.ConnectionString.ToString();

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            command.Connection = conn;

            command.CommandText = strSQL;
            SqlDataAdapter adpt = new SqlDataAdapter(command);
            adpt.Fill(dt);
            return dt;
        }

        private string getReplace(DataTable dt, string FieldName)
        {
            string strReplace = "";
            foreach (DataRow row in dt.Rows)
            {
                if (strReplace == "")
                {
                    strReplace = row[FieldName].ToString();
                }
                else
                {
                    if (strReplace.IndexOf(row[FieldName].ToString()) >= 0)
                    {
                    }
                    else
                    {
                        strReplace = strReplace + "﹑" + row[FieldName].ToString();
                    }
                }

            }
            return strReplace;
        }

        private string getReplace(string[] FieldName)
        {
            string strReplace = "";
            for (int i = 0; i < FieldName.Length; i++)
            {
                if (strReplace == "")
                {
                    strReplace = FieldName[i].ToString();
                }
                else
                {
                    if (strReplace.IndexOf(FieldName[i].ToString()) >= 0)
                    {
                    }
                    else
                    {
                        strReplace = strReplace + ", " + FieldName[i].ToString();
                    }
                }

            }
            return strReplace;
        }

        private void getMouldTrialAndColorAndWeftYarnInfo(String strItemNo, MaterialByLot materialByLot, string stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            if (materialByLot.MouldTrialAndColorAndWeftYarnInfo == null)
            {
                materialByLot.MouldTrialAndColorAndWeftYarnInfo = new List<MouldTrialAndColorAndWeftYarnInfo>();
            }


            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    MouldTrialAndColorAndWeftYarnInfo mouldtrialInfo = new MouldTrialAndColorAndWeftYarnInfo();
                    mouldtrialInfo.Lot_Id = temp.Lot_Id;
                    mouldtrialInfo.MouldTrialStatus = temp.Mould_Trial_Result_Desc;
                    mouldtrialInfo.WeftYarnStatus = temp.WeftYarnStatusDesc;
                    //mouldtrialInfo.WeftYarnPercentage = temp.WeftYarnPercentage;
                    //mouldtrialInfo.WeftYarnSolution1 = temp.WeftYarnSolution1;
                    //mouldtrialInfo.WeftYarnSolution2 = temp.WeftYarnSolution2;

                    mouldtrialInfo.ColorGroupStatus = MasterTableUtil.GetColorGroup(temp.Company, temp.Item_No, temp.Lot_Id);
                    materialByLot.MouldTrialAndColorAndWeftYarnInfo.Add(mouldtrialInfo);
                    temp.Color_Group_Status = mouldtrialInfo.ColorGroupStatus;
                }

            }

        }

        private void getInsepctionHeaderPartDefectsAndSpreadDefects(string strItemNo, MaterialByLot materialByLot, string stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            if (materialByLot.InspectionHeaders == null)
            {
                materialByLot.InspectionHeaders = new List<Fabric_Insp_Header>();
            }
            materialByLot.InspectionHeaders.Clear();

            if (materialByLot.AllPartDefects == null)
            {
                materialByLot.AllPartDefects = new List<Fabric_Insp_PartDefect>();
            }
            materialByLot.AllPartDefects.Clear();

            if (materialByLot.AllSpreadDefects == null)
            {
                materialByLot.AllSpreadDefects = new List<Fabric_Insp_SpreadDefect>();
            }
            materialByLot.AllSpreadDefects.Clear();


            System.Data.Linq.EntitySet<Fabric_Insp_Header> listFabric_Insp_Header = new System.Data.Linq.EntitySet<Fabric_Insp_Header>();
            System.Data.Linq.EntitySet<Fabric_Insp_PartDefect> listFabric_Insp_PartDefect = new System.Data.Linq.EntitySet<Fabric_Insp_PartDefect>();

            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    listFabric_Insp_Header.Add(temp);// materialByLot.InspectionHeaders.Add(temp);

                    foreach (var item in temp.Fabric_Insp_PartDefects)//materialByLot.AllPartDefects.AddRange(temp.Fabric_Insp_PartDefects);                    
                        listFabric_Insp_PartDefect.Add(item);


                    materialByLot.AllSpreadDefects.AddRange(temp.Fabric_Insp_SpreadDefects);
                }
            }

            materialByLot.InspectionHeaders = listFabric_Insp_Header.OrderBy(cc => cc.Lot_Id).ToList();
            materialByLot.AllPartDefects = listFabric_Insp_PartDefect.OrderBy(cc => cc.Lot_Id).ThenBy(cc => cc.Detect_Turn_No).ToList();
        }


        private decimal getMaxAcutalUsableWidth(String strItemNo, String stockInDate, List<int> visibleRowHandles)
        {
            Fabric_Insp_Header temp = null;
            decimal iMax = 0;
            bool isFirst = true;
            //for (int i = 0, iSize = objListGridView.RowCount; i < iSize; i++)
            for (int i = 0, iSize = visibleRowHandles.Count; i < iSize; i++)
            {
                temp = (Fabric_Insp_Header)bandedGridView1.GetRow(visibleRowHandles[i]);
                if ((temp.Item_No == strItemNo) && (temp.Stock_In_Date == stockInDate))
                {
                    if (isFirst)
                    {
                        iMax = (decimal)temp.Usable_Width;
                        isFirst = false;
                    }

                    if (temp.Usable_Width > iMax)
                    {
                        iMax = (decimal)temp.Usable_Width;
                    }
                }

            }
            return Math.Round(iMax, 2);
        }

        private List<PartDefectInfo> groupPartDefectDetailsByTurnNoAndDefectName(Fabric_Insp_Header temp)
        {
            List<PartDefectInfo> groupedPartDefectDetails = new List<PartDefectInfo>();
            foreach (Fabric_Insp_PartDefect tempPartDefectDetail in temp.Fabric_Insp_PartDefects)
            {

                PartDefectInfo partyDefectDetail = getPartyDefectDetail(groupedPartDefectDetails, tempPartDefectDetail.Detect_Turn_No, tempPartDefectDetail.Defect_Name);
                int iDefectPoints = (int)tempPartDefectDetail.Defect_Deduce_Points;
                if (iDefectPoints > 4)
                {
                    iDefectPoints = 4;
                }

                if (partyDefectDetail == null)
                {
                    partyDefectDetail = new PartDefectInfo();
                    partyDefectDetail.Company = tempPartDefectDetail.Company;
                    partyDefectDetail.System_Install_No = tempPartDefectDetail.System_Install_No;
                    //?? 2008-07-11
                    //                    partyDefectDetail.Lot_Id = tempPartDefectDetail.Lot_Id;
                    //                    partyDefectDetail.Item_No = tempPartDefectDetail.Item_No;
                    //
                    partyDefectDetail.Defect_Type = "P";
                    partyDefectDetail.Defect_Name = tempPartDefectDetail.Defect_Name;
                    partyDefectDetail.Defect_Deduce_Points = iDefectPoints;

                    partyDefectDetail.Detect_Turn_No = tempPartDefectDetail.Detect_Turn_No;

                    groupedPartDefectDetails.Add(partyDefectDetail);

                }
                else
                {

                    partyDefectDetail.Defect_Deduce_Points = partyDefectDetail.Defect_Deduce_Points + iDefectPoints;

                }
                if (partyDefectDetail.Defect_Deduce_Points > 4)
                {
                    partyDefectDetail.Defect_Deduce_Points = 4;
                }
            }
            return groupedPartDefectDetails;
        }

        private List<PartDefectInfo> calcGroupedPartDefects(List<PartDefectInfo> groupedPartDefectInfos)
        {
            List<PartDefectInfo> groupedMaxPartDefectInfos = new List<PartDefectInfo>();
            foreach (PartDefectInfo tempPartDefectInfo in groupedPartDefectInfos)
            {
                PartDefectInfo partDefectInfo = getPartDefectInfo(groupedMaxPartDefectInfos, tempPartDefectInfo.Defect_Name);
                if (partDefectInfo == null)
                {
                    partDefectInfo = new PartDefectInfo();
                    partDefectInfo.Company = tempPartDefectInfo.Company;
                    partDefectInfo.Defect_Name = tempPartDefectInfo.Defect_Name;
                    partDefectInfo.Defect_Type = "P";
                    partDefectInfo.Defect_Deduce_Points = tempPartDefectInfo.Defect_Deduce_Points;
                    groupedMaxPartDefectInfos.Add(partDefectInfo);
                }
                else
                {
                    partDefectInfo.Defect_Deduce_Points = partDefectInfo.Defect_Deduce_Points + tempPartDefectInfo.Defect_Deduce_Points;
                }
            }

            for (int i = 0, iSize = groupedMaxPartDefectInfos.Count; i < iSize; i++)
            {

                for (int j = i + 1, jSize = groupedMaxPartDefectInfos.Count; j < jSize; j++)
                {
                    if (groupedMaxPartDefectInfos[i].Defect_Deduce_Points < groupedMaxPartDefectInfos[j].Defect_Deduce_Points)
                    {
                        PartDefectInfo iPartInfo = groupedMaxPartDefectInfos[i];
                        groupedMaxPartDefectInfos[i] = groupedMaxPartDefectInfos[j];
                        groupedMaxPartDefectInfos[j] = iPartInfo;
                    }
                }
            }
            if (groupedMaxPartDefectInfos.Count > 3)
            {
                groupedMaxPartDefectInfos.RemoveRange(3, groupedMaxPartDefectInfos.Count - 3);
            }
            return groupedMaxPartDefectInfos;
        }

        private PartDefectInfo getPartyDefectDetail(List<PartDefectInfo> partDefects, int defectTurnNo, string name)
        {
            PartDefectInfo partyDefectDetail = null;
            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = partDefects[i];
                if ((partyDefectDetail.Defect_Name == name)
                    && (partyDefectDetail.Detect_Turn_No == defectTurnNo)
                    && (partyDefectDetail.Defect_Type == "P"))
                {
                    return partyDefectDetail;
                }
            }


            return null;
        }

        private PartDefectInfo getPartDefectInfo(List<PartDefectInfo> partDefects, string name)
        {
            PartDefectInfo partyDefectDetail = null;
            for (int i = 0, iSize = partDefects.Count; i < iSize; i++)
            {
                partyDefectDetail = partDefects[i];
                if ((partyDefectDetail.Defect_Name == name)
                    && (partyDefectDetail.Defect_Type == "P"))
                {
                    return partyDefectDetail;
                }
            }


            return null;
        }

        private void barBtnSpreadDefectProc_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;

            try
            {
                if (this.BindingSource.Count <= 0)
                {
                    MessageBox.Show("Please Select Spread Defect Records.");
                    return;
                }

                Fabric_Insp_Header mast = (Fabric_Insp_Header)this.BindingSource.Current;
                //FrmSpreadDefectListForm frm = new FrmSpreadDefectListForm(mast,this,mast.Item_No,mast.Stock_In_Date);

                //frm.ShowDialog();

                List<object> lists1 = new List<object>();

                lists1.Add(mast);
                lists1.Add(this);
                lists1.Add(mast.Item_No);
                lists1.Add(mast.Stock_In_Date);
                lists1.Add(this.TabControls.SelectedTabPage);

                this.CreateProgramForm(typeof(FrmSpreadDefectListForm), "Regular Defects Process Solutions", true, new object[] { lists1 }, null);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened \n" + ex.Message);
            }
            finally
            {
                this.Cursor = currCursor;
            }
        }




        private string generateQueryString(string pLot_ID, string pCompany)
        {

            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 
            sb.Append("'").Append(pCompany).Append("'").Append(", ");

            //4 LOT_ID ID.NO
            sb.Append("'").Append(pLot_ID).Append("'").Append(", ");


            //5  ITEM_NO
            sb.Append("''").Append(", ");

            //6 STOCK_IN_DATE 
            sb.Append("'").Append("000000").Append("'").Append(", ");

            //7  MESSAGE
            sb.Append("''");

            return sb.ToString();

        }


        /// <summary>
        /// Xsj()20110926:生成as400任务号：'Guid','yyyy/MM/dd HH:mm:ss','Company','FromLot_Id','ToLot_Id'
        /// </summary>
        /// <param name="fromLotId"></param>
        /// <param name="toLotId"></param>
        /// <param name="currentCompanyNo"></param>
        /// <returns></returns>
        private string generateImportDataFromERPQueryString(string fromLotId, string toLotId, string currentCompanyNo)
        {
            //查询画面字段定义：
            StringBuilder sb = new StringBuilder();
            //1: guid
            key = Guid.NewGuid();
            sb.Append("'").Append(key.ToString()).Append("'").Append(", ");

            //2: TIME
            time = DateTime.Now;
            sb.Append("'").Append(time.ToString(timeFormat, new CultureInfo("en-US"))).Append("'").Append(", ");

            //3: company COMPANY_CODE 為用戶進入此系統時?入的公司
            sb.Append("'").Append(currentCompanyNo).Append("'").Append(", ");

            //4  From LOT ID
            sb.Append("'").Append(fromLotId).Append("'").Append(", ");

            //5  To LOT ID
            sb.Append("'").Append(toLotId).Append("'");

            return sb.ToString();

        }

        ///// <summary>
        ///// Xsj(补)20110926：
        ///// step1--发送命令到AS400，生成相关的数据到临时表;
        ///// step2--然后将数据取到本地;
        ///// step3--最后删除as400中产生的数据。
        ///// </summary>
        ///// <param name="fromLotId"></param>
        ///// <param name="toLotId"></param>
        ///// <param name="companyNo"></param>
        //private void importDataFromERP(string fromLotId, string toLotId, string companyNo)
        //{
        //    ////1: generate data
        //    //StringBuilder sb = new StringBuilder();
        //    //sb.Append("call AULPHGMODS.PH984A(")
        //    //    .Append(generateImportDataFromERPQueryString(fromLotId, toLotId, companyNo))
        //    //    .Append(")");

        //    //string strSQL = sb.ToString();
        //    //PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);

        //    ////2: select data
        //    //#region  Xsj20111129:如下代碼為了提升速度而被注釋掉
        //    ////strSQL = "SELECT * FROM AULT4F1.PH984WA WHERE GUIDWA = '" + key.ToString() + "'";
        //    ////DataTable dataTable = PH.FabricInspection.BO.AS400DB.DB.GetTable(strSQL);
        //    //#endregion
        //    //#region  Xsj20111129:如下代碼為了提升速度而添加，取代如上代碼
        //    //strSQL = "Select * from OpenQuery([as400],'SELECT * FROM AULT4F1.PH984WA WHERE GUIDWA = ''" + key.ToString() + "''')";
        //    //FabricInspection.BO.FabricInspectionDataContext FISdc = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspection.BO.FabricInspectionDataContext>();
        //    //DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");
        //    //#endregion

        //    //由david修改 2020-09-28
        //    FabricInspectionDataContext FISdc = ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //    string strSQL = string.Format("exec sp_ImportDataFromERP '{0}', '{1}', '{2}'", companyNo, fromLotId, toLotId);
        //    DataTable dataTable = FISdc.ExecuteDataTable(strSQL, "t0");


        //    if (dataTable.Rows.Count <= 0)
        //    {
        //        MessageBox.Show("No data found!");
        //        return;
        //    }
        //    else
        //    {
        //        bool haveError = false;
        //        string errorString = "";
        //        for (int i = 0, iSize = dataTable.Rows.Count; i < iSize; i++)
        //        {

        //            try
        //            {
        //                string strCompany = ((string)dataTable.Rows[i]["CONOWA"]).Trim();
        //                string strItem_No = ((string)dataTable.Rows[i]["ITEMWA"]).Trim();
        //                string strLot_Id = ((string)dataTable.Rows[i]["LOCNWA"]).Trim();
        //                string strStock_In_Date = dataTable.Rows[i]["STDTWA"].ToString().Trim();

        //                //Xsj(补)20110926：判断绑定的数据源中是否存在指定的数据
        //                if (!FindFabricInspectInMemory(strCompany, strItem_No, strLot_Id, strStock_In_Date))
        //                {
        //                    //Xsj(补)20110926：如果从ASP400中返回的数据不存在绑定的数据源中，则添加之
        //                    PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = (PH.FabricInspection.BO.Fabric_Insp_Header)this.BindingSource.AddNew();
        //                    //PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = new Fabric_Insp_Header(); 


        //                    //if (currentIQC != null)
        //                    //{

        //                    currentIQC.Company = ((string)dataTable.Rows[i]["CONOWA"]).Trim();
        //                    currentIQC.System_Install_No = currentIQC.GetMaxInstallNo();   //GetMaxSystemInstallNo();
        //                    currentIQC.Item_No = ((string)dataTable.Rows[i]["ITEMWA"]).Trim();
        //                    currentIQC.Item_Desc = ((string)dataTable.Rows[i]["DESCWA"]).Trim();
        //                    currentIQC.PO = ((string)dataTable.Rows[i]["POWA"]).Trim();
        //                    currentIQC.HdoNo = ((string)dataTable.Rows[i]["HDOWA"]).Trim();
        //                    currentIQC.ProjectNo = ((string)dataTable.Rows[i]["PROJWA"]).Trim();
        //                    //currentIQC.IQC_Reference = "";
        //                    currentIQC.Lot_Id = ((string)dataTable.Rows[i]["LOCNWA"]).Trim();
        //                    currentIQC.Actual_Length = (decimal)dataTable.Rows[i]["LENGWA"];
        //                    currentIQC.Actual_Weight = 0;
        //                    currentIQC.Supplier_Width = 0;
        //                    currentIQC.Insp_Length = 0;
        //                    currentIQC.GM_SQM = 0;
        //                    currentIQC.Usable_Width = 0;
        //                    currentIQC.Supplier_Code = ((string)dataTable.Rows[i]["VNDRWA"]).Trim();
        //                    currentIQC.Supplich_Batch = "";
        //                    currentIQC.Roll_No = "";
        //                    currentIQC.Total_Points = 0;
        //                    currentIQC.Points_Hundred_SQM = 0;
        //                    currentIQC.Deductive_Qty = 0;
        //                    currentIQC.Wastage = 0;
        //                    currentIQC.Insp_Result = "";
        //                    currentIQC.Party_Insp_Result = "";
        //                    currentIQC.Spread_Insp_Result = "";
        //                    currentIQC.Mould_Trial_Result = "";
        //                    currentIQC.Color_Group_Status = "";
        //                    currentIQC.Spread_Defect_Exist = "";
        //                    currentIQC.Insp_Confirm = "";
        //                    currentIQC.PH_Sample = 0;
        //                    currentIQC.Panel_Size1 = 0;
        //                    currentIQC.Panel_Size2 = 0;
        //                    currentIQC.Special_Marker = 0;
        //                    currentIQC.Spread_Remark = "";
        //                    currentIQC.Mould_Trial_Remark = "";
        //                    currentIQC.Stock_In_Date = dataTable.Rows[i]["STDTWA"].ToString().Trim();
        //                    //currentIQC.Stock_In_Date_DateTime = 0;
        //                    currentIQC.Turn_Size = 0;

        //                    currentIQC.Supplier_Length_Unit = ((string)dataTable.Rows[i]["UNIT1WA"]).Trim();
        //                    currentIQC.Supplier_Width_Unit = "";
        //                    currentIQC.SideToSideH_Width = 0;
        //                    //currentIQC.Inspector = "";

        //                    currentIQC.Create_User = GlobalInfo.GetCurrentUserId();
        //                    currentIQC.Create_Date = DateTime.Now;

        //                    //currentIQC.Change_User = null;
        //                    //currentIQC.Change_Date = null;
        //                    //currentIQC.Use_Status = null;
        //                    //currentIQC.LightStatus = null;

        //                    currentIQC.InvoiceNo = ((string)dataTable.Rows[i]["INVOWA"]).Trim();
        //                    currentIQC.Supplier_Item_No = ((string)dataTable.Rows[i]["REFWA"]).Trim();
        //                    currentIQC.SupplierItemColor = ((string)dataTable.Rows[i]["COLWA"]).Trim();


        //                    //生成Refence NO. 由David增加 2020-09-29
        //                    currentIQC.RefNo = this.GetMaxRefNo(FISdc, currentIQC.Stock_In_Date, currentIQC.Item_No);
        //                    currentIQC.AuditNo1 = currentIQC.RefNo.ToString().Substring(0, 6) + "-" + currentIQC.RefNo.ToString().Substring(6);

        //                    currentIQC.Warehouse = dataTable.Rows[i]["STRC80"].ToString().Trim();

        //                    //从MIDc中取布封和克重, 由David增加 2020-10-19
        //                    MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
        //                    var obj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == currentIQC.Supplier_Item_No);
        //                    if (obj != null)
        //                    {
        //                        //currentIQC.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth) / 1000.00M;

        //                        //2020-12-18 王生要求Width的单位修改为：mm
        //                        currentIQC.StandardWidth = (obj.UsableWidthMin.HasValue ? obj.UsableWidthMin : obj.UsableWidth);

        //                        //取克重的算法修改 David 2020-10-23
        //                        currentIQC.StandardWeightGmSqm = obj.WeightGmSqm;
        //                        currentIQC.StandardWeightGmSqmMax = obj.WeightGmSqmMax.HasValue ? obj.WeightGmSqmMax : obj.WeightGmSqm;
        //                        currentIQC.StandardWeightGmSqmMin = obj.WeightGmSqmMin.HasValue ? obj.WeightGmSqmMin : obj.WeightGmSqm;
        //                        currentIQC.StandardWeightGmSqmS = obj.WeightGmSqmS;
        //                    }

        //                    //currentIQC.StandardWidth = (decimal)dataTable.Rows[i]["StandardWidth"];
        //                    //currentIQC.StandardWeightGmSqm = (decimal)dataTable.Rows[i]["StandardWeightGmSqm"];

        //                    //Shelley要求以下写入默认值 David 2020-10-16
        //                    currentIQC.ColorMatching = "Y";

        //                    //将Supp Item Ref/Clr Name拆分成两栏： Supp Item Ref、Clr Name  David 2020-10-22
        //                    currentIQC.SuppItemRef = dataTable.Rows[i]["SUPPITEMREF"].ToString();
        //                    currentIQC.ColorName = dataTable.Rows[i]["COLORNAME"].ToString();

        //                    //由David加入 2020-11-11
        //                    currentIQC.AuditStage = "1st";

        //                    this.BindingSource.EndEdit();
        //                    this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);

        //                    ////更新Split id Flag， 由David加入 2020-10-14
        //                    //string SqlStr = string.Format("exec sp_UpdateLotIDSplitFlag '{0}'", currentIQC.Lot_Id);
        //                    //(this.DataContext as FabricInspectionDataContext).ExecuteCommand(SqlStr);
        //                    //(this.DataContext as FabricInspectionDataContext).Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, currentIQC);

        //                    //}

        //                }

        //                //FabricInspectionDataContext context =  PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
        //                //IEnumerable<Fabric_Insp_Header>  insp = from p in context.Fabric_Insp_Headers where p.Lot_Id >= fromLotId && p.Lot_Id <= toLotId && p.Company == companyNo select p;
        //                //this.objListGridControl.DataSource = insp;

        //            }
        //            catch (Exception ex)
        //            {
        //                //MessageBox.Show("Error happened \n" + ex.Message);
        //                haveError = true;
        //                errorString = ex.Message;
        //                //Xsj(补)20110926：从ASP400中返回的数据不存在绑定的数据源中，则添加之。如果添加失败，则清除。
        //                this.DataContext.GetChangeSet().Inserts.Clear();
        //                //Xsj20110926:以上代码存在Bug，因为this.DataContext.GetChangeSet().Inserts是Read-Only应改为如下内容
        //                //foreach (Employee item in dc.GetChangeSet().Inserts)
        //                //{
        //                //    this.DataContext.GetTable(typeof(PH.FabricInspection.BO.Fabric_Insp_Header)).DeleteOnSubmit(item);
        //                //}
        //            }



        //        }
        //        ////3: delete data
        //        //strSQL = "delete from AULT4F1.PH984WA  WHERE GUIDWA = '" + key.ToString() + "'";
        //        //PH.FabricInspection.BO.AS400DB.DB.Execute(strSQL);


        //        ////生成Refence NO. 由David增加 2020-09-28
        //        //string StockInDate = dataTable.Rows[0]["STDTWA"].ToString().Trim();
        //        //FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
        //        //db.ExecuteCommand(string.Format("exec sp_GenerateRefNo '{0}'", StockInDate));
        //        //db.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, this.BindingSource.DataSource as IEnumerable);

        //        if (haveError)
        //        {
        //            MessageBox.Show("Error happened \n" + errorString);
        //        }

        //    }
        //}

        ////得到最大的Ref No. 由David 加入  2020-09-29
        //public int? GetMaxRefNo(FabricInspectionDataContext ADB, string AStockInDate, string AItemNo)
        //{
        //    string SqlStr = string.Format("select dbo.fn_GetMaxRefNo('{0}','{1}')", AStockInDate, AItemNo);
        //    DataTable dt = ADB.ExecuteDataTable(SqlStr, "dtRefNo");
        //    if (dt == null || dt.Rows.Count == 0) return 0;

        //    return (int)dt.Rows[0][0];

        //    //var obj = ADB.Fabric_Insp_Headers.FirstOrDefault(p => p.Stock_In_Date == AStockInDate && p.Item_No == AItemNo && p.RefNo.HasValue);
        //    //if (obj != null)
        //    //{
        //    //    return obj.RefNo;
        //    //}

        //    //int MaxRefNoByStockInDate = ADB.Fabric_Insp_Headers.Where(p => p.Stock_In_Date == AStockInDate).Select(p => (p.RefNo ?? 0)).Max();
        //    //return (MaxRefNoByStockInDate > 0) ? (MaxRefNoByStockInDate + 1) : (Convert.ToInt32(AStockInDate) * 1000 + 1);
        //}

        //private int GetMaxSystemInstallNo()
        //{
        //    string strToday = MasterTableUtil.getTodayString();
        //    int maxNo = 0;

        //    try
        //    {
        //        //freddy -- 2009-03-31 for convert to PlatForm2
        //        //var tempData = from p in ((PH.FabricInspection.BO.FabricInspectionDataContext)this.DataContext).Fabric_Insp_Headers
        //        //               select p;
        //        //List<Fabric_Insp_Header> tempIQC02s = tempData.ToList<Fabric_Insp_Header>();

        //        Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();

        //        //List<Fabric_Insp_Header> tempIQC02s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderList().ToList<Fabric_Insp_Header>();

        //        List<Fabric_Insp_Header> tempIQC02s = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(strToday).ToList<Fabric_Insp_Header>();
        //        if (tempIQC02s != null)
        //        {

        //            int tempNo = 0;
        //            string tempInstallNo = "";
        //            Fabric_Insp_Header tempInspectionHeader = null;
        //            for (int i = 0, iSize = tempIQC02s.Count; i < iSize; i++)
        //            {
        //                tempInspectionHeader = tempIQC02s[i];
        //                //if (tempInspectionHeader == null) {
        //                //    return;
        //                //}
        //                tempInstallNo = tempInspectionHeader.System_Install_No.ToString();
        //                if (tempInstallNo.StartsWith(strToday))
        //                {
        //                    tempNo = Convert.ToInt32(tempInstallNo.Substring(strToday.Length));
        //                    if (tempNo > maxNo)
        //                    {
        //                        maxNo = tempNo;
        //                    }
        //                }

        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load data from Master \n" + ex.Message);
        //    }

        //    maxNo = maxNo + 1;


        //    int tempMaxNo = GetMaxSystemInstallNoInMemory();
        //    if (tempMaxNo > maxNo)
        //    {
        //        maxNo = tempMaxNo;
        //    }

        //    string strMaxNo = maxNo.ToString();
        //    if (strMaxNo.Length > 3)
        //    {
        //        strMaxNo = strMaxNo.Substring(0, 3);
        //    }

        //    return Convert.ToInt32((strToday + MasterTableUtil.getFixedLengthString(strMaxNo, 3)));

        //}

        //private int GetMaxSystemInstallNoInMemory()
        //{
        //    string strToday = MasterTableUtil.getTodayString();
        //    int maxNo = 0;
        //    try
        //    {
        //        int tempNo = 0;
        //        string tempInstallNo = "";
        //        foreach (Fabric_Insp_Header tempInspectionHeader in this.BindingSource)
        //        {
        //            //if (tempInspectionHeader == null) {
        //            //    return;
        //            //}
        //            tempInstallNo = tempInspectionHeader.System_Install_No.ToString();
        //            if (tempInstallNo.StartsWith(strToday))
        //            {
        //                tempNo = Convert.ToInt32(tempInstallNo.Substring(strToday.Length));
        //                if (tempNo > maxNo)
        //                {
        //                    maxNo = tempNo;
        //                }
        //            }

        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show("Error happened when load data from Master \n" + ex.Message);
        //    }

        //    maxNo = maxNo + 1;

        //    return maxNo;
        //}


        private void SetStdMidcValue(MaterialByLot obj, string suppref)
        {
            #region 说明...
            /* 
                // zhangrong update2010-03-16
                //Std_E_To_E_Width= MIDC Unit 下的 Supplier Width (标准边至边封度)
                //Std_UsableWidth= MIDC Unit 下的 Usable Width（标准可用封度）
                //StandardWerght= MIDC Unit 下的  Weight GmSqm（标准重量）
                //取數邏輯：
                //1. 取 “3” 和“4”框中的數值， 顯示格式： "3" ~ "4"
                //2. 當 "2" / "3 " / "4 " 都為空白時，取“1”中的數值， 顯示格式： "1"
                //3. 當 "2" 有數值,而 “3” 和“4”框其中1個或兩個沒有數值， 顯示格式： "空白" 。 （以便通知Jane 修正“3” 和“4”框數值）
            
             一.上述報表中?A欄取數邏輯如下:
            如果上圖3位置的值不等於0時, MIDC_MIN_UsabelWidth = 3位置的值;
            如果上圖3位置的值等於0時, MIDC_MIN_UsabelWidth = 1位置的值;
            如果上圖4位置的值不等於0時, MIDC_MAX_UsabelWidth = 4位置的值;
            如果上圖4位置的值等於0時, MIDC_MAX_UsabelWidth = 1位置的值;
            根據上述邏輯,那麽?A欄在報表中的顯示的值如下:
            MIDC_MIN_UsabelWidth - MIDC_MAX_UsabelWidth

            二.上述報表中?B欄取數邏輯如下:
            如果上圖3位置的值不等於0時, MIDC_MIN_WeightGmSqm = 3位置的值;
            如果上圖3位置的值等於0時, MIDC_MIN_WeightGmSqm = 1位置的值;
            如果上圖4位置的值不等於0時, MIDC_MAX_WeightGmSqm = 4位置的值;
            如果上圖4位置的值等於0時, MIDC_MAX_WeightGmSqm = 1位置的值;
            根據上述邏輯,那麽?B欄在報表中的顯示的值如下:
            MIDC_MIN_WeightGmSqm - MIDC_MAX_WeightGmSqm

       
             */
            #endregion
            Nullable<decimal> MIDC_MIN_UsabelWidth = null, MIDC_MAX_UsabelWidth = null
                             , MIDC_MIN_WeightGmSqm = null, MIDC_MAX_WeightGmSqm = null
                             , MIDC_MIN_SupplierWidth = null, MIDC_MAX_SupplierWidth = null;
            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == suppref select c;

            if (objs.Count() != 0)
            {
                PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                #region

                if ((detail.UsableWidthMin ?? 0) != 0)
                    MIDC_MIN_UsabelWidth = detail.UsableWidthMin;
                else
                    MIDC_MIN_UsabelWidth = detail.UsableWidth;

                if ((detail.UsableWidthMax ?? 0) != 0)
                    MIDC_MAX_UsabelWidth = detail.UsableWidthMax;
                else
                    MIDC_MAX_UsabelWidth = detail.UsableWidth;


                if ((detail.WeightGmSqmMin ?? 0) != 0)
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqmMin;
                else
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqm;

                if ((detail.WeightGmSqmMax ?? 0) != 0)
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqmMax;
                else
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqm;


                if ((detail.SupplierWidthMin ?? 0) != 0)
                    MIDC_MIN_SupplierWidth = detail.SupplierWidthMin;
                else
                    MIDC_MIN_SupplierWidth = detail.SupplierWidth;

                if ((detail.SupplierWidthMax ?? 0) != 0)
                    MIDC_MAX_SupplierWidth = detail.SupplierWidthMax;
                else
                    MIDC_MAX_SupplierWidth = detail.SupplierWidth;
                #endregion
            }
            //obj.StdUsableWidth = ((MIDC_MIN_UsabelWidth ?? 0) / 1000.00M).ToString("#.##") + "-" + ((MIDC_MAX_UsabelWidth ?? 0) / 1000M).ToString("#.##");
            obj.StdUsableWidth = ((MIDC_MIN_UsabelWidth ?? 0)).ToString("#.##") + "-" + ((MIDC_MAX_UsabelWidth ?? 0)).ToString("#.##");

            obj.StdWeight = (MIDC_MIN_WeightGmSqm ?? 0).ToString("#.##") + "-" + (MIDC_MAX_WeightGmSqm ?? 0).ToString("#.##");

            //obj.Std_E_To_E_Width = ((MIDC_MIN_SupplierWidth ?? 0) / 1000.00M).ToString("#.##") + "-" + ((MIDC_MAX_SupplierWidth ?? 0) / 1000.00M).ToString("#.##");
            obj.Std_E_To_E_Width = ((MIDC_MIN_SupplierWidth ?? 0)).ToString("#.##") + "-" + ((MIDC_MAX_SupplierWidth ?? 0)).ToString("#.##");
        }


        private void SetStatusValue(MaterialByLot obj, string suppref, Nullable<decimal> Usable_Width, Nullable<decimal> Actual_Weight)
        {
            #region 说明..
            /*
                通過Fabric_Insp_Header的字段Supplier_Item_No與與上述MIDC圖中對應的表的字段SuppRef把兩個表關連起來計算:
                IF Usable_Width > MIDC_MAX_UsabelWidth 時, ?E = Wider
                IF Usable_Width < MIDC_MIN_UsabelWidth 時, ?E = Narrow
                IF Usable_Width < MIDC_MAX_UsabelWidth AND Usable_Width > MIDC_MIN_UsabelWidth 時, ?E = OK
                IF Actual_Weight > MIDC_MAX_WeightGmSqm 時, ?F = Wider
                IF Actual_Weight < MIDC_MIN_WeightGmSqm 時, ?F = Narrow
                IF Actual_Weight < MIDC_MAX_ WeightGmSqm AND Usable_Width > MIDC_MIN_ WeightGmSqm 時, ?F = OK

             */
            #endregion

            Nullable<decimal> MIDC_MIN_UsabelWidth = null, MIDC_MAX_UsabelWidth = null
                              , MIDC_MIN_WeightGmSqm = null, MIDC_MAX_WeightGmSqm = null;

            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == suppref select c;

            if (objs.Count() != 0)
            {
                PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                #region

                if ((detail.UsableWidthMin ?? 0) != 0)
                    MIDC_MIN_UsabelWidth = detail.UsableWidthMin;
                else
                    MIDC_MIN_UsabelWidth = detail.UsableWidth;

                if ((detail.UsableWidthMax ?? 0) != 0)
                    MIDC_MAX_UsabelWidth = detail.UsableWidthMax;
                else
                    MIDC_MAX_UsabelWidth = detail.UsableWidth;


                if ((detail.WeightGmSqmMin ?? 0) != 0)
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqmMin;
                else
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqm;

                if ((detail.WeightGmSqmMax ?? 0) != 0)
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqmMax;
                else
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqm;

                #endregion
            }

            string E = "", F = "";
            if (Usable_Width > MIDC_MAX_UsabelWidth) E = "Wider";
            if (Usable_Width < MIDC_MIN_UsabelWidth) E = "Narrow";
            if (Usable_Width <= MIDC_MAX_UsabelWidth && Usable_Width >= MIDC_MIN_UsabelWidth) E = "OK";
            //if (Actual_Weight < MIDC_MAX_WeightGmSqm) F = "Heavy";
            if (Actual_Weight > MIDC_MIN_WeightGmSqm) F = "Light";
            if (Actual_Weight <= MIDC_MAX_WeightGmSqm && Actual_Weight >= MIDC_MIN_WeightGmSqm) F = "OK";

            obj.ActualUsablewidthStatus = E;
            obj.ActualWeightStatus = F;
        }


        private string getShortLengthString2Value(MaterialByLot obj, string itemNo, string suppref, string stock_In_Date, decimal inspectionLength)
        {
            #region 说明...
            /*
                select Actual_Length as 標准長度
                from dbo.Fabric_Insp_Header
                where Item_No = '2WT00028AE29' AND Stock_In_Date = '080821'       AND Insp_Length > 0 AND Usable_Width > MIDC_MIN_UsabelWidth  AND Usable_Width< MIDC_MAX_UsabelWidth

                select Actual_Length as 寬封長度, Min(Usable_Width) as X1 ,Max(Usable_Width) as Y1 
                from dbo.Fabric_Insp_Header
                where Item_No = '2WT00028AE29' AND Stock_In_Date = '080821'      AND Insp_Length > 0 AND Usable_Width > MIDC_MAX_UsabelWidth

                select Actual_Length as 窄封長度, Min(Usable_Width) as X2 ,Max(Usable_Width) as Y2 
                from dbo.Fabric_Insp_Header
                where Item_No = '2WT00028AE29' AND Stock_In_Date = '080821'       AND Insp_Length > 0 AND Usable_Width < MIDC_MIN_UsabelWidth

                IF 標准長度> 0                A1 = 標准長度/上述報表中抽檢米數的值* 100;
                IF 寬封長度> 0                A2 = 寬封長度/上述報表中抽檢米數的值* 100;
                IF 窄封長度> 0                A3 = 窄封長度/上述報表中抽檢米數的值* 100;

                根據上述邏輯,那麽?C欄在報表中的顯示的值如下:
                A1%物料封度在接受範圍(Meet material spec) ; A2%物料寬封(Wider Width):X1~Y1mm ; A3%物料寬封(Narrow Width):X2~Y2mm .  
             */
            #endregion


            Nullable<decimal> MIDC_MIN_UsabelWidth = null, MIDC_MAX_UsabelWidth = null
                            , 標准長度 = null, 寬封長度 = null, 窄封長度 = null
                            , x1 = null, x2 = null, y1 = null, y2 = null;

            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == suppref select c;

            if (objs.Count() != 0)
            {
                PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                if ((detail.UsableWidthMin ?? 0) != 0)
                    MIDC_MIN_UsabelWidth = detail.UsableWidthMin;
                else
                    MIDC_MIN_UsabelWidth = detail.UsableWidth;

                if ((detail.UsableWidthMax ?? 0) != 0)
                    MIDC_MAX_UsabelWidth = detail.UsableWidthMax;
                else
                    MIDC_MAX_UsabelWidth = detail.UsableWidth;

            }

            //FabricInspectionDataContext context2 = new FabricInspectionDataContext();
            FabricInspectionDataContext context2 = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var objs1 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Usable_Width >= MIDC_MIN_UsabelWidth && c.Usable_Width <= MIDC_MAX_UsabelWidth select c;
            var objs3 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Usable_Width < MIDC_MIN_UsabelWidth select c;
            var objs2 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Usable_Width > MIDC_MAX_UsabelWidth select c;

            if (objs1.Count() != 0) 標准長度 = objs1.Sum(aa => aa.Actual_Length);
            if (objs2.Count() != 0)
            {
                寬封長度 = objs2.Sum(aa => aa.Actual_Length);
                x1 = objs2.Min(aa => aa.Usable_Width);
                y1 = objs2.Max(aa => aa.Usable_Width);
            }
            if (objs3.Count() != 0)
            {
                窄封長度 = objs3.Sum(aa => aa.Actual_Length);
                x2 = objs3.Min(aa => aa.Usable_Width);
                y2 = objs3.Max(aa => aa.Usable_Width);
            }


            string A1 = "", A2 = "", A3 = "";
            if ((標准長度 ?? 0) > 0 && inspectionLength != 0) A1 = ((標准長度 ?? 0) / inspectionLength * 100).ToString("n2");
            if ((寬封長度 ?? 0) > 0 && inspectionLength != 0) A2 = ((寬封長度 ?? 0) / inspectionLength * 100).ToString("n2");
            if ((窄封長度 ?? 0) > 0 && inspectionLength != 0) A3 = ((窄封長度 ?? 0) / inspectionLength * 100).ToString("n2");

            string str = "";
            SysParamHelper sph = SysParamHelper.Instance;
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                if (A1 != "")
                    str = str + A1 + "%物料封度在接受範圍(Meet material spec) ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%物料寬封(Wider Width):{0}~{1}mm ; ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%物料窄封(Narrow Width):{0}~{1}mm  ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
            }

            if (sph.LangID == "TH")
            {
                if (A1 != "")
                    str = str + A1 + "%ความกว้างได้ตามมาตรฐาน (Meet material spec) ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%ความกว้างผ้ากว้างเกินไป(Wider Width):{0}~{1}mm ; ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%ความกว้างผ้าแคบเกินไป(Narrow Width):{0}~{1}mm  ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
            }

            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {
                if (A1 != "")
                    str = str + A1 + "%Width meet material spec ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%Wider Width:{0}~{1}mm ; ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%Narrow Width:{0}~{1}mm  ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
            }
            return str;
        }

        private string getShortLengthString3Value(MaterialByLot obj, string itemNo, string suppref, string stock_In_Date, decimal inspectionLength)
        {
            #region 说明...
            /*
                --1.
                select  Actual_Length as 標准克重
                from    dbo.Fabric_Insp_Header
                where   Item_No = '2WT00028AE29' AND Stock_In_Date = '080821' AND Insp_Length > 0 AND Actual_Weight > MIDC_MIN_WeightGmSqm AND < MIDC_MAX_WeightGmSqm
                --2.
                select  Actual_Length as 克重重, Min(Actual_Weight) as X1 ,Max(Actual_Weight) as Y1 
                from    dbo.Fabric_Insp_Header
                where   Item_No = '2WT00028AE29' AND Stock_In_Date = '080821' AND Insp_Length > 0 AND Actual_Weight > MIDC_MAX_WeightGmSqm
                --3.
                select  Actual_Length as 克重輕, Min(Actual_Weight) as X2 ,Max(Actual_Weight) as Y2 
                from    dbo.Fabric_Insp_Header
                where   Item_No = '2WT00028AE29' AND Stock_In_Date = '080821' AND Insp_Length > 0 AND Actual_Weight < MIDC_MIN_WeightGmSqm

                IF 標准克重> 0
                  A1 = 標准克重/上述報表中抽檢米數的值 * 100;
                IF 克重重> 0
                  A2 = 克重重/上述報表中抽檢米數的值 * 100;
                IF 克重輕> 0
                  A3 = 克重輕/上述報表中抽檢米數的值 * 100;

                根據上述邏輯,那麽?D欄在報表中的顯示的值如下:
                A1%物料克重在接受範圍(Meet material spec) ; A2%物料克重重(Heavy Weight):X1~Y1mm ; A3%物料克重輕(Light Weight):X2~Y2mm 
             */
            #endregion

            Nullable<decimal> MIDC_MIN_WeightGmSqm = null, MIDC_MAX_WeightGmSqm = null
                            , 標克重 = null, 克重重 = null, 克重輕 = null
                            , x1 = null, x2 = null, y1 = null, y2 = null;


            PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var objs = from c in context.Details where c.SuppRef == suppref select c;

            if (objs.Count() != 0)
            {
                PH.MIDc.BO.Detail detail = objs.First<PH.MIDc.BO.Detail>();

                if ((detail.WeightGmSqmMin ?? 0) != 0)
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqmMin;
                else
                    MIDC_MIN_WeightGmSqm = detail.WeightGmSqm;

                if ((detail.WeightGmSqmMax ?? 0) != 0)
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqmMax;
                else
                    MIDC_MAX_WeightGmSqm = detail.WeightGmSqm;
            }

            //FabricInspectionDataContext context2 = new FabricInspectionDataContext();
            FabricInspectionDataContext context2 = PH.Platform.BO.ContextBuilder.CreateContext<FabricInspectionDataContext>();
            var objs1 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Actual_Weight >= MIDC_MIN_WeightGmSqm && c.Actual_Weight <= MIDC_MAX_WeightGmSqm select c;
            var objs3 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Actual_Weight < MIDC_MIN_WeightGmSqm select c;
            var objs2 = from c in context2.Fabric_Insp_Headers where c.Item_No == itemNo && c.Stock_In_Date == stock_In_Date && c.Insp_Length > 0 && c.Actual_Weight > MIDC_MAX_WeightGmSqm select c;

            if (objs1.Count() != 0) 標克重 = objs1.Sum(aa => aa.Actual_Length);
            if (objs2.Count() != 0)
            {
                克重重 = objs2.Sum(aa => aa.Actual_Length); ;
                x1 = objs2.Min(aa => aa.Actual_Weight);
                y1 = objs2.Max(aa => aa.Actual_Weight);
            }
            if (objs3.Count() != 0)
            {
                克重輕 = objs3.Sum(aa => aa.Actual_Length);
                x1 = objs3.Min(aa => aa.Actual_Weight);
                y1 = objs3.Max(aa => aa.Actual_Weight);
            }

            string A1 = "", A2 = "", A3 = "";
            if ((標克重 ?? 0) > 0 && inspectionLength != 0) A1 = ((標克重 ?? 0) / inspectionLength * 100).ToString("n2");
            if ((克重重 ?? 0) > 0 && inspectionLength != 0) A2 = ((克重重 ?? 0) / inspectionLength * 100).ToString("n2");
            if ((克重輕 ?? 0) > 0 && inspectionLength != 0) A3 = ((克重輕 ?? 0) / inspectionLength * 100).ToString("n2");



            string str = "";
            SysParamHelper sph = SysParamHelper.Instance;
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {

                if (A1 != "")
                    str = str + A1 + "%物料克重在接受範圍(Meet material spec) ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%物料克重重(Heavy Weight):{0}~{1}g/m2 ; ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%物料克重輕(Light Weight):{0}~{1}g/m2   ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
            }
            if (sph.LangID == "TH")
            {

                if (A1 != "")
                    str = str + A1 + "%น้ำหนักได้ตามมาตรฐาน(Meet material spec) ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%หนักเกินไป(Heavy Weight):{0}~{1}g/m2 ; ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%เบาเกินไป(Light Weight):{0}~{1}g/m2   ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
            }
            if (sph.LangID != "TH" && sph.LangID != "TW" && sph.LangID != "CN")
            {

                if (A1 != "")
                    str = str + A1 + "%Weight meet material spec ; ";
                if (A2 != "")
                    str = str + A2 + string.Format("%Heavy Weight:{0}~{1}g/m2 ; ", (x2 ?? 0).ToString("#.##"), (y2 ?? 0).ToString("#.##"));
                if (A3 != "")
                    str = str + A3 + string.Format("%Light Weight:{0}~{1}g/m2   ", (x1 ?? 0).ToString("#.##"), (y1 ?? 0).ToString("#.##"));
            }
            return str;

        }


        /// <summary>
        /// Xsj(补)20110926：判断绑定的数据源中是否存在指定的数据
        /// </summary>
        /// <param name="strCompany"></param>
        /// <param name="strItemNo"></param>
        /// <param name="strLotId"></param>
        /// <param name="strStockInDate"></param>
        /// <returns></returns>
        private bool FindFabricInspectInMemory(string strCompany, string strItemNo, string strLotId, string strStockInDate)
        {

            try
            {

                foreach (Fabric_Insp_Header tempInspectionHeader in this.BindingSource)
                {

                    if (tempInspectionHeader.Company.ToUpper().Equals(strCompany.ToUpper())
                        && tempInspectionHeader.Item_No.ToUpper().Equals(strItemNo.ToUpper())
                        && tempInspectionHeader.Lot_Id.ToUpper().Equals(strLotId.ToUpper())
                        && tempInspectionHeader.Stock_In_Date.Equals(strStockInDate)
                        )
                    {
                        return true;
                    }


                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error happened when load data from Master \n" + ex.Message);
            }

            return false;
        }

        #region ==========================================供应商品質分析報表==========================================
        //定義結構體用於存儲供应商报表用中間參數變數
        public struct BTime
        {
            public int min;
            public int max;
            public DateTime? minTime;
            public DateTime? maxTime;
            public List<string> supplierCodes;
        }

        /// <summary>
        /// 生成供應商品質分析報表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            try
            {
                //报表实例
                SupplierAnalyseReport report1 = null;
                //    
                string a = "1";
                string b = "2";
                string c = "0";
                string d = "9";
                string wherestr = "";
                //
                string abcd = this.objListGridView.ActiveFilterString;
                if (abcd != null && abcd.Trim() != "")
                {
                    wherestr = abcd.Replace("'", "''").Trim();
                }
                List<Supplier_QA> lsq = new List<Supplier_QA>();
                if (!string.IsNullOrEmpty(abcd))
                {
                    if (abcd.Contains("Or"))
                    {
                        MessageBox.Show("The filter is wrong!");
                    }
                    else
                    {
                        abcd = abcd.Replace("And", "|");
                        char[] aChar = { '|' };
                        char[] nChar = { ' ' };
                        string[] strarry = abcd.Split(aChar);

                        foreach (var al in strarry)
                        {
                            string[] str = al.TrimStart().TrimEnd().Split(nChar);
                            if (str[0].Trim() == "[Stock_In_Date]" && str[1] == ">=")
                            {
                                c = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "<=")
                            {
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "=")
                            {
                                c = str[2].Replace(@"'", @"");
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == ">=")
                            {
                                a = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == "<=")
                            {
                                b = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == "=")
                            {
                                b = str[2].Replace(@"'", @"");
                                a = str[2].Replace(@"'", @"");
                            }

                        }
                        var dc = (this.DataContext as FabricInspectionDataContext);
                        dc.CommandTimeout = 0;
                        lsq = dc.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", a, b, c, d).ToList<Supplier_QA>();

                    }
                    //abcd.Split(strarry, "And");

                }
                else
                {
                    var dcc = (this.DataContext as FabricInspectionDataContext);
                    dcc.CommandTimeout = 0;
                    lsq = dcc.ExecuteQuery<Supplier_QA>("Exec GET_SUPPLIERQA_DATA {0},{1},{2},{3}", a, b, c, d).ToList<Supplier_QA>();
                }
                string period = string.Empty;
                if (c != null && c != string.Empty && c.Length >= 6)
                    period = "From " + " 20" + c.Substring(0, 2) + "/" + c.Substring(2, 2);
                if (d != null && d != string.Empty && d.Length >= 6)
                    period = period + " To " + " 20" + d.Substring(0, 2) + "/" + d.Substring(2, 2);

                if (c == "0" && d == "9")
                { period = "All"; }

                List<SupplierQA> ddd = new List<SupplierQA>();
                foreach (var l in lsq)
                {
                    SupplierQA s = new SupplierQA(l.SupplierCode, l.SupplierName, l.MCount, l.TotalQty, l.RefuseQTY, l.RefusePercent, l.SpreadName1, l.SpreadQTY1, l.SpreadName2, l.SpreadQTY2, l.SpreadName3, l.SpreadQTY3, l.SpreadName4, l.SpreadQTY4, l.SpreadName5, l.SpreadQTY5, l.OtherSpreadQTY, l.PartName1, l.PartQTY1, l.PartName2, l.PartQTY2, l.PartName3, l.PartQTY3, l.PartName4, l.PartQTY4, l.PartName5, l.PartQTY5, l.PartName6, l.PartQTY6, l.PartName7, l.PartQTY7, l.PartName8, l.PartQTY8, l.PartName9, l.PartQTY9, l.PartName10, l.PartQTY10, l.OtherPartQTY, l.ActualQty, l.MouldTrail, l.FabricColor);
                    ddd.Add(s);
                }


                this.Cursor = System.Windows.Forms.Cursors.Default;
                //判斷報表是否已經存在且正在運行
                if (report1 == null)
                {

                    report1 = new SupplierAnalyseReport(ddd, period);

                    report1.ShowPreview();
                }
                else
                {
                    report1.ClosePreview();
                    report1.ShowPreview();

                }
            }
            catch (Exception ex)
            {
                this.Cursor = System.Windows.Forms.Cursors.Default;
            }

        }

        /// <summary>
        ///得到供应商報表輸入參數 
        /// </summary>
        /// <returns></returns>
        private BTime getReportParam()
        {
            BTime bt = new BTime();
            bt.supplierCodes = new List<string>();
            List<int> listTime = new List<int>();
            int a = this.objListGridView.RowCount;
            for (int i = 0; i < a; i++)
            {
                StringBuilder s = new StringBuilder("1");
                //time parameter
                string t = this.objListGridView.GetRowCellValue(i, this.Columns_StockIn_Date).ToString().Trim();
                s.Append(t);
                int k = int.Parse(s.ToString().Trim());
                if (k != 1)
                {
                    listTime.Add(k);
                }
                //supplier code parameter
                var sc = this.objListGridView.GetRowCellValue(i, this.Columns_Supplier_Code);

                if (sc == null)
                {
                    continue;
                }
                else
                {
                    if (string.IsNullOrEmpty(sc.ToString().Trim()))
                    {
                        continue;
                    }
                    else
                    {
                        bt.supplierCodes.Add(sc.ToString().Trim());
                    }
                }

            }

            bt.max = listTime.Max<int>();
            bt.maxTime = (from m in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Insp_Headers
                          where m.Stock_In_Date == bt.max.ToString().Trim().Substring(1, 6)
                          select m.Stock_In_Date_DateTime).First();

            bt.min = listTime.Min<int>();

            bt.minTime = (from m in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Insp_Headers
                          where m.Stock_In_Date == bt.min.ToString().Trim().Substring(1, 6)
                          select m.Stock_In_Date_DateTime).First();
            var dds = bt.supplierCodes.Distinct().ToList<string>();
            bt.supplierCodes = dds;
            return bt;

        }
        #endregion ===================================================================================================================


        #region ==========================================物料品質分析報表============================================================
        //定義結構體用於存儲物料报表用中間參數變數
        public struct CTime
        {
            public int min;
            public int max;
            public DateTime? minTime;
            public DateTime? maxTime;
            public List<string> ERPCode;
        }
        //报表实例

        /// <summary>
        /// 生成物料品質分析報表
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            this.Cursor = System.Windows.Forms.Cursors.WaitCursor;
            try
            {
                MaterialQAReport report2 = null;

                //    
                string a = "1";
                string b = "2";
                string c = "0";
                string d = "9";
                string wherestr = "";
                //
                string abcd = this.objListGridView.ActiveFilterString;



                if (abcd != null && abcd.Trim() != "")
                {
                    wherestr = abcd.Replace("'", "''").Trim();
                }

                List<Material_QA> lsq = new List<Material_QA>();

                if (!string.IsNullOrEmpty(abcd))
                {
                    if (abcd.Contains("Or"))
                    {
                        MessageBox.Show("The filter is wrong!");
                    }
                    else
                    {
                        abcd = abcd.Replace("And", "|");
                        char[] aChar = { '|' };
                        char[] nChar = { ' ' };
                        string[] strarry = abcd.Split(aChar);

                        foreach (var al in strarry)
                        {
                            string[] str = al.TrimStart().TrimEnd().Split(nChar);
                            if (str[0].Trim() == "[Stock_In_Date]" && str[1] == ">=")
                            {
                                c = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "<=")
                            {
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "=")
                            {
                                c = str[2].Replace(@"'", @"");
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == ">=")
                            {
                                a = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == "<=")
                            {
                                b = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == "=")
                            {
                                b = str[2].Replace(@"'", @"");
                                a = str[2].Replace(@"'", @"");
                            }

                        }
                        var dc1 = (this.DataContext as FabricInspectionDataContext);
                        dc1.CommandTimeout = 0;
                        lsq = dc1.ExecuteQuery<Material_QA>("Exec GET_MaterialQA_DATA {0},{1},{2},{3}", a, b, c, d).ToList<Material_QA>();


                    }
                    //abcd.Split(strarry, "And");

                }
                else
                {
                    try
                    {
                        var dc2 = (this.DataContext as FabricInspectionDataContext);
                        dc2.CommandTimeout = 0;
                        lsq = dc2.ExecuteQuery<Material_QA>("Exec GET_MaterialQA_DATA {0},{1},{2},{3}", a, b, c, d).ToList<Material_QA>();

                    }
                    catch
                    {
                        MessageBox.Show("Get data wrong from database!");
                    }
                }

                string period = string.Empty;
                if (c != null && c != string.Empty && c.Length >= 6)
                    period = "From " + " 20" + c.Substring(0, 2) + "/" + c.Substring(2, 2);
                if (d != null && d != string.Empty && d.Length >= 6)
                    period = period + " To " + " 20" + d.Substring(0, 2) + "/" + d.Substring(2, 2);
                if (c == "0" && d == "9")
                { period = "All"; }

                List<MaterialQA> mmm = new List<MaterialQA>();
                foreach (Material_QA l in lsq)
                {
                    MaterialQA s = new MaterialQA(l.MaterialNo, l.SupplierItemNo, l.SupplierCode, l.supplierFullName, l.MCount, l.TotalQty, l.RefuseQTY, l.RefusePercent, l.SpreadName1, l.SpreadQTY1, l.SpreadName2, l.SpreadQTY2, l.SpreadName3, l.SpreadQTY3, l.SpreadName4, l.SpreadQTY4, l.SpreadName5, l.SpreadQTY5, l.OtherSpreadQTY, l.PartName1, l.PartQTY1, l.PartName2, l.PartQTY2, l.PartName3, l.PartQTY3, l.PartName4, l.PartQTY4, l.PartName5, l.PartQTY5, l.PartName6, l.PartQTY6, l.PartName7, l.PartQTY7, l.PartName8, l.PartQTY8, l.PartName9, l.PartQTY9, l.PartName10, l.PartQTY10, l.OtherPartQTY, l.ActualQty, l.MouldTrail, l.FabricColor);
                    mmm.Add(s);
                }


                this.Cursor = System.Windows.Forms.Cursors.Default;

                //判斷報表是否已經存在且正在運行
                //if (report2 == null)
                //{
                report2 = new MaterialQAReport(mmm, period);
                report2.ShowPreview();
                //}
                //else
                //{
                //    report2.ClosePreview();
                //    report2.ShowPreview();

                //}
            }
            catch (Exception ex)
            {
                this.Cursor = System.Windows.Forms.Cursors.Default;
            }

        }
        /// <summary>
        ///得到物料质量分析報表輸入參數 
        /// </summary>
        /// <returns></returns>
        private CTime getReportParam2()
        {
            CTime bt = new CTime();
            bt.ERPCode = new List<string>();
            List<int> listTime = new List<int>();
            int a = this.objListGridView.RowCount;
            for (int i = 0; i < a; i++)
            {
                StringBuilder s = new StringBuilder("1");
                //time parameter
                string t = this.objListGridView.GetRowCellValue(i, this.Columns_StockIn_Date).ToString().Trim();
                s.Append(t);
                int k = int.Parse(s.ToString().Trim());
                if (k != 1)
                {
                    listTime.Add(k);
                }
                //supplier code parameter
                var sc = this.objListGridView.GetRowCellValue(i, this.Columns_Item_NO);

                if (sc == null)
                {
                    continue;
                }
                else
                {
                    bt.ERPCode.Add(sc.ToString().Trim());
                }

            }

            bt.max = listTime.Max<int>();
            bt.maxTime = (from m in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Insp_Headers
                          where m.Stock_In_Date == bt.max.ToString().Trim().Substring(1, 6)
                          select m.Stock_In_Date_DateTime).First();

            bt.min = listTime.Min<int>();

            bt.minTime = (from m in (this.DataContext as PH.FabricInspection.BO.FabricInspectionDataContext).Fabric_Insp_Headers
                          where m.Stock_In_Date == bt.min.ToString().Trim().Substring(1, 6)
                          select m.Stock_In_Date_DateTime).First();
            var dds = bt.ERPCode.Distinct().ToList<string>();
            bt.ERPCode = dds;
            return bt;
        }
        #endregion ==============================================================================================================================


        private void barBtnImportData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //string fromLotId = "";
            //string toLotId = "";
            //string companyNo = "";
            //if (FrmLotIdFromToInputter.ShowLotIdFromToInputter(ref fromLotId, ref toLotId, ref companyNo))
            //{
            //    importDataFromERP(fromLotId, toLotId, companyNo);
            //}
        }

        private void barBtnSelectData_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.objListGridView.OptionsView.ShowFooter = true;
            //return;

            string fromLotId = "";
            string toLotId = "999999-S9999-99";
            string toSystemNo = MasterTableUtil.getTodayString() + "999";
            string fromSystemNo = MasterTableUtil.getTodayBefore60String() + "000";
            string fromItemNo = null;
            string toItemNo = "Z";
            if (FrmSelectDataInputter.ShowSelectDateInputter(ref fromSystemNo, ref toSystemNo, ref fromItemNo, ref toItemNo, ref fromLotId, ref toLotId))
            {

                //string strToday = MasterTableUtil.getTodayBefore60String();

                Fabric_Insp_HeaderList fabric_Insp_HeaderList = new Fabric_Insp_HeaderList();

                this.BindingSource.DataSource = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(fromSystemNo, toSystemNo, fromItemNo, toItemNo, fromLotId, toLotId);
                this.DataContext = fabric_Insp_HeaderList.CurrentDataContext;
            }

        }

        private string GetSortedColumnNames()
        {
            string sortedColumns = "";

            foreach (GridColumn column in this.objListGridView.SortedColumns)
            {
                if (sortedColumns.Length > 0)
                {
                    sortedColumns += ";";
                }
                sortedColumns += column.FieldName + "," + column.SortOrder;
            }
            return sortedColumns;
        }

        private void barBtnPrintByPieceBackEnd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.Cursor = Cursors.WaitCursor;
            try
            {
                FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
                if (from.ShowDialog() == DialogResult.OK)
                {
                    strVersionNo = from.currentValue;

                    string strParameter = "ByPiece" + "\n"
                        + strVersionNo + "\n"
                        + this.objListGridView.ActiveFilterString + "\n"
                        + GetSortedColumnNames();
                    //MessageBox.Show("strParameter=" + strParameter);
                    //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名

                    PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                    data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                    data.ClassFullName = "PH.FabricInspection.BackEnd.ByPieceByLotBackEndReport";//報表全名
                    data.JobName = "ByPieceBackEndReport";//JOB名稱
                    data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                    data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                    data.Parameter = strParameter;//執行數據源時候需要使用的參數
                    PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
                }

            }
            catch (Exception ex)
            {
                //this.Cursor = Cursors.Default;
                MessageBox.Show(ex.Message);
            }
            finally
            {
                //this.Cursor = Cursors.Default;
            }


        }

        private void barBtnPrintByLotBackEnd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.Cursor = Cursors.WaitCursor;
            try
            {
                FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
                if (from.ShowDialog() == DialogResult.OK)
                {
                    strVersionNo = from.currentValue;

                    string strParameter = "ByLot" + "\n"
                        + strVersionNo + "\n"
                        + this.objListGridView.ActiveFilterString + "\n"
                        + GetSortedColumnNames();

                    //MessageBox.Show("strParameter=" + strParameter);
                    //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                    PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                    data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                    data.ClassFullName = "PH.FabricInspection.BackEnd.ByPieceByLotBackEndReport";//報表全名
                    data.JobName = "ByLotBackEndReport";//JOB名稱
                    data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                    data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                    data.Parameter = strParameter;//執行數據源時候需要使用的參數
                    PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");
                }

            }
            catch (Exception ex)
            {
                //this.Cursor = Cursors.Default;
                MessageBox.Show(ex.Message);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }

        private void barBtnSuppliersQAReportBackEnd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                //    
                string a = "1";
                string b = "2";
                string c = "0";
                string d = "9";
                string wherestr = "";
                //
                string abcd = this.objListGridView.ActiveFilterString;
                if (abcd != null && abcd.Trim() != "")
                {
                    wherestr = abcd.Replace("'", "''").Trim();
                }
                List<Supplier_QA> lsq = new List<Supplier_QA>();
                if (!string.IsNullOrEmpty(abcd))
                {
                    if (abcd.Contains("Or"))
                    {
                        MessageBox.Show("The filter is wrong!");
                    }
                    else
                    {
                        abcd = abcd.Replace("And", "|");
                        char[] aChar = { '|' };
                        char[] nChar = { ' ' };
                        string[] strarry = abcd.Split(aChar);

                        foreach (var al in strarry)
                        {
                            string[] str = al.TrimStart().TrimEnd().Split(nChar);
                            if (str[0].Trim() == "[Stock_In_Date]" && str[1] == ">=")
                            {
                                c = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "<=")
                            {
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "=")
                            {
                                c = str[2].Replace(@"'", @"");
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == ">=")
                            {
                                a = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == "<=")
                            {
                                b = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Supplier_Code]" && str[1] == "=")
                            {
                                b = str[2].Replace(@"'", @"");
                                a = str[2].Replace(@"'", @"");
                            }

                        }

                    }
                    //abcd.Split(strarry, "And");

                }




                string strParameter = "SuppliersQA" + "\n"
                    + "0\n"
                    + this.objListGridView.ActiveFilterString + "\n"
                    + GetSortedColumnNames() + "\n"
                    + a + "\n"
                    + b + "\n"
                    + c + "\n"
                    + d;

                //MessageBox.Show("strParameter=" + strParameter);
                //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.FabricInspection.BackEnd.SupplierQABackEndReport";//報表全名
                data.JobName = "SupplierQABackEndReport";//JOB名稱
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = strParameter;//執行數據源時候需要使用的參數
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");


            }
            catch (Exception ex)
            {
                //this.Cursor = Cursors.Default;
                MessageBox.Show(ex.Message);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }

        private void barBtnMaterialsQAReportBackEnd_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                //{0},{1},{2},{3}
                string a = "1";
                string b = "2";
                string c = "0";
                string d = "9";



                string wherestr = "";
                //
                string abcd = this.objListGridView.ActiveFilterString;
                if (abcd != null && abcd.Trim() != "")
                {
                    wherestr = abcd.Replace("'", "''").Trim();
                }

                List<Material_QA> lsq = new List<Material_QA>();

                if (!string.IsNullOrEmpty(abcd))
                {
                    if (abcd.Contains("Or"))
                    {
                        MessageBox.Show("The filter is wrong!");
                    }
                    else
                    {
                        abcd = abcd.Replace("And", "|");
                        char[] aChar = { '|' };
                        char[] nChar = { ' ' };
                        string[] strarry = abcd.Split(aChar);

                        foreach (var al in strarry)
                        {
                            string[] str = al.TrimStart().TrimEnd().Split(nChar);
                            if (str[0].Trim() == "[Stock_In_Date]" && str[1] == ">=")
                            {
                                c = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "<=")
                            {
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Stock_In_Date]" && str[1] == "=")
                            {
                                c = str[2].Replace(@"'", @"");
                                d = str[2].Replace(@"'", @"");
                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == ">=")
                            {
                                a = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == "<=")
                            {
                                b = str[2].Replace(@"'", @"");

                            }
                            else if (str[0].Trim() == "[Item_No]" && str[1] == "=")
                            {
                                b = str[2].Replace(@"'", @"");
                                a = str[2].Replace(@"'", @"");
                            }

                        }


                    }
                    //abcd.Split(strarry, "And");

                }



                string strParameter = "MaterialsQA" + "\n"
                    + "0\n"
                    + this.objListGridView.ActiveFilterString + "\n"
                    + GetSortedColumnNames() + "\n"
                    + a + "\n"
                    + b + "\n"
                    + c + "\n"
                    + d;

                //MessageBox.Show("strParameter=" + strParameter);
                //后臺報表主要通過反射來實習的，所以必須知道當前dll全名,報表全名
                PH.Platform.BackEnd.BO.ServerJobData data = new PH.Platform.BackEnd.BO.ServerJobData();
                data.AssemblyName = "PH.FabricInspection.BackEnd.dll";　//當前dll全名
                data.ClassFullName = "PH.FabricInspection.BackEnd.MaterialQABackEndReport";//報表全名
                data.JobName = "MaterialQAReport";//JOB名稱
                data.ProgramCode = this.SideProgramID;//也可通過平臺找到該項目的SideProgram
                data.UserID = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;//當前使用的用戶，可以通過平臺找到
                data.Parameter = strParameter;//執行數據源時候需要使用的參數
                PH.Platform.BackEnd.BO.SReport.InsertData(data, "EN");


            }
            catch (Exception ex)
            {
                //this.Cursor = Cursors.Default;
                MessageBox.Show(ex.Message);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

        }

        /// <summary>
        /// Xsj2011128:添加，用於批量的取Color_Group_Status
        /// 邏輯：
        /// step1:根據當前項，獲取:Company,Item_No,Stock_In_Date
        /// step2:根據當Company,Item_No,Stock_In_Date獲取所有Fabric_Insp_Header集合
        /// step3:根據2中的集合，逐條獲取Color_Group
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void barBtnItem_getColorGroupStatus_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (!GetMaterialBORightForCurrUser()) return;
            GetColorGroupForm getColorGForm = new GetColorGroupForm();
            getColorGForm.MyDataSource = this.BindingSource;
            getColorGForm.DataContext = this.DataContext as FabricInspectionDataContext;
            getColorGForm.ShowDialog();

        }

        /// <summary>
        /// Xsj20111208:获取用户是否有更新BO的权限
        /// </summary>
        /// <returns></returns>
        private bool GetMaterialBORightForCurrUser()
        {
            bool result = false;
            List<Auth_RoleBORight> authRoleBORightList = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetRoleBORight().Where(p => p.BO == "Fabric_Insp_Header").ToList();
            result = authRoleBORightList.Any(p => p.BORight == "Update");
            return result;
        }

        private DateTime? fromDt = null;
        private DateTime? endDt = null;
        private void barBtn_GetListFromDate_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            GetListFromDate getListFromDate = new GetListFromDate(fromDt, endDt);
            if (getListFromDate.ShowDialog() == DialogResult.OK)
            {
                fromDt = getListFromDate.FromDateTime;
                endDt = getListFromDate.EndDateTime;
                string fromDateStr = getListFromDate.FromDateTimeStr;
                string endDateStr = getListFromDate.EndDateTimeStr;
                DataBindAction(fromDateStr, endDateStr);
            }

        }


        //Xsj20121220:更改相机连接时机为：用户进入Information Maintenace界面时进行连接。
        //原来的是在用户进入触摸屏时进行连接，这样会出现检测不一个lot_id后要重新进行相机连接。频繁的连接会造成相机通信的不稳定。
        //现在改用进入Information Maintenace界面时一次相连。效果有待观察。
        private void CameraSetup_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MyCameraController.CameraController != null)
            {
                if (!MyCameraController.CameraController.Visible)
                {
                    MyCameraController.CameraController.Show();
                }
                else
                {
                    MyCameraController.CameraController.Hide();
                }
            }
        }

        public void ShowCameraControlUI()
        {
            if (MyCameraController.CameraController != null)
            {
                if (!MyCameraController.CameraController.Visible)
                {
                    MyCameraController.CameraController.Show();
                }
                else
                {
                    MyCameraController.CameraController.Hide();
                }
            }
        }


        public void HideCameraControlUI()
        {
            if (MyCameraController.CameraController != null)
            {
                if (MyCameraController.CameraController.Visible)
                {
                    MyCameraController.CameraController.Hide();
                }
            }
        }

        private void barBtnPrintAll_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //FrmVersionNoInputter from = new FrmVersionNoInputter(strVersionNo);
            //if (from.ShowDialog() == DialogResult.OK)
            //{
            //    strVersionNo = from.currentValue;

            strVersionNo = "1";

            //獲取報表數據源
            List<MaterialByLot> dataByLot = getDataByLot(strVersionNo);
            string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
            SysParamHelper sph = SysParamHelper.Instance;
            //if (sph.LangID == "TH")
            //    FrmPreview.PreviewReport(strAppPath + "informationBylot_Thai.repx", dataByLot);
            //else
            //    FrmPreview.PreviewReport(strAppPath + "informationBylot.repx", dataByLot);

            //Xsj20120910:為添加報表自動上傳Web功能而注釋掉以上代碼，添加下面  
            string repTitle = string.Format("informationBylot_V{0}.pdf", strVersionNo);
            PH.FabricInspection.BO.Fabric_Insp_Header fisHeader = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
            //if (sph.LangID == "TH")
            //{
            //    //FrmPreview.ShowReport(strAppPath + "informationBylot_Thai.repx", dataByLot, repTitle, fisHeader);
            //    PH.FabricInspection.UI.Report.InformationBylot_Thai byLotRpt = new PH.FabricInspection.UI.Report.InformationBylot_Thai();
            //    FrmPreview.ShowReport(byLotRpt, dataByLot, repTitle, fisHeader);
            //}
            //else
            //{
            //FrmPreview.ShowReport(strAppPath + "informationBylot.repx", dataByLot, repTitle, fisHeader);
            PH.FabricInspection.UI.Report.InformationBylot byLotRpt = new PH.FabricInspection.UI.Report.InformationBylot();
            FrmPreview.ShowReport(byLotRpt, dataByLot, repTitle, fisHeader);
            //}



            List<MaterialByPiece> dataByPiece = getDataByPiece(strVersionNo);
            //string strAppPath = Path.GetDirectoryName(Application.ExecutablePath) + "\\";
            //SysParamHelper sph = SysParamHelper.Instance;
            //if (sph.LangID == "TH")
            //    FrmPreview.PreviewReport(strAppPath + "informationByPiece_Thai.repx", dataByLot);
            //else
            //    FrmPreview.PreviewReport(strAppPath + "informationByPiece.repx", dataByLot);

            //Xsj20120910:為添加報表自動上傳Web功能而注釋掉上面，添加下面 
            repTitle = string.Format("informationByPiece_V{0}.pdf", strVersionNo);
            fisHeader = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
            //---End

            //if (sph.LangID == "TH")
            //    FrmPreview.ShowReport(strAppPath + "informationByPiece_Thai.repx", dataByPiece, repTitle, fisHeader);
            //else
            //{
            //由David改写， 2020-09-28
            PH.FabricInspection.UI.Report.InformationByPiece byPieceRpt = new PH.FabricInspection.UI.Report.InformationByPiece();
            FrmPreview.ShowReport(byPieceRpt, dataByPiece, repTitle, fisHeader);

            // FrmPreview.ShowReport(strAppPath + "informationByPiece.repx", dataByLot, repTitle, fisHeader);
            //}

            //}
        }




        //List<Fabric_Insp_Header> HeaderList = new List<Fabric_Insp_Header>();

        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>;
        //    var obj = List.Where(dr => !string.IsNullOrEmpty(dr.MissingAudit) && dr.MissingAudit.StartsWith(Str))
        //        .Select(dr => dr.MissingAudit).Distinct().OrderByDescending(p => p).FirstOrDefault();

        //    if (obj == null)
        //    {
        //        return Str + "aa";
        //    }

        //    char LastChar = Convert.ToChar(obj.Substring(obj.Length - 1, 1)); //取最后一位字符
        //    if (LastChar != 'z')
        //    {
        //        char LastCharNew = Convert.ToChar((int)LastChar + 1);
        //        return obj.Substring(0, obj.Length - 1) + LastCharNew;
        //    }
        //    else
        //    {
        //        char PenultimateChar = Convert.ToChar(obj.Substring(obj.Length - 2, 1)); //取倒数第二个字符

        //        if (PenultimateChar == 'z')
        //        {
        //            return "Error";
        //        }

        //        char PenultimateCharNew = Convert.ToChar((int)PenultimateChar + 1);
        //        return obj.Substring(0, obj.Length - 2) + PenultimateCharNew + "a";
        //    }

        //    //string ECodeString = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
        //    //List<string> ECodeList = ECodeString.Split(',').ToList();
        //    //string AA = "Seq#" + Convert.ToDateTime(ADate).ToString("MM");

        //    ////List<Fabric_Insp_Header> List = HeaderList;
        //    ////HeaderList = fabric_Insp_HeaderList.GetFabric_Insp_HeaderListFilter(strToday).ToList();

        //    //var List = this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>;
        //    //var BB = List.Select(dr => dr.MissingAudit).Distinct().ToList();

        //    //List<string> AECodeList = List.Where(dr => !string.IsNullOrEmpty(dr.MissingAudit) && dr.MissingAudit.StartsWith(AA)).Select(dr => dr.MissingAudit).Distinct().ToList();
        //    //if (AECodeList.Count == 0)
        //    //{
        //    //    return "a";
        //    //}
        //    //List<int> CodeIndex = new List<int>();
        //    //foreach (string bb in AECodeList)
        //    //{
        //    //    int j = 0;
        //    //    while (j < ECodeList.Count)
        //    //    {
        //    //        if (ECodeList[j] == bb.Substring(6, 1))
        //    //        {
        //    //            CodeIndex.Add(j);
        //    //        }
        //    //        j++;
        //    //    }
        //    //}
        //    //return ECodeList[CodeIndex.Max() + 1];
        //}

        //by ID设置Action Log
        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;

            var lists = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == obj.RefNo && p.AuditStage == obj.AuditStage).Select(p => new { p.Supplier_Code, p.ProjectNo, p.Supplich_Batch });
            string Suppliers = string.Join("/", lists.Select(p => p.Supplier_Code).Distinct().ToArray<string>());
            string Batchs = string.Join("/", lists.Select(p => p.Supplich_Batch).Distinct().ToArray<string>());

            string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");
            //string MissingAudit = obj.MissingAudit;
            //if (string.IsNullOrEmpty(obj.MissingAudit)) //新增Action Log
            //{
            //    MissingAudit = null;// ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            //}

            //string Suppliers = "";
            //string Projects = "";
            //string Batchs = "";
            //string MissingAudit = obj.MissingAudit;
            //if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            //{
            //    //MissingAudit = "Seq#" + Convert.ToDateTime(obj.Stock_In_DateShow).ToString("MM") + ECode(obj.Stock_In_DateShow);
            //    MissingAudit = ECode(DateTime.Now.ToString("yyyy/MM/dd"));

            //    Suppliers = obj.Supplier_Code;
            //    Projects = obj.ProjectNo;
            //    Batchs = obj.Supplich_Batch;
            //}
            //else //打开已经保存好的Action Log
            //{
            //    var lists = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.ActionLogOID == obj.ActionLogOID).Select(p => new { p.Supplier_Code, p.ProjectNo, p.Supplich_Batch });

            //    Suppliers = string.Join("/", lists.Select(p => p.Supplier_Code).Distinct().ToArray<string>());
            //    Projects = string.Join("/", lists.Select(p => p.ProjectNo).Distinct().ToArray<string>());
            //    Batchs = string.Join("/", lists.Select(p => p.Supplich_Batch).Distinct().ToArray<string>());
            //}



            //AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Fabric, db, MissingAudit, obj.ActionLogOID, this, Suppliers, Projects, Batchs);
            //frmAlertLog.ShowDialog();

            CurrentActionLogAuditNo = (this.BindingSource.Current as Fabric_Insp_Header).RefNo;
            IEnumerable<Fabric_Insp_Header> MainSheetList = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == obj.RefNo && p.AuditStage == obj.AuditStage);

            AlertLogForm frmAlertLog = new AlertLogForm();
            frmAlertLog.PrepareActionLogData<MasterListForm, Fabric_Insp_Header>(ActionLogProcessModes.Fabric, db, this, obj.ActionLogID, MainSheetList, Suppliers, Projects, Batchs);
            frmAlertLog.ShowDialog();
        }

        int? CurrentActionLogAuditNo;
        public void SaveActionLogInfoByID(string AActionLogID, IEnumerable<ActionLogHeader> AActionLogHeaderList)
        {
            FabricInspectionDataContext db = DataContext as FabricInspectionDataContext;
            //Fabric_Insp_Header obj = BindingSource.Current as Fabric_Insp_Header;

            //IEnumerable<Fabric_Insp_Header> MainSheetList = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == obj.RefNo && p.AuditStage == obj.AuditStage);
            //IEnumerable<Fabric_Insp_Header> MainSheetList = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == obj.RefNo);
            IEnumerable<Fabric_Insp_Header> MainSheetList = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == CurrentActionLogAuditNo);

            foreach (var o in MainSheetList)
            {
                o.ActionLogID = null;
                o.MissingAudit = null;
                o.ActionLogTaking = null;
                o.ActionLogGroup = null;
                o.ActionLogCategory = null;
                o.ActionLogTargetDate = null;
                o.ActionLogRevisedDate = null;
                o.ActionLogCmplDate = null;
                o.ActionLogIsCompleted = null;
            }

            if (AActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
            {
                foreach (var o in MainSheetList)
                {
                    var GroupList = AActionLogHeaderList.Where(p => p.PONO == o.PO && p.ColorCode == o.ColorCodeShow);
                    o.ActionLogID = AActionLogID;

                    //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                    string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                    o.MissingAudit = ActionLogSeqNos;
                    o.ActionLogTaking = "Y";
                    o.ActionLogGroup = "G";
                    o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                    o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                    o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate);
                    o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                    o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                }
            }

            this.BindingSource.EndEdit();
            this.objListGridView.HideEditor();
            try
            {
                db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
            catch (ChangeConflictException conflictEx)
            {
                foreach (ObjectChangeConflict occ in db.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
                db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
        }


        //public void SaveActionLogInfoByID(string AMissingAudit, long? AActionLogOID)
        //{
        //    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
        //    Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;

        //    IEnumerable<Fabric_Insp_Header> AllDataList = BindingSource.List as IEnumerable<Fabric_Insp_Header>;
        //    var lists = AllDataList.Where(p => p.RefNo == obj.RefNo);
        //    foreach (var o in lists)
        //    {
        //        if (string.IsNullOrEmpty(o.MissingAudit))
        //        {
        //            o.MissingAudit = AMissingAudit;
        //            o.ActionLogOID = AActionLogOID;
        //        }
        //    }


        //    //obj.ActionLogOID = AActionLogOID;
        //    //if (string.IsNullOrEmpty(obj.MissingAudit))
        //    //{
        //    //    obj.MissingAudit = AMissingAudit;
        //    //}

        //    this.BindingSource.EndEdit();
        //    this.objListGridView.HideEditor();
        //    try
        //    {
        //        db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        //    }
        //    catch (ChangeConflictException conflictEx)
        //    {
        //        foreach (ObjectChangeConflict occ in db.ChangeConflicts)
        //        {
        //            occ.Resolve(RefreshMode.KeepChanges);
        //        }
        //        db.SubmitChanges(ConflictMode.FailOnFirstConflict);
        //    }
        //}


        //private void contextMenuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        //{

        //}

        ////by Lot设置Action Log
        //private void toolStripMenuItemActionLogByLot_Click(object sender, EventArgs e)
        //{
        //    string Suppliers = "";
        //    string Projects = "";
        //    string Batchs = "";

        //    List<Fabric_Insp_Header> lists = new List<Fabric_Insp_Header>();
        //    foreach (int rowIndex in this.objListGridView.GetSelectedRows())
        //    {
        //        var SelectedRow = this.objListGridView.GetRow(rowIndex) as Fabric_Insp_Header;
        //        lists.Add(SelectedRow);
        //    }

        //    Suppliers = string.Join("/", lists.Select(p => p.Supplier_Code).Distinct().ToArray<string>());
        //    Projects = string.Join("/", lists.Select(p => p.ProjectNo).Distinct().ToArray<string>());
        //    Batchs = string.Join("/", lists.Select(p => p.Supplich_Batch).Distinct().ToArray<string>());

        //    int RefNoCount = lists.Select(p => p.RefNo).Distinct().Count();
        //    if (RefNoCount > 1)
        //    {
        //        MessageBox.Show("Must be same a group Item Cde/Clr + id Create dd", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        //        return;
        //    }

        //    int MissingAuditCount = lists.Where(p => !string.IsNullOrEmpty(p.MissingAudit)).Select(p => p.MissingAudit).Distinct().Count();
        //    if (MissingAuditCount > 0)
        //    {
        //        MessageBox.Show("Exists Action Log in the selected rows, please re-select.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        //        return;
        //    }

        //    Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;
        //    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

        //    //string MissingAudit = "Seq#" + Convert.ToDateTime(obj.Stock_In_DateShow).ToString("MM") + ECode(obj.Stock_In_DateShow);
        //    string MissingAudit = ECode(DateTime.Now.ToString("yyyy/MM/dd"));

        //    AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.FabricByLot, db, MissingAudit, obj.ActionLogOID, this, Suppliers, Projects, Batchs);
        //    frmAlertLog.ShowDialog();
        //}

        //1st Audit记录copy到2nd Audit
        private void toolStripMenuItemCopyto2ndAudit_Click(object sender, EventArgs e)
        {
            Fabric_Insp_Header CurrentRow = this.BindingSource.Current as Fabric_Insp_Header;

            CopyToNextAuditForm frmCopy = new CopyToNextAuditForm(CurrentRow.RefNo, CurrentRow.AuditStage);
            if (frmCopy.ShowDialog() == DialogResult.OK)
            {
                string FromAuditStage = CurrentRow.AuditStage;
                string ToAuditStage = frmCopy.AuditStageTo;

                IEnumerable<Fabric_Insp_Header> AllDataList = this.BindingSource.List as IEnumerable<Fabric_Insp_Header>;

                bool HasAuditStageToRecord = AllDataList.Where(p => p.RefNo == CurrentRow.RefNo && p.AuditStage == ToAuditStage).Count() > 0;
                if (HasAuditStageToRecord)
                {
                    string Str = string.Format("Can't copy! Exists audit stage: {0} row.", ToAuditStage);
                    MessageBox.Show(Str, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                var lists = AllDataList.Where(p => p.RefNo == CurrentRow.RefNo && p.AuditStage == FromAuditStage).ToList();
                foreach (var SelectedRow in lists)
                {
                    Fabric_Insp_Header obj = this.BindingSource.AddNew() as Fabric_Insp_Header;

                    obj.System_Install_No = obj.GetMaxInstallNo();
                    obj.Create_User = SelectedRow.Create_User;
                    obj.Create_Date = SelectedRow.Create_Date;
                    obj.AuditStage = ToAuditStage;

                    obj.MissingAudit = SelectedRow.MissingAudit;
                    obj.ActionLogOID = SelectedRow.ActionLogOID;
                    obj.ActionLogID = SelectedRow.ActionLogID;
                    obj.ActionLogTaking = SelectedRow.ActionLogTaking;
                    obj.ActionLogCategory = SelectedRow.ActionLogCategory;
                    obj.ActionLogGroup = SelectedRow.ActionLogGroup;
                    obj.ActionLogTargetDate = SelectedRow.ActionLogTargetDate;
                    obj.ActionLogRevisedDate = SelectedRow.ActionLogRevisedDate;
                    obj.ActionLogCmplDate = SelectedRow.ActionLogCmplDate;
                    obj.ActionLogIsCompleted = SelectedRow.ActionLogIsCompleted;

                    obj.Company = SelectedRow.Company;
                    obj.Item_No = SelectedRow.Item_No;
                    obj.Item_Desc = SelectedRow.Item_Desc;
                    obj.PO = SelectedRow.PO;
                    obj.HdoNo = SelectedRow.HdoNo;
                    obj.ProjectNo = SelectedRow.ProjectNo;
                    obj.IQC_Reference = SelectedRow.IQC_Reference;
                    obj.Lot_Id = SelectedRow.Lot_Id;
                    obj.ProjectNo = SelectedRow.ProjectNo;
                    obj.Actual_Length = SelectedRow.Actual_Length;
                    obj.Actual_Weight = SelectedRow.Actual_Weight;
                    obj.Supplier_Width = SelectedRow.Supplier_Width;
                    obj.Insp_Length = SelectedRow.Insp_Length;
                    obj.GM_SQM = SelectedRow.GM_SQM;
                    obj.Usable_Width = SelectedRow.Usable_Width;
                    obj.Supplier_Code = SelectedRow.Supplier_Code;
                    obj.Supplich_Batch = SelectedRow.Supplich_Batch;
                    obj.Roll_No = SelectedRow.Roll_No;
                    obj.Total_Points = SelectedRow.Total_Points;
                    obj.Points_Hundred_SQM = SelectedRow.Points_Hundred_SQM;
                    obj.Deductive_Qty = SelectedRow.Deductive_Qty;
                    obj.Wastage = SelectedRow.Wastage;
                    obj.Insp_Result = SelectedRow.Insp_Result;
                    obj.Party_Insp_Result = SelectedRow.Party_Insp_Result;
                    obj.Spread_Insp_Result = SelectedRow.Spread_Insp_Result;
                    obj.Mould_Trial_Result = SelectedRow.Mould_Trial_Result;
                    obj.Color_Group_Status = SelectedRow.Color_Group_Status;
                    obj.Spread_Defect_Exist = SelectedRow.Spread_Defect_Exist;
                    obj.Insp_Confirm = SelectedRow.Insp_Confirm;
                    obj.PH_Sample = SelectedRow.PH_Sample;
                    obj.Panel_Size1 = SelectedRow.Panel_Size1;
                    obj.Panel_Size2 = SelectedRow.Panel_Size2;
                    obj.Special_Marker = SelectedRow.Special_Marker;
                    obj.Spread_Remark = SelectedRow.Spread_Remark;
                    obj.Mould_Trial_Remark = SelectedRow.Mould_Trial_Remark;
                    obj.Stock_In_Date = SelectedRow.Stock_In_Date;
                    obj.Stock_In_Date_DateTime = SelectedRow.Stock_In_Date_DateTime;
                    obj.Turn_Size = SelectedRow.Turn_Size;
                    obj.Supplier_Length_Unit = SelectedRow.Supplier_Length_Unit;
                    obj.Supplier_Width_Unit = SelectedRow.Supplier_Width_Unit;
                    obj.SideToSideH_Width = SelectedRow.SideToSideH_Width;
                    obj.Inspector = SelectedRow.Inspector;
                    obj.Change_User = SelectedRow.Change_User;
                    obj.Change_Date = SelectedRow.Change_Date;
                    obj.Use_Status = SelectedRow.Use_Status;
                    obj.LightStatus = SelectedRow.LightStatus;
                    obj.InvoiceNo = SelectedRow.InvoiceNo;
                    obj.Supplier_Item_No = SelectedRow.Supplier_Item_No;
                    obj.Insp_Result_Reason = SelectedRow.Insp_Result_Reason;
                    obj.Phy_Properties_Result = SelectedRow.Phy_Properties_Result;
                    obj.SupplierItemColor = SelectedRow.SupplierItemColor;
                    obj.WeftYarnClass = SelectedRow.WeftYarnClass;
                    obj.WeftYarnPercentage = SelectedRow.WeftYarnPercentage;
                    obj.WeftYarnStatus = SelectedRow.WeftYarnStatus;
                    obj.WeftYarnSolution1 = SelectedRow.WeftYarnSolution1;
                    obj.WeftYarnSolution2 = SelectedRow.WeftYarnSolution2;
                    obj.WeftYarnWastage = SelectedRow.WeftYarnWastage;
                    obj.ElongationWarpResult = SelectedRow.ElongationWarpResult;
                    obj.ElongationWeftResult = SelectedRow.ElongationWeftResult;
                    obj.ElongationStatus = SelectedRow.ElongationStatus;
                    obj.ElongationSolution1 = SelectedRow.ElongationSolution1;
                    obj.ElongationSolution2 = SelectedRow.ElongationSolution2;
                    obj.WeftYarn = SelectedRow.WeftYarn;
                    obj.Elongation = SelectedRow.Elongation;
                    obj.MouldTrial = SelectedRow.MouldTrial;
                    obj.MouldTrialSolution1 = SelectedRow.MouldTrialSolution1;
                    obj.MouldTrialSolution2 = SelectedRow.MouldTrialSolution2;
                    obj.Inspection_Date = SelectedRow.Inspection_Date;
                    obj.RefNo = SelectedRow.RefNo;
                    obj.Warehouse = SelectedRow.Warehouse;
                    obj.AgreedByCutting = SelectedRow.AgreedByCutting;
                    obj.ColorMatching = SelectedRow.ColorMatching;
                    obj.ColorMatchingResult = SelectedRow.ColorMatchingResult;
                    obj.ColorMatchingAction = SelectedRow.ColorMatchingAction;
                    obj.MouldTrialResult = SelectedRow.MouldTrialResult;
                    obj.MouldTrialAction = SelectedRow.MouldTrialAction;
                    obj.ElongationResult = SelectedRow.ElongationResult;
                    obj.ElongationAction = SelectedRow.ElongationAction;
                    obj.Lamination = SelectedRow.Lamination;
                    obj.LaminationResult = SelectedRow.LaminationResult;
                    obj.LaminationAction = SelectedRow.LaminationAction;
                    obj.Bonding = SelectedRow.Bonding;
                    obj.BondingResult = SelectedRow.BondingResult;
                    obj.BondingAction = SelectedRow.BondingAction;
                    obj.ThicknessResult = SelectedRow.ThicknessResult;
                    obj.LengthResult = SelectedRow.LengthResult;
                    obj.WidthResult = SelectedRow.WidthResult;
                    obj.StandardWidth = SelectedRow.StandardWidth;
                    obj.StandardWeightGmSqm = SelectedRow.StandardWeightGmSqm;
                    obj.OverallRemark = SelectedRow.OverallRemark;
                    obj.MissingAudit = SelectedRow.MissingAudit;
                    obj.SplitFlag = SelectedRow.SplitFlag;
                    obj.UsableWidthMinByLot = SelectedRow.UsableWidthMinByLot;
                    obj.DiffWidthPercent = SelectedRow.DiffWidthPercent;
                    obj.RollQty = SelectedRow.RollQty;
                    obj.SampleSize = SelectedRow.SampleSize;
                    obj.DiffLengthAveByLot = SelectedRow.DiffLengthAveByLot;
                    obj.TotalLengthByLot = SelectedRow.TotalLengthByLot;
                    obj.RegularDefectResult = SelectedRow.RegularDefectResult;
                    obj.TotalActualLengthByLot = SelectedRow.TotalActualLengthByLot;
                    obj.PackageListlengthByBatch = SelectedRow.PackageListlengthByBatch;
                    obj.SuppItemRef = SelectedRow.SuppItemRef;
                    obj.ColorName = SelectedRow.ColorName;
                    obj.RollQtyByBatch = SelectedRow.RollQtyByBatch;
                    obj.TotalScore1ByLot = SelectedRow.TotalScore1ByLot;
                    obj.TotalScore2ByLot = SelectedRow.TotalScore2ByLot;
                    obj.MeasLengthByLot = SelectedRow.MeasLengthByLot;
                    obj.POLength = SelectedRow.POLength;
                    //obj.OverAllClaimLength = SelectedRow.OverAllClaimLength;
                    obj.StandardWeightGmSqmMax = SelectedRow.StandardWeightGmSqmMax;
                    obj.StandardWeightGmSqmMin = SelectedRow.StandardWeightGmSqmMin;
                    obj.StandardWeightGmSqmS = SelectedRow.StandardWeightGmSqmS;
                    obj.Step1DefectTotalPoint = SelectedRow.Step1DefectTotalPoint;
                    obj.Step1Pt100m2 = SelectedRow.Step1Pt100m2;
                    obj.Step1DefectResult = SelectedRow.Step1DefectResult;
                    obj.Step1MeasLength = SelectedRow.Step1MeasLength;
                    obj.Step1MeasWidth = SelectedRow.Step1MeasWidth;
                    obj.Step1MeasSq = SelectedRow.Step1MeasSq;
                    obj.Step1DefectScore1 = SelectedRow.Step1DefectScore1;
                    obj.Step1DefectScore2 = SelectedRow.Step1DefectScore2;
                    obj.Step1LossQty = SelectedRow.Step1LossQty;
                    obj.Step1LossPercent = SelectedRow.Step1LossPercent;
                    obj.Step1ClaimQtyFull = SelectedRow.Step1ClaimQtyFull;
                    obj.Step1ClaimQtyAQL = SelectedRow.Step1ClaimQtyAQL;
                    obj.Step2IrregularScore1 = SelectedRow.Step2IrregularScore1;
                    obj.Step2IrregularScore2 = SelectedRow.Step2IrregularScore2;
                    obj.Step2IrregularLossQty = SelectedRow.Step2IrregularLossQty;
                    obj.Step2IrregulardLossPercent = SelectedRow.Step2IrregulardLossPercent;
                    obj.Step2ClaimQtyFull = SelectedRow.Step2ClaimQtyFull;
                    obj.Step2ClaimQtyAQL = SelectedRow.Step2ClaimQtyAQL;
                    obj.Step2HaveRegular = SelectedRow.Step2HaveRegular;
                    obj.Step2EvadeMarkerLossPercent = SelectedRow.Step2EvadeMarkerLossPercent;
                    obj.Step2RegularLossWidth = SelectedRow.Step2RegularLossWidth;
                    obj.Step2ConfirmByCutting = SelectedRow.Step2ConfirmByCutting;
                    obj.Step2ClaimRegularQty = SelectedRow.Step2ClaimRegularQty;
                    obj.Step2ClaimSubTotalQty = SelectedRow.Step2ClaimSubTotalQty;
                    obj.Step2ClaimAction = SelectedRow.Step2ClaimAction;
                    obj.OtherOverallResult = SelectedRow.OtherOverallResult;
                    //obj.OverallClaimPercent = SelectedRow.OverallClaimPercent;
                    obj.CutCurling = SelectedRow.CutCurling;
                    obj.CutCurlingResult = SelectedRow.CutCurlingResult;
                    obj.OtherOverallResultByBatch = SelectedRow.OtherOverallResultByBatch;
                    obj.OtherOverAllClaimLength = SelectedRow.OtherOverAllClaimLength;
                    obj.OtherOverAllClaimLengthByBatch = SelectedRow.OtherOverAllClaimLengthByBatch;
                    obj.Step1DefectResultByLot = SelectedRow.Step1DefectResultByLot;
                    obj.TotalLenghtByLotExcludePass = SelectedRow.TotalLenghtByLotExcludePass;

                    obj.FWStartDate = SelectedRow.FWStartDate;
                    obj.AuditNo1 = SelectedRow.AuditNo1;
                    obj.Insp_Result = SelectedRow.Insp_Result;
                    obj.OverallResultDefectKind = SelectedRow.OverallResultDefectKind;
                    obj.OverallResultReasonPart = SelectedRow.OverallResultReasonPart;
                    obj.OverallResultCoreDefecName = SelectedRow.OverallResultCoreDefecName;
                    obj.OverallResultReasonGroup = SelectedRow.OverallResultReasonGroup;
                    obj.Status = "WIP";

                    foreach (var SpotDefect1st in SelectedRow.Fabric_Insp_PartDefects)
                    {
                        Fabric_Insp_PartDefect SportDefectObj2nd = new Fabric_Insp_PartDefect();
                        SportDefectObj2nd.Company = obj.Company;
                        SportDefectObj2nd.System_Install_No = obj.System_Install_No;
                        SportDefectObj2nd.Detect_Turn_No = SpotDefect1st.Detect_Turn_No;
                        SportDefectObj2nd.Defect_Place = SpotDefect1st.Defect_Place;
                        SportDefectObj2nd.Defect_Type = SpotDefect1st.Defect_Type;
                        SportDefectObj2nd.Defect_Name = SpotDefect1st.Defect_Name;
                        SportDefectObj2nd.Defect_Degree = SpotDefect1st.Defect_Degree;
                        SportDefectObj2nd.Defect_Degree_Count = SpotDefect1st.Defect_Degree_Count;
                        SportDefectObj2nd.Defect_Deduce_Points = SpotDefect1st.Defect_Deduce_Points;
                        obj.Fabric_Insp_PartDefects.Add(SportDefectObj2nd);
                    }

                    foreach (var ChainDefect1st in SelectedRow.Fabric_Insp_SpreadDefects)
                    {
                        Fabric_Insp_SpreadDefect ChainDefectObj2nd = new Fabric_Insp_SpreadDefect();
                        ChainDefectObj2nd.Company = obj.Company;
                        ChainDefectObj2nd.System_Install_No = obj.System_Install_No;

                        ChainDefectObj2nd.Defect_Type = ChainDefect1st.Defect_Type;
                        ChainDefectObj2nd.Defect_Name = ChainDefect1st.Defect_Name;
                        ChainDefectObj2nd.Spread_Defect_Degree = ChainDefect1st.Spread_Defect_Degree;
                        ChainDefectObj2nd.From_Place = ChainDefect1st.From_Place;
                        ChainDefectObj2nd.To_Place = ChainDefect1st.To_Place;
                        ChainDefectObj2nd.Proc_Code1 = ChainDefect1st.Proc_Code1;
                        ChainDefectObj2nd.Proc_Code2 = ChainDefect1st.Proc_Code2;
                        ChainDefectObj2nd.Proc_Code3 = ChainDefect1st.Proc_Code3;
                        ChainDefectObj2nd.Proc_Code4 = ChainDefect1st.Proc_Code4;
                        ChainDefectObj2nd.Proc_Code5 = ChainDefect1st.Proc_Code5;
                        ChainDefectObj2nd.Proc_Status = ChainDefect1st.Proc_Status;
                        ChainDefectObj2nd.Change_User = ChainDefect1st.Change_User;
                        ChainDefectObj2nd.Change_Date = ChainDefect1st.Change_Date;
                        ChainDefectObj2nd.AddtionalPercent = ChainDefect1st.AddtionalPercent;
                        ChainDefectObj2nd.From_Place_Length = ChainDefect1st.From_Place_Length;
                        ChainDefectObj2nd.To_Place_Length = ChainDefect1st.To_Place_Length;
                        obj.Fabric_Insp_SpreadDefects.Add(ChainDefectObj2nd);
                    }

                    foreach (var Width1st in SelectedRow.Fabric_Insp_Widths)
                    {
                        Fabric_Insp_Width Width2nd = new Fabric_Insp_Width();
                        Width2nd.Company = obj.Company;
                        Width2nd.System_Install_No = obj.System_Install_No;

                        Width2nd.Detect_Turn_No = Width1st.Detect_Turn_No;
                        Width2nd.Usable_Width = Width1st.Usable_Width;
                        Width2nd.SideToSide_Width = Width1st.SideToSide_Width;
                        obj.Fabric_Insp_Widths.Add(Width2nd);
                    }

                    this.BindingSource.EndEdit();
                }
                this.DataContext.SubmitChanges();

            }


            ////List<Fabric_Insp_Header> lists = new List<Fabric_Insp_Header>();
            //foreach (int rowIndex in this.objListGridView.GetSelectedRows())
            //{
            //    var SelectedRow = this.objListGridView.GetRow(rowIndex) as Fabric_Insp_Header;
            //    if (SelectedRow.AuditStage == "2nd")
            //    {
            //        MessageBox.Show("Exists 2nd approval audit row in the selected rows, please re-select", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
            //    }
            //    //lists.Add(SelectedRow);
            //}

            //foreach (int rowIndex in this.objListGridView.GetSelectedRows())
            //{
            //    var SelectedRow = this.objListGridView.GetRow(rowIndex) as Fabric_Insp_Header;
            //    Fabric_Insp_Header obj = this.BindingSource.AddNew() as Fabric_Insp_Header;

            //    obj.System_Install_No = obj.GetMaxInstallNo();
            //    obj.Create_User = GlobalInfo.GetCurrentUserId();
            //    obj.Create_Date = DateTime.Now;
            //    obj.AuditStage = "2nd";
            //    //obj.ActionLogOID = SelectedRow.ActionLogOID;

            //    obj.Company = SelectedRow.Company;
            //    obj.Item_No = SelectedRow.Item_No;
            //    obj.Item_Desc = SelectedRow.Item_Desc;
            //    obj.PO = SelectedRow.PO;
            //    obj.HdoNo = SelectedRow.HdoNo;
            //    obj.ProjectNo = SelectedRow.ProjectNo;
            //    obj.IQC_Reference = SelectedRow.IQC_Reference;
            //    obj.Lot_Id = SelectedRow.Lot_Id;
            //    obj.ProjectNo = SelectedRow.ProjectNo;
            //    obj.Actual_Length = SelectedRow.Actual_Length;
            //    obj.Actual_Weight = SelectedRow.Actual_Weight;
            //    obj.Supplier_Width = SelectedRow.Supplier_Width;
            //    obj.Insp_Length = SelectedRow.Insp_Length;
            //    obj.GM_SQM = SelectedRow.GM_SQM;
            //    obj.Usable_Width = SelectedRow.Usable_Width;
            //    obj.Supplier_Code = SelectedRow.Supplier_Code;
            //    obj.Supplich_Batch = SelectedRow.Supplich_Batch;
            //    obj.Roll_No = SelectedRow.Roll_No;
            //    obj.Total_Points = SelectedRow.Total_Points;
            //    obj.Points_Hundred_SQM = SelectedRow.Points_Hundred_SQM;
            //    obj.Deductive_Qty = SelectedRow.Deductive_Qty;
            //    obj.Wastage = SelectedRow.Wastage;
            //    obj.Insp_Result = SelectedRow.Insp_Result;
            //    obj.Party_Insp_Result = SelectedRow.Party_Insp_Result;
            //    obj.Spread_Insp_Result = SelectedRow.Spread_Insp_Result;
            //    obj.Mould_Trial_Result = SelectedRow.Mould_Trial_Result;
            //    obj.Color_Group_Status = SelectedRow.Color_Group_Status;
            //    obj.Spread_Defect_Exist = SelectedRow.Spread_Defect_Exist;
            //    obj.Insp_Confirm = SelectedRow.Insp_Confirm;
            //    obj.PH_Sample = SelectedRow.PH_Sample;
            //    obj.Panel_Size1 = SelectedRow.Panel_Size1;
            //    obj.Panel_Size2 = SelectedRow.Panel_Size2;
            //    obj.Special_Marker = SelectedRow.Special_Marker;
            //    obj.Spread_Remark = SelectedRow.Spread_Remark;
            //    obj.Mould_Trial_Remark = SelectedRow.Mould_Trial_Remark;
            //    obj.Stock_In_Date = SelectedRow.Stock_In_Date;
            //    obj.Stock_In_Date_DateTime = SelectedRow.Stock_In_Date_DateTime;
            //    obj.Turn_Size = SelectedRow.Turn_Size;
            //    obj.Supplier_Length_Unit = SelectedRow.Supplier_Length_Unit;
            //    obj.Supplier_Width_Unit = SelectedRow.Supplier_Width_Unit;
            //    obj.SideToSideH_Width = SelectedRow.SideToSideH_Width;
            //    obj.Inspector = SelectedRow.Inspector;
            //    obj.Change_User = SelectedRow.Change_User;
            //    obj.Change_Date = SelectedRow.Change_Date;
            //    obj.Use_Status = SelectedRow.Use_Status;
            //    obj.LightStatus = SelectedRow.LightStatus;
            //    obj.InvoiceNo = SelectedRow.InvoiceNo;
            //    obj.Supplier_Item_No = SelectedRow.Supplier_Item_No;
            //    obj.Insp_Result_Reason = SelectedRow.Insp_Result_Reason;
            //    obj.Phy_Properties_Result = SelectedRow.Phy_Properties_Result;
            //    obj.SupplierItemColor = SelectedRow.SupplierItemColor;
            //    obj.WeftYarnClass = SelectedRow.WeftYarnClass;
            //    obj.WeftYarnPercentage = SelectedRow.WeftYarnPercentage;
            //    obj.WeftYarnStatus = SelectedRow.WeftYarnStatus;
            //    obj.WeftYarnSolution1 = SelectedRow.WeftYarnSolution1;
            //    obj.WeftYarnSolution2 = SelectedRow.WeftYarnSolution2;
            //    obj.WeftYarnWastage = SelectedRow.WeftYarnWastage;
            //    obj.ElongationWarpResult = SelectedRow.ElongationWarpResult;
            //    obj.ElongationWeftResult = SelectedRow.ElongationWeftResult;
            //    obj.ElongationStatus = SelectedRow.ElongationStatus;
            //    obj.ElongationSolution1 = SelectedRow.ElongationSolution1;
            //    obj.ElongationSolution2 = SelectedRow.ElongationSolution2;
            //    obj.WeftYarn = SelectedRow.WeftYarn;
            //    obj.Elongation = SelectedRow.Elongation;
            //    obj.MouldTrial = SelectedRow.MouldTrial;
            //    obj.MouldTrialSolution1 = SelectedRow.MouldTrialSolution1;
            //    obj.MouldTrialSolution2 = SelectedRow.MouldTrialSolution2;
            //    obj.Inspection_Date = SelectedRow.Inspection_Date;
            //    obj.RefNo = SelectedRow.RefNo;
            //    obj.Warehouse = SelectedRow.Warehouse;
            //    obj.AgreedByCutting = SelectedRow.AgreedByCutting;
            //    obj.ColorMatching = SelectedRow.ColorMatching;
            //    obj.ColorMatchingResult = SelectedRow.ColorMatchingResult;
            //    obj.ColorMatchingAction = SelectedRow.ColorMatchingAction;
            //    obj.MouldTrialResult = SelectedRow.MouldTrialResult;
            //    obj.MouldTrialAction = SelectedRow.MouldTrialAction;
            //    obj.ElongationResult = SelectedRow.ElongationResult;
            //    obj.ElongationAction = SelectedRow.ElongationAction;
            //    obj.Lamination = SelectedRow.Lamination;
            //    obj.LaminationResult = SelectedRow.LaminationResult;
            //    obj.LaminationAction = SelectedRow.LaminationAction;
            //    obj.Bonding = SelectedRow.Bonding;
            //    obj.BondingResult = SelectedRow.BondingResult;
            //    obj.BondingAction = SelectedRow.BondingAction;
            //    obj.ThicknessResult = SelectedRow.ThicknessResult;
            //    obj.LengthResult = SelectedRow.LengthResult;
            //    obj.WidthResult = SelectedRow.WidthResult;
            //    obj.StandardWidth = SelectedRow.StandardWidth;
            //    obj.StandardWeightGmSqm = SelectedRow.StandardWeightGmSqm;
            //    obj.OverallRemark = SelectedRow.OverallRemark;
            //    obj.MissingAudit = SelectedRow.MissingAudit;
            //    obj.SplitFlag = SelectedRow.SplitFlag;
            //    obj.UsableWidthMinByLot = SelectedRow.UsableWidthMinByLot;
            //    obj.DiffWidthPercent = SelectedRow.DiffWidthPercent;
            //    obj.RollQty = SelectedRow.RollQty;
            //    obj.SampleSize = SelectedRow.SampleSize;
            //    obj.DiffLengthAveByLot = SelectedRow.DiffLengthAveByLot;
            //    obj.TotalLengthByLot = SelectedRow.TotalLengthByLot;
            //    obj.RegularDefectResult = SelectedRow.RegularDefectResult;
            //    obj.TotalActualLengthByLot = SelectedRow.TotalActualLengthByLot;
            //    obj.PackageListlengthByBatch = SelectedRow.PackageListlengthByBatch;
            //    obj.SuppItemRef = SelectedRow.SuppItemRef;
            //    obj.ColorName = SelectedRow.ColorName;
            //    obj.RollQtyByBatch = SelectedRow.RollQtyByBatch;
            //    obj.TotalScore1ByLot = SelectedRow.TotalScore1ByLot;
            //    obj.TotalScore2ByLot = SelectedRow.TotalScore2ByLot;
            //    obj.MeasLengthByLot = SelectedRow.MeasLengthByLot;
            //    obj.POLength = SelectedRow.POLength;
            //    //obj.OverAllClaimLength = SelectedRow.OverAllClaimLength;
            //    obj.StandardWeightGmSqmMax = SelectedRow.StandardWeightGmSqmMax;
            //    obj.StandardWeightGmSqmMin = SelectedRow.StandardWeightGmSqmMin;
            //    obj.StandardWeightGmSqmS = SelectedRow.StandardWeightGmSqmS;
            //    obj.Step1DefectTotalPoint = SelectedRow.Step1DefectTotalPoint;
            //    obj.Step1Pt100m2 = SelectedRow.Step1Pt100m2;
            //    obj.Step1DefectResult = SelectedRow.Step1DefectResult;
            //    obj.Step1MeasLength = SelectedRow.Step1MeasLength;
            //    obj.Step1MeasWidth = SelectedRow.Step1MeasWidth;
            //    obj.Step1MeasSq = SelectedRow.Step1MeasSq;
            //    obj.Step1DefectScore1 = SelectedRow.Step1DefectScore1;
            //    obj.Step1DefectScore2 = SelectedRow.Step1DefectScore2;
            //    obj.Step1LossQty = SelectedRow.Step1LossQty;
            //    obj.Step1LossPercent = SelectedRow.Step1LossPercent;
            //    obj.Step1ClaimQtyFull = SelectedRow.Step1ClaimQtyFull;
            //    obj.Step1ClaimQtyAQL = SelectedRow.Step1ClaimQtyAQL;
            //    obj.Step2IrregularScore1 = SelectedRow.Step2IrregularScore1;
            //    obj.Step2IrregularScore2 = SelectedRow.Step2IrregularScore2;
            //    obj.Step2IrregularLossQty = SelectedRow.Step2IrregularLossQty;
            //    obj.Step2IrregulardLossPercent = SelectedRow.Step2IrregulardLossPercent;
            //    obj.Step2ClaimQtyFull = SelectedRow.Step2ClaimQtyFull;
            //    obj.Step2ClaimQtyAQL = SelectedRow.Step2ClaimQtyAQL;
            //    obj.Step2HaveRegular = SelectedRow.Step2HaveRegular;
            //    obj.Step2EvadeMarkerLossPercent = SelectedRow.Step2EvadeMarkerLossPercent;
            //    obj.Step2RegularLossWidth = SelectedRow.Step2RegularLossWidth;
            //    obj.Step2ConfirmByCutting = SelectedRow.Step2ConfirmByCutting;
            //    obj.Step2ClaimRegularQty = SelectedRow.Step2ClaimRegularQty;
            //    obj.Step2ClaimSubTotalQty = SelectedRow.Step2ClaimSubTotalQty;
            //    obj.Step2ClaimAction = SelectedRow.Step2ClaimAction;
            //    obj.OtherOverallResult = SelectedRow.OtherOverallResult;
            //    //obj.OverallClaimPercent = SelectedRow.OverallClaimPercent;
            //    obj.CutCurling = SelectedRow.CutCurling;
            //    obj.CutCurlingResult = SelectedRow.CutCurlingResult;
            //    obj.OtherOverallResultByBatch = SelectedRow.OtherOverallResultByBatch;
            //    obj.OtherOverAllClaimLength = SelectedRow.OtherOverAllClaimLength;
            //    obj.OtherOverAllClaimLengthByBatch = SelectedRow.OtherOverAllClaimLengthByBatch;
            //    obj.Step1DefectResultByLot = SelectedRow.Step1DefectResultByLot;
            //    obj.TotalLenghtByLotExcludePass = SelectedRow.TotalLenghtByLotExcludePass;

            //    foreach (var SpotDefect1st in SelectedRow.Fabric_Insp_PartDefects)
            //    {
            //        Fabric_Insp_PartDefect SportDefectObj2nd = new Fabric_Insp_PartDefect();
            //        SportDefectObj2nd.Company = obj.Company;
            //        SportDefectObj2nd.System_Install_No = obj.System_Install_No;
            //        SportDefectObj2nd.Detect_Turn_No = SpotDefect1st.Detect_Turn_No;
            //        SportDefectObj2nd.Defect_Place = SpotDefect1st.Defect_Place;
            //        SportDefectObj2nd.Defect_Type = SpotDefect1st.Defect_Type;
            //        SportDefectObj2nd.Defect_Name = SpotDefect1st.Defect_Name;
            //        SportDefectObj2nd.Defect_Degree = SpotDefect1st.Defect_Degree;
            //        SportDefectObj2nd.Defect_Degree_Count = SpotDefect1st.Defect_Degree_Count;
            //        SportDefectObj2nd.Defect_Deduce_Points = SpotDefect1st.Defect_Deduce_Points;
            //        obj.Fabric_Insp_PartDefects.Add(SportDefectObj2nd);
            //    }

            //    foreach (var ChainDefect1st in SelectedRow.Fabric_Insp_SpreadDefects)
            //    {
            //        Fabric_Insp_SpreadDefect ChainDefectObj2nd = new Fabric_Insp_SpreadDefect();
            //        ChainDefectObj2nd.Company = obj.Company;
            //        ChainDefectObj2nd.System_Install_No = obj.System_Install_No;

            //        ChainDefectObj2nd.Defect_Type = ChainDefect1st.Defect_Type;
            //        ChainDefectObj2nd.Defect_Name = ChainDefect1st.Defect_Name;
            //        ChainDefectObj2nd.Spread_Defect_Degree = ChainDefect1st.Spread_Defect_Degree;
            //        ChainDefectObj2nd.From_Place = ChainDefect1st.From_Place;
            //        ChainDefectObj2nd.To_Place = ChainDefect1st.To_Place;
            //        ChainDefectObj2nd.Proc_Code1 = ChainDefect1st.Proc_Code1;
            //        ChainDefectObj2nd.Proc_Code2 = ChainDefect1st.Proc_Code2;
            //        ChainDefectObj2nd.Proc_Code3 = ChainDefect1st.Proc_Code3;
            //        ChainDefectObj2nd.Proc_Code4 = ChainDefect1st.Proc_Code4;
            //        ChainDefectObj2nd.Proc_Code5 = ChainDefect1st.Proc_Code5;
            //        ChainDefectObj2nd.Proc_Status = ChainDefect1st.Proc_Status;
            //        ChainDefectObj2nd.Change_User = ChainDefect1st.Change_User;
            //        ChainDefectObj2nd.Change_Date = ChainDefect1st.Change_Date;
            //        ChainDefectObj2nd.AddtionalPercent = ChainDefect1st.AddtionalPercent;
            //        ChainDefectObj2nd.From_Place_Length = ChainDefect1st.From_Place_Length;
            //        ChainDefectObj2nd.To_Place_Length = ChainDefect1st.To_Place_Length;
            //        obj.Fabric_Insp_SpreadDefects.Add(ChainDefectObj2nd);
            //    }

            //    foreach (var Width1st in SelectedRow.Fabric_Insp_Widths)
            //    {
            //        Fabric_Insp_Width Width2nd = new Fabric_Insp_Width();
            //        Width2nd.Company = obj.Company;
            //        Width2nd.System_Install_No = obj.System_Install_No;

            //        Width2nd.Detect_Turn_No = Width1st.Detect_Turn_No;
            //        Width2nd.Usable_Width = Width1st.Usable_Width;
            //        Width2nd.SideToSide_Width = Width1st.SideToSide_Width;
            //        obj.Fabric_Insp_Widths.Add(Width2nd);
            //    }

            //    this.BindingSource.EndEdit();
            //}
            //this.DataContext.SubmitChanges();
        }


        //public void SaveActionLogInfoByLot(string AMissingAudit, long? AActionLogOID)
        //{
        //    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

        //    foreach (int rowIndex in this.objListGridView.GetSelectedRows())
        //    {
        //        var SelectedRow = this.objListGridView.GetRow(rowIndex) as Fabric_Insp_Header;
        //        SelectedRow.ActionLogOID = AActionLogOID;
        //        SelectedRow.MissingAudit = AMissingAudit;
        //    }

        //    this.BindingSource.EndEdit();
        //    this.objListGridView.HideEditor();
        //    db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        //}


        private void repositoryItemButtonEdit_OverallFailReason_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;
                obj.Insp_Result_Reason = frmReason.GetSelectedData();
                this.BindingSource.EndEdit();
                this.bandedGridView1.HideEditor();
                try
                {
                    DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                }
                catch (ChangeConflictException conflictEx)
                {
                    foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                    {
                        occ.Resolve(RefreshMode.KeepChanges);
                    }
                    DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
                }
            }
        }



        //网格中的下拉框编辑框，下拉框没有显示出来时，不允许鼠标滚轮滚动 (不允许在网格单元格中直接滚动)
        void DisableMouseWheelComboBoxEditInGridViewCell(DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            if (this.bandedGridView1.ActiveEditor is ComboBoxEdit)
            {
                e.Handled = !(this.bandedGridView1.ActiveEditor as ComboBoxEdit).IsPopupOpen;
            }
            else if (this.bandedGridView1.ActiveEditor is DateEdit)
            {
                e.Handled = !(this.bandedGridView1.ActiveEditor as DateEdit).IsPopupOpen;
            }
        }

        private void repositoryItemComboBox_OverallResult_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_OtherAuditResult_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_ThicknessResultByID_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_WidthResultByBatch_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_LengResultByID_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_IDIrregularDefectResult_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_YN_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemDateEdit_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_OtherOverallResult_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_AuditStage_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_MarkerType_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        private void repositoryItemComboBox_Nature_Spin(object sender, DevExpress.XtraEditors.Controls.SpinEventArgs e)
        {
            DisableMouseWheelComboBoxEditInGridViewCell(e);
        }

        //string SaveRefNo = "";
        //System.Drawing.Color SaveColor = System.Drawing.Color.Gold;



        //if (e.RowHandle == 0)
        //{
        //    SaveOddEvenRowFlag = "1";
        //    objListGridView.SetRowCellValue(e.RowHandle, "OddEvenRowFlag", SaveOddEvenRowFlag);
        //}

        //if (e.RowHandle > 0)
        //{
        //    string PreviousRowRefNo = objListGridView.GetRowCellValue(e.RowHandle - 1, "RefNo").ToString();
        //    string CurrentRowRefNo = objListGridView.GetRowCellValue(e.RowHandle, "RefNo").ToString();
        //    if (PreviousRowRefNo == CurrentRowRefNo)
        //    {
        //        objListGridView.SetRowCellValue(e.RowHandle, "OddEvenRowFlag", SaveOddEvenRowFlag);
        //    }
        //    else
        //    {
        //        SaveOddEvenRowFlag = SaveOddEvenRowFlag == "0" ? "1" : "0";
        //        objListGridView.SetRowCellValue(e.RowHandle, "OddEvenRowFlag", SaveOddEvenRowFlag);
        //    }

        //}

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            bandedGridView1.OptionsView.RowAutoHeight = true;
            bandedGridView1.OptionsView.ShowFooter = true;

            this.colWarehouse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn3.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_Project_NO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_Po_NO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_HdoNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;

            this.colItemCodeShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCodeShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppRefShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.Columns_Supplier_Code.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colCreate_User.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            CalOddEvenRowFlag();
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            int? SaveRefNo = 0;
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                Fabric_Insp_Header obj = bandedGridView1.GetRow(i) as Fabric_Insp_Header;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveRefNo = obj.RefNo;
                }
                else
                {
                    if (obj.RefNo == SaveRefNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveRefNo = obj.RefNo;
                    }
                }
            }
        }

        private void btnShowColumnInfo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                BandedGridView grid = objListGridControl.FocusedView as BandedGridView;

                //MessageBox.Show("Colmun Name: " + grid.FocusedColumn.Name + System.Environment.NewLine + "FieldName: " + grid.FocusedColumn.FieldName);
                SetGridViewHeaderBackColorForm frmSetColor = new SetGridViewHeaderBackColorForm(this.DataContext as FabricInspectionDataContext,
                    "Fabric", grid.FocusedColumn.FieldName, grid.FocusedColumn.Name, this.SideProgramID, this.FileID, "MasterListForm");
                frmSetColor.ShowDialog();
            }
        }

        List<string> BandBrushBlueColorList;
        List<string> BandBrushYellowColorList;
        List<string> BandBrushGrayColorList;
        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null) return;

            if (BandBrushBlueColorList == null)
            {
                BandBrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Fabric" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushYellowColorList == null)
            {
                BandBrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Fabric" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushGrayColorList == null)
            {
                BandBrushGrayColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Fabric" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushBlueColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = BlueColor;
            }
            else if (BandBrushYellowColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = YellowColor;
            }
            else if (BandBrushGrayColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = GrayColor;
            }

            e.Band.AppearanceHeader.BackColor = e.Appearance.BackColor;
            Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);
            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        List<string> BrushBlueColorList;
        List<string> BrushYellowColorList;
        List<string> GrayYellowColorList;
        System.Drawing.Color BlueColor = System.Drawing.Color.FromArgb(197, 217, 241);
        System.Drawing.Color YellowColor = System.Drawing.Color.FromArgb(235, 241, 222);
        System.Drawing.Color GrayColor = System.Drawing.Color.FromArgb(217, 217, 217);
        private void bandedGridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            if (BrushBlueColorList == null)
            {
                BrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Fabric" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushYellowColorList == null)
            {
                BrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Fabric" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (GrayYellowColorList == null)
            {
                GrayYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Fabric" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushBlueColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = BlueColor;
            }
            else if (BrushYellowColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = YellowColor;
            }
            else if (GrayYellowColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = GrayColor;
            }

            e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;
            Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);
            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        //"Step1ClaimQtyFull", 
        //"Step1ClaimQtyAQL",
        string[] ZeroShowBlankFields = new string[] 
        { 
           "Step2IrregularLossPercent", "Step2IrregularLossQty", 
            "Step2ClaimQtyFull", "Step2ClaimQtyAQL", "Step2ClaimRegularQty", "Step2ClaimSubTotalQty", "Step2EvadeMarkerLossPercent"
        };

        string[] ShowPercentFields = new string[]
        {
            "OverallClaimPercent", "DiffWidthPercent", "DiffLengthAveByLot", 
            "Step2EvadeMarkerLossPercent", "Step2IrregularLossPercent", "Step1LossPercent",
            "Step2IrregulardLossPercent"
        };

        private void bandedGridView1_CustomDrawCell(object sender, RowCellCustomDrawEventArgs e)
        {
            if (ZeroShowBlankFields.Contains(e.Column.FieldName) && e.DisplayText == "0.00")
            {
                e.DisplayText = "";
            }
            else if (ShowPercentFields.Contains(e.Column.FieldName) && e.DisplayText != "")
            {
                if (!e.DisplayText.Contains("%"))
                {
                    e.DisplayText = e.DisplayText + "%";
                }
            }

            switch (e.Column.FieldName)
            {
                case "DueDay":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "DueDay") == null) return;
                    int DueDays = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "DueDay").ToString());
                    if (DueDays > 3)
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Step2HaveRegular":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Step2HaveRegular") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Step2HaveRegular").ToString() == "Y")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Step1DefectResultByLot":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Step1DefectResultByLot") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Step1DefectResultByLot").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (bandedGridView1.GetRowCellValue(e.RowHandle, "Step1DefectResultByLot").ToString() == "C")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                    }
                    break;

                case "PartII_MeasureResultShow":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "PartII_MeasureResultShow") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "PartII_MeasureResultShow").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "OtherOverallResult":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "OtherOverallResult") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "OtherOverallResult").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Insp_Result":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Insp_Result") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Insp_Result").ToString() == "B+" ||
                        bandedGridView1.GetRowCellValue(e.RowHandle, "Insp_Result").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (bandedGridView1.GetRowCellValue(e.RowHandle, "Insp_Result").ToString() == "C")
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Warehouse":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Warehouse") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Warehouse").ToString() == "RT")
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;
            }

        }


        private void bandedGridView1_RowCellStyle(object sender, RowCellStyleEventArgs e)
        {
            if (this.BindingSource.Current == null) return;

            barBtnSpreadDefectProc.Enabled = (this.BindingSource.Current as Fabric_Insp_Header).Step2HaveRegular == "Y";
        }

        //因為用戶反映批量保存模式經常報錯，所以改為逐行保存模式，由david加入以下方法 2020-11-02
        private void bandedGridView1_ValidateRow(object sender, ValidateRowEventArgs e)
        {
            Cursor currCursor = this.Cursor;
            this.Cursor = Cursors.WaitCursor;
            this.objListGridView.CloseEditor();

            try
            {
                PH.FabricInspection.BO.Fabric_Insp_Header currentIQC = this.BindingSource.Current as PH.FabricInspection.BO.Fabric_Insp_Header;
                if (currentIQC != null)
                {

                    currentIQC.Change_User = GlobalInfo.GetCurrentUserId();
                    currentIQC.Change_Date = DateTime.Now;
                    if (currentIQC.Special_Marker == null)
                    {
                        currentIQC.Special_Marker = 0;
                    }

                    if (currentIQC.Turn_Size == null)
                    {
                        currentIQC.Turn_Size = 0;
                    }
                    MasterTableUtil.RecalcMasterValue(this.DataContext as FabricInspectionDataContext, currentIQC);
                    ByLotSavePartIFinalClaimIaIb(currentIQC);
                    ByBatchEditMarkerLossPercent(currentIQC);
                }

                this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                //MessageBox.Show("保存成功!", "保存記錄");
            }
            catch (ChangeConflictException conflictEx)
            {
                foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
                DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失敗!Error happened \n" + ex.Message, "保存記錄");
            }
            finally
            {
                this.Cursor = currCursor;
            }
        }

        void ByLotSavePartIFinalClaimIaIb(Fabric_Insp_Header ACurrent)
        {
            var List = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == ACurrent.RefNo && p.AuditStage == ACurrent.AuditStage);
            foreach (var obj in List)
            {
                obj.PartIFinalClaimafewth = ACurrent.PartIFinalClaimafewth;

                //当修改一个Audit#的Agreed Qty时，整个Audit#的Agreed同时修改
                obj.OverallClaimQtyAgreed = ACurrent.OverallClaimQtyAgreed;

                obj.Status = ACurrent.Status; //状态也By Lot修改

            }
        }

        void ByBatchEditMarkerLossPercent(Fabric_Insp_Header ACurrent)
        {
            var List = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>)
                .Where(p => p.RefNo == ACurrent.RefNo && p.AuditStage == ACurrent.AuditStage && p.Supplich_Batch == ACurrent.Supplich_Batch);
            foreach (var obj in List)
            {
                obj.DiffWidthPercent = ACurrent.DiffWidthPercent;
            }
        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                DXMouseEventArgs eax = e as DXMouseEventArgs;
                BandedGridHitInfo info = bandedGridView1.CalcHitInfo(eax.Location);
                if (info.InBandPanel)
                {
                    BandedGridView grid = objListGridControl.FocusedView as BandedGridView;
                    SetGridViewBandBackColorForm frmSetBandColor = new SetGridViewBandBackColorForm(this.DataContext as FabricInspectionDataContext, "Fabric", info.Band.Name);
                    frmSetBandColor.ShowDialog();
                    return;
                }
            }

        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectReason_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;

                List<string> ReasonGroupList = new List<string>();
                List<string> ReasonDefectNameList = new List<string>();
                frmReason.GetSelectedDataBySplit(ref ReasonGroupList, ref ReasonDefectNameList);

                obj.OverallResultReasonGroup = string.Join("; ", ReasonGroupList.Distinct().ToArray());
                obj.OverallResultCoreDefecName = string.Join("; ", ReasonDefectNameList.ToArray());

                obj.OverallResultDefectKind = "n.a.";
                if (string.IsNullOrEmpty(obj.OverallResultReasonGroup))
                {
                    obj.OverallResultDefectKind = null;
                }
                if (ReasonGroupList.Contains("D2"))
                {
                    if (obj.Fabric_Insp_PartDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Spot";
                    }

                    if (obj.Fabric_Insp_SpreadDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Chain";
                    }

                }
                this.BindingSource.EndEdit();
                this.bandedGridView1.HideEditor();
                try
                {
                    this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                }
                catch (ChangeConflictException conflictEx)
                {
                    foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                    {
                        occ.Resolve(RefreshMode.KeepChanges);
                    }
                    DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
                }
            }

        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            var List = this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>;

            foreach (var obj in List)
            {
                if (string.IsNullOrEmpty(obj.Insp_Result_Reason))
                {
                    continue;
                }

                //D2) Splice; Crease Mark  M3) Short Length
                string Code = "";
                string Name = "";
                string[] Defects = obj.Insp_Result_Reason.Split(new string[] { "  " }, StringSplitOptions.RemoveEmptyEntries);
                foreach (var o in Defects)
                {
                    string[] Simples = o.Split(new string[] { ") " }, StringSplitOptions.RemoveEmptyEntries);
                    Code += Simples[0] + "; ";
                    Name += Simples[1] + "; "; ;
                }

                Code = Code.TrimEnd(new char[] { ';', ' ', });
                Name = Name.TrimEnd(new char[] { ';', ' ', });

                obj.OverallResultReasonGroup = Code;
                obj.OverallResultCoreDefecName = Name;

                obj.OverallResultDefectKind = "n.a.";
                if (string.IsNullOrEmpty(obj.OverallResultReasonGroup))
                {
                    obj.OverallResultDefectKind = null;
                }
                if (Code.Contains("D2"))
                {
                    if (obj.Fabric_Insp_PartDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Spot";
                    }

                    if (obj.Fabric_Insp_SpreadDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Chain";
                    }
                }
            }

            (this.DataContext as FabricInspectionDataContext).SubmitChanges();

        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.LoadDesignLayout();

        }

        private void barButtonItem5_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.SaveLayoutToXml(bandedGridView1);

        }

        object SaveAllData = null;
        private void barEditItemDashboard_EditValueChanged(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                if (SaveAllData == null)
                {
                    SaveAllData = this.BindingSource.DataSource;
                }

                string SelectedItem = barEditItemDashboard.EditValue.ToString();
                if (string.IsNullOrEmpty(SelectedItem))
                {
                    this.BindingSource.DataSource = SaveAllData;
                }
                else if (SelectedItem == "Audit complete due days")  //Due days大于3天
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.DueDay > 3);
                }
                else if (SelectedItem == "Action log - behind sch.") //1st Stage date 已经超期
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsOverDueEventLog);
                }
                else if (SelectedItem == "Action log - o/s(1st)")   //1st Stage 没有Completed
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsOutstandingEventLog);
                }
                else if (SelectedItem == "Action log - o/s(last)")  //Last Stage 没有Complete的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsLastStageOutstandingEventLog);
                }
                else if (SelectedItem == "Converted fabric")        //加工物料供应商
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsConvertedSupp);
                }
                else if (SelectedItem == "Part I Grade(B, C)")      //Part I是B或C，并且超过三天没有出Action Log的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsPartIGradeBC);
                }

                this.InitFormNavigator();
                this.FormatPostion();
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

            //Audit complete due days
            //Action log - behind sch.
            //Action log - o/s(1st)
            //Action log - o/s(last)
            //Converted fabric
            //Part I Grade(B, C)

            //RepositoryItemComboBox item = barEditItemDashboard.Edit as RepositoryItemComboBox;

            //if (SaveAllData == null)
            //{
            //    SaveAllData = this.BindingSource.DataSource;
            //}

            //CheckEdit edit = sender as CheckEdit;
            //if (edit.Checked)
            //{
            //    if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
            //    if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
            //    if (Convert.ToBoolean(barEditItem_ConvertedFabric.EditValue)) { barEditItem_ConvertedFabric.EditValue = false; }
            //    if (Convert.ToBoolean(barEditItem_PartIGradeBC.EditValue)) { barEditItem_PartIGradeBC.EditValue = false; }

            //    this.BindingSource.DataSource = (SaveAllData as IEnumerable<Fabric_Insp_Header>).Where(p => p.IsOverDueEventLog);
            //}
            //else
            //{
            //    this.BindingSource.DataSource = SaveAllData;
            //}

            //this.InitFormNavigator();
            //this.FormatPostion();
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<Fabric_Insp_Header> lists = bandedGridView1.FilteredList().Cast<Fabric_Insp_Header>();

                switch (item.FieldName)
                {
                    case "Warehouse":
                        e.TotalValue = lists.Select(p => p.Warehouse).Distinct().Count();
                        break;

                    case "RefNo":
                        e.TotalValue = lists.Select(p => p.RefNo).Distinct().Count();
                        break;

                    case "MaterialType":
                        e.TotalValue = lists.Select(p => p.MaterialType).Distinct().Count();
                        break;

                    case "ProjectNo":
                        var OriginalProjectList = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo);
                        List<string> ProjectList = new List<string>();
                        foreach (var obj in OriginalProjectList)
                        {
                            ProjectList.AddRange(obj.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries));
                        }
                        e.TotalValue = ProjectList.Distinct().Count();
                        break;

                    case "PO":
                        e.TotalValue = lists.Select(p => p.PO).Distinct().Count();
                        break;

                    case "HdoNo":
                        e.TotalValue = lists.Select(p => p.HdoNo).Distinct().Count();
                        break;

                    case "ItemCodeShow":
                        e.TotalValue = lists.Select(p => p.ItemCodeShow).Distinct().Count();
                        break;

                    case "ColorCodeShow":
                        e.TotalValue = lists.Select(p => p.ColorCodeShow).Distinct().Count();
                        break;

                    case "Supplier_Item_No":
                        e.TotalValue = lists.Select(p => p.Supplier_Item_No).Distinct().Count();
                        break;

                    case "Supplier_Code":
                        e.TotalValue = lists.Select(p => p.Supplier_Code).Distinct().Count();
                        break;

                    case "Create_User":
                        e.TotalValue = lists.Select(p => p.Create_User).Distinct().Count();
                        break;
                }
            }
        }

        private void barBtnResultNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;
            if (obj == null) return;
            obj.NoticeReportType = NoticeReportTypes.ResultNotice;
            obj.Calculate();
            FabricResultNoticeReport frmResultNotice = new FabricResultNoticeReport(obj, NoticeReportTypes.ResultNotice);
            frmResultNotice.ShowPreview();
        }

        private void barBtnRejectNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Fabric_Insp_Header obj = this.BindingSource.Current as Fabric_Insp_Header;
            if (obj == null) return;
            obj.NoticeReportType = NoticeReportTypes.RejectNotice;
            obj.Calculate();
            if ((obj.AOverallResultGradeShow == "A" || obj.AOverallResultGradeShow == "A+"))
            {
                MessageBox.Show("Overall result is A or A+, Not allow print!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            FabricResultNoticeReport frmResultNotice = new FabricResultNoticeReport(obj, NoticeReportTypes.RejectNotice);
            frmResultNotice.ShowPreview();
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ConfirmForm frmConfim = new ConfirmForm();
            if (frmConfim.ShowDialog() == DialogResult.OK)
            {
                if (frmConfim.ConfirmType == ConfirmTypes.OnlyAuditNo)
                {
                    Fabric_Insp_Header CurrentObj = this.BindingSource.Current as Fabric_Insp_Header;
                    if (CurrentObj == null) return;

                    var List = (this.BindingSource.DataSource as IEnumerable<Fabric_Insp_Header>).Where(p => p.RefNo == CurrentObj.RefNo && p.AuditStage == CurrentObj.AuditStage);
                    foreach (var obj in List)
                    {
                        if (string.IsNullOrEmpty(obj.Insp_Confirm) || obj.Insp_Confirm == "n.a.")
                        {
                            obj.Insp_Confirm = SysParamHelper.Instance.UserID;
                        }
                    }
                    try
                    {
                        this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                    }
                    catch (ChangeConflictException conflictEx)
                    {
                        foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                        {
                            occ.Resolve(RefreshMode.KeepChanges);
                        }
                        DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
                    }
                }
                else if (frmConfim.ConfirmType == ConfirmTypes.All)
                {
                    IEnumerable<Fabric_Insp_Header> lists = bandedGridView1.FilteredList().Cast<Fabric_Insp_Header>();
                    foreach (var obj in lists)
                    {
                        if (string.IsNullOrEmpty(obj.Insp_Confirm) || obj.Insp_Confirm == "n.a.")
                        {
                            obj.Insp_Confirm = SysParamHelper.Instance.UserID;
                        }
                    }
                    try
                    {
                        this.DataContext.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
                    }
                    catch (ChangeConflictException conflictEx)
                    {
                        foreach (ObjectChangeConflict occ in DataContext.ChangeConflicts)
                        {
                            occ.Resolve(RefreshMode.KeepChanges);
                        }
                        DataContext.SubmitChanges(ConflictMode.FailOnFirstConflict);
                    }
                }
            }

        }

        private void repositoryItemCheckedComboBoxEdit_WhichPart_ParseEditValue(object sender, DevExpress.XtraEditors.Controls.ConvertEditValueEventArgs e)
        {
            if (e.Value == null)
            {
                e.Value = "";
            }
        }



    }
}