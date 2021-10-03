package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_427:String;
      
      private var var_2319:String;
      
      private var var_2318:int;
      
      private var var_2321:int;
      
      private var var_1244:String;
      
      private var var_1327:String;
      
      private var _name:String;
      
      private var var_509:int;
      
      private var var_879:int;
      
      private var var_2320:int;
      
      private var var_2182:int;
      
      private var var_2322:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2321;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1327;
      }
      
      public function get customData() : String
      {
         return this.var_2319;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_509;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2318;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2322;
      }
      
      public function get figure() : String
      {
         return this.var_427;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2182;
      }
      
      public function get sex() : String
      {
         return this.var_1244;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_427 = param1.readString();
         this.var_1244 = param1.readString();
         this.var_2319 = param1.readString();
         this.var_1327 = param1.readString();
         this.var_2320 = param1.readInteger();
         this.var_2322 = param1.readString();
         this.var_2318 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         this.var_2182 = param1.readInteger();
         this.var_879 = param1.readInteger();
         this.var_509 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2320;
      }
      
      public function get respectLeft() : int
      {
         return this.var_879;
      }
   }
}
