using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils.Drawing;
using DevExpress.XtraGrid;
using PH.FabricInspection.BO;
using PH.FabricInspection.UI.Accessory;
using PH.FabricInspection.UI.BandLace;
using PH.FabricInspection.UI.BraCup;
using PH.FabricInspection.UI.Elastic;
using PH.FabricInspection.UI.Main.ActionLog;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO.ErrorMessages;

namespace PH.FabricInspection.UI.Main
{
    public partial class AlertLogForm : DevExpress.XtraEditors.XtraForm
    {
        FabricInspectionDataContext _db;
        object _StartActionLogForm;
        ActionLogProcessModes _ProcessMode;
        string _CompleteReason;
        string _ActionLogID;
        ActionLogWorkModes _ActionLogWorkMode;

        //public long ActionLogOID
        //{
        //    get
        //    {
        //        return (this.bsActionLogHeader.Current as ActionLogHeader).OID;
        //    }
        //}

        public PH.FabricInspection.BO.ActionLogHeader CurrentActionLogHeader
        {
            get
            {
                return bsActionLogHeader.Current as ActionLogHeader;
            }
        }

        public IEnumerable<ActionLogHeader> ActionLogHeaderList
        {
            get
            {
                return bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            }
        }

        public ActionLogIMQE CurrentActionLogIMQE
        {
            get
            {
                return bsActionLogIMQE.Current as ActionLogIMQE;
            }
        }

        public AlertLogForm()
        {
            InitializeComponent();
            btnGetData.Visible = SysParamHelper.Instance.UserID.ToUpper() == "DAVID";
        }

        public void PrepareActionLogData<StartActionLogForm, MainSheetObject>(ActionLogProcessModes ActionLogProcessMode, FabricInspectionDataContext ADB,
            StartActionLogForm AStartActionLogForm, string AActionLogID, IEnumerable<MainSheetObject> AMainSheetList, string ASupp, string AProjectNo, string ABatchNo)
        {
            _ProcessMode = ActionLogProcessMode;
            _db = ADB;
            _StartActionLogForm = AStartActionLogForm;

            this.txtSuppCode.Text = ASupp;
            _ActionLogID = AActionLogID;

            if (string.IsNullOrEmpty(_ActionLogID)) { _ActionLogWorkMode = ActionLogWorkModes.AddNew; }
            else { _ActionLogWorkMode = ActionLogWorkModes.Edit; }

            if (_ActionLogWorkMode == ActionLogWorkModes.AddNew) //新增 Action Log
            {
                DateTime StartTime = DateTime.Now;

                if (_ProcessMode == ActionLogProcessModes.Fabric) //Overall
                {
                    IEnumerable<Fabric_Insp_Header> MainSheetList = AMainSheetList.Cast<Fabric_Insp_Header>();

                    var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PO, ColorCode = p.ColorCodeShow })
                        .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                    PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    foreach (var item in GroupList)
                    {
                        PH.FabricInspection.BO.ActionLogHeader obj = bsActionLogHeader.AddNew() as PH.FabricInspection.BO.ActionLogHeader;

                        obj.MainSheetFlag = "Overall";
                        obj.StartDate = StartTime;
                        obj.CreateMan = SysParamHelper.Instance.UserID;
                        obj.PONO = item.PONO;

                        int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                        obj.TotalPOLine = TotalPOLine;

                        obj.ColorCode = item.ColorCode;

                        var lists = MainSheetList.Where(p => p.PO == item.PONO && p.ColorCodeShow == item.ColorCode);
                        obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                        obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                        _db.ActionLogHeaders.InsertOnSubmit(obj);
                    }

                    //处理Header显示信息
                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.Supplier_Code).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCodeShow).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = MainSheetList.FirstOrDefault().OverallClaimPercent;
                    _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
                }
                else if (_ProcessMode == ActionLogProcessModes.BandLace) //Band Lace
                {
                    IEnumerable<BandLaceHeader> MainSheetList = AMainSheetList.Cast<BandLaceHeader>();
                    var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONo, ColorCode = p.ColorCode })
                            .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                    PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    foreach (var item in GroupList)
                    {
                        PH.FabricInspection.BO.ActionLogHeader obj = bsActionLogHeader.AddNew() as PH.FabricInspection.BO.ActionLogHeader;

                        obj.MainSheetFlag = "BandLace";
                        obj.StartDate = StartTime;
                        obj.CreateMan = SysParamHelper.Instance.UserID;
                        obj.PONO = item.PONO;

                        int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                        obj.TotalPOLine = TotalPOLine;

                        obj.ColorCode = item.ColorCode;

                        var lists = MainSheetList.Where(p => p.PONo == item.PONO && p.ColorCode == item.ColorCode);
                        obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                        obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                        _db.ActionLogHeaders.InsertOnSubmit(obj);
                    }

                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                    _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
                }
                else if (_ProcessMode == ActionLogProcessModes.Elastic) //Elastic
                {
                    IEnumerable<ElasticHeader> MainSheetList = AMainSheetList.Cast<ElasticHeader>();
                    var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONo, ColorCode = p.ColorCode })
                                              .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                    PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    foreach (var item in GroupList)
                    {
                        PH.FabricInspection.BO.ActionLogHeader obj = bsActionLogHeader.AddNew() as PH.FabricInspection.BO.ActionLogHeader;

                        obj.MainSheetFlag = "Elastic";
                        obj.StartDate = StartTime;
                        obj.CreateMan = SysParamHelper.Instance.UserID;
                        obj.PONO = item.PONO;

                        int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                        obj.TotalPOLine = TotalPOLine;

                        obj.ColorCode = item.ColorCode;

                        var lists = MainSheetList.Where(p => p.PONo == item.PONO && p.ColorCode == item.ColorCode);
                        obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                        obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                        _db.ActionLogHeaders.InsertOnSubmit(obj);
                    }

                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                    _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
                }
                else if (_ProcessMode == ActionLogProcessModes.Accessories) //Accessory
                {
                    IEnumerable<AccessoryHeader> MainSheetList = AMainSheetList.Cast<AccessoryHeader>();
                    var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONO, ColorCode = p.ColorCode })
                                              .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                    PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    foreach (var item in GroupList)
                    {
                        PH.FabricInspection.BO.ActionLogHeader obj = bsActionLogHeader.AddNew() as PH.FabricInspection.BO.ActionLogHeader;

                        obj.MainSheetFlag = "Accessory";
                        obj.StartDate = StartTime;
                        obj.CreateMan = SysParamHelper.Instance.UserID;
                        obj.PONO = item.PONO;

                        int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                        obj.TotalPOLine = TotalPOLine;

                        obj.ColorCode = item.ColorCode;

                        var lists = MainSheetList.Where(p => p.PONO == item.PONO && p.ColorCode == item.ColorCode);
                        obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNO.Trim()).Distinct().OrderBy(p => p).ToArray());

                        obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                        _db.ActionLogHeaders.InsertOnSubmit(obj);
                    }

                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                    _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
                }
                else if (_ProcessMode == ActionLogProcessModes.BraCup) //BraCup
                {
                    IEnumerable<BraCupHeader> MainSheetList = AMainSheetList.Cast<BraCupHeader>();
                    var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONO, ColorCode = p.ColorCode })
                                                                .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                    PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    foreach (var item in GroupList)
                    {
                        PH.FabricInspection.BO.ActionLogHeader obj = bsActionLogHeader.AddNew() as PH.FabricInspection.BO.ActionLogHeader;

                        obj.MainSheetFlag = "BraCup";
                        obj.StartDate = StartTime;
                        obj.CreateMan = SysParamHelper.Instance.UserID;
                        obj.PONO = item.PONO;

                        int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                        obj.TotalPOLine = TotalPOLine;

                        obj.ColorCode = item.ColorCode;

                        var lists = MainSheetList.Where(p => p.PONO == item.PONO && p.ColorCode == item.ColorCode);
                        obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNO.Trim()).Distinct().OrderBy(p => p).ToArray());

                        obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                        _db.ActionLogHeaders.InsertOnSubmit(obj);
                    }


                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                    _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
                }
                bsActionLogHeader.EndEdit();

            }
            else //Edit
            {
                _ActionLogWorkMode = ActionLogWorkModes.Edit;

                var lists = _db.ActionLogHeaders.Where(dr => dr.ActionLogID == AActionLogID);
                this.bsActionLogHeader.DataSource = lists;

                ActionLogIMQE ActionLogIMQEObj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == _ActionLogID);

                //要考虑以前的数据，没有生成ActionLogIMQE这张表的记录
                if (ActionLogIMQEObj == null)
                {
                    ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                }

                if (_ProcessMode == ActionLogProcessModes.Fabric) //Overall
                {
                    IEnumerable<Fabric_Insp_Header> MainSheetList = AMainSheetList.Cast<Fabric_Insp_Header>();
                    ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.Supplier_Code).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCodeShow).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = MainSheetList.FirstOrDefault().OverallClaimPercent;
                }
                else if (_ProcessMode == ActionLogProcessModes.BandLace) //Band Lace
                {
                    IEnumerable<BandLaceHeader> MainSheetList = AMainSheetList.Cast<BandLaceHeader>();
                    ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                }
                else if (_ProcessMode == ActionLogProcessModes.Elastic) //Elastic
                {
                    IEnumerable<ElasticHeader> MainSheetList = AMainSheetList.Cast<ElasticHeader>();
                    ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                }
                else if (_ProcessMode == ActionLogProcessModes.Accessories) //Accessory
                {
                    IEnumerable<AccessoryHeader> MainSheetList = AMainSheetList.Cast<AccessoryHeader>();
                    ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                }
                else if (_ProcessMode == ActionLogProcessModes.BraCup) //BraCup
                {
                    IEnumerable<BraCupHeader> MainSheetList = AMainSheetList.Cast<BraCupHeader>();
                    ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                    ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                    ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                    ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                    ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
                }

                bsActionLogIMQE.DataSource = ActionLogIMQEObj;

            }
            GetHeaderShowInfo();

            ////Elastic中没有Batch#，需要在界面上隐藏
            //if (AStartActionLogForm is ElasticHeaderListForm)
            //{
            //    lbBatchNO.Visible = false;
            //    txtBatchNo.Visible = false;
            //}
            //else
            //{
            //    lbBatchNO.Visible = true;
            //    txtBatchNo.Visible = true;
            //}

            //this.lbBatchNO.Text = (AStartActionLogForm is AccessoryHeaderListForm) ? "id Create dd" : "Batch#:";

            //GetIMQEActionLogInfo();
        }


        public AlertLogForm(ActionLogProcessModes AProcessMode, FabricInspectionDataContext ADB, string AActionLogNO, string AActionLogID,
            object AStartActionLogForm, string ASupp, string AProjectNo, string ABatchNo, string AAuditStage)
            : this()
        {

            _ProcessMode = AProcessMode;
            _db = ADB;
            _ActionLogID = AActionLogID;

            //_ActionLogNO = AActionLogNO; // AActionLogNO 这个参数已经没有用了，Action Log No.改为从Action Log Header表中计算好后，回调到五种物料主表中保存
            _StartActionLogForm = AStartActionLogForm;

            //this.txtSuppCode.Text = ASupp;
            //this.txtProjectNo.Text = AProjectNo;
            //this.txtBatchNo.Text = ABatchNo;

            ////Elastic中没有Batch#，需要在界面上隐藏
            //if (AProcessMode == ActionLogProcessModes.Elastic)
            //{
            //    lbBatchNO.Visible = false;
            //    txtBatchNo.Visible = false;
            //}
            //else
            //{
            //    lbBatchNO.Visible = true;
            //    txtBatchNo.Visible = true;
            //}

            //this.lbProject.Text = AProcessMode == ActionLogProcessModes.Accessories ? "PO#" : "Proj#:";
            //this.lbBatchNO.Text = AProcessMode == ActionLogProcessModes.Accessories ? "id Create dd" : "Batch#:";

            //if (!AActionLogOID.HasValue)
            //{
            //    ActionLogHeader obj = this.bsActionLogHeader.AddNew() as ActionLogHeader;
            //    //obj.RefID = Convert.ToInt64(DateTime.Now.ToString("yyyyMMddHHmmssffff"));
            //    obj.StartDate = DateTime.Now;
            //    obj.CreateMan = SysParamHelper.Instance.UserID;
            //    _db.ActionLogHeaders.InsertOnSubmit(obj);

            //    this.btnSendEmail.Enabled = false;
            //    //this.colIsCompleted.OptionsColumn.AllowEdit = true;
            //    //this.colLastStageIsCompleted.OptionsColumn.AllowEdit = true;
            //}
            //else
            //{
            //    var lists = _db.ActionLogHeaders.Where(dr => dr.OID == AActionLogOID);
            //    this.bsActionLogHeader.DataSource = lists;

            //    //if ((this.bsActionLogHeader.Current as ActionLogHeader).LastStageIsCompleted ?? false)
            //    //{
            //    //    DisableOperation();
            //    //}
            //}


            _ActionLogWorkMode = ActionLogWorkModes.Edit;

            var lists = _db.ActionLogHeaders.Where(dr => dr.ActionLogID == AActionLogID);
            this.bsActionLogHeader.DataSource = lists;

            ActionLogIMQE ActionLogIMQEObj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == _ActionLogID);

            //要考虑以前的数据，没有生成ActionLogIMQE这张表的记录
            if (ActionLogIMQEObj == null)
            {
                ActionLogIMQEObj = bsActionLogIMQE.AddNew() as ActionLogIMQE;
                _db.ActionLogIMQEs.InsertOnSubmit(ActionLogIMQEObj);
            }

            if (_ProcessMode == ActionLogProcessModes.Fabric) //Overall
            {
                IEnumerable<Fabric_Insp_Header> MainSheetList = _db.Fabric_Insp_Headers.Where(p => p.ActionLogID == _ActionLogID && p.AuditStage == AAuditStage);
                ActionLogIMQEObj.ActionLogID = _ActionLogID;
                ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.Supplier_Code).Distinct().ToArray());
                ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCodeShow).Distinct().ToArray());
                ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                ActionLogIMQEObj.OverallClaimPercent = MainSheetList.FirstOrDefault().OverallClaimPercent;
            }
            else if (_ProcessMode == ActionLogProcessModes.BandLace) //Band Lace
            {
                IEnumerable<BandLaceHeader> MainSheetList = _db.BandLaceHeaders.Where(p => p.ActionLogID == _ActionLogID && p.AuditStage == AAuditStage);
                ActionLogIMQEObj.ActionLogID = _ActionLogID;
                ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
            }
            else if (_ProcessMode == ActionLogProcessModes.Elastic) //Elastic
            {
                IEnumerable<ElasticHeader> MainSheetList = _db.ElasticHeaders.Where(p => p.ActionLogID == _ActionLogID && p.AuditStage == AAuditStage);
                ActionLogIMQEObj.ActionLogID = _ActionLogID;
                ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
            }
            else if (_ProcessMode == ActionLogProcessModes.Accessories) //Accessory
            {
                IEnumerable<AccessoryHeader> MainSheetList = _db.AccessoryHeaders.Where(p => p.ActionLogID == _ActionLogID && p.AuditStage == AAuditStage);
                ActionLogIMQEObj.ActionLogID = _ActionLogID;
                ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
            }
            else if (_ProcessMode == ActionLogProcessModes.BraCup) //BraCup
            {
                IEnumerable<BraCupHeader> MainSheetList = _db.BraCupHeaders.Where(p => p.ActionLogID == _ActionLogID && p.AuditStage == AAuditStage);
                ActionLogIMQEObj.ActionLogID = _ActionLogID;
                ActionLogIMQEObj.SuppCode = string.Join(",", MainSheetList.Select(p => p.SuppCode).Distinct().ToArray());
                ActionLogIMQEObj.ItemCode = string.Join(",", MainSheetList.Select(p => p.ItemCode).Distinct().ToArray());
                ActionLogIMQEObj.AuditNo1 = MainSheetList.FirstOrDefault().AuditNo1;
                ActionLogIMQEObj.AuditStage = MainSheetList.FirstOrDefault().AuditStage;
                ActionLogIMQEObj.OverallClaimPercent = (MainSheetList.FirstOrDefault().OverallClaimPercentByLot ?? 0) * 100;
            }

            bsActionLogIMQE.DataSource = ActionLogIMQEObj;
            ControlEditState(_ActionLogWorkMode);
            GetHeaderShowInfo();
        }

        private void btnSendEmail_Click(object sender, EventArgs e)
        {
            //SaveActionLogDetailData();

            SaveActionLog(false);

            if (!this.gridActionLogDetail.IsLastVisibleRow)
            {
                MessageBox.Show("Pls choose the last follow up seq. to send email\r\n請選擇最後一行再發郵件.", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                {
                    return;
                }
            }

            ActionLogDetail detail = this.gridActionLogDetail.GetRow(this.gridActionLogDetail.FocusedRowHandle) as ActionLogDetail;

            if (detail == null)
            {
                return;
            }

            ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;

            if (!obj.PlanEndDate.HasValue)
            {
                string Str = "【Target Cmpl dd】 is not input,\r\nAre you sure send email?";
                if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
            }

            //if (!obj.PlanEndDate.HasValue || !obj.LastStageTargetCompleteDate.HasValue)
            //{
            //    string Str = "【1st stage target agreed dd】 or 【Last stage target complete dd】 no input,\r\nAre you sure send email?";
            //    if (MessageBox.Show(Str, "Hint", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            //    {
            //        return;
            //    }
            //}

            SendEmailForm frmSendEMail = new SendEmailForm(_ProcessMode, _db, CurrentActionLogIMQE, CurrentActionLogHeader, detail, obj.NeedActionLogSendCompletedEmail, _CompleteReason);
            frmSendEMail.ShowDialog();
        }

        //当用户点击了Last Stage的Completed后，自动发邮件通知用户当前Action Log已经Completed
        void ProcessActionLogSendCompletedEmail()
        {
            ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;

            /* add by shulin 2023-02-09 */
            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            var lists = AllDataList.Where(p => p.ActionLogSeqNo == obj.ActionLogSeqNo).ToList();
            /**************************/


            if (obj.NeedActionLogSendCompletedEmail)
            {
                ActionLogCompleteReasonForm frmCompletedReason = new ActionLogCompleteReasonForm();
                if (frmCompletedReason.ShowDialog() == DialogResult.OK)
                {
                    _CompleteReason = frmCompletedReason.CompleteReason;
                    this.gridActionLogDetail.MoveLast();
                    ActionLogDetail detail = this.gridActionLogDetail.GetRow(this.gridActionLogDetail.FocusedRowHandle) as ActionLogDetail;
                    if (detail == null) return;

                    /* add by shulin 2023-02-09 */
                    foreach (var Aobj in lists)
                    {
                        Aobj.ActionLogCompleteReasonOID = frmCompletedReason.CompleteReasonOID;
                        Aobj.ActionLogCompleteReasonRemark = _CompleteReason;

                    }
                    /****************************/

                    SendEmailForm frmSendEMail = new SendEmailForm(_ProcessMode, _db, CurrentActionLogIMQE, CurrentActionLogHeader, detail, obj.NeedActionLogSendCompletedEmail, _CompleteReason);
                    frmSendEMail.SendMail(false);

                    obj.ActionLogCompleteReasonOID = frmCompletedReason.CompleteReasonOID;
                    obj.ActionLogCompleteReasonRemark = _CompleteReason;
                    _db.SubmitChanges();
                }
            }
        }

        private void btnAddAlertLog_Click(object sender, EventArgs e)
        {
            //計算新的Action Log Seq# (Add Stage)
            string MaxActionLogSeqNo = ActionLogHeaderList.Max(p => p.ActionLogSeqNo);
            string NewActionLogSeqNo;
            int NewStageSeqNo;
            if (MaxActionLogSeqNo == _ActionLogID)
            {
                NewStageSeqNo = 2;
                NewActionLogSeqNo = _ActionLogID + "+";
            }
            else if (MaxActionLogSeqNo == _ActionLogID + "+")
            {
                NewStageSeqNo = 3;
                NewActionLogSeqNo = _ActionLogID + "++";
            }
            else if (MaxActionLogSeqNo == _ActionLogID + "++")
            {
                NewStageSeqNo = 4;
                NewActionLogSeqNo = _ActionLogID + "+3";
            }
            else
            {
                NewStageSeqNo = Convert.ToInt32(MaxActionLogSeqNo.Substring(9)) + 1;
                NewActionLogSeqNo = _ActionLogID + "+" + NewStageSeqNo.ToString();
            }

            DateTime StartDate = DateTime.Now;
            foreach (int i in this.bandedGridView1.GetSelectedRows())
            {
                var ActionLogHeaderSelectedRow = this.bandedGridView1.GetRow(i) as ActionLogHeader;

                ActionLogHeader obj = new ActionLogHeader();
                obj.ActionLogID = _ActionLogID;
                obj.StartDate = StartDate;
                obj.ActionLogSeqNo = NewActionLogSeqNo;
                obj.StageSeqNo = NewStageSeqNo;
                obj.SeqNo1 = ActionLogHeaderSelectedRow.SeqNo1;
                obj.SeqNo2 = ActionLogHeaderSelectedRow.SeqNo2;
                obj.CreateMan = SysParamHelper.Instance.UserID;
                obj.MainSheetFlag = ActionLogHeaderSelectedRow.MainSheetFlag;
                obj.PONO = ActionLogHeaderSelectedRow.PONO;
                obj.TotalPOLine = ActionLogHeaderSelectedRow.TotalPOLine;
                obj.ColorCode = ActionLogHeaderSelectedRow.ColorCode;
                obj.ProjectNo = ActionLogHeaderSelectedRow.ProjectNo;
                obj.WOFWStartDate = ActionLogHeaderSelectedRow.WOFWStartDate;
                bsActionLogHeader.Add(obj);
            }
            bsActionLogHeader.MoveLast();
        }

        private void btnDeleteStage_Click(object sender, EventArgs e)
        {

            //if (ActionLogHeaderList.Any(p => p.StageSeqNo > CurrentActionLogHeader.StageSeqNo))
            //{
            //    MessageBox.Show("Only the last stage action log seq# can be deleted", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            string ActionLogID = CurrentActionLogHeader.ActionLogID;
            string ActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;
            string DeleteActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNoShow;

            if (MessageBox.Show("Confirm delete the acton log seq#: " + ActionLogSeqNo, "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                var NeedDeleteList = ActionLogHeaderList.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo).ToList();
                for (int i = 0; i < NeedDeleteList.Count(); i++)
                {
                    bsActionLogHeader.Remove(NeedDeleteList[i]);
                }

                var NeedDeleteActionLogDetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo);
                _db.ActionLogDetails.DeleteAllOnSubmit(NeedDeleteActionLogDetailList);

                SaveActionLog(false);
                //SaveActionLogToL3();

                if (bsActionLogHeader.List.Count == 0) //整个ActionLog都删除了，同步删除ActionLogIMQE中的信息
                {
                    ActionLogIMQE ActionLogIMQEObj = _db.ActionLogIMQEs.FirstOrDefault(p => p.ActionLogID == ActionLogID);
                    _db.ActionLogIMQEs.DeleteOnSubmit(ActionLogIMQEObj);
                }

                if (_StartActionLogForm is PH.FabricInspection.UI.Query.ActionLogIncompleteListForm) //Action InCmpl Form 调用时，直接保存数据到时5种物料的主表
                {
                    SaveActionLogToMainSheet();
                }
                else
                {
                    //回写Action Log Seq No.到调用的界面
                    if (_ProcessMode == ActionLogProcessModes.Fabric)
                    {
                        (_StartActionLogForm as MasterListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.BandLace)
                    {
                        (_StartActionLogForm as BandLaceHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.Elastic)
                    {
                        (_StartActionLogForm as ElasticHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.BraCup)
                    {
                        (_StartActionLogForm as BraCupHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.Accessories)
                    {
                        (_StartActionLogForm as AccessoryHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                }

                ControlEditState(_ActionLogWorkMode);

                _db.SubmitChanges();
                GetHeaderShowInfo();
            }
        }

        private void btnSaveAlertLog_Click(object sender, EventArgs e)
        {
            SaveActionLog(true);
        }

        void SaveActionLog(bool AShowProcessMessageHint)
        {
            //增加保存Action Log Seq No.
            ActionLogHeader ActionLogHeaderObj = bsActionLogHeader.Current as ActionLogHeader;
            if (ActionLogHeaderObj == null) return;

            //ActionLogHeaderObj.ActionLogSeqNo = _ActionLogNO;

            this.bandedGridView1.PostEditor();
            this.gridActionLogDetail.PostEditor();

            this.bsActionLogIMQE.EndEdit();
            this.bsActionLogHeader.EndEdit();
            this.bsActionLogDetail.EndEdit();

            try
            {
                if (_ActionLogWorkMode == ActionLogWorkModes.AddNew)
                {
                    //王生要求的统一Action Log No.格式为：2209-001 (年月 + 三位流水号)
                    FabricInspectionDataContext NewDB = ContextBuilder.CreateContext<FabricInspectionDataContext>();
                    int SeqNo1 = Convert.ToInt32(DateTime.Now.ToString("yyMM"));
                    int? MaxSeqNo2 = NewDB.ActionLogHeaders.Where(p => p.SeqNo1 == SeqNo1).Max(p => p.SeqNo2);
                    int SeqNo2 = (MaxSeqNo2 ?? 0) + 1;
                    _ActionLogID = SeqNo1.ToString() + "-" + SeqNo2.ToString().PadLeft(3, '0');

                    ActionLogHeaderObj.SeqNo1 = SeqNo1;
                    ActionLogHeaderObj.SeqNo2 = SeqNo2;

                    // IEnumerable<ActionLogHeader> ActionLogHeaderList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
                    foreach (var obj in ActionLogHeaderList)
                    {
                        obj.ActionLogID = _ActionLogID;
                        obj.ActionLogSeqNo = _ActionLogID;
                        obj.SeqNo1 = SeqNo1;
                        obj.SeqNo2 = SeqNo2;
                        obj.StageSeqNo = 1;
                    }

                    ActionLogIMQE ActionLogIMQEObj = bsActionLogIMQE.Current as ActionLogIMQE;
                    if (ActionLogIMQEObj != null)
                    {
                        ActionLogIMQEObj.ActionLogID = _ActionLogID;
                    }
                }

                //SaveIMQEActionLogInfo();
                _db.SubmitChanges();

                if (_StartActionLogForm is PH.FabricInspection.UI.Query.ActionLogIncompleteListForm) //Action InCmpl Form 调用时，直接保存数据到时5种物料的主表
                {
                    SaveActionLogToMainSheet();
                }
                else //如果是5种物料Audit的主Form调用时，直接调用AuditForm中的保存方法 (这样做的好处是可以即时刷AudtiForm Layout)
                {
                    if (_ProcessMode == ActionLogProcessModes.Fabric)
                    {
                        (_StartActionLogForm as MasterListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.BandLace)
                    {
                        (_StartActionLogForm as BandLaceHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.Elastic)
                    {
                        (_StartActionLogForm as ElasticHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.BraCup)
                    {
                        (_StartActionLogForm as BraCupHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                    else if (_ProcessMode == ActionLogProcessModes.Accessories)
                    {
                        (_StartActionLogForm as AccessoryHeaderListForm).SaveActionLogInfoByID(_ActionLogID, ActionLogHeaderList);
                    }
                }


                _ActionLogWorkMode = (CurrentActionLogHeader.IsCompleted ?? false) ? ActionLogWorkModes.Complete : ActionLogWorkModes.Edit;
                ControlEditState(_ActionLogWorkMode);

                //ProcessActionLogSendCompletedEmail();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Save failed:" + ex.Message, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Error);
                this.DialogResult = DialogResult.Cancel;

            }

            this.btnSendEmail.Enabled = true;
            if (AShowProcessMessageHint)
            {
                MessageBox.Show("Save success.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            //this.DialogResult = DialogResult.OK;

            //if ((this.bsActionLogHeader.Current as ActionLogHeader).IsCompleted ?? false)
            /// {
            ControlEditState(_ActionLogWorkMode);
            // }

            GetHeaderShowInfo();
        }

        void SaveActionLogToMainSheet()
        {
            if (_ProcessMode == ActionLogProcessModes.Fabric)
            {
                IEnumerable<Fabric_Insp_Header> MainSheetList = _db.Fabric_Insp_Headers.Where(p => p.ActionLogID == _ActionLogID);
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
                }

                if (ActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
                {
                    foreach (var o in MainSheetList)
                    {
                        var GroupList = ActionLogHeaderList.Where(p => p.PONO == o.PO && p.ColorCode == o.ColorCodeShow);
                        o.ActionLogID = _ActionLogID;

                        //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                        string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                        o.MissingAudit = ActionLogSeqNos;
                        o.ActionLogTaking = "Y";
                        o.ActionLogGroup = "S";
                        o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                        o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                        o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";


                    }
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.BandLace)
            {
                var MainSheetList = _db.BandLaceHeaders.Where(p => p.ActionLogID == _ActionLogID);

                foreach (var o in MainSheetList)
                {
                    o.ActionLogID = null;
                    o.ActionLogSeqNo = null;
                    o.ActionLogTaking = null;
                    o.ActionLogGroup = null;
                    o.ActionLogCategory = null;
                    o.ActionLogTargetDate = null;
                    o.ActionLogRevisedDate = null;
                    o.ActionLogCmplDate = null;
                }

                if (ActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
                {
                    foreach (var o in MainSheetList)
                    {
                        var GroupList = ActionLogHeaderList.Where(p => p.PONO == o.PONo && p.ColorCode == o.ColorCode);
                        o.ActionLogID = _ActionLogID;

                        //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                        string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                        o.ActionLogSeqNo = ActionLogSeqNos;
                        o.ActionLogTaking = "Y";
                        o.ActionLogGroup = "S";
                        o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                        o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate); //1st 沒有Rev. Date
                        o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                        o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                    }
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.Elastic)
            {
                var MainSheetList = _db.ElasticHeaders.Where(p => p.ActionLogID == _ActionLogID);

                foreach (var o in MainSheetList)
                {
                    o.ActionLogID = null;
                    o.ActionLogSeqNo = null;
                    o.ActionLogTaking = null;
                    o.ActionLogGroup = null;
                    o.ActionLogCategory = null;
                    o.ActionLogTargetDate = null;
                    o.ActionLogRevisedDate = null;
                    o.ActionLogCmplDate = null;
                }

                if (ActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
                {
                    foreach (var o in MainSheetList)
                    {
                        var GroupList = ActionLogHeaderList.Where(p => p.PONO == o.PONo && p.ColorCode == o.ColorCode);
                        o.ActionLogID = _ActionLogID;

                        //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                        string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                        o.ActionLogSeqNo = ActionLogSeqNos;
                        o.ActionLogTaking = "Y";
                        o.ActionLogGroup = "S";
                        o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                        o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate); //1st 沒有Rev. Date
                        o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                        o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                    }
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.BraCup)
            {
                var MainSheetList = _db.BraCupHeaders.Where(p => p.ActionLogID == _ActionLogID);

                foreach (var o in MainSheetList)
                {
                    o.ActionLogID = null;
                    o.ActionLogNO = null;
                    o.ActionLogTaking = null;
                    o.ActionLogGroup = null;
                    o.ActionLogCategory = null;
                    o.ActionLogTargetDate = null;
                    o.ActionLogRevisedDate = null;
                    o.ActionLogCmplDate = null;
                }

                if (ActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
                {
                    foreach (var o in MainSheetList)
                    {
                        var GroupList = ActionLogHeaderList.Where(p => p.PONO == o.PONO && p.ColorCode == o.ColorCode);
                        o.ActionLogID = _ActionLogID;

                        //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                        string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                        o.ActionLogNO = ActionLogSeqNos;
                        o.ActionLogTaking = "Y";
                        o.ActionLogGroup = "S";
                        o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                        o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate); //1st 沒有Rev. Date
                        o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                        o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                    }
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.Accessories)
            {
                var MainSheetList = _db.AccessoryHeaders.Where(p => p.ActionLogID == _ActionLogID);

                foreach (var o in MainSheetList)
                {
                    o.ActionLogID = null;
                    o.ActionLogNO = null;
                    o.ActionLogTaking = null;
                    o.ActionLogGroup = null;
                    o.ActionLogCategory = null;
                    o.ActionLogTargetDate = null;
                    o.ActionLogRevisedDate = null;
                    o.ActionLogCmplDate = null;
                }

                if (ActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
                {
                    foreach (var o in MainSheetList)
                    {
                        var GroupList = ActionLogHeaderList.Where(p => p.PONO == o.PONO && p.ColorCode == o.ColorCode);
                        o.ActionLogID = _ActionLogID;

                        //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                        string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                        o.ActionLogNO = ActionLogSeqNos;
                        o.ActionLogTaking = "Y";
                        o.ActionLogGroup = "S";
                        o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                        o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                        o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate); //1st 沒有Rev. Date
                        o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                        o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                    }
                }
            }

            try
            {
                _db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
            catch (ChangeConflictException conflictEx)
            {
                foreach (ObjectChangeConflict occ in _db.ChangeConflicts)
                {
                    occ.Resolve(RefreshMode.KeepChanges);
                }
                _db.SubmitChanges(ConflictMode.FailOnFirstConflict);
            }

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (this.bsActionLogHeader.Current == null)
            {
                return;
            }

            this.gridActionLogDetail.AddNewRow();
            this.gridActionLogDetail.UpdateCurrentRow();

            ActionLogDetail detail = this.gridActionLogDetail.GetRow(this.gridActionLogDetail.FocusedRowHandle) as ActionLogDetail;
            detail.ActionLogID = CurrentActionLogHeader.ActionLogID;
            detail.ActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;

            detail.Sender = SysParamHelper.Instance.UserID;
            detail.StartFollowDate = DateTime.Now;

            int? MaxFollowCount = _db.ActionLogDetails.Where(p => p.ActionLogID == CurrentActionLogHeader.ActionLogID && p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo).Select(p => p.FollowCount).Max();
            detail.FollowCount = (MaxFollowCount ?? 0) + 1;

            SaveActionLogDetailData();
        }

        void SaveActionLogDetailData()
        {
            this.bsActionLogHeader.EndEdit();
            this.bandedGridView1.PostEditor();
            this.gridActionLogDetail.PostEditor();
            _db.SubmitChanges();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (ErrorMessageManager.ShowMessage("P000232", "00000000010105", "Platform", "msgDeleteconfirm", SysParamHelper.Instance.LangID, "msgDeleteconfirm") == DialogResult.Yes)
            {
                this.gridActionLogDetail.DeleteRow(this.gridActionLogDetail.FocusedRowHandle);
                //_db.SubmitChanges();
            }
        }

        private void gridActionLogDetail_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (e.FocusedRowHandle < 0) return;

            object CreateMan = this.gridActionLogDetail.GetFocusedRowCellValue("Sender");
            if (CreateMan == null) return;

            this.btnDelete.Enabled = CreateMan.ToString().ToUpper() == SysParamHelper.Instance.UserID.ToUpper();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveActionLog(true);
            //SaveActionLogDetailData();
            //MessageBox.Show("Save success.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.None);
        }

        //void SaveActionLogDetailData()
        //{
        //    this.bsActionLogHeader.EndEdit();
        //    this.bandedGridView1.PostEditor();
        //    this.gridActionLogDetail.PostEditor();
        //    _db.SubmitChanges();
        //}

        private void repositoryItemButtonEdit_ItemNo_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            ActionLogCategoryChoiceForm frmChoiceItem = new ActionLogCategoryChoiceForm(_db);
            if (frmChoiceItem.ShowDialog() == DialogResult.OK)
            {
                ActionLogHeader obj = this.bsActionLogHeader.Current as ActionLogHeader;
                obj.ItemNo = frmChoiceItem.SelectItem.Code;
                obj.ItemSubject = frmChoiceItem.SelectItem.Description_EN;
                obj.ItemSubjectCN = frmChoiceItem.SelectItem.Description;
                this.bandedGridView1.HideEditor();

                ProcessSameActionLogInfo(); //by Action Log Seq#修改相关栏位

                //UpdateSameActionLogSeqNo(); //by Action Log Seq#修改相关栏位
            }
        }

        private void repositoryItemCheckEdit_IteCompleted_CheckedChanged(object sender, EventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.bsActionLogHeader.EndEdit();
            ControlEditState(_ActionLogWorkMode);
        }

        void ControlEditState(ActionLogWorkModes AActionLogWorkMode)
        {
            if (CurrentActionLogHeader == null) //删掉了所有Stage的情况
            {
                btnSaveAlertLog.Enabled = false;
                btnAddStage.Enabled = false;
                btnDeleteStage.Enabled = false;
                btnAdd.Enabled = false;
                btnDelete.Enabled = false;
                btnSave.Enabled = false;
                btnSendEmail.Enabled = false;
                btnCancel.Enabled = true;

                btn1stStageComplete.Visible = false;
                btnLastStageComplete.Visible = false;
                return;
            }

            if (CurrentActionLogHeader.CompletedDate.HasValue)
            {
                AActionLogWorkMode = ActionLogWorkModes.Complete;
            }

            bool IsCreator;
            if (string.IsNullOrEmpty(CurrentActionLogHeader.CreateMan)) //以前的记录有些没有创建人，这些记录所有人都可以点Completed
            {
                IsCreator = true;
            }
            else
            {
                IsCreator = CurrentActionLogHeader.CreateMan.ToUpper() == SysParamHelper.Instance.UserID.ToUpper();
            }

            //this.colCompletedDate.OptionsColumn.AllowEdit = IsCreator;
            this.colIsCompleted.OptionsColumn.AllowEdit = IsCreator;
            this.btn1stStageComplete.Visible = (CurrentActionLogHeader.CompletedDate.HasValue) && IsCreator;

            // add by shulin 20230531
            this.colWOFWStartDate.OptionsColumn.AllowEdit = AActionLogWorkMode != ActionLogWorkModes.Complete;


            btnSaveAlertLog.Enabled = AActionLogWorkMode != ActionLogWorkModes.Complete;
            btnAddStage.Enabled = AActionLogWorkMode != ActionLogWorkModes.AddNew;

            btnAdd.Enabled = AActionLogWorkMode == ActionLogWorkModes.Edit;
            btnDelete.Enabled = btnAdd.Enabled;
            btnSave.Enabled = btnAdd.Enabled;
            btnSendEmail.Enabled = btnAdd.Enabled;
            btnDeleteStage.Enabled = AActionLogWorkMode == ActionLogWorkModes.Edit && IsCreator && CurrentActionLogHeader.StageSeqNo == ActionLogHeaderList.Max(p => (p.StageSeqNo ?? 0));
            txtDataCrossTransferCmplDate.Enabled = AActionLogWorkMode != ActionLogWorkModes.Complete;
            //bandedGridView1.OptionsBehavior.Editable = AActionLogWorkMode != ActionLogWorkModes.Complete;
            //gridActionLogDetail.OptionsBehavior.Editable = AActionLogWorkMode != ActionLogWorkModes.Complete;

            //if (SysParamHelper.Instance.UserID.ToUpper() == "DAVID")
            //{
            //    btnSaveAlertLog.Enabled = true;
            //}

            //IMQE系统里屏蔽掉Add Stage功能
            btnAddStage.Visible = false;
            btnDeleteStage.Visible = false;
        }

        private void bandedGridView1_ShowingEditor(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (_ActionLogWorkMode == ActionLogWorkModes.Complete && bandedGridView1.FocusedColumn != colProjectNo)
            {
                e.Cancel = true;
            }
        }

        private void gridActionLogDetail_ShowingEditor(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (_ActionLogWorkMode == ActionLogWorkModes.Complete && gridActionLogDetail.FocusedColumn != colOpenDetail)
            {
                e.Cancel = true;
            }
        }

        private void btn1stStageComplete_Click(object sender, EventArgs e)
        {

            //add by shulin 2023-02-09 根据当前IsCompleted是否打勾，来控制同一个ActionLogSeqNo，批量打勾
            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            int? CurrentStageSeqNo = CurrentActionLogHeader.StageSeqNo;
            var lists = AllDataList.Where(p => p.StageSeqNo == CurrentStageSeqNo).ToList();
            foreach (var obj in lists)
            {
                obj.IsCompleted = null;
                obj.CompletedDate = null;
            }
            /***************************************/

            //CurrentActionLogHeader.IsCompleted = null;
            //CurrentActionLogHeader.CompletedDate = null;
            bsActionLogHeader.EndEdit();

            ProcessActionLogSeqNoComplateStatus();

            SaveActionLog(false);
            _db.SubmitChanges();
            ControlEditState(_ActionLogWorkMode);
        }

        private void btnLastStageComplete_Click(object sender, EventArgs e)
        {
            ActionLogHeader obj = bsActionLogHeader.Current as ActionLogHeader;
            if (obj != null)
            {
                obj.LastStageIsCompleted = null;
                bsActionLogHeader.EndEdit();
                _db.SubmitChanges();
            }
        }

        private void repositoryItemButtonEdit_OpenDetail_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            ActionLogDetail obj = bsActionLogDetail.Current as ActionLogDetail;
            if (obj == null) return;
            FollowupSummaryForm frmFollowupSummary = new FollowupSummaryForm(obj);
            if (frmFollowupSummary.ShowDialog() == DialogResult.OK)
            {
                obj.FollowSummary = frmFollowupSummary.FollowUpSummary;
                bsActionLogDetail.EndEdit();
                gridActionLogDetail.RefreshData();
            }
        }

        private void bandedGridView1_CellValueChanged(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.FieldName == "IsCompleted")
            {
                ProcessActionLogSeqNoComplateStatus();
                _ActionLogWorkMode = Convert.ToBoolean(e.Value) ? ActionLogWorkModes.Complete : _ActionLogWorkMode;
            }
            else
            {
                ProcessSameActionLogInfo(); //by Action Log Seq#修改相关栏位
            }

            SaveActionLog(false);
            _db.SubmitChanges();

            ControlEditState(_ActionLogWorkMode);
        }

        //同一个ActionLogSeq#中，如果所有行的都输入了Cmpl Date，即把这个ActionLogSeq#加上*号，如果有一行没有输入Cmpl Date，则不加*号
        void ProcessActionLogSeqNoComplateStatus()
        {

            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            string CurrentActionLogID = CurrentActionLogHeader.ActionLogID;
            string CurrentActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;

            int? CurrentStageSeqNo = CurrentActionLogHeader.StageSeqNo;

            //add by shulin 2023-02-09 根据当前IsCompleted是否打勾，来控制同一个ActionLogSeqNo，批量打勾
            bool CurrentActionLogIsComleted = CurrentActionLogHeader.IsCompleted ?? false;
            DateTime? CurrentCompletedDate = CurrentActionLogHeader.CompletedDate;

            var lists = AllDataList.Where(p => p.StageSeqNo == CurrentStageSeqNo).ToList();

            foreach (var obj in lists)
            {
                obj.ActionLogSeqNo = CurrentActionLogIsComleted ? (CurrentActionLogSeqNo + "*") : CurrentActionLogSeqNo.TrimEnd('*');
                obj.CompletedDate = CurrentCompletedDate;
                obj.IsCompleted = CurrentActionLogIsComleted;
            }

            //更新Action Log Detail表
            var NeedUpdateActionLogDetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == CurrentActionLogID && p.ActionLogSeqNo == CurrentActionLogSeqNo).ToList();
            foreach (var obj in NeedUpdateActionLogDetailList)
            {
                obj.ActionLogSeqNo = CurrentActionLogIsComleted ? (CurrentActionLogSeqNo + "*") : CurrentActionLogSeqNo.TrimEnd('*');
            }


            //IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            //string CurrentActionLogID = CurrentActionLogHeader.ActionLogID;
            //string CurrentActionLogSeqNo = CurrentActionLogHeader.ActionLogSeqNo;

            ////同一个Action Log Seq#中还存在没有输入Complete Date的记录
            //bool ExistsInComplete = AllDataList.Any(p => p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo && !p.CompletedDate.HasValue);

            //var lists = AllDataList.Where(p => p.ActionLogSeqNo == CurrentActionLogSeqNo).ToList();
            //foreach (var obj in lists)
            //{
            //    obj.ActionLogSeqNo = ExistsInComplete ? CurrentActionLogSeqNo.TrimEnd('*') : (CurrentActionLogSeqNo + "*");
            //}

            ////更新Action Log Detail表
            //var NeedUpdateActionLogDetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == CurrentActionLogID && p.ActionLogSeqNo == CurrentActionLogSeqNo).ToList();
            //foreach (var obj in NeedUpdateActionLogDetailList)
            //{
            //    obj.ActionLogSeqNo = ExistsInComplete ? CurrentActionLogSeqNo.TrimEnd('*') : (CurrentActionLogSeqNo + "*");
            //}
        }

        // by Action Log Seq#修改相关栏位
        void ProcessSameActionLogInfo()
        {
            IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;
            IEnumerable<ActionLogHeader> SameActionLogSeqNoList;
            if (CurrentActionLogHeader.ActionLogSeqNo == null)
            {
                SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == null).ToList();
            }
            else
            {
                SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo).ToList();
            }

            foreach (var obj in SameActionLogSeqNoList)
            {
                obj.ItemNo = CurrentActionLogHeader.ItemNo;
                obj.ItemSubject = CurrentActionLogHeader.ItemSubject;
                obj.ItemSubjectCN = CurrentActionLogHeader.ItemSubjectCN;

                obj.WOFWStartDate = CurrentActionLogHeader.WOFWStartDate;

                //obj.PlanEndDate = CurrentActionLogHeader.PlanEndDate;
                //obj.RevisedDate = CurrentActionLogHeader.RevisedDate;
                //obj.IsCompleted = CurrentActionLogHeader.IsCompleted;
                //obj.CompletedDate = CurrentActionLogHeader.CompletedDate;

                if (!string.IsNullOrEmpty(obj.ActionLogSeqNo))
                {
                    if (obj.CompletedDate.HasValue)
                    {
                        obj.ActionLogSeqNo = obj.ActionLogSeqNo + "*";
                    }
                    else
                    {
                        obj.ActionLogSeqNo = obj.ActionLogSeqNo.TrimEnd('*');
                    }
                }
            }
        }

        //// by Action Log Seq#修改相关栏位
        //void UpdateSameActionLogSeqNo()
        //{
        //    IEnumerable<ActionLogHeader> AllDataList = bsActionLogHeader.List as IEnumerable<ActionLogHeader>;

        //    IEnumerable<ActionLogHeader> SameActionLogSeqNoList;
        //    if (CurrentActionLogHeader.ActionLogSeqNo == null)
        //    {
        //        SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == null);
        //    }
        //    else
        //    {
        //        SameActionLogSeqNoList = AllDataList.Where(p => p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo);
        //    }

        //    foreach (var obj in SameActionLogSeqNoList)
        //    {
        //        obj.ItemNo = CurrentActionLogHeader.ItemNo;
        //        obj.ItemSubject = CurrentActionLogHeader.ItemSubject;
        //        obj.ItemSubjectCN = CurrentActionLogHeader.ItemSubjectCN;

        //        obj.StartDate = CurrentActionLogHeader.StartDate;
        //        obj.PlanEndDate = CurrentActionLogHeader.PlanEndDate;
        //        obj.IsCompleted = CurrentActionLogHeader.IsCompleted;
        //        obj.CompletedDate = CurrentActionLogHeader.CompletedDate;

        //        //obj.LastStageTargetCompleteDate = CurrentActionLogHeader.LastStageTargetCompleteDate;
        //        //obj.LastStageReviseTargetCompleteDate = CurrentActionLogHeader.LastStageReviseTargetCompleteDate;
        //        //obj.LastStageIsCompleted = CurrentActionLogHeader.LastStageIsCompleted;
        //        //obj.LastStageCompletedDate = CurrentActionLogHeader.LastStageCompletedDate;
        //    }
        //}

        private void bsActionLogHeader_CurrentChanged(object sender, EventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            //根据 Action Log Seq# 取得发邮件的内容 (Action Log Detail表)
            var DetailList = _db.ActionLogDetails.Where(p => p.ActionLogID == _ActionLogID && p.ActionLogSeqNo == CurrentActionLogHeader.ActionLogSeqNo);
            bsActionLogDetail.DataSource = DetailList;
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<ActionLogHeader> lists = bandedGridView1.FilteredList().Cast<ActionLogHeader>();

                switch (item.FieldName)
                {
                    case "ActionLogSeqNo":
                        e.TotalValue = lists.Select(p => p.ActionLogSeqNo).Distinct().Count();
                        break;

                    //case "LotID":
                    //    e.TotalValue = lists.Select(p => p.LotID).Distinct().Count();
                    //    break;

                    case "ItemNo":
                        e.TotalValue = lists.Select(p => p.ItemNo).Distinct().Count();
                        break;

                }
            }
        }

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.bsActionLogHeader.EndEdit();
            SaveActionLog(false);
            _db.SubmitChanges();
        }

        private void bandedGridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            if (_ActionLogWorkMode != ActionLogWorkModes.AddNew) //不是新增状态时，判断是编辑状态还是Last Stage已经完成状态
            {
                if (CurrentActionLogHeader.CompletedDate.HasValue)
                    _ActionLogWorkMode = ActionLogWorkModes.Complete; //Action Log已經完成，不允許再修改
                else
                    _ActionLogWorkMode = ActionLogWorkModes.Edit;
            }

            lbActionLogSeqNo.Text = string.Format("[{0}]", CurrentActionLogHeader.ActionLogSeqNoShow);
            ControlEditState(_ActionLogWorkMode);
        }

        private void gridActionLogDetail_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.bsActionLogDetail.EndEdit();
            SaveActionLog(false);
            _db.SubmitChanges();
        }


        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveActionLogSeqNo = "";
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                ActionLogHeader obj = bandedGridView1.GetRow(i) as ActionLogHeader;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveActionLogSeqNo = obj.ActionLogSeqNo;
                }
                else
                {
                    if (obj.ActionLogSeqNo == SaveActionLogSeqNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveActionLogSeqNo = obj.ActionLogSeqNo;
                    }
                }
            }
        }

        private void gridControl1_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void gridControl1_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            System.Drawing.Color colorGray = System.Drawing.Color.FromArgb(217, 217, 217);
            System.Drawing.Color colorYellow = System.Drawing.Color.FromArgb(235, 241, 222);
            System.Drawing.Color colorBlue = System.Drawing.Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    break;
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            if (e.Band.Name == "gridBand27")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        private void bandedGridView1_CustomDrawColumnHeader(object sender, DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
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

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
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

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        private void btnGetData_Click(object sender, EventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            ActionLogHeader obj = CurrentActionLogHeader;

            if (_ProcessMode == ActionLogProcessModes.Fabric) //Overall
            {
                IEnumerable<Fabric_Insp_Header> MainSheetList = _db.Fabric_Insp_Headers.Where(p => p.ActionLogID == _ActionLogID);
                var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PO, ColorCode = p.ColorCodeShow })
                    .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                foreach (var item in GroupList)
                {
                    obj.MainSheetFlag = "Overall";
                    obj.PONO = item.PONO;

                    int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                    obj.TotalPOLine = TotalPOLine;

                    obj.ColorCode = item.ColorCode;

                    var lists = MainSheetList.Where(p => p.PO == item.PONO && p.ColorCodeShow == item.ColorCode);
                    obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                    obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.BandLace) //Band Lace
            {
                IEnumerable<BandLaceHeader> MainSheetList = _db.BandLaceHeaders.Where(p => p.ActionLogID == _ActionLogID);
                var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONo, ColorCode = p.ColorCode })
                        .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                foreach (var item in GroupList)
                {
                    obj.MainSheetFlag = "BandLace";
                    obj.PONO = item.PONO;

                    int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                    obj.TotalPOLine = TotalPOLine;

                    obj.ColorCode = item.ColorCode;

                    var lists = MainSheetList.Where(p => p.PONo == item.PONO && p.ColorCode == item.ColorCode);
                    obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                    obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.Elastic) //Elastic
            {
                IEnumerable<ElasticHeader> MainSheetList = _db.ElasticHeaders.Where(p => p.ActionLogID == _ActionLogID);
                var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONo, ColorCode = p.ColorCode })
                                          .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                foreach (var item in GroupList)
                {
                    obj.MainSheetFlag = "Elastic";
                    obj.PONO = item.PONO;

                    int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                    obj.TotalPOLine = TotalPOLine;

                    obj.ColorCode = item.ColorCode;

                    var lists = MainSheetList.Where(p => p.PONo == item.PONO && p.ColorCode == item.ColorCode);
                    obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNo.Trim()).Distinct().OrderBy(p => p).ToArray());

                    obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.Accessories) //Accessory
            {
                IEnumerable<AccessoryHeader> MainSheetList = _db.AccessoryHeaders.Where(p => p.ActionLogID == _ActionLogID);
                var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONO, ColorCode = p.ColorCode })
                                          .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                foreach (var item in GroupList)
                {
                    obj.MainSheetFlag = "Accessory";
                    obj.PONO = item.PONO;

                    int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                    obj.TotalPOLine = TotalPOLine;

                    obj.ColorCode = item.ColorCode;

                    var lists = MainSheetList.Where(p => p.PONO == item.PONO && p.ColorCode == item.ColorCode);
                    obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNO.Trim()).Distinct().OrderBy(p => p).ToArray());

                    obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                }
            }
            else if (_ProcessMode == ActionLogProcessModes.BraCup) //BraCup
            {
                IEnumerable<BraCupHeader> MainSheetList = _db.BraCupHeaders.Where(p => p.ActionLogID == _ActionLogID);
                var GroupList = MainSheetList.GroupBy(p => new { PONO = p.PONO, ColorCode = p.ColorCode })
                                                            .Select(p => new { PONO = p.Key.PONO, ColorCode = p.Key.ColorCode });

                PH.POPC.BO.POPCDataContext POPCDB = ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                foreach (var item in GroupList)
                {
                    obj.MainSheetFlag = "BraCup";
                    obj.PONO = item.PONO;

                    int TotalPOLine = POPCDB.PODetails.Where(p => (p.VersionFlag ?? false) && p.PONO == obj.PONO).Select(p => p.OrderLine).Distinct().Count();
                    obj.TotalPOLine = TotalPOLine;

                    obj.ColorCode = item.ColorCode;

                    var lists = MainSheetList.Where(p => p.PONO == item.PONO && p.ColorCode == item.ColorCode);
                    obj.ProjectNo = string.Join(",", lists.Select(p => p.ProjectNO.Trim()).Distinct().OrderBy(p => p).ToArray());

                    obj.WOFWStartDate = lists.Min(p => p.FWStartDate);
                }
            }
            _db.SubmitChanges();
        }

        private void repositoryItemButtonEdit_AllProjectNo_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (CurrentActionLogHeader == null) return;

            POAllProjecForm frmPOAllProject = new POAllProjecForm(CurrentActionLogHeader.PONO);
            frmPOAllProject.ShowDialog();
        }

        private void repositoryItemCheckEdit_IsCompleted_CheckedChanged(object sender, System.EventArgs e)
        {
            this.bandedGridView1.PostEditor();
            this.bsActionLogHeader.EndEdit();
            bandedGridView1.UpdateCurrentRow();

            ProcessActionLogSendCompletedEmail();
        }

        void GetHeaderShowInfo()
        {
            ActionLogHeader obj = bsActionLogHeader.Current as ActionLogHeader;
            if (obj != null)
            {
                txtCreator.Text = obj.CreateMan;
                //txtGrpg.Text = "S";
                //txtItemTtl.Text = "1";

                var lists = bsActionLogHeader.DataSource as IEnumerable<ActionLogHeader>;
                if (lists != null)
                {
                    txtActionLogStageTotal.Text = lists.Select(p => p.ActionLogSeqNoShow).Distinct().Count().ToString();
                }
            }
        }


    }

    /// <summary>
    /// Action Log 处理模式
    /// </summary>
    public enum ActionLogProcessModes
    {
        Fabric,
        BandLace,
        Elastic,
        Accessories,
        BraCup
    }

    /// <summary>
    /// Action Log 工作模式
    /// </summary>
    public enum ActionLogWorkModes
    {
        AddNew,
        Edit,
        Complete
    }
}