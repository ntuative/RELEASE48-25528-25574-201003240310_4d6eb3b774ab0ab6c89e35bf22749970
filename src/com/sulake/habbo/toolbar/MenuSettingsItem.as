package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1687:Array;
      
      private var var_1689:String;
      
      private var var_1688:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1689 = param1;
         var_1687 = param2;
         var_1688 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1689;
      }
      
      public function get yieldList() : Array
      {
         return var_1687;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1688;
      }
   }
}
