package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1697:int;
      
      private var var_1063:int;
      
      private var var_1698:int;
      
      private var var_1406:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1406 = param1.readInteger();
         var_1698 = param1.readInteger();
         var_1063 = param1.readInteger();
         var_1697 = param1.readInteger();
         var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1406);
      }
      
      public function get chatRecordId() : int
      {
         return var_1697;
      }
      
      public function get reportedUserId() : int
      {
         return var_1063;
      }
      
      public function get callerUserId() : int
      {
         return var_1698;
      }
      
      public function get callId() : int
      {
         return var_1406;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_111;
      }
   }
}
