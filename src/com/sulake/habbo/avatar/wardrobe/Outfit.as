package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_743:String;
      
      private var var_427:String;
      
      private var _view:OutfitView;
      
      private var var_1396:IAvatarImage;
      
      private var var_47:HabboAvatarEditor;
      
      private var _image:BitmapData;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_47 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_75:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.const_85:
            case "f":
            case "F":
               param3 = "null";
         }
         var_427 = param2;
         var_743 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_743;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var_1396 = var_47.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_94);
         var_1396.setDirection(AvatarSetType.const_37,int(FigureData.const_606));
         _image = var_1396.getImage(AvatarSetType.const_37);
         _view.udpate(_image);
      }
      
      public function get figure() : String
      {
         return var_427;
      }
      
      public function dispose() : void
      {
         var_427 = null;
         var_743 = null;
         _image = null;
      }
   }
}
