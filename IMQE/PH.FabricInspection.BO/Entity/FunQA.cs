using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DevExpress.XtraGrid.Columns;

namespace PH.FabricInspection.BO
{
   public class FunQA
    {
       public static string GetGridViewFilterCondition(DevExpress.XtraGrid.Views.Grid.GridView GridView)
       {
           string FilterText = !string.IsNullOrEmpty(GridView.FilterPanelText) ? GridView.FilterPanelText : string.Empty;
           if (!string.IsNullOrEmpty(FilterText))
           {
               foreach (GridColumn column in GridView.Columns)
               {
                  FilterText = FilterText.Replace(column.Caption, column.FieldName);
               }
               return FilterText;
               
           }
          
           return string.Empty;           
       }
    }
}
