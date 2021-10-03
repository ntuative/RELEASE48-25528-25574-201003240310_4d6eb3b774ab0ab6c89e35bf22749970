package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_342:Number = 0.5;
      
      private static const const_772:int = 3;
      
      private static const const_1090:Number = 1;
       
      
      private var var_1890:Boolean = false;
      
      private var var_1891:Boolean = false;
      
      private var var_1001:int = 0;
      
      private var var_261:Vector3d = null;
      
      private var var_1887:int = 0;
      
      private var var_1889:int = 0;
      
      private var var_1893:Boolean = false;
      
      private var var_1894:int = -2;
      
      private var var_1892:Boolean = false;
      
      private var var_1885:int = 0;
      
      private var var_1886:int = -1;
      
      private var var_395:Vector3d = null;
      
      private var var_1888:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1887;
      }
      
      public function get targetId() : int
      {
         return var_1886;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1885 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1887 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1890 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1886 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1891 = param1;
      }
      
      public function dispose() : void
      {
         var_395 = null;
         var_261 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_395 == null)
         {
            var_395 = new Vector3d();
         }
         var_395.assign(param1);
         var_1001 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1894;
      }
      
      public function get screenHt() : int
      {
         return var_1888;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1889 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_261;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1888 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1885;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1890;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1891;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_395 != null && var_261 != null)
         {
            ++var_1001;
            _loc2_ = Vector3d.dif(var_395,var_261);
            if(_loc2_.length <= const_342)
            {
               var_261 = var_395;
               var_395 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_342 * (const_772 + 1))
               {
                  _loc2_.mul(const_342);
               }
               else if(var_1001 <= const_772)
               {
                  _loc2_.mul(const_342);
               }
               else
               {
                  _loc2_.mul(const_1090);
               }
               var_261 = Vector3d.sum(var_261,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1893 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1889;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1892 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1894 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_261 != null)
         {
            return;
         }
         var_261 = new Vector3d();
         var_261.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1893;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1892;
      }
   }
}
