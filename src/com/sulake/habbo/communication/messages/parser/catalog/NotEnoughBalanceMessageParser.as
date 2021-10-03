package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1130:int = 0;
      
      private var _notEnoughCredits:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughPixels() : int
      {
         return var_1130;
      }
      
      public function flush() : Boolean
      {
         _notEnoughCredits = 0;
         var_1130 = 0;
         return true;
      }
      
      public function get notEnoughCredits() : int
      {
         return _notEnoughCredits;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _notEnoughCredits = param1.readInteger();
         var_1130 = param1.readInteger();
         return true;
      }
   }
}
