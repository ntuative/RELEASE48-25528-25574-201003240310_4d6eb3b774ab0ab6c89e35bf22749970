package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1293:int;
      
      private var var_1551:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1293 = param1;
         var_1551 = param2;
         Logger.log("READ NODE: " + var_1293 + ", " + var_1551);
      }
      
      public function get nodeName() : String
      {
         return var_1551;
      }
      
      public function get nodeId() : int
      {
         return var_1293;
      }
   }
}
