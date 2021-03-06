package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_194:String = "RWUIUE_PEER";
      
      public static const const_226:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1278:String = "BOT";
      
      public static const const_973:int = 2;
      
      public static const const_1173:int = 0;
      
      public static const const_939:int = 3;
       
      
      private var var_1328:String = "";
      
      private var var_1773:Boolean = false;
      
      private var var_1767:int = 0;
      
      private var var_1775:int = 0;
      
      private var var_1770:Boolean = false;
      
      private var var_1327:String = "";
      
      private var var_1765:Boolean = false;
      
      private var var_879:int = 0;
      
      private var var_1772:Boolean = true;
      
      private var var_1092:int = 0;
      
      private var var_1766:Boolean = false;
      
      private var var_1189:Boolean = false;
      
      private var var_1774:Boolean = false;
      
      private var var_1777:int = 0;
      
      private var var_1771:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_277:Array;
      
      private var var_1190:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1764:int = 0;
      
      private var var_1769:Boolean = false;
      
      private var var_1768:int = 0;
      
      private var var_1776:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_277 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1775;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1773;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1772;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1772 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1765 = param1;
      }
      
      public function get motto() : String
      {
         return var_1328;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1766 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1189;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1328 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1769;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1776;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1189 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1771;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1777 = param1;
      }
      
      public function get badges() : Array
      {
         return var_277;
      }
      
      public function get amIController() : Boolean
      {
         return var_1770;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1770 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1769 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1768 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1776 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1327 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1765;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1766;
      }
      
      public function get carryItem() : int
      {
         return var_1777;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1190;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1190 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_879 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1768;
      }
      
      public function get realName() : String
      {
         return var_1327;
      }
      
      public function set webID(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_277 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1774 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1771 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_879;
      }
      
      public function get webID() : int
      {
         return var_1764;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1092 = param1;
      }
      
      public function get xp() : int
      {
         return var_1767;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1773 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1092;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1774;
      }
      
      public function set xp(param1:int) : void
      {
         var_1767 = param1;
      }
   }
}
