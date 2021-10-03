package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_273:String = "RWFAM_MOVE";
      
      public static const const_601:String = "RWFUAM_ROTATE";
      
      public static const const_576:String = "RWFAM_PICKUP";
       
      
      private var var_1840:int = 0;
      
      private var var_1879:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1840 = param2;
         var_1879 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1840;
      }
      
      public function get furniCategory() : int
      {
         return var_1879;
      }
   }
}
