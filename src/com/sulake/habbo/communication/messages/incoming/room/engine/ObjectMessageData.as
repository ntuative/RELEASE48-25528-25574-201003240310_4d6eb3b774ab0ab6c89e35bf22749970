package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1011:int = 0;
      
      private var _data:String = "";
      
      private var var_1494:int = -1;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var var_1012:int = 0;
      
      private var var_2357:String = "";
      
      private var var_1701:int = 0;
      
      private var _id:int = 0;
      
      private var var_198:Boolean = false;
      
      private var var_241:int = 0;
      
      private var var_1700:String = null;
      
      private var var_83:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_198)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_198)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_241;
      }
      
      public function get extra() : int
      {
         return var_1494;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_198)
         {
            var_241 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_198)
         {
            var_83 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_198)
         {
            var_1494 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_198)
         {
            var_31 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1701;
      }
      
      public function get staticClass() : String
      {
         return var_1700;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_198)
         {
            var_1701 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_198)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_198)
         {
            var_1700 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_198 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_198)
         {
            var_1011 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_198)
         {
            var_1012 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_198)
         {
            var_84 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1011;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get sizeY() : int
      {
         return var_1012;
      }
   }
}
