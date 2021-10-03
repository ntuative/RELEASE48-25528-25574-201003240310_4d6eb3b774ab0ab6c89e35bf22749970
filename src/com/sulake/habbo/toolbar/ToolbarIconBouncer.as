package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2101:Number;
      
      private var var_604:Number = 0;
      
      private var var_2100:Number;
      
      private var var_603:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2101 = param1;
         var_2100 = param2;
      }
      
      public function update() : void
      {
         var_603 += var_2100;
         var_604 += var_603;
         if(var_604 > 0)
         {
            var_604 = 0;
            var_603 = var_2101 * -1 * var_603;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_603 = param1;
         var_604 = 0;
      }
      
      public function get location() : Number
      {
         return var_604;
      }
   }
}
