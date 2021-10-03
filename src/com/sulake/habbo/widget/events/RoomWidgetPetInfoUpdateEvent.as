package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_146:String = "RWPIUE_PET_INFO";
       
      
      private var var_1644:int;
      
      private var var_1637:int;
      
      private var var_1639:int;
      
      private var _nutrition:int;
      
      private var var_1642:int;
      
      private var var_1640:int;
      
      private var _energy:int;
      
      private var var_1022:int;
      
      private var var_1641:int;
      
      private var var_1643:int;
      
      private var var_1645:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_1826:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1647:Boolean;
      
      private var _name:String;
      
      private var var_509:int;
      
      private var var_1638:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_146,param10,param11);
         var_1022 = param1;
         var_1826 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1647 = param6;
         var_1638 = param7;
         _ownerName = param8;
         var_1643 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1647;
      }
      
      public function get level() : int
      {
         return var_1644;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1644 = param1;
      }
      
      public function get petRace() : int
      {
         return var_1826;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_509 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1642;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1639;
      }
      
      public function get ownerId() : int
      {
         return var_1638;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1643;
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
      
      public function get petRespectLeft() : int
      {
         return var_509;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1639 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1637 = param1;
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
      
      public function set energyMax(param1:int) : void
      {
         var_1641 = param1;
      }
      
      public function get petType() : int
      {
         return var_1022;
      }
      
      public function set age(param1:int) : void
      {
         var_1645 = param1;
      }
      
      public function get age() : int
      {
         return var_1645;
      }
   }
}
