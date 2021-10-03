package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2307:Boolean;
      
      private var var_2308:int;
      
      private var var_2306:Boolean;
      
      private var var_1467:String;
      
      private var var_1327:String;
      
      private var var_1615:int;
      
      private var var_1864:String;
      
      private var var_2309:String;
      
      private var var_1865:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1615 = param1.readInteger();
         this.var_1467 = param1.readString();
         this.var_1864 = param1.readString();
         this.var_2307 = param1.readBoolean();
         this.var_2306 = param1.readBoolean();
         param1.readString();
         this.var_2308 = param1.readInteger();
         this.var_1865 = param1.readString();
         this.var_2309 = param1.readString();
         this.var_1327 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1327;
      }
      
      public function get avatarName() : String
      {
         return this.var_1467;
      }
      
      public function get avatarId() : int
      {
         return this.var_1615;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2307;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2309;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1865;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2306;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1864;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2308;
      }
   }
}
