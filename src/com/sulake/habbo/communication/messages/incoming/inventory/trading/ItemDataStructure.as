package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1004:String;
      
      private var var_1952:int;
      
      private var var_1954:int;
      
      private var var_1494:int;
      
      private var var_1950:int;
      
      private var _category:int;
      
      private var var_2369:int;
      
      private var var_1951:int;
      
      private var var_1948:int;
      
      private var var_1949:int;
      
      private var var_1947:int;
      
      private var var_1953:Boolean;
      
      private var var_1380:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1952 = param1;
         var_1004 = param2;
         var_1954 = param3;
         var_1949 = param4;
         _category = param5;
         var_1380 = param6;
         var_1494 = param7;
         var_1948 = param8;
         var_1951 = param9;
         var_1947 = param10;
         var_1950 = param11;
         var_1953 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1949;
      }
      
      public function get extra() : int
      {
         return var_1494;
      }
      
      public function get stuffData() : String
      {
         return var_1380;
      }
      
      public function get groupable() : Boolean
      {
         return var_1953;
      }
      
      public function get creationMonth() : int
      {
         return var_1947;
      }
      
      public function get roomItemID() : int
      {
         return var_1954;
      }
      
      public function get itemType() : String
      {
         return var_1004;
      }
      
      public function get itemID() : int
      {
         return var_1952;
      }
      
      public function get songID() : int
      {
         return var_1494;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1948;
      }
      
      public function get creationYear() : int
      {
         return var_1950;
      }
      
      public function get creationDay() : int
      {
         return var_1951;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
