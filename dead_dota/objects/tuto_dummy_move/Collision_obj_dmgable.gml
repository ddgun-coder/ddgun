/// @description Insert description here
// You can write your code in this editor
if (sturn <= 0 and live == 1) {
   var dmg = 0;
   var sturn_time = 30;
   if (variable_instance_exists(other, "team")) {
		if (other.team != -1) {
			if (!variable_instance_exists(other, "dmg")) {
	         dmg = 20;
	      }
	      else {
	         dmg = other.dmg;   
	      }
	      if (!variable_instance_exists(other, "sturn")) {
			sturn_time = 30;
			testing.chat6 = testing.chat5;
			testing.chat5 = testing.chat4;
			testing.chat4 = testing.chat3;
			testing.chat3 = testing.chat2;
			testing.chat2 = testing.chat1;
		}
		else {
			sturn_time = other.sturn;
		}
		if(dmg > 0) {
			hp -= dmg;
			sturn = sturn_time;
			audio_play_sound(have_hit, 9,false);
			var show = instance_create_depth(x, y, depth - 1, DMG_show);
			show.d = dmg;
	    }
		}
	}
}
