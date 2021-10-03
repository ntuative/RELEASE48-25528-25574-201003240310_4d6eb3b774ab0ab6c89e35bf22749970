package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_484:int;
      
      private var _model:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         _model = param1;
         var_484 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return _model.getEffects(var_484);
      }
      
      public function dispose() : void
      {
         _model = null;
      }
   }
}