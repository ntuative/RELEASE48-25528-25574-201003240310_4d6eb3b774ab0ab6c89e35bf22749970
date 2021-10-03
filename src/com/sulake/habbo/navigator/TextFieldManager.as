package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2293:Boolean;
      
      private var var_1425:int;
      
      private var var_2292:String = "";
      
      private var var_67:ITextFieldWindow;
      
      private var var_2291:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1276:String = "";
      
      private var var_149:IWindowContainer;
      
      private var var_293:Boolean;
      
      private var var_1164:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_67 = param2;
         var_1425 = param3;
         var_1164 = param4;
         if(param5 != null)
         {
            var_293 = true;
            var_1276 = param5;
            var_67.text = param5;
         }
         Util.setProcDirectly(var_67,onInputClick);
         var_67.addEventListener(WindowKeyboardEvent.const_137,checkEnterPress);
         var_67.addEventListener(WindowEvent.const_150,checkMaxLen);
         this.var_2293 = var_67.textBackground;
         this._orgTextBackgroundColor = var_67.textBackgroundColor;
         this.var_2291 = var_67.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1164 != null)
            {
               var_1164();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1276 != null)
         {
            var_67.text = var_1276;
            var_293 = true;
         }
         else
         {
            var_67.text = "";
            var_293 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_67;
      }
      
      public function restoreBackground() : void
      {
         var_67.textBackground = this.var_2293;
         var_67.textBackgroundColor = this._orgTextBackgroundColor;
         var_67.textColor = this.var_2291;
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
         var_67.text = var_2292;
         var_293 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_149 != null)
         {
            var_149.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_67.textBackground = true;
         var_67.textBackgroundColor = 4294021019;
         var_67.textColor = 4278190080;
         if(this.var_149 == null)
         {
            this.var_149 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_149,"popup_arrow_down",true,null,0);
            IWindowContainer(var_67.parent).addChild(this.var_149);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_149.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_149.findChildByName("border").width = _loc2_.width + 15;
         var_149.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_67.getLocalPosition(_loc3_);
         this.var_149.x = _loc3_.x;
         this.var_149.y = _loc3_.y - this.var_149.height + 3;
         var _loc4_:IWindow = var_149.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_149.width / 2 - _loc4_.width / 2;
         var_149.x += (0 - 0) / 2;
         this.var_149.visible = true;
      }
      
      public function getText() : String
      {
         if(var_293)
         {
            return var_2292;
         }
         return var_67.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_293 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_293 = false;
         var_67.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1425)
         {
            var_67.text = _loc2_.substring(0,var_1425);
         }
      }
   }
}
