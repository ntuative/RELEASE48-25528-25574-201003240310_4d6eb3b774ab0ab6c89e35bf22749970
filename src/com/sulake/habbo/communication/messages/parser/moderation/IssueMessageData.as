package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_134:int = 1;
      
      public static const const_1287:int = 3;
      
      public static const const_393:int = 2;
       
      
      private var var_2091:int;
      
      private var var_1620:int;
      
      private var var_2095:int;
      
      private var var_1618:int;
      
      private var var_31:int;
      
      private var var_413:int;
      
      private var var_1294:int;
      
      private var var_1711:int;
      
      private var var_1063:int;
      
      private var _roomResources:String;
      
      private var var_1697:int;
      
      private var var_2090:int;
      
      private var var_2094:String;
      
      private var var_1795:String;
      
      private var var_2089:int = 0;
      
      private var var_1321:String;
      
      private var _message:String;
      
      private var var_1651:int;
      
      private var var_2093:String;
      
      private var var_1272:int;
      
      private var var_644:String;
      
      private var var_2092:String;
      
      private var var_1544:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1063 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2089 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2090;
      }
      
      public function set roomName(param1:String) : void
      {
         var_644 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1697 = param1;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_644;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1618 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_31 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1620;
      }
      
      public function get priority() : int
      {
         return var_2091 + var_2089;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1795;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1544) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1272;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2090 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1294;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2094 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1697;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1618;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2092 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1321 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1711;
      }
      
      public function set priority(param1:int) : void
      {
         var_2091 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1620 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2094;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2095 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1795 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1651 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1321;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1294 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2095;
      }
      
      public function set flatId(param1:int) : void
      {
         var_413 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1272 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1544 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1651;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2093 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1544;
      }
      
      public function get reportedUserId() : int
      {
         return var_1063;
      }
      
      public function get flatId() : int
      {
         return var_413;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2092;
      }
      
      public function get reporterUserName() : String
      {
         return var_2093;
      }
   }
}
