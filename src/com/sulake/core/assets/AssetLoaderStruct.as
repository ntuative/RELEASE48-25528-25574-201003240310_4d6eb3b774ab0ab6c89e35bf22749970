package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_755:IAssetLoader;
      
      private var var_1248:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1248 = param1;
         var_755 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_755;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_755 != null)
            {
               if(true)
               {
                  var_755.dispose();
                  var_755 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1248;
      }
   }
}
