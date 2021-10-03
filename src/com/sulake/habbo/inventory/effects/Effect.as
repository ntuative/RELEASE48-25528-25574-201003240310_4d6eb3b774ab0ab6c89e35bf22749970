package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2087:Date;
      
      private var var_1311:Boolean = false;
      
      private var _type:int;
      
      private var var_369:BitmapData;
      
      private var var_265:Boolean = false;
      
      private var var_1215:int;
      
      private var var_600:int = 1;
      
      private var var_1054:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_369;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_600;
         if(var_600 < 0)
         {
            var_600 = 0;
         }
         var_1054 = var_1215;
         var_265 = false;
         var_1311 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set include(param1:int) : void
      {
         var_1054 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_265;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_369 = param1;
      }
      
      public function get duration() : int
      {
         return var_1215;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1311;
      }
      
      public function get effectsInInventory() : int
      {
         return var_600;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_369;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_265)
         {
            var_2087 = new Date();
         }
         var_265 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_600 = param1;
      }
      
      public function get include() : int
      {
         var _loc1_:int = 0;
         if(var_265)
         {
            _loc1_ = var_1054 - (new Date().valueOf() - var_2087.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1054;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1311 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1215 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
