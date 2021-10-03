package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_413:int;
      
      private var var_1293:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_413;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_413 = param1.readInteger();
         var_1293 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_413 = 0;
         var_1293 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1293;
      }
   }
}
