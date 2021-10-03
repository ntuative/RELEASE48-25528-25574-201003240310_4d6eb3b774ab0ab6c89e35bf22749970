package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_353:int = 2;
      
      public static const const_326:int = 1;
      
      public static const const_210:int = 0;
      
      public static const const_778:int = 3;
      
      private static const const_769:int = 150;
      
      private static const const_768:int = 250;
      
      public static const const_72:int = 39;
       
      
      private var var_1462:BitmapData;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1460:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_1845:int = 0;
      
      private var var_35:IWindowContainer;
      
      private var var_95:IRegionWindow;
      
      private var var_1849:int = 30;
      
      private var var_31:int = -1;
      
      private var var_1847:BitmapData;
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_1846:BitmapData;
      
      private var var_68:IBitmapWrapperWindow;
      
      private var var_1848:BitmapData;
      
      private var var_1844:BitmapData;
      
      private var var_1461:BitmapData;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _widget = param1;
         _windowManager = param2;
         _assetLibrary = param4;
         var_35 = param3;
         var_1844 = (_assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         var_1460 = (_assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         var_1848 = (_assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         var_1461 = (_assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         var_1462 = (_assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         var_1847 = (_assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         var_1846 = (_assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         var_68 = _windowManager.createWindow("chat_history_bg","",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_39,HabboWindowParam.const_67,new Rectangle(0,0,param3.width,param3.height - const_72),null,0,0) as IBitmapWrapperWindow;
         var_35.addChild(var_68);
         _window = _windowManager.createWindow("chat_pulldown","",HabboWindowType.const_57,HabboWindowStyle.const_39,HabboWindowParam.const_41,new Rectangle(0,0 - const_72,param3.width,const_72),null,0) as IWindowContainer;
         var_35.addChild(_window);
         var_95 = _windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_477,HabboWindowStyle.const_40,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_72),null,0) as IRegionWindow;
         if(var_95 != null)
         {
            var_95.background = true;
            var_95.mouseTreshold = 0;
            var_95.addEventListener(WindowMouseEvent.const_50,onPulldownMouseDown);
            var_35.addChild(var_95);
            var_95.toolTipCaption = "${chat.history.drag.tooltip}";
            var_95.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         _window.buildFromXML(_loc5_.content as XML);
         _window.addEventListener(WindowMouseEvent.const_50,onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.mouseTreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_92,onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_50,onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_30,onCloseButtonMouseOut);
         }
         _window.background = true;
         _window.color = 0;
         _window.mouseTreshold = 0;
         this.state = const_210;
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1847.clone();
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1462.clone();
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(state)
         {
            case const_353:
               var_68.blend += param1 / const_768;
               _window.blend += param1 / const_768;
               if(false)
               {
                  state = const_326;
               }
               break;
            case const_778:
               var_68.blend = 0 - param1 / const_769;
               _window.blend = 0 - param1 / const_769;
               if(true)
               {
                  state = const_210;
               }
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1462.clone();
         }
      }
      
      public function dispose() : void
      {
         if(var_95 != null)
         {
            var_95.dispose();
            var_95 = null;
         }
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_68 != null)
         {
            var_68.dispose();
            var_68 = null;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownMouseDown(param1);
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == var_31)
         {
            return;
         }
         switch(param1)
         {
            case const_326:
               if(var_31 == const_210)
               {
                  this.state = const_353;
               }
               else
               {
                  if(_window == null || var_68 == null)
                  {
                     return;
                  }
                  _window.visible = true;
                  var_68.visible = true;
                  var_95.visible = true;
                  var_31 = param1;
               }
               break;
            case const_210:
               if(_window == null || var_68 == null)
               {
                  return;
               }
               _window.visible = false;
               var_68.visible = false;
               var_95.visible = false;
               var_31 = param1;
               break;
            case const_353:
               if(_window == null || var_68 == null)
               {
                  return;
               }
               _window.blend = 0;
               var_68.blend = 0;
               _window.visible = true;
               var_68.visible = true;
               var_31 = param1;
               break;
            case const_778:
               if(_window == null || var_68 == null)
               {
                  return;
               }
               _window.blend = 1;
               var_68.blend = 1;
               var_31 = param1;
               break;
         }
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_ + 1)
         {
            param2.copyPixels(param1,param1.rect,new Point(_loc4_ * param1.width,0));
            _loc4_++;
         }
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(_window != null)
         {
            _window.x = 0;
            _window.y = 0 - const_72;
            _window.width = var_35.width;
         }
         if(var_95 != null)
         {
            var_95.x = 0;
            var_95.y = 0 - const_72;
            var_95.width = 0 - var_1849;
         }
         if(var_68 != null)
         {
            var_68.rectangle = var_35.rectangle;
            var_68.height = 0 - const_72;
         }
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1461.clone();
         }
      }
      
      private function buildWindowGraphics() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(_window == null)
         {
            return;
         }
         if(var_1845 == _window.width)
         {
            return;
         }
         var_1845 = _window.width;
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var _loc4_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var _loc5_:IBitmapWrapperWindow = _window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         if(_loc2_ != null && _loc5_ != null)
         {
            _loc5_.bitmap = var_1848.clone();
            _loc2_.bitmap = var_1461.clone();
            var_1849 = 0 - _loc2_.x;
         }
         _loc3_.width = _loc5_.x - 5;
         _loc3_.x = 0;
         _loc4_.x = _loc5_.x + _loc5_.width + 5;
         _loc4_.width = _loc2_.x - 5 - _loc4_.x;
         if(_loc3_.width < 0)
         {
            _loc3_.width = 0;
         }
         if(_loc4_.width < 0)
         {
            _loc4_.width = 0;
         }
         if(_loc1_ != null && _loc3_ != null && _loc4_ != null)
         {
            if(_loc1_.width > 0 && _loc1_.height > 0)
            {
               _loc7_ = new BitmapData(_loc1_.width,_loc1_.height);
               tileBitmapHorz(var_1844.clone(),_loc7_);
               _loc1_.bitmap = _loc7_;
            }
            if(_loc3_.width > 0 && _loc3_.height > 0)
            {
               _loc8_ = new BitmapData(_loc3_.width,_loc3_.height);
               tileBitmapHorz(var_1460.clone(),_loc8_);
               _loc3_.bitmap = _loc8_;
            }
            if(_loc4_.width > 0 && _loc4_.height > 0)
            {
               _loc9_ = new BitmapData(_loc4_.width,_loc4_.height);
               tileBitmapHorz(var_1460.clone(),_loc9_);
               _loc4_.bitmap = _loc9_;
            }
         }
         if(var_68 == null)
         {
            return;
         }
         var_68.bitmap = var_1846.clone();
      }
   }
}
