using System;
using System.Drawing;
using System.ComponentModel;

namespace PH.FabricInspection.UI
{
	/// <summary>
	/// Implementaci車n de un bot車n de estado (StateButton)
	/// que se mantiene pulsado hasta que se vuelve a pulsar.
	/// </summary>
   //[ToolboxItem(true)]
   //[ToolboxBitmap(typeof(StateButton), "StateButton.bmp")]
   public class StateButton : DevExpress.XtraEditors.SimpleButton
   {
     private bool down = false;

     /// <summary>
     /// Constructor por defecto de un StateButton
     /// </summary>
     public StateButton() : base()
     {
     }

     /// <summary>
     /// Estado actual del bot車n.
     /// </summary>
     //[DefaultValue(false), Category("Behavior"), Description("Indica si el bot車n esta pulsado o no.")]
     public bool Down
     {
       get
       {
         return down;
       }
       set
       {
         down = value;
         //UpdatePressedState(down);
       }
     }
 
   }
}