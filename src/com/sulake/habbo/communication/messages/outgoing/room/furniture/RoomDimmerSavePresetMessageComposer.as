package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2156:int;
      
      private var var_2155:int;
      
      private var var_2187:Boolean;
      
      private var var_2189:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2188:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2155 = param1;
         var_2156 = param2;
         var_2189 = param3;
         var_2188 = param4;
         var_2187 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2155,var_2156,var_2189,var_2188,int(var_2187)];
      }
      
      public function dispose() : void
      {
      }
   }
}
