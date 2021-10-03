package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_680:int = 6;
      
      public static const const_196:int = 5;
      
      public static const const_713:int = 2;
      
      public static const const_335:int = 9;
      
      public static const const_284:int = 4;
      
      public static const const_241:int = 2;
      
      public static const const_711:int = 4;
      
      public static const const_211:int = 8;
      
      public static const const_726:int = 7;
      
      public static const const_261:int = 3;
      
      public static const const_325:int = 1;
      
      public static const const_205:int = 5;
      
      public static const const_446:int = 12;
      
      public static const const_324:int = 1;
      
      public static const const_663:int = 11;
      
      public static const const_563:int = 3;
      
      public static const const_1447:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_394:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_394 = new Array();
         var_394.push(new Tab(_navigator,const_325,const_446,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_387));
         var_394.push(new Tab(_navigator,const_241,const_324,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_387));
         var_394.push(new Tab(_navigator,const_284,const_663,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_883));
         var_394.push(new Tab(_navigator,const_261,const_196,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_387));
         var_394.push(new Tab(_navigator,const_205,const_211,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_535));
         setSelectedTab(const_325);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_394)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_394)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_284;
      }
      
      public function get tabs() : Array
      {
         return var_394;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
