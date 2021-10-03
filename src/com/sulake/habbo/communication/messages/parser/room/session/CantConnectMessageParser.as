package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1459:int = 2;
      
      public static const const_1355:int = 4;
      
      public static const const_1252:int = 1;
      
      public static const const_1221:int = 3;
       
      
      private var var_994:int = 0;
      
      private var var_823:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_994;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_994 = param1.readInteger();
         if(var_994 == 3)
         {
            var_823 = param1.readString();
         }
         else
         {
            var_823 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_994 = 0;
         var_823 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_823;
      }
   }
}
