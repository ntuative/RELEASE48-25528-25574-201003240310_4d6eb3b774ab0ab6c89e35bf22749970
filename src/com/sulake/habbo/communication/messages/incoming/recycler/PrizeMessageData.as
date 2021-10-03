package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1548:int;
      
      private var var_2113:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_2113 = param1.readString();
         var_1548 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1548;
      }
      
      public function get productItemType() : String
      {
         return var_2113;
      }
   }
}
