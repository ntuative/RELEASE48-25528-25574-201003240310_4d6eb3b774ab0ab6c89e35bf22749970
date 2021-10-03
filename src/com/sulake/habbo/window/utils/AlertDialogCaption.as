package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_336:Boolean;
      
      private var var_191:String;
      
      private var var_1144:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_191 = param1;
         var_1144 = param2;
         var_336 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1144;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_336 = param1;
      }
      
      public function get text() : String
      {
         return var_191;
      }
      
      public function get visible() : Boolean
      {
         return var_336;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1144 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_191 = param1;
      }
   }
}
