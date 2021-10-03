package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1160:int;
      
      private var var_1091:String;
      
      private var var_733:Array;
      
      private var var_969:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_733.slice();
      }
      
      public function flush() : Boolean
      {
         var_1091 = "";
         var_969 = [];
         var_733 = [];
         var_1160 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1160;
      }
      
      public function get question() : String
      {
         return var_1091;
      }
      
      public function get choices() : Array
      {
         return var_969.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1091 = param1.readString();
         var_969 = [];
         var_733 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_969.push(param1.readString());
            var_733.push(param1.readInteger());
            _loc3_++;
         }
         var_1160 = param1.readInteger();
         return true;
      }
   }
}
