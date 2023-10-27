using DevExtreme.AspNet.Data;
using DevExtreme.AspNet.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Core;
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
using Microsoft.AspNetCore.Http;

namespace QEFullInspetion.Controllers
{
    // If you need to use Data Annotation attributes, attach them to this view model instead of an XPO data model.
    public class FullInspectionDetailsViewModel
    {
        public long Oid { get; set; }
        public int? RecordNoShow { get; set; }
        public long? FullInspectionHeader { get; set; }
        public int? BoxNo { get; set; }
        public string Size { get; set; }
        public int? ProductQty { get; set; }
        public int? DefectiveGarmentQty { get; set; }
        public decimal? DefectiveGarmentPercent { get; set; }
        public string RejectStage { get; set; }
        public int? CheckPoint { get; set; }
        public string PODCode1 { get; set; }
        public string PODNameEN1 { get; set; }
        public string PODNameCN1 { get; set; }
        public string PODNameBD1 { get; set; }
        public string PODCode2 { get; set; }
        public string PODNameEN2 { get; set; }
        public string PODNameCN2 { get; set; }
        public string PODNameBD2 { get; set; }
        public string PODCode3 { get; set; }
        public string PODNameEN3 { get; set; }
        public string PODNameCN3 { get; set; }
        public string PODNameBD3 { get; set; }

        public string DefectCode1 { get; set; }
        public string DefectNameEN1 { get; set; }
        public string DefectNameCN1 { get; set; }
        public string DefectNameBD1 { get; set; }
        public string DefectCode2 { get; set; }
        public string DefectNameEN2 { get; set; }
        public string DefectNameCN2 { get; set; }
        public string DefectNameBD2 { get; set; }
        public string DefectCode3 { get; set; }
        public string DefectNameEN3 { get; set; }
        public string DefectNameCN3 { get; set; }
        public string DefectNameBD3 { get; set; }

        public int? PODQty { get; set; }
        public int? DefectQty { get; set; }
        public string CheckPointSigned { get; set; }
        public bool? Repaired { get; set; }
        public string Inspector { get; set; }
        public DateTime? InspectionDate { get; set; }
        public int? RejectQty { get; set; }
    }


    [Route("api/[controller]/[action]/{id?}")]
    //[Route("api/[controller]/[action]")]
    public class FullInspectionDetailsController : Controller
    {
        private UnitOfWork _uow;

        public FullInspectionDetailsController(UnitOfWork unitOfWork)
        {
            // Make sure that the Startup.cs file contains the XPO Data Layer initialization code.
            // For additional information, refer to the following help topic: https://docs.devexpress.com/XPO/14810/design-time-features/data-model-wizard#4
            this._uow = unitOfWork;
        }

        [HttpGet]
        public object Get(long? FullInspectionHeader, int OnlyShowTodayData, DataSourceLoadOptions loadOptions)
        {
            var lists = _uow.Query<FullInspectionDetail>()
                .Where(p => p.FullInspectionHeader.Oid == FullInspectionHeader && (OnlyShowTodayData == 0 || p.InspectionDate.Value.Date == DateTime.Now.Date));


            //var fullinspectiondetails = _uow.Query<FullInspectionDetail>().Where(p => p.FullInspectionHeader.Oid == FullInspectionHeader).Select(i => new FullInspectionDetailsViewModel
            var fullinspectiondetails = lists.Select(i => new FullInspectionDetailsViewModel
            {
                Oid = i.Oid,
                RecordNoShow = i.RecordNoShow,
                FullInspectionHeader = i.FullInspectionHeader.Oid,
                BoxNo = i.BoxNo,
                Size = i.Size,
                ProductQty = i.ProductQty,
                DefectiveGarmentQty = i.DefectiveGarmentQty,
                DefectiveGarmentPercent = i.DefectiveGarmentPercent,
                RejectStage = i.RejectStage,

                PODCode1 = i.PODCode1,
                PODNameEN1 = i.PODNameEN1,
                PODNameCN1 = i.PODNameCN1,
                PODNameBD1 = i.PODNameBD1,
                PODCode2 = i.PODCode2,
                PODNameEN2 = i.PODNameEN2,
                PODNameCN2 = i.PODNameCN2,
                PODNameBD2 = i.PODNameBD2,
                PODCode3 = i.PODCode3,
                PODNameEN3 = i.PODNameEN3,
                PODNameCN3 = i.PODNameCN3,
                PODNameBD3 = i.PODNameBD3,

                DefectCode1 = i.DefectCode1,
                DefectNameEN1 = i.DefectNameEN1,
                DefectNameCN1 = i.DefectNameCN1,
                DefectNameBD1 = i.DefectNameBD1,
                DefectCode2 = i.DefectCode2,
                DefectNameEN2 = i.DefectNameEN2,
                DefectNameCN2 = i.DefectNameCN2,
                DefectNameBD2 = i.DefectNameBD2,
                DefectCode3 = i.DefectCode3,
                DefectNameEN3 = i.DefectNameEN3,
                DefectNameCN3 = i.DefectNameCN3,
                DefectNameBD3 = i.DefectNameBD3,

                DefectQty = i.DefectQty,
                PODQty = i.PODQty,
                CheckPointSigned = i.CheckPointSigned,
                Repaired = i.Repaired ?? false,
                Inspector = i.Inspector,
                InspectionDate = i.InspectionDate,
                RejectQty = i.RejectQty
            }).ToList().OrderBy(p => p.InspectionDate); //.ThenBy(p => p.Oid);

            int RecordNo = 1;
            DateTime? SaveDate = fullinspectiondetails.FirstOrDefault() == null ? null : fullinspectiondetails.FirstOrDefault().InspectionDate;
            foreach (var obj in fullinspectiondetails)
            {
                if (obj.InspectionDate.HasValue && obj.InspectionDate.Value.Date != SaveDate.Value.Date)
                {
                    RecordNo = 1;
                    SaveDate = obj.InspectionDate;
                }
                obj.RecordNoShow = RecordNo++;
            }
            return Json(DataSourceLoader.Load(fullinspectiondetails, loadOptions));
            //return DataSourceLoader.Load(fullinspectiondetails, loadOptions);
            //return Json(await DataSourceLoader.LoadAsync(fullinspectiondetails, loadOptions));
        }

        //[HttpPost]
        //public object Batch([FromBody] List<DataChange> changes)
        //{
        //    var a = ViewData["FullInspectionHeader"];
        //    var b = Request.Query["FullInspectionHeader"];

        //    //var FullInspectionHeader = Convert.ToInt64(changes.FirstOrDefault(p => p.Type == "header").Data.ToString());

        //    //FullInspectionHeader HeaderObj = new FullInspectionHeader(_uow);
        //    //var header = changes.FirstOrDefault(p => p.Type == "header");
        //    //JsonConvert.PopulateObject(header.Data.ToString(), HeaderObj);
        //    //HeaderObj.Save();

        //    foreach (var change in changes.Where(p => p.Type != "header"))
        //    {
        //        FullInspectionDetail obj;

        //        if (change.Type == "update" || change.Type == "remove")
        //        {
        //            var key = Convert.ToInt64(change.Key.ToString());
        //            obj = _uow.Query<FullInspectionDetail>().FirstOrDefault(o => o.Oid == key);
        //        }
        //        else
        //        {
        //            obj = new FullInspectionDetail(_uow);
        //            //obj.FullInspectionHeader = FullInspectionHeader;
        //        }

        //        if (change.Type == "insert" || change.Type == "update")
        //        {
        //            JsonConvert.PopulateObject(change.Data.ToString(), obj);

        //            //if (!TryValidateModel(obj))
        //            //    return BadRequest();
        //            //return BadRequest(ModelState.getfull .GetFullErrorMessage());

        //            if (change.Type == "insert")
        //            {
        //                obj.Save();
        //            }
        //            change.Data = obj;
        //        }
        //        else if (change.Type == "remove")
        //        {
        //            obj.Delete();
        //        }
        //    }
        //    _uow.CommitChangesAsync();
        //    return Ok();
        //    //return Ok(changes);
        //}

        [HttpPost]
        public async Task<IActionResult> Post(string values)
        {
            var model = new FullInspectionDetail(_uow);
            var viewModel = new FullInspectionDetailsViewModel();
            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);

            PopulateViewModel(viewModel, valuesDict);

            if (!TryValidateModel(viewModel))
                return BadRequest(GetFullErrorMessage(ModelState));

            await CopyToModelAsync(viewModel, model);

            await _uow.CommitChangesAsync();

            return Json(new { model.Oid });
        }

        [HttpPut]
        public async Task<IActionResult> Put(long key, string values)
        {
            var model = _uow.GetObjectByKey<FullInspectionDetail>(key, true);
            if (model == null)
                return StatusCode(409, "Object not found");

            var viewModel = new FullInspectionDetailsViewModel
            {
                Oid = model.Oid,
                FullInspectionHeader = model.FullInspectionHeader?.Oid,
                BoxNo = model.BoxNo,
                Size = model.Size,
                ProductQty = model.ProductQty,
                DefectiveGarmentQty = model.DefectiveGarmentQty,
                DefectiveGarmentPercent = model.DefectiveGarmentPercent,
                RejectStage = model.RejectStage,
                PODCode1 = model.PODCode1,
                PODNameEN1 = model.PODNameEN1,
                PODNameCN1 = model.PODNameCN1,
                PODNameBD1 = model.PODNameBD1,
                PODCode2 = model.PODCode2,
                PODNameEN2 = model.PODNameEN2,
                PODNameCN2 = model.PODNameCN2,
                PODNameBD2 = model.PODNameBD2,
                PODCode3 = model.PODCode3,
                PODNameEN3 = model.PODNameEN3,
                PODNameCN3 = model.PODNameCN3,
                PODNameBD3 = model.PODNameBD3,

                DefectCode1 = model.DefectCode1,
                DefectNameEN1 = model.DefectNameEN1,
                DefectNameCN1 = model.DefectNameCN1,
                DefectNameBD1 = model.DefectNameBD1,
                DefectCode2 = model.DefectCode2,
                DefectNameEN2 = model.DefectNameEN2,
                DefectNameCN2 = model.DefectNameCN2,
                DefectNameBD2 = model.DefectNameBD2,
                DefectCode3 = model.DefectCode3,
                DefectNameEN3 = model.DefectNameEN3,
                DefectNameCN3 = model.DefectNameCN3,
                DefectNameBD3 = model.DefectNameBD3,

                DefectQty = model.DefectQty,
                PODQty = model.PODQty,
                CheckPointSigned = model.CheckPointSigned,
                Repaired = model.Repaired,
                InspectionDate = model.InspectionDate,
                Inspector = model.Inspector,
                RejectQty = model.RejectQty
            };

            var valuesDict = JsonConvert.DeserializeObject<IDictionary>(values);
            PopulateViewModel(viewModel, valuesDict);

            if (!TryValidateModel(viewModel))
                return BadRequest(GetFullErrorMessage(ModelState));

            await CopyToModelAsync(viewModel, model);

            await _uow.CommitChangesAsync();

            return Ok();
        }

        [HttpDelete]
        public async Task Delete(long key)
        {
            var model = _uow.GetObjectByKey<FullInspectionDetail>(key, true);

            _uow.Delete(model);
            await _uow.CommitChangesAsync();
        }


        [HttpGet]
        public async Task<IActionResult> FullInspectionHeadersLookup(DataSourceLoadOptions loadOptions)
        {
            var lookup = from i in _uow.Query<FullInspectionHeader>()
                         orderby i.Line
                         select new
                         {
                             Value = i.Oid,
                             Text = i.Line
                         };
            return Json(await DataSourceLoader.LoadAsync(lookup, loadOptions));
        }

        const string OID = nameof(FullInspectionDetail.Oid);
        const string FULL_INSPECTION_HEADER = nameof(FullInspectionDetail.FullInspectionHeader);
        const string BOXNO = nameof(FullInspectionDetail.BoxNo);
        const string SIZE = nameof(FullInspectionDetail.Size);
        const string PRODUCT_QTY = nameof(FullInspectionDetail.ProductQty);
        const string DEFECTIVE_GARMENT_QTY = nameof(FullInspectionDetail.DefectiveGarmentQty);
        const string DEFECTIVE_GARMENT_PERCENT = nameof(FullInspectionDetail.DefectiveGarmentPercent);
        const string REJECT_STAGE = nameof(FullInspectionDetail.RejectStage);
        const string POD_Code1 = nameof(FullInspectionDetail.PODCode1);
        const string POD_NameEN1 = nameof(FullInspectionDetail.PODNameEN1);
        const string POD_NameCN1 = nameof(FullInspectionDetail.PODNameCN1);
        const string POD_NameBD1 = nameof(FullInspectionDetail.PODNameBD1);
        const string POD_Code2 = nameof(FullInspectionDetail.PODCode2);
        const string POD_NameEN2 = nameof(FullInspectionDetail.PODNameEN2);
        const string POD_NameCN2 = nameof(FullInspectionDetail.PODNameCN2);
        const string POD_NameBD2 = nameof(FullInspectionDetail.PODNameBD2);
        const string POD_Code3 = nameof(FullInspectionDetail.PODCode3);
        const string POD_NameEN3 = nameof(FullInspectionDetail.PODNameEN3);
        const string POD_NameCN3 = nameof(FullInspectionDetail.PODNameCN3);
        const string POD_NameBD3 = nameof(FullInspectionDetail.PODNameBD3);

        const string DEFECT_CODE1 = nameof(FullInspectionDetail.DefectCode1);
        const string DEFECT_NAMEEN1 = nameof(FullInspectionDetail.DefectNameEN1);
        const string DEFECT_NAMECN1 = nameof(FullInspectionDetail.DefectNameCN1);
        const string DEFECT_NAMEBD1 = nameof(FullInspectionDetail.DefectNameBD1);
        const string DEFECT_CODE2 = nameof(FullInspectionDetail.DefectCode2);
        const string DEFECT_NAMEEN2 = nameof(FullInspectionDetail.DefectNameEN2);
        const string DEFECT_NAMECN2 = nameof(FullInspectionDetail.DefectNameCN2);
        const string DEFECT_NAMEBD2 = nameof(FullInspectionDetail.DefectNameBD2);
        const string DEFECT_CODE3 = nameof(FullInspectionDetail.DefectCode3);
        const string DEFECT_NAMEEN3 = nameof(FullInspectionDetail.DefectNameEN3);
        const string DEFECT_NAMECN3 = nameof(FullInspectionDetail.DefectNameCN3);
        const string DEFECT_NAMEBD3 = nameof(FullInspectionDetail.DefectNameBD3);


        const string DEFECT_QTY = nameof(FullInspectionDetail.DefectQty);
        const string POD_QTY = nameof(FullInspectionDetail.PODQty);
        const string CHECKPOINTSIGNED = nameof(FullInspectionDetail.CheckPointSigned);
        const string REPAIRED = nameof(FullInspectionDetail.Repaired);
        const string INSPECTIONDATE = nameof(FullInspectionDetail.InspectionDate);
        const string INSPECTOR = nameof(FullInspectionDetail.Inspector);
        const string REJECTQTY = nameof(FullInspectionDetail.RejectQty);


        private void PopulateViewModel(FullInspectionDetailsViewModel viewModel, IDictionary values)
        {
            if (values.Contains(OID))
            {
                viewModel.Oid = Convert.ToInt64(values[OID]);
            }
            if (values.Contains(FULL_INSPECTION_HEADER))
            {
                viewModel.FullInspectionHeader = values[FULL_INSPECTION_HEADER] != null ? Convert.ToInt64(values[FULL_INSPECTION_HEADER]) : (long?)null;
            }
            if (values.Contains(BOXNO))
            {
                viewModel.BoxNo = Convert.ToInt32(values[BOXNO]);
            }
            if (values.Contains(SIZE))
            {
                viewModel.Size = Convert.ToString(values[SIZE]);
            }
            if (values.Contains(PRODUCT_QTY))
            {
                viewModel.ProductQty = Convert.ToInt32(values[PRODUCT_QTY]);
            }
            if (values.Contains(DEFECTIVE_GARMENT_QTY))
            {
                viewModel.DefectiveGarmentQty = Convert.ToInt32(values[DEFECTIVE_GARMENT_QTY]);
            }
            if (values.Contains(DEFECTIVE_GARMENT_PERCENT))
            {
                viewModel.DefectiveGarmentPercent = Convert.ToDecimal(values[DEFECTIVE_GARMENT_PERCENT], CultureInfo.InvariantCulture);
            }
            if (values.Contains(REJECT_STAGE))
            {
                viewModel.RejectStage = Convert.ToString(values[REJECT_STAGE]);
            }
            if (values.Contains(POD_Code1))
            {
                viewModel.PODCode1 = Convert.ToString(values[POD_Code1]);
            }
            if (values.Contains(POD_NameEN1))
            {
                viewModel.PODNameEN1 = Convert.ToString(values[POD_NameEN1]);
            }
            if (values.Contains(POD_NameCN1))
            {
                viewModel.PODNameCN1 = Convert.ToString(values[POD_NameCN1]);
            }
            if (values.Contains(POD_NameBD1))
            {
                viewModel.PODNameBD1 = Convert.ToString(values[POD_NameBD1]);
            }
            if (values.Contains(POD_Code2))
            {
                viewModel.PODCode2 = Convert.ToString(values[POD_Code2]);
            }
            if (values.Contains(POD_NameEN2))
            {
                viewModel.PODNameEN2 = Convert.ToString(values[POD_NameEN2]);
            }
            if (values.Contains(POD_NameCN2))
            {
                viewModel.PODNameCN2 = Convert.ToString(values[POD_NameCN2]);
            }
            if (values.Contains(POD_NameBD2))
            {
                viewModel.PODNameBD2 = Convert.ToString(values[POD_NameBD2]);
            }
            if (values.Contains(POD_Code3))
            {
                viewModel.PODCode3 = Convert.ToString(values[POD_Code3]);
            }
            if (values.Contains(POD_NameEN3))
            {
                viewModel.PODNameEN3 = Convert.ToString(values[POD_NameEN3]);
            }
            if (values.Contains(POD_NameCN3))
            {
                viewModel.PODNameCN3 = Convert.ToString(values[POD_NameCN3]);
            }
            if (values.Contains(POD_NameBD3))
            {
                viewModel.PODNameBD3 = Convert.ToString(values[POD_NameBD3]);
            }



            if (values.Contains(DEFECT_CODE1))
            {
                viewModel.DefectCode1 = Convert.ToString(values[DEFECT_CODE1]);
            }
            if (values.Contains(DEFECT_NAMEEN1))
            {
                viewModel.DefectNameEN1 = Convert.ToString(values[DEFECT_NAMEEN1]);
            }
            if (values.Contains(DEFECT_NAMECN1))
            {
                viewModel.DefectNameCN1 = Convert.ToString(values[DEFECT_NAMECN1]);
            }
            if (values.Contains(DEFECT_NAMEBD1))
            {
                viewModel.DefectNameBD1 = Convert.ToString(values[DEFECT_NAMEBD1]);
            }
            if (values.Contains(DEFECT_CODE2))
            {
                viewModel.DefectCode2 = Convert.ToString(values[DEFECT_CODE2]);
            }
            if (values.Contains(DEFECT_NAMEEN2))
            {
                viewModel.DefectNameEN2 = Convert.ToString(values[DEFECT_NAMEEN2]);
            }
            if (values.Contains(DEFECT_NAMECN2))
            {
                viewModel.DefectNameCN2 = Convert.ToString(values[DEFECT_NAMECN2]);
            }
            if (values.Contains(DEFECT_NAMEBD2))
            {
                viewModel.DefectNameBD2 = Convert.ToString(values[DEFECT_NAMEBD2]);
            }
            if (values.Contains(DEFECT_CODE3))
            {
                viewModel.DefectCode3 = Convert.ToString(values[DEFECT_CODE3]);
            }
            if (values.Contains(DEFECT_NAMEEN3))
            {
                viewModel.DefectNameEN3 = Convert.ToString(values[DEFECT_NAMEEN3]);
            }
            if (values.Contains(DEFECT_NAMECN3))
            {
                viewModel.DefectNameCN3 = Convert.ToString(values[DEFECT_NAMECN3]);
            }
            if (values.Contains(DEFECT_NAMEBD3))
            {
                viewModel.DefectNameBD3 = Convert.ToString(values[DEFECT_NAMEBD3]);
            }

            if (values.Contains(DEFECT_QTY))
            {
                if (values[DEFECT_QTY] == null) { viewModel.DefectQty = null; }
                else { viewModel.DefectQty = Convert.ToInt32(values[DEFECT_QTY]); };
            }
            if (values.Contains(POD_QTY))
            {
                if (values[POD_QTY] == null) { viewModel.PODQty = null; }
                else { viewModel.PODQty = Convert.ToInt32(values[POD_QTY]); };
            }
            if (values.Contains(CHECKPOINTSIGNED))
            {
                viewModel.CheckPointSigned = Convert.ToString(values[CHECKPOINTSIGNED]);
            }
            if (values.Contains(REPAIRED))
            {
                viewModel.Repaired = Convert.ToBoolean(values[REPAIRED]);
            }
            if (values.Contains(INSPECTIONDATE))
            {
                viewModel.InspectionDate = Convert.ToDateTime(values[INSPECTIONDATE]);
            }
            if (values.Contains(INSPECTOR))
            {
                viewModel.Inspector = Convert.ToString(values[INSPECTOR]);
            }
            if (values.Contains(REJECTQTY))
            {
                if (values[REJECTQTY] == null) { viewModel.RejectQty = null; }
                else { viewModel.RejectQty = Convert.ToInt32(values[REJECTQTY]); };
            }
        }

        private async Task CopyToModelAsync(FullInspectionDetailsViewModel viewModel, FullInspectionDetail model)
        {
            model.Oid = viewModel.Oid;
            model.FullInspectionHeader = await _uow.GetObjectByKeyAsync<FullInspectionHeader>(viewModel.FullInspectionHeader);
            model.BoxNo = viewModel.BoxNo;
            model.Size = viewModel.Size;
            model.ProductQty = viewModel.ProductQty;
            model.DefectiveGarmentQty = viewModel.DefectiveGarmentQty;
            model.DefectiveGarmentPercent = viewModel.DefectiveGarmentPercent;
            model.RejectStage = viewModel.RejectStage;
            model.PODCode1 = viewModel.PODCode1;
            model.PODNameEN1 = viewModel.PODNameEN1;
            model.PODNameCN1 = viewModel.PODNameCN1;
            model.PODNameBD1 = viewModel.PODNameBD1;
            model.PODCode2 = viewModel.PODCode2;
            model.PODNameEN2 = viewModel.PODNameEN2;
            model.PODNameCN2 = viewModel.PODNameCN2;
            model.PODNameBD2 = viewModel.PODNameBD2;
            model.PODCode3 = viewModel.PODCode3;
            model.PODNameEN3 = viewModel.PODNameEN3;
            model.PODNameCN3 = viewModel.PODNameCN3;
            model.PODNameBD3 = viewModel.PODNameBD3;

            model.DefectCode1 = viewModel.DefectCode1;
            model.DefectNameEN1 = viewModel.DefectNameEN1;
            model.DefectNameCN1 = viewModel.DefectNameCN1;
            model.DefectNameBD1 = viewModel.DefectNameBD1;
            model.DefectCode2 = viewModel.DefectCode2;
            model.DefectNameEN2 = viewModel.DefectNameEN2;
            model.DefectNameCN2 = viewModel.DefectNameCN2;
            model.DefectNameBD2 = viewModel.DefectNameBD2;
            model.DefectCode3 = viewModel.DefectCode3;
            model.DefectNameEN3 = viewModel.DefectNameEN3;
            model.DefectNameCN3 = viewModel.DefectNameCN3;
            model.DefectNameBD3 = viewModel.DefectNameBD3;

            model.DefectQty = viewModel.DefectQty;
            model.PODQty = viewModel.PODQty;
            model.CheckPointSigned = viewModel.CheckPointSigned;
            model.Repaired = viewModel.Repaired;
            model.InspectionDate = viewModel.InspectionDate;
            model.Inspector = viewModel.Inspector;
            model.RejectQty = viewModel.RejectQty;
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
    //public class DataChange
    //{
    //    [JsonProperty("key")]
    //    public object Key { get; set; }

    //    [JsonProperty("type")]
    //    public string Type { get; set; }

    //    [JsonProperty("data")]
    //    public object Data { get; set; }
    //}
}