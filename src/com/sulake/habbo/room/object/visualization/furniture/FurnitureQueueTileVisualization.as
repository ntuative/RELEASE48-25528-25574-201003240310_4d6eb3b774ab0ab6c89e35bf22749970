package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1043:int = 1;
      
      private static const const_1040:int = 3;
      
      private static const const_1042:int = 2;
      
      private static const const_1041:int = 15;
       
      
      private var var_778:int;
      
      private var var_220:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_220 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1042)
         {
            var_220 = new Array();
            var_220.push(const_1043);
            var_778 = const_1041;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_778 > 0)
         {
            --var_778;
         }
         if(var_778 == 0)
         {
            if(false)
            {
               super.setAnimation(var_220.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
