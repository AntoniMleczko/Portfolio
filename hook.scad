module hook() {
	translate([2, 0, 0])
	minkowski() {
		cube([5, 35, 3]);
		
		cylinder(h=3, r=8, $fn=1000);
	}

	minkowski() {
		rotate([0, -90, 0])
		translate([6, 8, -10])

		linear_extrude(11)
		polygon(points=[
				[0, 0],
				[20, 13],
				[0, 5]]);
		
		cylinder(h=1, r=1, $fn=100);
	}
}

difference() {
	hook();
	
	translate([4.5, 0, -0.5])
	cylinder(h=10, r=2.5, $fn=100);
	
	translate([4.5, 0, 3.1])
	cylinder(h=6, r=4, $fn=100);
	
	translate([4.5, 35, -0.5])
	cylinder(h=10, r=2.5, $fn=100);
	
	translate([4.5, 35, 3.1])
	cylinder(h=6, r=4, $fn=100);
}