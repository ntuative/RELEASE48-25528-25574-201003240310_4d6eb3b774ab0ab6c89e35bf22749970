package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_202:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1786:Boolean = false;
      
      private var var_1787:int = 0;
      
      private var var_1789:int = 0;
      
      private var var_1788:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_202,param5,param6);
         var_1788 = param1;
         var_1789 = param2;
         var_1787 = param3;
         var_1786 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1787;
      }
      
      public function get periodsLeft() : int
      {
         return var_1789;
      }
      
      public function get daysLeft() : int
      {
         return var_1788;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1786;
      }
   }
}
