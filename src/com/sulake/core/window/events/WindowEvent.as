package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_256:String = "WE_CHILD_RESIZED";
      
      public static const const_1167:String = "WE_CLOSE";
      
      public static const const_1212:String = "WE_DESTROY";
      
      public static const const_150:String = "WE_CHANGE";
      
      public static const const_1317:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1514:String = "WE_PARENT_RESIZE";
      
      public static const const_91:String = "WE_UPDATE";
      
      public static const const_1214:String = "WE_MAXIMIZE";
      
      public static const const_406:String = "WE_DESTROYED";
      
      public static const const_857:String = "WE_UNSELECT";
      
      public static const const_1342:String = "WE_MAXIMIZED";
      
      public static const const_1592:String = "WE_UNLOCKED";
      
      public static const const_482:String = "WE_CHILD_REMOVED";
      
      public static const const_153:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1178:String = "WE_ACTIVATE";
      
      public static const const_266:String = "WE_ENABLED";
      
      public static const const_389:String = "WE_CHILD_RELOCATED";
      
      public static const const_1293:String = "WE_CREATE";
      
      public static const const_738:String = "WE_SELECT";
      
      public static const const_152:String = "";
      
      public static const const_1611:String = "WE_LOCKED";
      
      public static const const_1554:String = "WE_PARENT_RELOCATE";
      
      public static const const_1533:String = "WE_CHILD_REMOVE";
      
      public static const const_1605:String = "WE_CHILD_RELOCATE";
      
      public static const const_1543:String = "WE_LOCK";
      
      public static const const_232:String = "WE_FOCUSED";
      
      public static const const_709:String = "WE_UNSELECTED";
      
      public static const const_925:String = "WE_DEACTIVATED";
      
      public static const const_1169:String = "WE_MINIMIZED";
      
      public static const const_1506:String = "WE_ARRANGED";
      
      public static const const_1507:String = "WE_UNLOCK";
      
      public static const const_1521:String = "WE_ATTACH";
      
      public static const const_1172:String = "WE_OPEN";
      
      public static const const_1329:String = "WE_RESTORE";
      
      public static const const_1485:String = "WE_PARENT_RELOCATED";
      
      public static const const_1398:String = "WE_RELOCATE";
      
      public static const const_1482:String = "WE_CHILD_RESIZE";
      
      public static const const_1600:String = "WE_ARRANGE";
      
      public static const const_1316:String = "WE_OPENED";
      
      public static const const_1229:String = "WE_CLOSED";
      
      public static const const_1584:String = "WE_DETACHED";
      
      public static const const_1577:String = "WE_UPDATED";
      
      public static const const_1234:String = "WE_UNFOCUSED";
      
      public static const const_441:String = "WE_RELOCATED";
      
      public static const const_1290:String = "WE_DEACTIVATE";
      
      public static const const_221:String = "WE_DISABLED";
      
      public static const const_633:String = "WE_CANCEL";
      
      public static const const_589:String = "WE_ENABLE";
      
      public static const const_1312:String = "WE_ACTIVATED";
      
      public static const const_1155:String = "WE_FOCUS";
      
      public static const const_1558:String = "WE_DETACH";
      
      public static const const_1276:String = "WE_RESTORED";
      
      public static const const_1231:String = "WE_UNFOCUS";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_1280:String = "WE_PARENT_RESIZED";
      
      public static const const_1220:String = "WE_CREATED";
      
      public static const const_1449:String = "WE_ATTACHED";
      
      public static const const_1192:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1603:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1377:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1603 = param3;
         var_1377 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1377;
      }
      
      public function get related() : IWindow
      {
         return var_1603;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1377 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
