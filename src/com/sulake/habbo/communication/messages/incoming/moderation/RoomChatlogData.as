package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_644:String;
      
      private var var_1581:Array;
      
      private var var_1582:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1581 = new Array();
         super();
         var_1582 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_644 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1581.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1582 + ", " + _roomId + ", " + var_644 + ", " + chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return var_1582;
      }
      
      public function get roomName() : String
      {
         return var_644;
      }
      
      public function get chatlog() : Array
      {
         return var_1581;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
