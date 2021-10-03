package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_647:String = "RWUAM_RESPECT_USER";
      
      public static const const_655:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_549:String = "RWUAM_START_TRADING";
      
      public static const const_639:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_565:String = "RWUAM_WHISPER_USER";
      
      public static const const_571:String = "RWUAM_IGNORE_USER";
      
      public static const const_412:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_515:String = "RWUAM_BAN_USER";
      
      public static const const_682:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_455:String = "RWUAM_KICK_USER";
      
      public static const const_687:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_737:String = " RWUAM_RESPECT_PET";
      
      public static const const_478:String = "RWUAM_KICK_BOT";
      
      public static const const_1246:String = "RWUAM_TRAIN_PET";
      
      public static const const_686:String = "RWUAM_PICKUP_PET";
      
      public static const const_602:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_632:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
