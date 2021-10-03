package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1631:int;
      
      private var var_1624:String;
      
      private var var_1400:IActionDefinition;
      
      private var var_1626:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1627:String;
      
      private var var_1630:String;
      
      private var var_1629:Boolean;
      
      private var var_1628:ColorTransform;
      
      private var var_1625:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1624 = param1;
         var_1627 = param2;
         var_1631 = param3;
         _color = param4;
         _frames = param5;
         var_1400 = param6;
         var_1629 = param7;
         var_1625 = param8;
         var_1630 = param9;
         var_1626 = param10;
         var_1628 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1629;
      }
      
      public function get partType() : String
      {
         return var_1627;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1625;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1626;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1631;
      }
      
      public function get flippedPartType() : String
      {
         return var_1630;
      }
      
      public function get bodyPartId() : String
      {
         return var_1624;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1400;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1628;
      }
   }
}
