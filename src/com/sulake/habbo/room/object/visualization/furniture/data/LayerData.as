package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_401:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_427:int = 0;
      
      public static const const_830:int = 2;
      
      public static const const_943:int = 1;
      
      public static const const_531:Boolean = false;
      
      public static const const_719:String = "";
      
      public static const const_448:int = 0;
      
      public static const const_419:int = 0;
      
      public static const const_368:int = 0;
       
      
      private var var_1910:int = 0;
      
      private var var_1756:String = "";
      
      private var var_1554:int = 0;
      
      private var var_1909:int = 0;
      
      private var var_1911:Number = 0;
      
      private var var_1908:int = 255;
      
      private var var_1912:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1910;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1554 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1911;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1909 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1910 = param1;
      }
      
      public function get tag() : String
      {
         return var_1756;
      }
      
      public function get alpha() : int
      {
         return var_1908;
      }
      
      public function get ink() : int
      {
         return var_1554;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1911 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1909;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1912 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1912;
      }
      
      public function set tag(param1:String) : void
      {
         var_1756 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1908 = param1;
      }
   }
}
