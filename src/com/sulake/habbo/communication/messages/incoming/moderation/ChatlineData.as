package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1477:String;
      
      private var var_1690:int;
      
      private var var_1693:int;
      
      private var var_1691:int;
      
      private var var_1692:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1690 = param1.readInteger();
         var_1691 = param1.readInteger();
         var_1693 = param1.readInteger();
         var_1692 = param1.readString();
         var_1477 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1477;
      }
      
      public function get hour() : int
      {
         return var_1690;
      }
      
      public function get minute() : int
      {
         return var_1691;
      }
      
      public function get chatterName() : String
      {
         return var_1692;
      }
      
      public function get chatterId() : int
      {
         return var_1693;
      }
   }
}
