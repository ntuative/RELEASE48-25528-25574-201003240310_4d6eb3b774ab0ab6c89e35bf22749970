package com.sulake.habbo.communication.messages.outgoing.room.action
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class KickBotMessageComposer implements IMessageComposer
   {
       
      
      private var var_2148:int;
      
      public function KickBotMessageComposer(param1:int)
      {
         super();
         var_2148 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2148];
      }
      
      public function dispose() : void
      {
      }
   }
}
