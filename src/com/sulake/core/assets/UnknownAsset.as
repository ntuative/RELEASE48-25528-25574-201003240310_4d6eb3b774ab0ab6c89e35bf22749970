package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1114:AssetTypeDeclaration;
      
      private var var_931:String;
      
      private var var_19:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1114 = param1;
         var_931 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1114;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_19 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_19 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_19;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_19 = null;
            var_1114 = null;
            var_931 = null;
         }
      }
      
      public function get url() : String
      {
         return var_931;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_19;
      }
   }
}
