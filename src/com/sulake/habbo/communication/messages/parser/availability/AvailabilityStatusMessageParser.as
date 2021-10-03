package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_968:Boolean;
      
      private var var_1267:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_968 = param1.readInteger() > 0;
         var_1267 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_968;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1267;
      }
      
      public function flush() : Boolean
      {
         var_968 = false;
         var_1267 = false;
         return true;
      }
   }
}
