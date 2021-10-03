package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_907:String = "inventory_badges";
      
      public static const const_1270:String = "inventory_clothes";
      
      public static const const_1205:String = "inventory_furniture";
      
      public static const const_591:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_824:String = "inventory_effects";
       
      
      private var var_1735:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_591);
         var_1735 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1735;
      }
   }
}
