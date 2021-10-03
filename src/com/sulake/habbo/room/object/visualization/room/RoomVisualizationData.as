package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_437:FloorRasterizer;
      
      private var var_912:Boolean = false;
      
      private var var_616:PlaneMaskManager;
      
      private var var_436:WallRasterizer;
      
      private var var_617:WallAdRasterizer;
      
      private var var_435:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_436 = new WallRasterizer();
         var_437 = new FloorRasterizer();
         var_617 = new WallAdRasterizer();
         var_435 = new LandscapeRasterizer();
         var_616 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_436;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_617;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_437;
      }
      
      public function get initialized() : Boolean
      {
         return var_912;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_616;
      }
      
      public function dispose() : void
      {
         if(var_436 != null)
         {
            var_436.dispose();
            var_436 = null;
         }
         if(var_437 != null)
         {
            var_437.dispose();
            var_437 = null;
         }
         if(var_617 != null)
         {
            var_617.dispose();
            var_617 = null;
         }
         if(var_435 != null)
         {
            var_435.dispose();
            var_435 = null;
         }
         if(var_616 != null)
         {
            var_616.dispose();
            var_616 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_436.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_437.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_617.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_435.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_616.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_436 != null)
         {
            var_436.clearCache();
         }
         if(var_437 != null)
         {
            var_437.clearCache();
         }
         if(var_435 != null)
         {
            var_435.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_435;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_912)
         {
            return;
         }
         var_436.initializeAssetCollection(param1);
         var_437.initializeAssetCollection(param1);
         var_617.initializeAssetCollection(param1);
         var_435.initializeAssetCollection(param1);
         var_616.initializeAssetCollection(param1);
         var_912 = true;
      }
   }
}
