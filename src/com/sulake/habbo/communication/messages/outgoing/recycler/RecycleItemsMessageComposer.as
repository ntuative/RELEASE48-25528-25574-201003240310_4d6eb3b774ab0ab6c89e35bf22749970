package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_838:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_838 = new Array();
         var_838.push(param1.length);
         var_838 = var_838.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_838;
      }
   }
}
