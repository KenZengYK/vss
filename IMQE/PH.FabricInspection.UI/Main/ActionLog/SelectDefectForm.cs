using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Linq;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.Platform.BO;
using PH.Platform.Misc.BO;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Main
{
    public partial class SelectDefectForm : DevExpress.XtraEditors.XtraForm
    {
        public SelectDefectForm()
        {
            InitializeComponent();

            this.PrepareData();
        }

        void PrepareData()
        {
            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            this.bindingSource.DataSource = db.PHQCDefects.Select(p => new TempDefectClass
            {
                PHDefectCode = p.PHDefectCode,
                DefectEnglishName = p.DefectEnglishName,
                DefectChineseName = p.DefectChineseName,
                DefectEnglishRemark = p.DefectEnglishRemark,
                DefectChindeseRemark = p.DefectChineseRemark
            });
        }

        public string DefectCode
        {
            get
            {
                return (this.bindingSource.Current as TempDefectClass).PHDefectCode;
            }
        }

        public string DefectEnglishName
        {
            get
            {
                return (this.bindingSource.Current as TempDefectClass).DefectEnglishName;
            }
        }

        public string DefectChineseName
        {
            get
            {
                return (this.bindingSource.Current as TempDefectClass).DefectChineseName;
            }
        }

        public string DefectEnglishRemark
        {
            get
            {
                return (this.bindingSource.Current as TempDefectClass).DefectEnglishRemark;
            }
        }

        public string DefectChindeseRemark
        {
            get
            {
                return (this.bindingSource.Current as TempDefectClass).DefectChindeseRemark;
            }
        }

    }

    class TempDefectClass
    {
        public string PHDefectCode { get; set; }
        public string DefectEnglishName { get; set; }
        public string DefectChineseName { get; set; }
        public string DefectEnglishRemark { get; set; }
        public string DefectChindeseRemark { get; set; }
    }
}