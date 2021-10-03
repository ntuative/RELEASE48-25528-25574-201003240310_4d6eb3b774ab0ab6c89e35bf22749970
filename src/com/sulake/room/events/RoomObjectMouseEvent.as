package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1624:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1581:String = "ROE_MOUSE_ENTER";
      
      public static const const_465:String = "ROE_MOUSE_MOVE";
      
      public static const const_1516:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_197:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1667:Boolean;
      
      private var var_1669:Boolean;
      
      private var var_1666:Boolean;
      
      private var var_1661:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1666 = param4;
         var_1661 = param5;
         var_1667 = param6;
         var_1669 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1669;
      }
      
      public function get altKey() : Boolean
      {
         return var_1666;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1661;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1667;
      }
   }
}
