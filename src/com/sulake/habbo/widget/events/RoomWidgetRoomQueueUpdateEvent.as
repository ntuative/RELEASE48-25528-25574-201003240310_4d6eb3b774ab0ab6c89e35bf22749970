package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_472:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_301:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_889:int;
      
      private var var_265:Boolean;
      
      private var var_2003:Boolean;
      
      private var var_1432:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_889 = param2;
         var_2003 = param3;
         var_265 = param4;
         var_1432 = param5;
      }
      
      public function get position() : int
      {
         return var_889;
      }
      
      public function get isActive() : Boolean
      {
         return var_265;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1432;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2003;
      }
   }
}
