package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1933:int;
      
      private var var_1540:int;
      
      private var var_1934:int;
      
      private var var_1931:int;
      
      private var var_1932:int;
      
      private var var_1539:int;
      
      private var var_1930:int;
      
      private var var_1337:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1933;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1540;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1930;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1931;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1932;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1539;
      }
      
      public function get commission() : int
      {
         return var_1934;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1337 = param1.readBoolean();
         var_1934 = param1.readInteger();
         var_1540 = param1.readInteger();
         var_1539 = param1.readInteger();
         var_1931 = param1.readInteger();
         var_1933 = param1.readInteger();
         var_1932 = param1.readInteger();
         var_1930 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1337;
      }
   }
}
