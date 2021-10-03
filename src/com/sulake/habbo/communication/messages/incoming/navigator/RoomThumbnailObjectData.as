package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1558:int;
      
      private var var_1559:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1558;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1558 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1558 = this.var_1558;
         _loc1_.var_1559 = this.var_1559;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1559 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1559;
      }
   }
}
