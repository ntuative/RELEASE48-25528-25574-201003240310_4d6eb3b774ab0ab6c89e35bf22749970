package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_427:String;
      
      private var var_1326:String;
      
      private var var_1328:String;
      
      private var var_1272:int;
      
      private var var_743:int;
      
      private var var_1327:String;
      
      private var _name:String;
      
      private var var_1142:Boolean;
      
      private var var_676:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_743 = param1.readInteger();
         this.var_676 = param1.readBoolean();
         this.var_1142 = param1.readBoolean();
         this.var_427 = param1.readString();
         this.var_1272 = param1.readInteger();
         this.var_1328 = param1.readString();
         this.var_1326 = param1.readString();
         this.var_1327 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_743;
      }
      
      public function get realName() : String
      {
         return var_1327;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1328;
      }
      
      public function get categoryId() : int
      {
         return var_1272;
      }
      
      public function get online() : Boolean
      {
         return var_676;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1142;
      }
      
      public function get lastAccess() : String
      {
         return var_1326;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_427;
      }
   }
}
