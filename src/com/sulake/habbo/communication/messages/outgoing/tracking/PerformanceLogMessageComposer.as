package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_989:int = 0;
      
      private var var_1238:int = 0;
      
      private var var_1857:String = "";
      
      private var var_990:int = 0;
      
      private var var_1966:String = "";
      
      private var var_1968:int = 0;
      
      private var var_1463:String = "";
      
      private var var_1969:int = 0;
      
      private var var_1967:int = 0;
      
      private var var_1861:String = "";
      
      private var var_1970:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1969 = param1;
         var_1861 = param2;
         var_1463 = param3;
         var_1857 = param4;
         var_1966 = param5;
         if(param6)
         {
            var_1238 = 1;
         }
         else
         {
            var_1238 = 0;
         }
         var_1968 = param7;
         var_1967 = param8;
         var_990 = param9;
         var_1970 = param10;
         var_989 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1969,var_1861,var_1463,var_1857,var_1966,var_1238,var_1968,var_1967,var_990,var_1970,var_989];
      }
      
      public function dispose() : void
      {
      }
   }
}
