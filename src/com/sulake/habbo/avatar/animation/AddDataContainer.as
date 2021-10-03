package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1390:String;
      
      private var var_1554:String;
      
      private var var_947:String;
      
      private var var_408:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1390 = String(param1.@align);
         var_947 = String(param1.@base);
         var_1554 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_408 = Number(_loc2_);
            if(var_408 > 1)
            {
               var_408 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1390;
      }
      
      public function get ink() : String
      {
         return var_1554;
      }
      
      public function get base() : String
      {
         return var_947;
      }
      
      public function get isBlended() : Boolean
      {
         return var_408 != 1;
      }
      
      public function get blend() : Number
      {
         return var_408;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
