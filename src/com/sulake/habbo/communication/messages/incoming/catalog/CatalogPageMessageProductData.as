package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_215:String = "e";
      
      public static const const_76:String = "i";
      
      public static const const_80:String = "s";
       
      
      private var var_1003:String;
      
      private var var_1220:String;
      
      private var var_1219:int;
      
      private var var_2159:int;
      
      private var var_1002:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1220 = param1.readString();
         var_2159 = param1.readInteger();
         var_1003 = param1.readString();
         var_1002 = param1.readInteger();
         var_1219 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1002;
      }
      
      public function get productType() : String
      {
         return var_1220;
      }
      
      public function get expiration() : int
      {
         return var_1219;
      }
      
      public function get furniClassId() : int
      {
         return var_2159;
      }
      
      public function get extraParam() : String
      {
         return var_1003;
      }
   }
}
