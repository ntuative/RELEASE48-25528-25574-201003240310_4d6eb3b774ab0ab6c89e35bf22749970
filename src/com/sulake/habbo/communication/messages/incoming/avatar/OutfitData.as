package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2151:String;
      
      private var var_743:String;
      
      private var var_1572:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1572 = param1.readInteger();
         var_2151 = param1.readString();
         var_743 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_743;
      }
      
      public function get figureString() : String
      {
         return var_2151;
      }
      
      public function get slotId() : int
      {
         return var_1572;
      }
   }
}
