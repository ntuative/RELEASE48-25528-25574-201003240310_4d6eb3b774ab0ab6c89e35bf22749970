package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_357:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_609:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_708:String;
      
      private var var_153:int;
      
      private var var_191:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_153 = param2;
         var_191 = param3;
         var_708 = param4;
      }
      
      public function get objectId() : int
      {
         return var_153;
      }
      
      public function get text() : String
      {
         return var_191;
      }
      
      public function get colorHex() : String
      {
         return var_708;
      }
   }
}
