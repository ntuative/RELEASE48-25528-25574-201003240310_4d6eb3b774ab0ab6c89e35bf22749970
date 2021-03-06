package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_630:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2156:int;
      
      private var var_2155:int;
      
      private var var_2154:Boolean;
      
      private var var_1071:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_630);
         var_2155 = param1;
         var_2156 = param2;
         _color = param3;
         var_1071 = param4;
         var_2154 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2156;
      }
      
      public function get presetNumber() : int
      {
         return var_2155;
      }
      
      public function get brightness() : int
      {
         return var_1071;
      }
      
      public function get apply() : Boolean
      {
         return var_2154;
      }
   }
}
