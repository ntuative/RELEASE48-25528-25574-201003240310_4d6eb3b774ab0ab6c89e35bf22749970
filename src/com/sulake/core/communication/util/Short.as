package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_636:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_636 = new ByteArray();
         var_636.writeShort(param1);
         var_636.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_636.position = 0;
         if(false)
         {
            _loc1_ = var_636.readShort();
            var_636.position = 0;
         }
         return _loc1_;
      }
   }
}
