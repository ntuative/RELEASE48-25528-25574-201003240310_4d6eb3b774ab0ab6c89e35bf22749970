package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1132:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_779:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1132 = param1;
         var_779 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_779;
      }
      
      public function get identifier() : IID
      {
         return var_1132;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1132 = null;
            while(false)
            {
               var_779.pop();
            }
            var_779 = null;
         }
      }
   }
}
