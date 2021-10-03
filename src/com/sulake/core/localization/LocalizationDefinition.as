package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1492:String;
      
      private var var_931:String;
      
      private var var_1493:String;
      
      private var var_1491:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1491 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1492 = _loc5_[0];
         var_1493 = _loc5_[1];
         _name = param2;
         var_931 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1492;
      }
      
      public function get languageCode() : String
      {
         return var_1491;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_931;
      }
      
      public function get encoding() : String
      {
         return var_1493;
      }
      
      public function get id() : String
      {
         return var_1491 + "_" + var_1492 + "." + var_1493;
      }
   }
}
