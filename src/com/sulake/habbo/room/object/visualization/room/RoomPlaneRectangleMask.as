package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1818:Number = 0;
      
      private var var_1816:Number = 0;
      
      private var var_1817:Number = 0;
      
      private var var_1819:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1816 = param1;
         var_1817 = param2;
         var_1818 = param3;
         var_1819 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1816;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1818;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1817;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1819;
      }
   }
}
