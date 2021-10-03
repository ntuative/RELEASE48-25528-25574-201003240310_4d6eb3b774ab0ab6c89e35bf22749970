package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1759:int;
      
      private var var_1960:String;
      
      private var var_1957:int;
      
      private var var_1956:int;
      
      private var var_748:Boolean;
      
      private var var_1801:Boolean;
      
      private var var_413:int;
      
      private var var_1223:String;
      
      private var var_1751:int;
      
      private var var_1272:int;
      
      private var _ownerName:String;
      
      private var var_644:String;
      
      private var var_1959:int;
      
      private var var_1958:RoomThumbnailData;
      
      private var var_1748:Boolean;
      
      private var var_626:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_626 = new Array();
         super();
         var_413 = param1.readInteger();
         var_748 = param1.readBoolean();
         var_644 = param1.readString();
         _ownerName = param1.readString();
         var_1751 = param1.readInteger();
         var_1759 = param1.readInteger();
         var_1959 = param1.readInteger();
         var_1223 = param1.readString();
         var_1957 = param1.readInteger();
         var_1748 = param1.readBoolean();
         var_1956 = param1.readInteger();
         var_1272 = param1.readInteger();
         var_1960 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_626.push(_loc4_);
            _loc3_++;
         }
         var_1958 = new RoomThumbnailData(param1);
         var_1801 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1959;
      }
      
      public function get roomName() : String
      {
         return var_644;
      }
      
      public function get userCount() : int
      {
         return var_1759;
      }
      
      public function get score() : int
      {
         return var_1956;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1960;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1748;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1801;
      }
      
      public function get event() : Boolean
      {
         return var_748;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_626 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1272;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1957;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1958;
      }
      
      public function get doorMode() : int
      {
         return var_1751;
      }
      
      public function get flatId() : int
      {
         return var_413;
      }
      
      public function get description() : String
      {
         return var_1223;
      }
   }
}
