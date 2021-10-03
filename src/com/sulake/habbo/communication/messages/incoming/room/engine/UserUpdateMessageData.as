package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      private var var_241:int = 0;
      
      private var var_1898:int = 0;
      
      private var var_1897:Number = 0;
      
      private var var_1899:Number = 0;
      
      private var var_1900:Number = 0;
      
      private var var_1895:Number = 0;
      
      private var var_1896:Boolean = false;
      
      private var var_83:Number = 0;
      
      private var _id:int = 0;
      
      private var var_196:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_196 = [];
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_84 = param4;
         var_1895 = param5;
         var_241 = param6;
         var_1898 = param7;
         var_1897 = param8;
         var_1899 = param9;
         var_1900 = param10;
         var_1896 = param11;
         var_196 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get dir() : int
      {
         return var_241;
      }
      
      public function get localZ() : Number
      {
         return var_1895;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1896;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1898;
      }
      
      public function get targetX() : Number
      {
         return var_1897;
      }
      
      public function get targetY() : Number
      {
         return var_1899;
      }
      
      public function get targetZ() : Number
      {
         return var_1900;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get actions() : Array
      {
         return var_196.slice();
      }
   }
}
