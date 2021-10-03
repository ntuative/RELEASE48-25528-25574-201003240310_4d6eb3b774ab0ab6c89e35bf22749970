package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1914:int = 0;
      
      private var var_1916:int = 0;
      
      private var var_1917:int = 0;
      
      private var var_1915:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1916;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1914 = param1;
      }
      
      public function get credits() : int
      {
         return var_1917;
      }
      
      public function get clubDays() : int
      {
         return var_1914;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1915 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1917 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1915;
      }
   }
}
