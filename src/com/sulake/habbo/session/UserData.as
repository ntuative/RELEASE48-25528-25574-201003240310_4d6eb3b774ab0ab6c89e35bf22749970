package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_427:String = "";
      
      private var var_1936:String = "";
      
      private var var_1938:int = 0;
      
      private var var_1767:int = 0;
      
      private var _type:int = 0;
      
      private var var_1937:String = "";
      
      private var var_1244:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1764:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1937 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_427 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1244 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1938;
      }
      
      public function set webID(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1937;
      }
      
      public function set custom(param1:String) : void
      {
         var_1936 = param1;
      }
      
      public function get figure() : String
      {
         return var_427;
      }
      
      public function get sex() : String
      {
         return var_1244;
      }
      
      public function get custom() : String
      {
         return var_1936;
      }
      
      public function get webID() : int
      {
         return var_1764;
      }
      
      public function set xp(param1:int) : void
      {
         var_1767 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1767;
      }
   }
}
