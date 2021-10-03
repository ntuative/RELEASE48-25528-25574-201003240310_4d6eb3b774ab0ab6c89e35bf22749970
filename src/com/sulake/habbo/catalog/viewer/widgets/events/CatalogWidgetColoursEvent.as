package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1334:Array;
      
      private var var_1906:String;
      
      private var var_1905:String;
      
      private var var_1907:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1334 = param1;
         var_1906 = param2;
         var_1905 = param3;
         var_1907 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1334;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1906;
      }
      
      public function get colourAssetName() : String
      {
         return var_1905;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1907;
      }
   }
}
