package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1004:int;
      
      private var var_1224:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1004 = param1;
         var_1224 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1004;
      }
      
      public function get itemName() : String
      {
         return var_1224;
      }
   }
}
