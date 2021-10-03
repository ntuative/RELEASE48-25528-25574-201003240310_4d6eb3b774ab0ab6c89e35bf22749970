package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_627;
         param1["bitmap"] = const_673;
         param1["border"] = const_528;
         param1["border_notify"] = const_1163;
         param1["button"] = const_425;
         param1["button_thick"] = const_610;
         param1["button_icon"] = const_1238;
         param1["button_group_left"] = const_542;
         param1["button_group_center"] = const_660;
         param1["button_group_right"] = const_594;
         param1["canvas"] = const_598;
         param1["checkbox"] = const_586;
         param1["closebutton"] = const_860;
         param1["container"] = const_309;
         param1["container_button"] = const_547;
         param1["display_object_wrapper"] = const_575;
         param1["dropmenu"] = const_359;
         param1["dropmenu_item"] = const_434;
         param1["frame"] = const_330;
         param1["frame_notify"] = const_1151;
         param1["header"] = const_507;
         param1["icon"] = const_1019;
         param1["itemgrid"] = const_960;
         param1["itemgrid_horizontal"] = const_399;
         param1["itemgrid_vertical"] = const_672;
         param1["itemlist"] = const_836;
         param1["itemlist_horizontal"] = const_322;
         param1["itemlist_vertical"] = const_308;
         param1["maximizebox"] = const_1300;
         param1["menu"] = const_1400;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_891;
         param1["minimizebox"] = const_1222;
         param1["notify"] = const_1224;
         param1["null"] = const_645;
         param1["password"] = const_500;
         param1["radiobutton"] = const_697;
         param1["region"] = const_477;
         param1["restorebox"] = const_1148;
         param1["scaler"] = const_503;
         param1["scaler_horizontal"] = const_1393;
         param1["scaler_vertical"] = const_1195;
         param1["scrollbar_horizontal"] = const_456;
         param1["scrollbar_vertical"] = const_612;
         param1["scrollbar_slider_button_up"] = const_809;
         param1["scrollbar_slider_button_down"] = const_831;
         param1["scrollbar_slider_button_left"] = const_820;
         param1["scrollbar_slider_button_right"] = const_999;
         param1["scrollbar_slider_bar_horizontal"] = const_942;
         param1["scrollbar_slider_bar_vertical"] = const_851;
         param1["scrollbar_slider_track_horizontal"] = const_900;
         param1["scrollbar_slider_track_vertical"] = const_1001;
         param1["scrollable_itemlist"] = const_1268;
         param1["scrollable_itemlist_vertical"] = const_450;
         param1["scrollable_itemlist_horizontal"] = const_854;
         param1["selector"] = const_706;
         param1["selector_list"] = const_556;
         param1["submenu"] = const_891;
         param1["tab_button"] = const_730;
         param1["tab_container_button"] = const_1018;
         param1["tab_context"] = const_354;
         param1["tab_content"] = const_975;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_521;
         param1["input"] = const_545;
         param1["toolbar"] = const_1166;
         param1["tooltip"] = const_333;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
