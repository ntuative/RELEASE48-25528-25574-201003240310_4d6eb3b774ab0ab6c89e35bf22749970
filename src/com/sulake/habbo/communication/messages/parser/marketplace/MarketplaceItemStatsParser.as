package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1579:Array;
      
      private var var_1838:int;
      
      private var var_2035:int;
      
      private var var_2034:int;
      
      private var var_2032:int;
      
      private var _dayOffsets:Array;
      
      private var var_2033:int;
      
      private var var_1580:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1579;
      }
      
      public function get furniTypeId() : int
      {
         return var_2035;
      }
      
      public function get historyLength() : int
      {
         return var_2032;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2034;
      }
      
      public function get offerCount() : int
      {
         return var_2033;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1580;
      }
      
      public function get averagePrice() : int
      {
         return var_1838;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1838 = param1.readInteger();
         var_2033 = param1.readInteger();
         var_2032 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1579 = [];
         var_1580 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1579.push(param1.readInteger());
            var_1580.push(param1.readInteger());
            _loc3_++;
         }
         var_2034 = param1.readInteger();
         var_2035 = param1.readInteger();
         return true;
      }
   }
}
