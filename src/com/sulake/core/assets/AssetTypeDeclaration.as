package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1927:Class;
      
      private var var_1929:Class;
      
      private var var_1928:String;
      
      private var var_1232:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1928 = param1;
         var_1929 = param2;
         var_1927 = param3;
         if(rest == null)
         {
            var_1232 = new Array();
         }
         else
         {
            var_1232 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1927;
      }
      
      public function get assetClass() : Class
      {
         return var_1929;
      }
      
      public function get mimeType() : String
      {
         return var_1928;
      }
      
      public function get fileTypes() : Array
      {
         return var_1232;
      }
   }
}
