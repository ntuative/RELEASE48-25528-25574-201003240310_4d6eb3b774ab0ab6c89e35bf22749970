package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_690:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_597:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_269:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1487:Point;
      
      private var var_1486:Rectangle;
      
      private var var_195:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1486 = param2;
         var_1487 = param3;
         var_195 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1486 != null)
         {
            return var_1486.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_195;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1487 != null)
         {
            return var_1487.clone();
         }
         return null;
      }
   }
}
