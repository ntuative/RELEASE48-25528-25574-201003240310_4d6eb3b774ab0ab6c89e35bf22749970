package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1510:int = 9;
      
      public static const const_1570:int = 4;
      
      public static const const_1475:int = 1;
      
      public static const const_1243:int = 10;
      
      public static const const_1550:int = 2;
      
      public static const const_1186:int = 7;
      
      public static const const_1193:int = 11;
      
      public static const const_1472:int = 3;
      
      public static const const_1245:int = 8;
      
      public static const const_1177:int = 5;
      
      public static const const_1564:int = 6;
      
      public static const const_1371:int = 12;
       
      
      private var var_1926:String;
      
      private var _roomId:int;
      
      private var var_1162:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1926;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1162 = param1.readInteger();
         var_1926 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1162;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
