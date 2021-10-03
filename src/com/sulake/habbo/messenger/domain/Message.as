package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_642:int = 2;
      
      public static const const_829:int = 6;
      
      public static const const_735:int = 1;
      
      public static const const_614:int = 3;
      
      public static const const_816:int = 4;
      
      public static const const_629:int = 5;
       
      
      private var var_1737:String;
      
      private var var_1051:int;
      
      private var var_1736:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1051 = param2;
         var_1736 = param3;
         var_1737 = param4;
      }
      
      public function get time() : String
      {
         return var_1737;
      }
      
      public function get senderId() : int
      {
         return var_1051;
      }
      
      public function get messageText() : String
      {
         return var_1736;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
