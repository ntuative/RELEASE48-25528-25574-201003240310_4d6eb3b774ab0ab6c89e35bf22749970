package com.sulake.habbo.communication.messages.incoming.room.action
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.room.action.CarryObjectMessageParser;
   
   public class CarryObjectMessageEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function CarryObjectMessageEvent(param1:Function)
      {
         super(param1,CarryObjectMessageParser);
      }
      
      public function getParser() : CarryObjectMessageParser
      {
         return var_6 as CarryObjectMessageParser;
      }
   }
}
