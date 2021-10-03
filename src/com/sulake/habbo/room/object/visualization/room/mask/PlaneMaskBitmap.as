package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_49:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1;
      
      private var var_1608:Number = -1;
      
      private var var_781:IGraphicAsset = null;
      
      private var var_1607:Number = 1;
      
      private var var_1609:Number = -1;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1, param3:Number = 1, param4:Number = -1, param5:Number = 1)
      {
         super();
         var_1608 = param2;
         _normalMaxX = param3;
         var_1609 = param4;
         var_1607 = param5;
         var_781 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1607;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1608;
      }
      
      public function get normalMinY() : Number
      {
         return var_1609;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_781;
      }
      
      public function dispose() : void
      {
         var_781 = null;
      }
   }
}
