package com.sulake.habbo.widget.events
{
   public class RoomWidgetDanceUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_742:String = "RWUE_DANCE";
       
      
      private var var_78:int;
      
      public function RoomWidgetDanceUpdateEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_742,param2,param3);
         var_78 = param1;
      }
      
      public function get style() : int
      {
         return var_78;
      }
   }
}
