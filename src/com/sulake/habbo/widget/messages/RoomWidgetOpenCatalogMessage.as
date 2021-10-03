package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_869:String = "RWOCM_CLUB_MAIN";
      
      public static const const_684:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1671:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_684);
         var_1671 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1671;
      }
   }
}
