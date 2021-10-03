package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1046:int = 80;
       
      
      private var var_454:Map;
      
      private var var_644:String = "";
      
      private var var_1133:Array;
      
      public function UserRegistry()
      {
         var_454 = new Map();
         var_1133 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_454.getValue(var_1133.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_644;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_454.getValue(param1) != null)
         {
            var_454.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_644);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_644 == "")
         {
            var_1133.push(param1);
         }
         var_454.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_454;
      }
      
      public function unregisterRoom() : void
      {
         var_644 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_454.length > const_1046)
         {
            _loc1_ = var_454.getKey(0);
            var_454.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_644 = param1;
         if(var_644 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
