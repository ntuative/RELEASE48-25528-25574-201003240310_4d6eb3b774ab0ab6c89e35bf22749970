package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_669:int = -1;
      
      public static const const_926:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2026:int = -1;
      
      private var var_83:int = 0;
      
      private var var_1268:int = 1;
      
      private var var_868:int = 1;
      
      private var var_2025:Boolean = false;
      
      private var var_2024:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_2025 = param5;
         if(param4 < 0)
         {
            param4 = const_669;
         }
         var_868 = param4;
         var_1268 = param4;
         if(param6 >= 0)
         {
            var_2026 = param6;
            var_2024 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_868 > 0 && param1 > var_868)
         {
            param1 = var_868;
         }
         var_1268 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_868;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2024;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_868 < 0)
         {
            return const_669;
         }
         return var_1268;
      }
      
      public function get activeSequence() : int
      {
         return var_2026;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2025;
      }
      
      public function get x() : int
      {
         return var_83;
      }
   }
}
