package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1526:int = 2;
      
      public static const const_1443:int = 1;
      
      public static const const_1445:int = 0;
       
      
      private var var_1184:int;
      
      private var var_367:int;
      
      private var var_2365:int;
      
      private var _offerId:int;
      
      private var var_1837:int;
      
      private var var_1840:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1840 = param2;
         var_1837 = param3;
         var_1184 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1840;
      }
      
      public function get furniType() : int
      {
         return var_1837;
      }
      
      public function get price() : int
      {
         return var_1184;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
