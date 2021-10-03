package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2066:int;
      
      private var var_2064:int = 0;
      
      private var var_2062:String;
      
      private var var_2063:int;
      
      private var var_2065:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2066 = param1;
         var_2063 = param2;
         var_2065 = param3;
         var_2062 = param4;
      }
      
      public function get length() : int
      {
         return var_2063;
      }
      
      public function get name() : String
      {
         return var_2065;
      }
      
      public function get creator() : String
      {
         return var_2062;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2064;
      }
      
      public function get id() : int
      {
         return var_2066;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2064 = param1;
      }
   }
}
