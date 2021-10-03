package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1184:int;
      
      private var var_1839:int = -1;
      
      private var var_367:int;
      
      private var var_1838:int;
      
      private var var_1837:int;
      
      private var _offerId:int;
      
      private var var_1183:int;
      
      private var var_1840:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1840 = param2;
         var_1837 = param3;
         var_1184 = param4;
         var_367 = param5;
         var_1839 = param6;
         var_1838 = param7;
         var_1183 = param8;
      }
      
      public function get status() : int
      {
         return var_367;
      }
      
      public function get price() : int
      {
         return var_1184;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1839;
      }
      
      public function get offerCount() : int
      {
         return var_1183;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1837;
      }
      
      public function get averagePrice() : int
      {
         return var_1838;
      }
      
      public function get furniId() : int
      {
         return var_1840;
      }
   }
}
