package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1083:SoundChannel = null;
      
      private var var_918:Boolean;
      
      private var var_1082:Sound = null;
      
      private var var_741:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1082 = param1;
         var_1082.addEventListener(Event.COMPLETE,onComplete);
         var_741 = 1;
         var_918 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_918;
      }
      
      public function stop() : Boolean
      {
         var_1083.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_918 = false;
         var_1083 = var_1082.play(0);
         this.volume = var_741;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_741;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1083.position;
      }
      
      public function get length() : Number
      {
         return var_1082.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_741 = param1;
         if(var_1083 != null)
         {
            var_1083.soundTransform = new SoundTransform(var_741);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_918 = true;
      }
   }
}
