package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1620:int;
      
      private var var_1621:String;
      
      private var var_1618:int;
      
      private var _disposed:Boolean;
      
      private var var_1619:int;
      
      private var var_1622:String;
      
      private var var_1293:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1622 = param1.readString();
         var_1620 = param1.readInteger();
         var_1618 = param1.readInteger();
         var_1621 = param1.readString();
         var_1619 = param1.readInteger();
         var_1293 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1619;
      }
      
      public function get worldId() : int
      {
         return var_1618;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1622;
      }
      
      public function get unitPort() : int
      {
         return var_1620;
      }
      
      public function get castLibs() : String
      {
         return var_1621;
      }
      
      public function get nodeId() : int
      {
         return var_1293;
      }
   }
}
