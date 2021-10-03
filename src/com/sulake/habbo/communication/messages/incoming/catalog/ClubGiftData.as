package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2061:int;
      
      private var var_2060:Boolean;
      
      private var _offerId:int;
      
      private var var_1709:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2060 = param1.readBoolean();
         var_2061 = param1.readInteger();
         var_1709 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1709;
      }
      
      public function get monthsRequired() : int
      {
         return var_2061;
      }
      
      public function get isVip() : Boolean
      {
         return var_2060;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
