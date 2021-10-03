package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_611:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_191:String;
      
      private var var_708:String;
      
      private var var_1505:String;
      
      private var var_153:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_153 = param2;
         var_1505 = param3;
         var_191 = param4;
         var_708 = param5;
         var_47 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1505;
      }
      
      public function get colorHex() : String
      {
         return var_708;
      }
      
      public function get text() : String
      {
         return var_191;
      }
      
      public function get objectId() : int
      {
         return var_153;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}
