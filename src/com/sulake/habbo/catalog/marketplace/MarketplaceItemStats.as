package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1579:Array;
      
      private var var_1838:int;
      
      private var var_2035:int;
      
      private var var_2032:int;
      
      private var var_2034:int;
      
      private var _dayOffsets:Array;
      
      private var var_2033:int;
      
      private var var_1580:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1579 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2035;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1580 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1838 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2032;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2034;
      }
      
      public function get offerCount() : int
      {
         return var_2033;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2033 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1580;
      }
      
      public function get averagePrice() : int
      {
         return var_1838;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2034 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2032 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2035 = param1;
      }
   }
}
