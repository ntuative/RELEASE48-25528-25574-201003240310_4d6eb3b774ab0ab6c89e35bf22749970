package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1464:GarbageMonitor = null;
      
      private var var_1191:int = 0;
      
      private var var_1238:Boolean = false;
      
      private var var_1857:String = "";
      
      private var var_1463:String = "";
      
      private var var_342:Number = 0;
      
      private var var_1193:int = 10;
      
      private var var_2297:Array;
      
      private var var_632:int = 0;
      
      private var var_1194:int = 60;
      
      private var var_989:int = 0;
      
      private var var_990:int = 0;
      
      private var var_1966:String = "";
      
      private var var_1859:Number = 0;
      
      private var var_1195:int = 1000;
      
      private var var_1858:Boolean = true;
      
      private var var_1860:Number = 0.15;
      
      private var var_152:IHabboConfigurationManager = null;
      
      private var var_1861:String = "";
      
      private var var_1192:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2297 = [];
         super();
         var_1463 = Capabilities.version;
         var_1857 = Capabilities.os;
         var_1238 = Capabilities.isDebugger;
         var_1861 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1464 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1191 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1464.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1464.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_342;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1194 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1463;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_990;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1195)
         {
            ++var_989;
            _loc3_ = true;
         }
         else
         {
            ++var_632;
            if(var_632 <= 1)
            {
               var_342 = param1;
            }
            else
            {
               _loc4_ = Number(var_632);
               var_342 = var_342 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1191 > var_1194 * 1000 && var_1192 < var_1193)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_342);
            _loc5_ = true;
            if(var_1858 && var_1192 > 0)
            {
               _loc6_ = differenceInPercents(var_1859,var_342);
               if(_loc6_ < var_1860)
               {
                  _loc5_ = false;
               }
            }
            var_1191 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1859 = var_342;
               if(sendReport())
               {
                  ++var_1192;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1193 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1195 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1861,var_1463,var_1857,var_1966,var_1238,_loc4_,_loc3_,var_990,var_342,var_989);
            _connection.send(_loc1_);
            var_990 = 0;
            var_342 = 0;
            var_632 = 0;
            var_989 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_152 = param1;
         var_1194 = int(var_152.getKey("performancetest.interval","60"));
         var_1195 = int(var_152.getKey("performancetest.slowupdatelimit","1000"));
         var_1193 = int(var_152.getKey("performancetest.reportlimit","10"));
         var_1860 = Number(var_152.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1858 = Boolean(int(var_152.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
