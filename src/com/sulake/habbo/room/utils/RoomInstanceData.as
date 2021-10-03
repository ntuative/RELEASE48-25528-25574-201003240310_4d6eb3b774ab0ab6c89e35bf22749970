package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_819:LegacyWallGeometry = null;
      
      private var var_572:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_571:TileHeightMap = null;
      
      private var var_1835:String = null;
      
      private var _roomId:int = 0;
      
      private var var_573:SelectedRoomObjectData = null;
      
      private var var_818:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_819 = new LegacyWallGeometry();
         var_818 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_572 != null)
         {
            var_572.dispose();
         }
         var_572 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_571 != null)
         {
            var_571.dispose();
         }
         var_571 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1835 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_819;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_573;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_818;
      }
      
      public function dispose() : void
      {
         if(var_571 != null)
         {
            var_571.dispose();
            var_571 = null;
         }
         if(var_819 != null)
         {
            var_819.dispose();
            var_819 = null;
         }
         if(var_818 != null)
         {
            var_818.dispose();
            var_818 = null;
         }
         if(var_572 != null)
         {
            var_572.dispose();
            var_572 = null;
         }
         if(var_573 != null)
         {
            var_573.dispose();
            var_573 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_571;
      }
      
      public function get worldType() : String
      {
         return var_1835;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_573 != null)
         {
            var_573.dispose();
         }
         var_573 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_572;
      }
   }
}
