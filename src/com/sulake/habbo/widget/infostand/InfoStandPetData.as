package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1644:int;
      
      private var var_1637:int;
      
      private var var_1639:int;
      
      private var _type:int;
      
      private var var_1117:int = -1;
      
      private var var_1640:int;
      
      private var _nutrition:int;
      
      private var var_1642:int;
      
      private var _energy:int;
      
      private var var_1646:int;
      
      private var var_1641:int;
      
      private var var_1643:int;
      
      private var var_1645:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1647:Boolean;
      
      private var _name:String = "";
      
      private var var_1638:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1647;
      }
      
      public function get level() : int
      {
         return var_1644;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1642;
      }
      
      public function get id() : int
      {
         return var_1117;
      }
      
      public function get nutritionMax() : int
      {
         return var_1639;
      }
      
      public function get ownerId() : int
      {
         return var_1638;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1117 = param1.id;
         _type = param1.petType;
         var_1646 = param1.petRace;
         _image = param1.image;
         var_1647 = param1.isOwnPet;
         var_1638 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1644 = param1.level;
         var_1640 = param1.levelMax;
         var_1637 = param1.experience;
         var_1642 = param1.experienceMax;
         _energy = param1.energy;
         var_1641 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1639 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1643 = param1.roomIndex;
         var_1645 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1643;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1641;
      }
      
      public function get levelMax() : int
      {
         return var_1640;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1646;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1637;
      }
      
      public function get age() : int
      {
         return var_1645;
      }
   }
}
