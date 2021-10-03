package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_743:String;
      
      private var _id:int;
      
      private var var_1725:String = "";
      
      private var var_1726:int;
      
      private var var_1727:String;
      
      private var var_1629:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1726 = parseInt(param1.@pattern);
         var_743 = String(param1.@gender);
         var_1629 = Boolean(parseInt(param1.@colorable));
         var_1725 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1725;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1629;
      }
      
      public function get gender() : String
      {
         return var_743;
      }
      
      public function get patternId() : int
      {
         return var_1726;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1727;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1727 = param1;
      }
   }
}
