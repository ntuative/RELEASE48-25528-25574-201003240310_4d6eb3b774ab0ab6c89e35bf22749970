package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2147:int;
      
      private var var_2146:Boolean;
      
      private var var_2066:int;
      
      private var var_1380:String;
      
      private var var_2243:Boolean = false;
      
      private var var_1701:int;
      
      private var var_448:int;
      
      private var var_1004:String;
      
      private var var_1572:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1365:int;
      
      private var var_2145:Boolean;
      
      private var var_2244:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_2147 = param1;
         var_1004 = param2;
         _objId = param3;
         var_1365 = param4;
         var_1380 = param5;
         var_2146 = param6;
         var_2145 = param7;
         var_1701 = param8;
         var_1572 = param9;
         var_2066 = param10;
         var_448 = -1;
      }
      
      public function get songId() : int
      {
         return var_2066;
      }
      
      public function get iconCallbackId() : int
      {
         return var_448;
      }
      
      public function get expiryTime() : int
      {
         return var_1701;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2244 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2243 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_448 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2145;
      }
      
      public function get slotId() : String
      {
         return var_1572;
      }
      
      public function get classId() : int
      {
         return var_1365;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2146;
      }
      
      public function get stuffData() : String
      {
         return var_1380;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_2147;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2243;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2244;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1004;
      }
   }
}
