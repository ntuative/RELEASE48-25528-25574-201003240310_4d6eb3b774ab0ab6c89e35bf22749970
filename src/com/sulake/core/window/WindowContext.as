package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_929:MouseEventQueue;
      
      public static var var_1597:IMouseCursor;
      
      public static const const_1454:int = 2;
      
      private static var var_981:Factory;
      
      private static var var_122:IWindowRenderer;
      
      public static var var_1369:KeyboardEventQueue;
      
      public static const const_1540:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1524:int = 0;
      
      public static const const_1555:int = 3;
      
      public static const const_1248:int = 4;
       
      
      protected var var_2267:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_671:WindowController;
      
      private var var_711:Date;
      
      protected var var_2266:IWindowParser;
      
      protected var var_936:Error;
      
      protected var var_2268:IInternalWindowServices;
      
      protected var var_93:WindowController;
      
      protected var var_1376:int = -1;
      
      protected var var_87:IDesktopWindow;
      
      private var var_1440:Boolean = false;
      
      protected var var_2350:Boolean = true;
      
      private var var_180:Boolean = false;
      
      protected var var_1103:SubstituteParentController;
      
      private var var_2294:Point;
      
      protected var var_323:DisplayObjectContainer;
      
      private var var_348:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_566:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_566 = new Point();
         var_2294 = new Point();
         super();
         _name = param1;
         var_122 = param2;
         _localization = param4;
         var_323 = param5;
         var_2268 = new InternalWindowServices(this,param5);
         var_2267 = param3;
         var_2266 = new WindowParser(this);
         var_711 = new Date();
         if(var_981 == null)
         {
            var_981 = new Factory();
         }
         if(var_929 == null)
         {
            var_929 = new MouseEventQueue(param5);
         }
         if(var_1369 == null)
         {
            var_1369 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_87 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_323.addChild(var_87.getDisplayObject());
         var_323.doubleClickEnabled = true;
         var_323.addEventListener(Event.RESIZE,stageResizedHandler);
         var_93 = WindowController(var_87);
         var_1103 = new SubstituteParentController(this);
         var_348 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_87)
         {
            var_87 = null;
         }
         if(param1.state != WindowState.const_466)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_981.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1248,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1103;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_87,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_87;
      }
      
      public function render(param1:uint) : void
      {
         var_1440 = true;
         var_122.update(param1);
         var_1440 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_323.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_323.removeChild(IGraphicContextHost(var_87).getGraphicContext(true) as DisplayObject);
         var_87.destroy();
         var_87 = null;
         var_1103.destroy();
         var_1103 = null;
         var_981 = null;
         var_122 = null;
         var_93 = null;
         var_711 = null;
         var_348 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_87 != null && true)
         {
            if(var_323 is Stage)
            {
               var_87.width = Stage(var_323).stageWidth;
               var_87.height = Stage(var_323).stageHeight;
            }
            else
            {
               var_87.width = var_323.width;
               var_87.height = var_323.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_122.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2266;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2267;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_180 = true;
         if(var_936)
         {
            throw var_936;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_929;
         _loc7_.begin();
         var_566.x = -1;
         var_566.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_566.x || _loc2_.stageY != var_566.y)
            {
               var_566.x = _loc2_.stageX;
               var_566.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_87.groupChildrenUnderPoint(var_566,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_93 != var_87 && true)
                  {
                     var_93.getGlobalPosition(_loc6_);
                     var_93.update(var_93,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_93 = WindowController(var_87);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_93)
                     {
                        if(true)
                        {
                           var_93.getGlobalPosition(_loc6_);
                           var_93.update(var_93,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_93 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_93 && true)
                     {
                        if(var_348 != null)
                        {
                           var_348.mouseEventReceived(_loc2_.type,var_93);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_93)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_87)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_180 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_936 = param2;
         var_1376 = param1;
         if(var_2350)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_936;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1597 == null)
         {
            var_1597 = new MouseCursorControl(var_323);
         }
         return var_1597;
      }
      
      public function flushError() : void
      {
         var_936 = null;
         var_1376 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1376;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_48))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_65))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_122.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_443))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_671 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_671 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_671 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_671 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_671 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_87.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2268;
      }
   }
}
