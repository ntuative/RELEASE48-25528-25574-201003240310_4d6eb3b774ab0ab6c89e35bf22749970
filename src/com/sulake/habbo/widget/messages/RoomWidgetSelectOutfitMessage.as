package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1024:String = "select_outfit";
       
      
      private var var_2039:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1024);
         var_2039 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2039;
      }
   }
}
