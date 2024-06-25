x = cid_id.x + deltay
y = cid_id.y + random_P
image_angle = 0
image_xscale = 1.25;
image_yscale = 1.25;

deltay -= 12

if (testing.x_cooltime <= 0) {
	testing.a_possible = true
	instance_destroy();
}