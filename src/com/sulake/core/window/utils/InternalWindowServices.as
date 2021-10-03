package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_116:DisplayObject;
      
      private var var_2290:uint;
      
      private var var_800:IWindowToolTipAgentService;
      
      private var var_802:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_803:IWindowFocusManagerService;
      
      private var var_799:IWindowMouseListenerService;
      
      private var var_801:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2290 = 0;
         var_116 = param2;
         _windowContext = param1;
         var_801 = new WindowMouseDragger(param2);
         var_802 = new WindowMouseScaler(param2);
         var_799 = new WindowMouseListener(param2);
         var_803 = new FocusManager(param2);
         var_800 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_802;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_803;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_800;
      }
      
      public function dispose() : void
      {
         if(var_801 != null)
         {
            var_801.dispose();
            var_801 = null;
         }
         if(var_802 != null)
         {
            var_802.dispose();
            var_802 = null;
         }
         if(var_799 != null)
         {
            var_799.dispose();
            var_799 = null;
         }
         if(var_803 != null)
         {
            var_803.dispose();
            var_803 = null;
         }
         if(var_800 != null)
         {
            var_800.dispose();
            var_800 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_799;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_801;
      }
   }
}
