using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using PH.Platform.BO;
using PH.MIDc.BO;
using System.Windows.Forms;

namespace PH.MIDc.UI
{
    /// <summary>
    /// 成品(款)海关申报要素帮助类 由David加入 2018-05-25
    /// </summary>
    public class FGStyleHSCodeHelper
    {
        /// <summary>
        /// 导入一个成品(款)的海关申报要素
        /// </summary>
        /// <param name="ADB">当前调用页面上的MIDcDataContext实例</param>
        /// <param name="AStyleNo">款号</param>
        /// <param name="AHSCode">海关编号</param>
        public static void Import(MIDcDataContext ADB, string AStyleNo, string AHSCode)
        {
            //從HSCode定義中導入申報信息
            CustomMaterial customMaterial = ADB.CustomMaterials.Where(p => p.MidcHSCode == AHSCode.Trim()).FirstOrDefault();
            if (customMaterial == null) return;

            //先清除現有的申報信息
            var lists = ADB.CustomMaterialDeclare_FGs.Where(p => p.StyleNo == AStyleNo && p.MidcHSCode == AHSCode);
            ADB.CustomMaterialDeclare_FGs.DeleteAllOnSubmit(lists);
            ADB.SubmitChanges();

            foreach (var o in customMaterial.CustomMaterialElements)
            {
                CustomMaterialDeclare_FG obj = new CustomMaterialDeclare_FG();
                obj.StyleNo = AStyleNo;
                obj.MidcHSCode = AHSCode;
                obj.CustomNo = o.CustomNo;
                obj.HSCodeSeq = o.HSCodeSeq;
                obj.ElementNo = o.ElementNo;
                obj.SortId = o.SortId;
                obj.Remark = o.Remark;
                string Sql = "";

                if (obj.ElementNo == "000001") //處理成份含量
                {
                    obj.Remark = GetCompositionRemark(AStyleNo);
                }
                else if (obj.ElementNo == "000003") //處理品牌 
                {
                    //取品牌的Remark
                    //select left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=款號的最后兩個位
                    //Sql = string.Format("select top 1 left(prmd15,4) as brand from as400db..inp15 where prmt15='SDIV' and psar15=right('{0}', 2)", StyleNo.Trim());
                    //Sql = string.Format("select left(a.prmd15,4) as brand from as400db..inp15 a,as400db..inp35 b where prmt15='SDIV' and psar15=sdiv35 and pnum35='{0}'", StyleNo.Trim());

                    Sql = string.Format("select ltrim(rtrim(substring(a.prmd15, charindex(' ', a.prmd15) + 1, len(a.prmd15)))) as brand from as400db..inp15 a,as400db..inp35 b where prmt15='SDIV' and psar15=sdiv35 and pnum35='{0}'", AStyleNo.Trim());
                    obj.Remark = ADB.ExecuteQuery<string>(Sql).FirstOrDefault();
                    string BrandCN = ADB.Brands.Where(dr => dr.BrandName_EN == obj.Remark && !string.IsNullOrEmpty(obj.Remark)).Select(dr => dr.BrandName_CN).FirstOrDefault();
                    if (!string.IsNullOrEmpty(BrandCN)) 
                    {
                        obj.Remark = obj.Remark + " | " + BrandCN;
                    }
                }
                else if (obj.ElementNo == "000020") //處理貨號
                {
                    //取貨號的Remark
                    //--select top 1 * from as400db..inp40 where tref40=款號 and usgc40='A'
                    //Sql = string.Format("select top 1 TLIN40 from as400db..inp40 where tref40='{0}' and usgc40='A'", StyleNo);

                    //為處理有些款號有多個客款的情況，改用存儲過程實現，多個款號時，用 / 拼接  2018-05-07
                    Sql = string.Format("exec dbo.Sp_GetArtNoReamrk_FG '{0}'", AStyleNo.Trim());
                    obj.Remark = ADB.ExecuteQuery<string>(Sql).FirstOrDefault();
                }

                ADB.CustomMaterialDeclare_FGs.InsertOnSubmit(obj);
            }
            ADB.SubmitChanges();
        }

        /// <summary>
        /// 导入所有海关申报项为空(即新款)的成品的海关申报要素
        /// </summary>
        /// <param name="ADB">当前调用页面上的MIDcDataContext实例</param>
        /// <param name="AStyleNo">款号</param>
        /// <param name="AHSCode">海关编号</param>
        public static void ImportAllStyleNoCustomDeclare(MIDcDataContext ADB)
        {
            //用于取一段時間之內款號
            //實現一個功能，可以將新款，即沒有海關申報要素的款生成資料

            //select a.TREF40 as StyleNo, a.TLIN40 as HSCode, b.MaterialName as HSNameTW, b.MaterialNameCN as HSNameCN, b.MaterialNameEN as HSNameEN
            //from [AS400DB].dbo.INP40 as a
            //left join [PH.MIDc].dbo.CustomMaterial as b on a.TLIN40 = b.MIDcHSCode
            //left join [AS400DB].dbo.INP35 as c on c.CONO35 = a.CONO40 and c.PNUM35 = a.TREF40
            //where a.USGC40 = 'H' and c.ESDT35 >= 1180501 and c.ESDT35 <= 1180531

            //string Sql = "select TREF40 as StyleNo, TLIN40 as HSCode from [AS400DB]..INP40 where USGC40 = 'H'";

            string Sql = @"select a.TREF40 as StyleNo, a.TLIN40 as HSCode
from [AS400DB].dbo.INP40 as a
left join [PH.MIDc].dbo.CustomMaterial as b on a.TLIN40 = b.MIDcHSCode
where a.USGC40 = 'H' and not exists (select 1 from CustomMaterialDeclare_FG as x where x.StyleNo = a.TREF40 and x.MIDcHSCode = a.TLIN40)";


            //DataTable dt = ADB.ExecuteDataTable(Sql, "");

            //string Sql = string.Format("exec dbo.sp_GetStyleListNoCustomDeclare '{0}', '{1}'", "", "");
            ADB.CommandTimeout = 8000;
            //ADB.Connection.ConnectionTimeout
            DataTable dt = ADB.ExecuteDataTable(Sql, "");

            int Count = dt.Rows.Count;
            if (Count == 0)
            {
                MessageBox.Show("沒有款需要生成", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            string HintStr = string.Format("共有{0}款需要生成海關申報信息，是否繼續?", dt.Rows.Count.ToString());
            if (MessageBox.Show(HintStr, "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Import(ADB, dt.Rows[i]["StyleNo"].ToString(), dt.Rows[i]["HSCode"].ToString());
            }

            MessageBox.Show("生成成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }


        /// <summary>
        /// 得到成份的Remark
        /// </summary>
        /// <param name="AStyleNo">款號</param>
        /// <returns></returns>
        public static string GetCompositionRemark(string AStyleNo)
        {
            //select top 10 * from [AS400DB].dbo.qtp60 where styl60='106212AMB      '
            string Sql = string.Format("select STYL60 as StyleNo, CMCD60 as Code, CMPP60 as Value from [AS400DB].dbo.QTP60 where styl60='{0}' order by Value desc", AStyleNo);
            //DataTable dt = db.ExecuteDataTable(Sql, "QTP60");
            DataTable dt = SqlDataHelper.GetDataTable(Sql);

            List<FGComposition> lists = new List<FGComposition>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                lists.Add(new FGComposition
                {
                    StyleNo = dt.Rows[i]["StyleNo"].ToString(),
                    Code = dt.Rows[i]["Code"].ToString(),
                    Value = string.IsNullOrEmpty(dt.Rows[i]["Value"].ToString()) ? 0 : Convert.ToDecimal(dt.Rows[i]["Value"])
                });
            }

            string Str = "";
            foreach (var c in lists.Where(p => p.Value > 0))
            {
                //Str += c.NameCN + "/" + Math.Round(c.Value, 2).ToString() + "% ";
                //Str += c.NameCN + Math.Round(c.Value, 2).ToString() + "% ";
                Str += c.NameCN + Math.Round(c.Value, 2).ToString("##0.##") + "% ";
            }

            return Str;
        }
    }
}
