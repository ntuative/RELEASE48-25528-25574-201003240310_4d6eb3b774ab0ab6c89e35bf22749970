package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogLocalizationData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class CatalogPageMessageParser implements IMessageParser
   {
       
      
      private var _pageId:int;
      
      private var var_890:String;
      
      private var _localization:CatalogLocalizationData;
      
      private var var_567:Array;
      
      public function CatalogPageMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _pageId = param1.readInteger();
         var_890 = param1.readString();
         _localization = new CatalogLocalizationData(param1);
         var_567 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_567.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         _pageId = -1;
         var_890 = "";
         _localization = null;
         var_567 = [];
         return true;
      }
      
      public function get pageId() : int
      {
         return _pageId;
      }
      
      public function get layoutCode() : String
      {
         return var_890;
      }
      
      public function get localization() : CatalogLocalizationData
      {
         return _localization;
      }
      
      public function get offers() : Array
      {
         return var_567;
      }
   }
}