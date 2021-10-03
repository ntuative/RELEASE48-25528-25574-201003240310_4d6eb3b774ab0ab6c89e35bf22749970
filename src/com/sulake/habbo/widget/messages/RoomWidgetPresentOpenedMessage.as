package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1340:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1365:int;
      
      private var var_1004:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1004 = param2;
         var_1365 = param3;
      }
      
      public function get classId() : int
      {
         return var_1365;
      }
      
      public function get itemType() : String
      {
         return var_1004;
      }
   }
}
