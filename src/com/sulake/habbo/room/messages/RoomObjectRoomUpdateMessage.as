package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectRoomUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_533:String = "RORUM_ROOM_FLOOR_UPDATE";
      
      public static const const_634:String = "RORUM_ROOM_LANDSCAPE_UPDATE";
      
      public static const const_573:String = "RORUM_ROOM_WALL_UPDATE";
       
      
      private var _type:String = "";
      
      private var var_163:String = "";
      
      public function RoomObjectRoomUpdateMessage(param1:String, param2:String)
      {
         super(null,null);
         _type = param1;
         var_163 = param2;
      }
      
      public function get value() : String
      {
         return var_163;
      }
      
      public function get type() : String
      {
         return _type;
      }
   }
}
