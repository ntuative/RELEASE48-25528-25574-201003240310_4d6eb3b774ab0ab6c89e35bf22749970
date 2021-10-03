package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_111:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1759:int;
      
      private var var_413:int;
      
      private var var_748:RoomData;
      
      private var var_1638:int;
      
      private var _ownerName:String;
      
      private var var_2080:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_413 = param1.readInteger();
         var_1759 = param1.readInteger();
         var_2080 = param1.readBoolean();
         var_1638 = param1.readInteger();
         _ownerName = param1.readString();
         var_111 = new RoomData(param1);
         var_748 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1759;
      }
      
      public function get event() : RoomData
      {
         return var_748;
      }
      
      public function get room() : RoomData
      {
         return var_111;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_111 != null)
         {
            var_111.dispose();
            var_111 = null;
         }
         if(var_748 != null)
         {
            var_748.dispose();
            var_748 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_413;
      }
      
      public function get ownerId() : int
      {
         return var_1638;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2080;
      }
   }
}
