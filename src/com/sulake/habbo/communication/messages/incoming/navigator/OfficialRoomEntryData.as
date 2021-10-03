package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1320:int = 4;
      
      public static const const_509:int = 3;
      
      public static const const_712:int = 2;
      
      public static const const_845:int = 1;
       
      
      private var var_1760:String;
      
      private var _disposed:Boolean;
      
      private var var_1759:int;
      
      private var var_1755:Boolean;
      
      private var var_878:String;
      
      private var var_806:PublicRoomData;
      
      private var var_1761:int;
      
      private var _index:int;
      
      private var var_1757:String;
      
      private var _type:int;
      
      private var var_1756:String;
      
      private var var_805:GuestRoomData;
      
      private var var_1758:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1760 = param1.readString();
         var_1758 = param1.readString();
         var_1755 = param1.readInteger() == 1;
         var_1757 = param1.readString();
         var_878 = param1.readString();
         var_1761 = param1.readInteger();
         var_1759 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_845)
         {
            var_1756 = param1.readString();
         }
         else if(_type == const_509)
         {
            var_806 = new PublicRoomData(param1);
         }
         else if(_type == const_712)
         {
            var_805 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1761;
      }
      
      public function get popupCaption() : String
      {
         return var_1760;
      }
      
      public function get userCount() : int
      {
         return var_1759;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1755;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_845)
         {
            return 0;
         }
         if(this.type == const_712)
         {
            return this.var_805.maxUserCount;
         }
         if(this.type == const_509)
         {
            return this.var_806.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1758;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_805 != null)
         {
            this.var_805.dispose();
            this.var_805 = null;
         }
         if(this.var_806 != null)
         {
            this.var_806.dispose();
            this.var_806 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_805;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1757;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_806;
      }
      
      public function get picRef() : String
      {
         return var_878;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1756;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
