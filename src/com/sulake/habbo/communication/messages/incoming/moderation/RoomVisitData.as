package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_644:String;
      
      private var var_1740:int;
      
      private var var_1582:Boolean;
      
      private var _roomId:int;
      
      private var var_1739:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1582 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_644 = param1.readString();
         var_1739 = param1.readInteger();
         var_1740 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1582;
      }
      
      public function get roomName() : String
      {
         return var_644;
      }
      
      public function get enterMinute() : int
      {
         return var_1740;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1739;
      }
   }
}
