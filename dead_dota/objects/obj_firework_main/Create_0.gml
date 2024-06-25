/// @description Insert description here
// You can write your code in this editor
skill_create(81);
alarm[1] = 1;
num = 0;

image_blend = c_white;
image_blend2 = c_white;


var _curve = animcurve_get(AnimationCurve1);
channel = _curve.channels[0];
time = 0;
audio_play_sound(snd_firework_bang, 0, false);
scale = 1;