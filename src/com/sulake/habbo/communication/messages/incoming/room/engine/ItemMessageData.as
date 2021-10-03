package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_84:Number = 0;
      
      private var _data:String = "";
      
      private var var_1494:int = 0;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2057:Boolean = false;
      
      private var var_2357:String = "";
      
      private var _id:int = 0;
      
      private var var_198:Boolean = false;
      
      private var var_241:String = "";
      
      private var var_2055:int = 0;
      
      private var var_2056:int = 0;
      
      private var var_1668:int = 0;
      
      private var var_1670:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2057 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_198)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2057;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_198)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_241;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_198)
         {
            var_1668 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_198)
         {
            var_2055 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_198)
         {
            var_2056 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_198)
         {
            var_241 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_198)
         {
            var_1670 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_198)
         {
            var_31 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1668;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_198)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2055;
      }
      
      public function get wallY() : Number
      {
         return var_2056;
      }
      
      public function get localY() : Number
      {
         return var_1670;
      }
      
      public function setReadOnly() : void
      {
         var_198 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_198)
         {
            var_84 = param1;
         }
      }
   }
}
