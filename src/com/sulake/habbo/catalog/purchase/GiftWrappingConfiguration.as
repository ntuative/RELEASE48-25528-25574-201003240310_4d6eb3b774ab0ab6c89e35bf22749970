package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_550:Array;
      
      private var var_1184:int;
      
      private var var_1404:Array;
      
      private var var_549:Array;
      
      private var var_1337:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1337 = _loc2_.isWrappingEnabled;
         var_1184 = _loc2_.wrappingPrice;
         var_1404 = _loc2_.stuffTypes;
         var_549 = _loc2_.boxTypes;
         var_550 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_550;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1404;
      }
      
      public function get price() : int
      {
         return var_1184;
      }
      
      public function get boxTypes() : Array
      {
         return var_549;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1337;
      }
   }
}
