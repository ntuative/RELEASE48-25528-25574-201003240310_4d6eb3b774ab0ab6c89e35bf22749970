package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_1902:int;
      
      private var var_1901:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_1902 = param1;
         var_1901 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1902,var_1901];
      }
   }
}
