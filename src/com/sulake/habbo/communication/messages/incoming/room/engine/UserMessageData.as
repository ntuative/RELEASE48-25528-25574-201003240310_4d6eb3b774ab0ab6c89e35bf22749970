package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1327:String = "F";
      
      public static const const_1006:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_427:String = "";
      
      private var var_2044:int = 0;
      
      private var var_1936:String = "";
      
      private var var_1938:int = 0;
      
      private var var_1767:int = 0;
      
      private var var_1937:String = "";
      
      private var var_1244:String = "";
      
      private var _id:int = 0;
      
      private var var_198:Boolean = false;
      
      private var var_241:int = 0;
      
      private var var_2045:String = "";
      
      private var _name:String = "";
      
      private var var_1764:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_241;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_198)
         {
            var_241 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_198)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2044;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_198)
         {
            var_1938 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2045;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_198)
         {
            var_1937 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_198)
         {
            var_2045 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_198)
         {
            var_1767 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_198)
         {
            var_427 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_198)
         {
            var_2044 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_198)
         {
            var_1244 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1938;
      }
      
      public function get groupID() : String
      {
         return var_1937;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_198)
         {
            var_1764 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_198)
         {
            var_1936 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_198 = true;
      }
      
      public function get sex() : String
      {
         return var_1244;
      }
      
      public function get figure() : String
      {
         return var_427;
      }
      
      public function get webID() : int
      {
         return var_1764;
      }
      
      public function get custom() : String
      {
         return var_1936;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_198)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_198)
         {
            var_84 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_198)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1767;
      }
   }
}
