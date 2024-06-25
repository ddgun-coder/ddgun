/// @description Insert description here
// You can write your code in this editor
if (to_cid == noone) instance_destroy();
if (to_cid.live == 0) instance_destroy();
if (to_cid.x < -100 or to_cid.y < -100) instance_destroy();

if (to_testingXY) {
    var temp_x = x;
    var temp_y = y;
    with (testing) {
        temp_x = other.to_cid.x + lengthdir_x(55, other.to_cid.YA - 90);
        temp_y = other.to_cid.y + lengthdir_y(55, other.to_cid.YA - 90);
        if (place_free(temp_x, temp_y)) {
            x = temp_x;
            y = temp_y;
            all_YA_change(other.to_cid.YA - 90);
        }
    }
    if (to_testingXY_time > 0) {
        to_testingXY_time--;
    }
    else {
        testing.sturn = 40;
        go_to_back();
    }
}
if (go_to_speed > 0) {
    go_to_speed = go_to_speed * 0.9;
    var dx = -lengthdir_x(go_to_speed, other_YA);
    var dy = -lengthdir_y(go_to_speed, other_YA);

    with (testing) {
        if (place_free(x + dx, y + dy)) {
            x += dx;
            y += dy;
        }
        else {
            sturn = 0;
            DMG(15, 25, 80);
            other.go_to_speed = 0;
            instance_destroy(other);
        }
    }
    if (go_to_speed <= 1) {
        instance_destroy();
    }
}