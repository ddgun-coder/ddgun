/// @description Insert description here
// You can write your code in this editor
with (obj_babo_skill1) {
	if (other.cid == cid and move_first and image_index < 2) {
		var to_time = 15; //두번째로 플레이어 앞으로 갈때의 시간
		
		image_index++;
		image_xscale = cid_id.big_val * 1
		image_yscale = cid_id.big_val * 1//해당 캐릭터의 크기로 조정
		audio_play_sound(kpower_1_sound, 9,false);
		alarm[3] = to_time;//알람3에는 바로 멈추는 기능이 존재
		spin_delay = 40; //이경우 매프레임마다 40만큼 빠르게 움직임
		delay = 0;//감속 0으로 초기화
		go_speed = max(point_distance(x, y, other.x, other.y) / to_time + 7, to_time) + 15; //to_time + 7은 캐릭터 앞으로 가는 것이고, 15만큼 추가로 있기 때문에 최종거리는 +15*15 추가됨
		angle = point_direction(x, y, other.x, other.y); //캐릭터 앞의 방향으로 설정
	}
}