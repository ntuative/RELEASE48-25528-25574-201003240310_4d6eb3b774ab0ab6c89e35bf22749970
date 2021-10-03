package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_433:int;
      
      private var var_163:String;
      
      private var var_191:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_163 = param1;
         var_191 = param2;
         var_433 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_191.text = var_163.substring(0,param1) + "...";
         return var_191.textWidth > var_433;
      }
   }
}
