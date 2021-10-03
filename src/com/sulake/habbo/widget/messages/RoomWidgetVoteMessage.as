package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_107:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1208:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_107);
         var_1208 = param1;
      }
      
      public function get vote() : int
      {
         return var_1208;
      }
   }
}
