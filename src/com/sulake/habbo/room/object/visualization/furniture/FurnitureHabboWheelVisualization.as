package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1039:int = 31;
      
      private static const const_1040:int = 32;
      
      private static const const_745:int = 10;
      
      private static const const_489:int = 20;
       
      
      private var var_623:Boolean = false;
      
      private var var_220:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_220 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_623 = true;
            var_220 = new Array();
            var_220.push(const_1039);
            var_220.push(const_1040);
            return;
         }
         if(param1 > 0 && param1 <= const_745)
         {
            if(var_623)
            {
               var_623 = false;
               var_220 = new Array();
               var_220.push(const_745 + param1);
               var_220.push(const_489 + param1);
               var_220.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
