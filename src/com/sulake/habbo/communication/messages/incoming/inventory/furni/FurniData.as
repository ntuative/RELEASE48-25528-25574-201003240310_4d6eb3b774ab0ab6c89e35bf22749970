package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1380:String;
      
      private var var_1004:String;
      
      private var var_2144:Boolean;
      
      private var var_1494:int;
      
      private var var_2147:int;
      
      private var var_2143:Boolean;
      
      private var var_1572:String = "";
      
      private var var_2146:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1365:int;
      
      private var var_2145:Boolean;
      
      private var var_2066:int = -1;
      
      private var var_1701:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_2147 = param1;
         var_1004 = param2;
         _objId = param3;
         var_1365 = param4;
         _category = param5;
         var_1380 = param6;
         var_2144 = param7;
         var_2146 = param8;
         var_2145 = param9;
         var_2143 = param10;
         var_1701 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1572;
      }
      
      public function get extra() : int
      {
         return var_1494;
      }
      
      public function get classId() : int
      {
         return var_1365;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2143;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2144;
      }
      
      public function get stripId() : int
      {
         return var_2147;
      }
      
      public function get stuffData() : String
      {
         return var_1380;
      }
      
      public function get songId() : int
      {
         return var_2066;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1572 = param1;
         var_1494 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1004;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1701;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2145;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2146;
      }
   }
}
