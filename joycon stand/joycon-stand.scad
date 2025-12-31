$fn = 1000;

// Główny kształt podstawy
color("white")
cylinder(h=3, r=25);

// Definicja modułu catch
module catch() {
    union() {
        translate([1.15, 2.17, 0]) 
        cube([7.25, 4, 100]);
        cube([9.55, 2.17, 100]);
    }
}

color("#9c5151")
union() {
     difference() {
	   translate([0, 0, 3])
	   cylinder(h=100, r=8);
	   
	   translate([0, 0, 2])
	   cylinder(h=103, r=6);
     }
     
     // clipsy na strippy
     translate([-5, -13, 3])
     rotate([0, 0, 0])
     catch();

     translate([4.5, 13, 3])
     rotate([0, 0, 180])
     catch();
     
     translate([13, -5, 3])
     rotate([0, 0, 90])
     catch();
     
     translate([-13, 5, 3])
     rotate([0, 0, -90])
     catch();
}