package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_129:int = 0;
      
      public static const const_122:int = 1;
      
      public static const const_101:int = 2;
      
      public static const const_691:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1307:int = 0;
      
      private var var_1850:String = "";
      
      private var var_191:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_191 = param2;
         var_1307 = param3;
         var_1850 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1850;
      }
      
      public function get chatType() : int
      {
         return var_1307;
      }
      
      public function get text() : String
      {
         return var_191;
      }
   }
}
