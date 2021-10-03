package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_427:String;
      
      private var var_1644:int;
      
      private var var_1856:String;
      
      private var var_1022:int;
      
      private var var_1117:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1117;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1117 = param1.readInteger();
         var_1856 = param1.readString();
         var_1644 = param1.readInteger();
         var_427 = param1.readString();
         var_1022 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1856;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_427;
      }
      
      public function get petType() : int
      {
         return var_1022;
      }
      
      public function get level() : int
      {
         return var_1644;
      }
   }
}
