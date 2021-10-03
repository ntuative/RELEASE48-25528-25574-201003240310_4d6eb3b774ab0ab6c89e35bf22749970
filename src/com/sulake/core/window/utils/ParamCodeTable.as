package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_115;
         param1["bound_to_parent_rect"] = const_87;
         param1["child_window"] = const_1025;
         param1["embedded_controller"] = const_321;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_695;
         param1["mouse_dragging_target"] = const_209;
         param1["mouse_dragging_trigger"] = const_320;
         param1["mouse_scaling_target"] = const_263;
         param1["mouse_scaling_trigger"] = const_453;
         param1["horizontal_mouse_scaling_trigger"] = const_222;
         param1["vertical_mouse_scaling_trigger"] = const_233;
         param1["observe_parent_input_events"] = const_858;
         param1["optimize_region_to_layout_size"] = const_400;
         param1["parent_window"] = const_966;
         param1["relative_horizontal_scale_center"] = const_163;
         param1["relative_horizontal_scale_fixed"] = const_111;
         param1["relative_horizontal_scale_move"] = const_291;
         param1["relative_horizontal_scale_strech"] = const_270;
         param1["relative_scale_center"] = const_953;
         param1["relative_scale_fixed"] = const_536;
         param1["relative_scale_move"] = const_841;
         param1["relative_scale_strech"] = const_909;
         param1["relative_vertical_scale_center"] = const_154;
         param1["relative_vertical_scale_fixed"] = const_116;
         param1["relative_vertical_scale_move"] = const_336;
         param1["relative_vertical_scale_strech"] = const_268;
         param1["on_resize_align_left"] = const_506;
         param1["on_resize_align_right"] = const_352;
         param1["on_resize_align_center"] = const_473;
         param1["on_resize_align_top"] = const_685;
         param1["on_resize_align_bottom"] = const_362;
         param1["on_resize_align_middle"] = const_468;
         param1["on_accommodate_align_left"] = const_906;
         param1["on_accommodate_align_right"] = const_409;
         param1["on_accommodate_align_center"] = const_728;
         param1["on_accommodate_align_top"] = const_819;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_605;
         param1["route_input_events_to_parent"] = const_443;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_916;
         param1["scalable_with_mouse"] = const_886;
         param1["reflect_horizontal_resize_to_parent"] = const_375;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_276;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
