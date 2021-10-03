package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_982:String = "price_type_none";
      
      public static const const_471:String = "pricing_model_multi";
      
      public static const const_388:String = "price_type_credits";
      
      public static const const_374:String = "price_type_credits_and_pixels";
      
      public static const const_379:String = "pricing_model_bundle";
      
      public static const const_435:String = "pricing_model_single";
      
      public static const const_699:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1381:String = "pricing_model_unknown";
      
      public static const const_398:String = "price_type_pixels";
       
      
      private var var_893:int;
      
      private var _offerId:int;
      
      private var var_894:int;
      
      private var var_418:String;
      
      private var var_606:String;
      
      private var var_2126:int;
      
      private var var_565:ICatalogPage;
      
      private var var_1322:String;
      
      private var var_419:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1322 = param1.localizationId;
         var_893 = param1.priceInCredits;
         var_894 = param1.priceInPixels;
         var_565 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_418;
      }
      
      public function get page() : ICatalogPage
      {
         return var_565;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2126 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_419;
      }
      
      public function get localizationId() : String
      {
         return var_1322;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_894;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1322 = "";
         var_893 = 0;
         var_894 = 0;
         var_565 = null;
         if(var_419 != null)
         {
            var_419.dispose();
            var_419 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_606;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2126;
      }
      
      public function get priceInCredits() : int
      {
         return var_893;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_418 = const_435;
            }
            else
            {
               var_418 = const_471;
            }
         }
         else if(param1.length > 1)
         {
            var_418 = const_379;
         }
         else
         {
            var_418 = const_1381;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_418)
         {
            case const_435:
               var_419 = new SingleProductContainer(this,param1);
               break;
            case const_471:
               var_419 = new MultiProductContainer(this,param1);
               break;
            case const_379:
               var_419 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_418);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_893 > 0 && var_894 > 0)
         {
            var_606 = const_374;
         }
         else if(var_893 > 0)
         {
            var_606 = const_388;
         }
         else if(var_894 > 0)
         {
            var_606 = const_398;
         }
         else
         {
            var_606 = const_982;
         }
      }
   }
}
