package com.sulake.core.utils
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.Dictionary;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   
   public class Map extends Proxy implements IDisposable
   {
       
      
      private var _length:uint;
      
      private var var_229:Array;
      
      private var var_28:Array;
      
      private var var_126:Dictionary;
      
      public function Map()
      {
         super();
         _length = 0;
         var_126 = new Dictionary();
         var_28 = [];
         var_229 = [];
      }
      
      public function remove(param1:*) : *
      {
         var _loc2_:Object = var_126[param1];
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:int = var_28.indexOf(_loc2_);
         if(_loc3_ >= 0)
         {
            var_28.splice(_loc3_,1);
            var_229.splice(_loc3_,1);
            --_length;
         }
         delete var_126[param1];
         return _loc2_;
      }
      
      public function unshift(param1:*, param2:*) : Boolean
      {
         if(false)
         {
            return false;
         }
         var_126[param1] = param2;
         var_28.unshift(param2);
         var_229.unshift(param1);
         ++_length;
         return true;
      }
      
      override flash_proxy function getProperty(param1:*) : *
      {
         if(param1 is QName)
         {
            param1 = QName(param1).localName;
         }
         return var_126[param1];
      }
      
      public function reset() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in var_126)
         {
            delete var_126[_loc1_];
         }
         _length = 0;
         var_28 = [];
         var_229 = [];
      }
      
      override flash_proxy function nextNameIndex(param1:int) : int
      {
         if(param1 < var_229.length)
         {
            return param1 + 1;
         }
         return 0;
      }
      
      override flash_proxy function setProperty(param1:*, param2:*) : void
      {
         if(param1 is QName)
         {
            param1 = QName(param1).localName;
         }
         var_126[param1] = param2;
         var _loc3_:int = var_229.indexOf(param1);
         if(_loc3_ == -1)
         {
            var_28[_length] = param2;
            var_229[_length] = param1;
            ++_length;
         }
         else
         {
            var_28.splice(_loc3_,1,param2);
         }
      }
      
      public function getValues() : Array
      {
         return var_28.slice();
      }
      
      override flash_proxy function nextName(param1:int) : String
      {
         return var_229[param1 - 1];
      }
      
      public function add(param1:*, param2:*) : Boolean
      {
         if(false)
         {
            return false;
         }
         var_126[param1] = param2;
         var_28[_length] = param2;
         var_229[_length] = param1;
         ++_length;
         return true;
      }
      
      override flash_proxy function callProperty(param1:*, ... rest) : *
      {
         var _loc3_:* = null;
         if(param1.localName == "toString")
         {
            return "Map";
         }
         return null;
      }
      
      public function get disposed() : Boolean
      {
         return var_126 == null;
      }
      
      public function get length() : uint
      {
         return _length;
      }
      
      public function getKey(param1:int) : *
      {
         if(param1 < 0 || param1 >= _length)
         {
            return null;
         }
         return var_229[param1];
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(var_126 != null)
         {
            for(_loc1_ in var_126)
            {
               delete var_126[_loc1_];
            }
            var_126 = null;
         }
         _length = 0;
         var_28 = null;
         var_229 = null;
      }
      
      public function getKeys() : Array
      {
         return var_229.slice();
      }
      
      public function getWithIndex(param1:int) : *
      {
         if(param1 < 0 || param1 >= _length)
         {
            return null;
         }
         return var_28[param1];
      }
      
      public function getValue(param1:*) : *
      {
         return var_126[param1];
      }
      
      override flash_proxy function nextValue(param1:int) : *
      {
         return var_28[param1 - 1];
      }
   }
}
