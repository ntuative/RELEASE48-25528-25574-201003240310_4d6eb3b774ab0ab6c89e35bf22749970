package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_546:String = "me_menu_settings_view";
      
      public static const const_624:String = "me_menu_effects_view";
      
      public static const const_130:String = "me_menu_top_view";
      
      public static const const_1311:String = "me_menu_rooms_view";
      
      public static const const_914:String = "me_menu_dance_moves_view";
      
      public static const const_305:String = "me_menu_my_clothes_view";
       
      
      private var var_2000:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1500:int = 0;
      
      private var var_2001:int = 0;
      
      private var var_1998:Boolean = false;
      
      private var var_265:Boolean = false;
      
      private var var_1999:int = 0;
      
      private var var_1830:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_587:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1249:int = 0;
      
      private var var_2002:Boolean = false;
      
      private var var_1019:Point;
      
      private var var_37:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1019 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2002 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_130);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_694,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_742,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_584,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_572,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_285,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_577,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_212,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_202,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_643,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_226,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_300,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_100,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_386,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_171,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_587;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_265)
         {
            return;
         }
         if(var_37.window.name == const_546)
         {
            (var_37 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1249 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1500 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1500.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_265 && var_37.window.name == const_305))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_688);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_694,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_742,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_584,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_572,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_285,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_212,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_202,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_643,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_577,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_226,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_300,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_386,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_100,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_171,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_37 != null)
         {
            var_37.dispose();
            var_37 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2000;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1830 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function get creditBalance() : int
      {
         return var_1500;
      }
      
      public function get isDancing() : Boolean
      {
         return var_1998;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_386:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_265 + " view: " + var_37.window.name);
               if(var_265 != true || var_37.window.name != const_130)
               {
                  return;
               }
               (var_37 as MeMenuMainView).setIconAssets("clothes_icon",const_130,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_100:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1830 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2001;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_587 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_587 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1249 > 0;
         var_1249 = param1.daysLeft;
         var_2001 = param1.periodsLeft;
         var_1999 = param1.pastPeriods;
         var_2000 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_37 != null)
            {
               changeView(var_37.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1998 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_37 != null && var_37.window.name != const_305)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1183,HabboWindowStyle.const_832,HabboWindowParam.const_40,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_587 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_587 = true;
            }
         }
         if(var_37 != null && var_37.window.name == const_624)
         {
            (var_37 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1999;
      }
      
      public function get habboClubDays() : int
      {
         return var_1249;
      }
      
      public function updateSize() : void
      {
         if(var_37 != null)
         {
            var_1019.x = var_37.window.width + 10;
            var_1019.y = var_37.window.height;
            var_37.window.x = 5;
            var_37.window.y = 0;
            _mainContainer.width = var_1019.x;
            _mainContainer.height = var_1019.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_265 = !var_265;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_265 = false;
               break;
            default:
               return;
         }
         if(var_265)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_554);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_37 != null)
         {
            _mainContainer.removeChild(var_37.window);
            var_37.dispose();
            var_37 = null;
         }
         var_265 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_37 != null && var_37.window.name == const_305)
         {
            changeView(const_130);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2002;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_130:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_624:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_914:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_305:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1311:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_546:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_37 != null)
            {
               _mainContainer.removeChild(var_37.window);
               var_37.dispose();
               var_37 = null;
            }
            var_37 = _loc2_;
            var_37.init(this,param1);
         }
         updateSize();
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_130);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_668);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_265 = true;
      }
   }
}
