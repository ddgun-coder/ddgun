if (point_distance(x, y, other.x, other.y) < 400) {
	if (sturn <= 0 and live != 0) {
		hp -= 30;
		sturn = 200;
	}
}
else {
	hp -= 1;
}