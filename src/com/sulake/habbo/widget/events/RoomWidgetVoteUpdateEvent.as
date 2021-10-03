package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_117:String = "RWPUE_VOTE_RESULT";
      
      public static const const_125:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1160:int;
      
      private var var_1091:String;
      
      private var var_733:Array;
      
      private var var_969:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1091 = param2;
         var_969 = param3;
         var_733 = param4;
         if(var_733 == null)
         {
            var_733 = [];
         }
         var_1160 = param5;
      }
      
      public function get votes() : Array
      {
         return var_733.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1160;
      }
      
      public function get question() : String
      {
         return var_1091;
      }
      
      public function get choices() : Array
      {
         return var_969.slice();
      }
   }
}
