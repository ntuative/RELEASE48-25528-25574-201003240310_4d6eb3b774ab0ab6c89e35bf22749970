package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2068:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_133:TutorialUI;
      
      private var var_718:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_57:HelpUI;
      
      private var var_717:IHabboConfigurationManager;
      
      private var var_192:IHabboToolbar;
      
      private var var_597:HotelMergeUI;
      
      private var var_308:IHabboCommunicationManager;
      
      private var var_873:FaqIndex;
      
      private var var_1853:String = "";
      
      private var var_1094:IncomingMessages;
      
      private var var_1285:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1285 = new CallForHelpData();
         var_2068 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_873 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_192;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_57 != null)
         {
            var_57.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_57 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_57.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_133 != null)
         {
            var_133.dispose();
            var_133 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1853;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_57 != null)
         {
            var_57.dispose();
            var_57 = null;
         }
         if(var_133 != null)
         {
            var_133.dispose();
            var_133 = null;
         }
         if(var_597)
         {
            var_597.dispose();
            var_597 = null;
         }
         if(var_873 != null)
         {
            var_873.dispose();
            var_873 = null;
         }
         var_1094 = null;
         if(var_192)
         {
            var_192.release(new IIDHabboToolbar());
            var_192 = null;
         }
         if(var_718)
         {
            var_718.release(new IIDHabboLocalizationManager());
            var_718 = null;
         }
         if(var_308)
         {
            var_308.release(new IIDHabboCommunicationManager());
            var_308 = null;
         }
         if(var_717)
         {
            var_717.release(new IIDHabboConfigurationManager());
            var_717 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_718;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_97:
               if(var_57 != null)
               {
                  var_57.setRoomSessionStatus(true);
               }
               if(var_133 != null)
               {
                  var_133.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_99:
               if(var_57 != null)
               {
                  var_57.setRoomSessionStatus(false);
               }
               if(var_133 != null)
               {
                  var_133.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_57 != null)
         {
            var_57.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2068;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_57 != null)
         {
            var_57.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_597)
         {
            var_597 = new HotelMergeUI(this);
         }
         var_597.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_133 == null && _assetLibrary != null && _windowManager != null)
         {
            var_133 = new TutorialUI(this);
         }
         return var_133 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_57 == null && _assetLibrary != null && _windowManager != null)
         {
            var_57 = new HelpUI(this,_assetLibrary,_windowManager,var_718,var_192);
         }
         return var_57 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1285;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1285.reportedUserId = param1;
         var_1285.reportedUserName = param2;
         var_57.showUI(HabboHelpViewEnum.const_318);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1853 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_192 != null)
         {
            var_192.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_113,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_718 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_133 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_133.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_308 = IHabboCommunicationManager(param2);
         var_1094 = new IncomingMessages(this,var_308);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_57 != null)
         {
            var_57.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_57 != null)
         {
            var_57.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_308 != null && param1 != null)
         {
            var_308.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_873;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_57 != null)
         {
            var_57.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_192 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_717 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_133;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_83)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_54)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_597;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_97,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_99,onRoomSessionEvent);
         var_192.events.addEventListener(HabboToolbarEvent.const_83,onHabboToolbarEvent);
         var_192.events.addEventListener(HabboToolbarEvent.const_54,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_57 != null)
         {
            var_57.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_717 == null)
         {
            return param1;
         }
         return var_717.getKey(param1,param2,param3);
      }
   }
}
