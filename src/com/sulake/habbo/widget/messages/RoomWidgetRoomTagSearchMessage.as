package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_530:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1756:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_530);
         var_1756 = param1;
      }
      
      public function get tag() : String
      {
         return var_1756;
      }
   }
}
