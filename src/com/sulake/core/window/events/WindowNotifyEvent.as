package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1324:String = "WN_CREATED";
      
      public static const const_897:String = "WN_DISABLE";
      
      public static const const_978:String = "WN_DEACTIVATED";
      
      public static const const_981:String = "WN_OPENED";
      
      public static const const_961:String = "WN_CLOSED";
      
      public static const const_1008:String = "WN_DESTROY";
      
      public static const const_1478:String = "WN_ARRANGED";
      
      public static const const_396:String = "WN_PARENT_RESIZED";
      
      public static const const_990:String = "WN_ENABLE";
      
      public static const const_887:String = "WN_RELOCATE";
      
      public static const const_917:String = "WN_FOCUS";
      
      public static const const_974:String = "WN_PARENT_RELOCATED";
      
      public static const const_397:String = "WN_PARAM_UPDATED";
      
      public static const const_558:String = "WN_PARENT_ACTIVATED";
      
      public static const const_174:String = "WN_RESIZED";
      
      public static const const_905:String = "WN_CLOSE";
      
      public static const const_865:String = "WN_PARENT_REMOVED";
      
      public static const const_259:String = "WN_CHILD_RELOCATED";
      
      public static const const_517:String = "WN_ENABLED";
      
      public static const const_245:String = "WN_CHILD_RESIZED";
      
      public static const const_803:String = "WN_MINIMIZED";
      
      public static const const_523:String = "WN_DISABLED";
      
      public static const const_216:String = "WN_CHILD_ACTIVATED";
      
      public static const const_363:String = "WN_STATE_UPDATED";
      
      public static const const_550:String = "WN_UNSELECTED";
      
      public static const const_452:String = "WN_STYLE_UPDATED";
      
      public static const const_1601:String = "WN_UPDATE";
      
      public static const const_463:String = "WN_PARENT_ADDED";
      
      public static const const_717:String = "WN_RESIZE";
      
      public static const const_734:String = "WN_CHILD_REMOVED";
      
      public static const const_1461:String = "";
      
      public static const const_799:String = "WN_RESTORED";
      
      public static const const_315:String = "WN_SELECTED";
      
      public static const const_988:String = "WN_MINIMIZE";
      
      public static const const_818:String = "WN_FOCUSED";
      
      public static const const_1144:String = "WN_LOCK";
      
      public static const const_331:String = "WN_CHILD_ADDED";
      
      public static const const_946:String = "WN_UNFOCUSED";
      
      public static const const_451:String = "WN_RELOCATED";
      
      public static const const_870:String = "WN_DEACTIVATE";
      
      public static const const_1180:String = "WN_CRETAE";
      
      public static const const_873:String = "WN_RESTORE";
      
      public static const const_296:String = "WN_ACTVATED";
      
      public static const const_1336:String = "WN_LOCKED";
      
      public static const const_376:String = "WN_SELECT";
      
      public static const const_1007:String = "WN_MAXIMIZE";
      
      public static const const_885:String = "WN_OPEN";
      
      public static const const_505:String = "WN_UNSELECT";
      
      public static const const_1529:String = "WN_ARRANGE";
      
      public static const const_1390:String = "WN_UNLOCKED";
      
      public static const const_1549:String = "WN_UPDATED";
      
      public static const const_808:String = "WN_ACTIVATE";
      
      public static const const_1250:String = "WN_UNLOCK";
      
      public static const const_912:String = "WN_MAXIMIZED";
      
      public static const const_871:String = "WN_DESTROYED";
      
      public static const const_1011:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1603,cancelable);
      }
   }
}
