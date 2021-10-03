package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2252:Boolean;
      
      private var var_1593:Array;
      
      private var var_2247:Boolean;
      
      private var var_2253:Boolean;
      
      private var var_2254:Boolean;
      
      private var var_144:Array;
      
      private var var_2249:Boolean;
      
      private var var_2248:Boolean;
      
      private var var_1594:Array;
      
      private var var_2250:Boolean;
      
      private var var_2251:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2251;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2252;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2247;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2249;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2248;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1593;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_144 = [];
         var_1593 = [];
         _roomMessageTemplates = [];
         var_1594 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_144.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1593.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1594.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2249 = param1.readBoolean();
         var_2254 = param1.readBoolean();
         var_2247 = param1.readBoolean();
         var_2253 = param1.readBoolean();
         var_2251 = param1.readBoolean();
         var_2248 = param1.readBoolean();
         var_2252 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2250 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2253;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1594;
      }
      
      public function get issues() : Array
      {
         return var_144;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2250;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2254;
      }
   }
}
