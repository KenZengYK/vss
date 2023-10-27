using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;
using DevExpress.Xpo;
using DevExpress.Xpo.DB;
using Microsoft.Extensions.Configuration;
using QEFullInspetion.Models.PH_MobileQC;
using System.Threading;
//using Microsoft.Extensions.Localization;

namespace QEFullInspetion.Controllers
{
    // If you need to use Data Annotation attributes, attach them to this view model instead of an XPO data model.
    public class FullInspectionHeadersViewModel
    {
        public long Oid { get; set; }
        public string Factory { get; set; }
        public string WorkShop { get; set; }
        public string Line { get; set; }
        public string Project { get; set; }
        public string LWO { get; set; }
        public string ColorCode { get; set; }
        public string StyleNo { get; set; }
        public string SeqNo { get; set; }
        public DateTime InspectionDate { get; set; }
        public string Inspector { get; set; }
        public int? QNQty { get; set; }
        public int InspectionQtyShow { get; set; }
        public string InspectionConfirmBy { get; set; }
        public string LineLeader { get; set; }
        public string LineLeaderSignature { get; set; }
        public string SewingSupervisior { get; set; }
        public int TotalDefectiveGarmentQtyShow { get; set; }
        public int TotalRepairedShow { get; set; }
        public string Remark { get; set; }
        public DateTime? QNStartDate { get; set; }
        public int OutstandingQtyShow { get; set; }

    }

    [Route("api/[controller]/[action]/{id?}")]
    public class FullInspectionHeadersController : Controller
    {
        private UnitOfWork _uow;

        //private readonly IStringLocalizer<FullInspectionHeadersController> _localizer;
        //public FullInspectionHeadersController(IStringLocalizer<FullInspectionHeadersController> localizer)
        //{
        //    _localizer = localizer;
        //}

        public FullInspectionHeadersController(UnitOfWork unitOfWork)
        {
            // Make sure that the Startup.cs file contains the XPO Data Layer initialization code.
            // For additional information, refer to the following help topic: https://docs.devexpress.com/XPO/14810/design-time-features/data-model-wizard#4
            this._uow = unitOfWork;
        }

        [HttpGet]
        //public async Task<IActionResult> Get(DataSourceLoadOptions loadOptions)
        public async Task<IActionResult> Get(DataSourceLoadOptions loadOptions)
        {
            //更新WO 的 Ex-Fty Date, 离厂日期超过今天的的QN都不再显示出来
            string SqlStr = "exec sp_UpdateFullInspectionHeaderWOExFtyDate";
            _uow.ExecuteNonQuery(SqlStr);

            var fullinspectionheaders = _uow.Query<FullInspectionHeader>().Where(p => p.ExftyDate >= DateTime.Now.Date).Select(i => new FullInspectionHeadersViewModel
            {
                Oid = i.Oid,
                Factory = i.Factory,
                WorkShop = i.WorkShop,
                Line = i.Line,
                Project = i.Project,
                LWO = i.LWO,
                ColorCode = i.ColorCode,
                StyleNo = i.StyleNo,
                SeqNo = i.SeqNo,
                InspectionDate = i.InspectionDate,
                Inspector = i.Inspector,
                QNQty = i.QNQty,
                InspectionQtyShow = i.InspectionQtyShow,
                InspectionConfirmBy = i.InspectionConfirmBy,
                LineLeader = i.LineLeader,
                LineLeaderSignature = i.LineLeaderSignature,
                SewingSupervisior = i.SewingSupervisior,
                QNStartDate = i.QNStartDate,

                OutstandingQtyShow = i.QNQty.HasValue ? (i.QNQty ?? 0) - i.InspectionQtyShow : 0
            });

            return Json(await DataSourceLoader.LoadAsync(fullinspectionheaders, loadOptions));

            // If underlying data is a large SQL table, specify PrimaryKey and PaginateViaPrimaryKey.
            // This can make SQL execution plans more efficient.
            // For more detailed information, please refer to this discussion: https://github.com/DevExpress/DevExtreme.AspNet.Data/issues/336.
            // loadOptions.PrimaryKey = new[] { "Oid" };
            // loadOptions.PaginateViaPrimaryKey = true;

        }

        [HttpGet]
        public object GetHeaderListTotalInformation(DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.Query<FullInspectionHeader>().Where(p => p.ExftyDate >= DateTime.Now.Date).Select(i => new FullInspectionHeadersViewModel
            {
                Oid = i.Oid,
                Factory = i.Factory,
                WorkShop = i.WorkShop,
                Line = i.Line,
                Project = i.Project,
                LWO = i.LWO,
                ColorCode = i.ColorCode,
                StyleNo = i.StyleNo,
                SeqNo = i.SeqNo,
                InspectionDate = i.InspectionDate,
                Inspector = i.Inspector,
                QNQty = i.QNQty,
                //InspectionQtyShow = i.InspectionQtyShow,
                InspectionConfirmBy = i.InspectionConfirmBy,
                LineLeader = i.LineLeader,
                LineLeaderSignature = i.LineLeaderSignature,
                SewingSupervisior = i.SewingSupervisior,
                QNStartDate = i.QNStartDate,

                //OutstandingQtyShow = i.QNQty.HasValue ? (i.QNQty ?? 0) - i.InspectionQtyShow : 0
            }).AsQueryable();


            var TotalFactory = lists.Where(p => !string.IsNullOrEmpty(p.Factory)).Select(p => p.Factory).Distinct().Count();
            var TotalWorkShop = lists.Where(p => !string.IsNullOrEmpty(p.WorkShop)).Select(p => p.WorkShop).Distinct().Count();
            var TotalLine = lists.Where(p => !string.IsNullOrEmpty(p.Line)).Select(p => p.Line).Distinct().Count();
            var TotalProjectNo = lists.Where(p => !string.IsNullOrEmpty(p.Project)).Select(p => p.Project).Distinct().Count();
            var TotalQNNO = lists.Where(p => !string.IsNullOrEmpty(p.LWO)).Select(p => p.LWO).Distinct().Count();
            //var TotalInspectionQty = lists.Select(p => p.InspectionQtyShow).Sum();
            //var TotalOutstandingQty = lists.Select(p => p.OutstandingQtyShow).Sum();
            var InspectionConfirmBy = lists.Where(p => !string.IsNullOrEmpty(p.InspectionConfirmBy)).Select(p => p.InspectionConfirmBy).Distinct().Count();
            var TotalCustStyleNo = lists.Where(p => !string.IsNullOrEmpty(p.StyleNo)).Select(p => p.StyleNo).Distinct().Count();
            var TotalLineLeader = lists.Where(p => !string.IsNullOrEmpty(p.LineLeader)).Select(p => p.LineLeader).Distinct().Count();
            var TotalSewingSupervisior = lists.Where(p => !string.IsNullOrEmpty(p.SewingSupervisior)).Select(p => p.SewingSupervisior).Distinct().Count();

            return Json(new
            {
                TotalFactory = TotalFactory,
                TotalWorkShop = TotalWorkShop,
                TotalLine = TotalLine,
                TotalProjectNo = TotalProjectNo,
                TotalQNNO = TotalQNNO,
                //TotalInspectionQty = TotalInspectionQty,
                //TotalOutstandingQty = TotalOutstandingQty,
                InspectionConfirmBy = InspectionConfirmBy,
                TotalCustStyleNo = TotalCustStyleNo,
                TotalLineLeader = TotalLineLeader,
                TotalSewingSupervisior = TotalSewingSupervisior
            });
        }


        [HttpGet]
        public async Task<IActionResult> GetByOID(long OID, DataSourceLoadOptions loadOptions)
        {
            var fullinspectionheaders = _uow.Query<FullInspectionHeader>().Where(p => p.Oid == OID).Select(i => new FullInspectionHeadersViewModel
            {
                Oid = i.Oid,
                Inspector = i.Inspector,
                TotalDefectiveGarmentQtyShow = i.TotalDefectiveGarmentQtyShow,
                TotalRepairedShow = i.TotalRepairedShow,
                Remark = i.Remark
            });

            return Json(await DataSourceLoader.LoadAsync(fullinspectionheaders, loadOptions));
        }

        [HttpGet]
        public object GetQNBalanceQty(long FullInspectionHeader, long FullInspectionDetailOID, DataSourceLoadOptions loadOptions)
        {
            var obj = _uow.Query<FullInspectionHeader>().FirstOrDefault(p => p.Oid == FullInspectionHeader);

            int ProductQty;
            if (FullInspectionDetailOID == 0) //新增记录的情况 
            {
                ProductQty = obj.FullInspectionDetails.Select(p => p.ProductQty ?? 0).Sum();
            }
            else //修改记录的情况
            {
                ProductQty = obj.FullInspectionDetails.Where(p => p.Oid != FullInspectionDetailOID).Select(p => p.ProductQty ?? 0).Sum();
            }

            int BanalceQty = (obj.QNQty ?? 0) - ProductQty;
            return Json(new { BanalceQty = BanalceQty });
        }


        [HttpGet]
        public object GetTotalInformation(long FullInspectionHeader, int OnlyShowTodayData, DataSourceLoadOptions loadOptions)
        {
            //int OnlyShowTodayData = 0;

            var obj = _uow.Query<FullInspectionHeader>().FirstOrDefault(p => p.Oid == FullInspectionHeader);

            var DetailList = obj.FullInspectionDetails.Where(p => (OnlyShowTodayData == 0) || p.InspectionDate.Value.Date == DateTime.Now.Date);
            var TotalCheckPointSigned = DetailList.Where(p => !string.IsNullOrEmpty(p.CheckPointSigned)).Select(p => p.CheckPointSigned).Count();

            var TotalBoxNo = DetailList.Where(p => p.BoxNo.HasValue).Select(p => p.BoxNo).Distinct().Count();
            var TotalRepaired = DetailList.Where(p => p.Repaired ?? false).Select(p => (p.DefectiveGarmentQty ?? 0) - (p.RejectQty ?? 0)).Sum();
            var TotalSize = DetailList.Where(p => !string.IsNullOrEmpty(p.Size)).Select(p => p.Size).Distinct().Count();

            var TotalProductQty = DetailList.Select(p => p.ProductQty).Sum();
            var TotalDefectiveGarmentQty = DetailList.Select(p => p.DefectiveGarmentQty ?? 0).Sum();

            var TotalRejectQty = DetailList.Select(p => p.RejectQty ?? 0).Sum();

            string DefectiveGarmentPercent = "";
            if (TotalProductQty > 0)
            {
                DefectiveGarmentPercent = Convert.ToDecimal((1.0000 * TotalDefectiveGarmentQty / TotalProductQty)).ToString("P");
            }
            return Json(new
            {
                TotalCheckPointSigned = TotalCheckPointSigned,
                TotalBoxNo = TotalBoxNo,
                TotalRepaired = TotalRepaired,
                TotalSize = TotalSize,
                DefectiveGarmentPercent = DefectiveGarmentPercent,
                TotalRejectQty = TotalRejectQty
            });

        }

        [HttpPost]
        public async Task<IActionResult> Post(string values)
        {
            var model = new FullInspectionHeader(_uow);
            var viewModel = new FullInspectionHeadersViewModel();
            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);

            PopulateViewModel(viewModel, valuesDict);

            if (!TryValidateModel(viewModel))
                return BadRequest(GetFullErrorMessage(ModelState));

            CopyToModel(viewModel, model);

            await _uow.CommitChangesAsync();

            return Json(new { model.Oid });
        }

        [HttpPut]
        public async Task<IActionResult> Put(long key, string values)
        {
            var model = _uow.GetObjectByKey<FullInspectionHeader>(key, true);
            if (model == null)
                return StatusCode(409, "Object not found");

            var viewModel = new FullInspectionHeadersViewModel
            {
                Oid = model.Oid,
                Factory = model.Factory,
                WorkShop = model.WorkShop,
                Line = model.Line,
                Project = model.Project,
                LWO = model.LWO,
                ColorCode = model.ColorCode,
                StyleNo = model.StyleNo,
                SeqNo = model.SeqNo,
                InspectionDate = model.InspectionDate,
                Inspector = model.Inspector,
                QNQty = model.QNQty,
                InspectionConfirmBy = model.InspectionConfirmBy,
                LineLeader = model.LineLeader,
                LineLeaderSignature = model.LineLeaderSignature,
                SewingSupervisior = model.SewingSupervisior,
                Remark = model.Remark
            };

            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);
            PopulateViewModel(viewModel, valuesDict);

            if (!TryValidateModel(viewModel))
                return BadRequest(GetFullErrorMessage(ModelState));

            CopyToModel(viewModel, model);

            await _uow.CommitChangesAsync();

            return Ok();
        }

        [HttpDelete]
        public async Task Delete(long key)
        {
            var model = _uow.GetObjectByKey<FullInspectionHeader>(key, true);

            _uow.Delete(model);
            await _uow.CommitChangesAsync();
        }

        const string OID = nameof(FullInspectionHeader.Oid);
        const string FACTORY = nameof(FullInspectionHeader.Factory);
        const string WORKSHOP = nameof(FullInspectionHeader.WorkShop);
        const string LINE = nameof(FullInspectionHeader.Line);
        const string PROJECT = nameof(FullInspectionHeader.Project);
        const string LWO = nameof(FullInspectionHeader.LWO);
        const string COLOR_CODE = nameof(FullInspectionHeader.ColorCode);
        const string STYLE_NO = nameof(FullInspectionHeader.StyleNo);
        const string SEQ_NO = nameof(FullInspectionHeader.SeqNo);
        const string INSPECTIONDATE = nameof(FullInspectionHeader.InspectionDate);
        const string INSPECTOR = nameof(FullInspectionHeader.Inspector);
        const string QNQTY = nameof(FullInspectionHeader.QNQty);
        const string INSPECTIONCONFIRMBY = nameof(FullInspectionHeader.InspectionConfirmBy);
        const string LINELEADER = nameof(FullInspectionHeader.LineLeader);
        const string LINELEADERSIGNATURE = nameof(FullInspectionHeader.LineLeaderSignature);
        const string SEWINGSUPERVISIOR = nameof(FullInspectionHeader.SewingSupervisior);
        const string REMARK = nameof(FullInspectionHeader.Remark);

        private void PopulateViewModel(FullInspectionHeadersViewModel viewModel, IDictionary values)
        {
            if (values.Contains(OID))
            {
                viewModel.Oid = Convert.ToInt64(values[OID]);
            }
            if (values.Contains(FACTORY))
            {
                viewModel.Factory = Convert.ToString(values[FACTORY]);
            }
            if (values.Contains(WORKSHOP))
            {
                viewModel.WorkShop = Convert.ToString(values[WORKSHOP]);
            }
            if (values.Contains(LINE))
            {
                viewModel.Line = Convert.ToString(values[LINE]);
            }
            if (values.Contains(PROJECT))
            {
                viewModel.Project = Convert.ToString(values[PROJECT]);
            }
            if (values.Contains(LWO))
            {
                viewModel.LWO = Convert.ToString(values[LWO]);
            }
            if (values.Contains(COLOR_CODE))
            {
                viewModel.ColorCode = Convert.ToString(values[COLOR_CODE]);
            }
            if (values.Contains(STYLE_NO))
            {
                viewModel.StyleNo = Convert.ToString(values[STYLE_NO]);
            }
            if (values.Contains(SEQ_NO))
            {
                viewModel.SeqNo = Convert.ToString(values[SEQ_NO]);
            }
            if (values.Contains(INSPECTIONDATE))
            {
                viewModel.InspectionDate = Convert.ToDateTime(values[INSPECTIONDATE]);
            }
            if (values.Contains(INSPECTOR))
            {
                viewModel.Inspector = Convert.ToString(values[INSPECTOR]);
            }
            if (values.Contains(QNQTY))
            {
                viewModel.QNQty = Convert.ToInt32(values[QNQTY]);
            }
            if (values.Contains(INSPECTIONCONFIRMBY))
            {
                viewModel.InspectionConfirmBy = Convert.ToString(values[INSPECTIONCONFIRMBY]);
            }
            if (values.Contains(LINELEADER))
            {
                viewModel.LineLeader = Convert.ToString(values[LINELEADER]);
            }
            if (values.Contains(LINELEADERSIGNATURE))
            {
                viewModel.LineLeaderSignature = Convert.ToString(values[LINELEADERSIGNATURE]);
            }
            if (values.Contains(SEWINGSUPERVISIOR))
            {
                viewModel.SewingSupervisior = Convert.ToString(values[SEWINGSUPERVISIOR]);
            }
            if (values.Contains(REMARK))
            {
                viewModel.Remark = Convert.ToString(values[REMARK]);
            }
        }

        private void CopyToModel(FullInspectionHeadersViewModel viewModel, FullInspectionHeader model)
        {
            model.Oid = viewModel.Oid;
            model.Factory = viewModel.Factory;
            model.WorkShop = viewModel.WorkShop;
            model.Line = viewModel.Line;
            model.Project = viewModel.Project;
            model.LWO = viewModel.LWO;
            model.QNQty = viewModel.QNQty;
            model.InspectionConfirmBy = viewModel.InspectionConfirmBy;
            model.ColorCode = viewModel.ColorCode;
            model.StyleNo = viewModel.StyleNo;
            model.SeqNo = viewModel.SeqNo;
            model.InspectionDate = viewModel.InspectionDate;
            model.Inspector = viewModel.Inspector;
            model.LineLeader = viewModel.LineLeader;
            model.LineLeaderSignature = viewModel.LineLeaderSignature;
            model.SewingSupervisior = viewModel.SewingSupervisior;
            model.Remark = viewModel.Remark;
        }

        private string GetFullErrorMessage(ModelStateDictionary modelState)
        {
            var messages = new List<string>();

            foreach (var entry in modelState)
            {
                foreach (var error in entry.Value.Errors)
                    messages.Add(error.ErrorMessage);
            }

            return String.Join(" ", messages);
        }
    }
}