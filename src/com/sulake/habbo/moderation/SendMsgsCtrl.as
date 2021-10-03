package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1246:String;
      
      private var _disposed:Boolean;
      
      private var var_1498:String;
      
      private var var_1247:int;
      
      private var _main:ModerationManager;
      
      private var var_848:IDropMenuWindow;
      
      private var var_403:ITextFieldWindow;
      
      private var var_52:IFrameWindow;
      
      private var var_293:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         _main = param1;
         var_1247 = param2;
         var_1498 = param3;
         var_1246 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_232)
         {
            return;
         }
         if(!var_293)
         {
            return;
         }
         var_403.text = "";
         var_293 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
      
      public function getId() : String
      {
         return var_1498;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_293 || false)
         {
            _main.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         _main.connection.send(new ModMessageMessageComposer(var_1247,var_403.text,var_1246));
         this.dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(_main.getXmlWindow("send_msgs"));
         var_52.caption = "Msg To: " + var_1498;
         var_52.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_403 = ITextFieldWindow(var_52.findChildByName("message_input"));
         var_403.procedure = onInputClick;
         var_848 = IDropMenuWindow(var_52.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_848);
         var_848.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_52.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + _main.initMsg.messageTemplates.length);
         param1.populate(_main.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_52 != null)
         {
            var_52.destroy();
            var_52 = null;
         }
         var_848 = null;
         var_403 = null;
         _main = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_55)
         {
            return;
         }
         var _loc3_:String = _main.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_293 = false;
            var_403.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1160;
      }
   }
}
