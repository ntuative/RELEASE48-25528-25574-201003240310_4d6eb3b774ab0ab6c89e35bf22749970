package com.sulake.habbo.widget.events
{
   public class RoomWidgetPetCommandsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_139:String = "RWPCUE_PET_COMMANDS";
       
      
      private var _id:int;
      
      private var var_942:Array;
      
      public function RoomWidgetPetCommandsUpdateEvent(param1:int, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super(RoomWidgetPetCommandsUpdateEvent.const_139,param3,param4);
         _id = param1;
         var_942 = param2;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get enabledCommands() : Array
      {
         return var_942;
      }
   }
}
