package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1646:String;
      
      private var var_427:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_427 = param1;
         var_1646 = param2;
      }
      
      public function get race() : String
      {
         return var_1646;
      }
      
      public function get figure() : String
      {
         return var_427;
      }
   }
}
