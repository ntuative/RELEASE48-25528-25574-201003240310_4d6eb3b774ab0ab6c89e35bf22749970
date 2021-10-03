package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1867:String;
      
      private var var_1308:String;
      
      private var var_1866:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1866 = param1;
         var_1308 = param2;
         var_1867 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1866,var_1308,var_1867];
      }
      
      public function dispose() : void
      {
      }
   }
}
