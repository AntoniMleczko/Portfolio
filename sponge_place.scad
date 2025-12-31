$fn = 50;

// Główny obiekt z wizualizacją wycięcia
difference() {
    // Główna obudowa
    color("white")
    difference() {
        // Zewnętrzna bryła
        minkowski() {
            cube([90, 70, 22], center = false);
            cylinder(h = 1, r = 12);
        }
        
        // Wewnętrzne wycięcie
        translate([2, 2, 2])
        minkowski() {
            cube([86, 56, 50], center = false);
            cylinder(h = 1, r = 12);
        }
    }
    
    // Wycięcie od przodu (pokazane na czerwono)
    color("red", 0.5)
    translate([-1, -20, 2])
    cube([92, 21, 50]);
}

// Drugi element - listwa/próg
color("white")
translate([0, 0, 2])
minkowski() {
    rotate([90, 0, 90])
    linear_extrude(height = 90, center = false)
    polygon(points = [
        [0, 0],
        [60, 0],
        [60, 7]
    ]);
    
    cylinder(h = 0.1, r = 12);
}

// Wypustki/mocowania
color("red")
union() {
    // Lewa strona
    translate([-12, 15, 10])
    cube([3.5, 1, 1]);
    
    translate([-12, 45, 10])
    cube([3.5, 1, 1]);
    
    // Prawa strona
    translate([98.5, 15, 10])  // Poprawione przesunięcie
    cube([3.5, 1, 1]);
    
    translate([98.5, 45, 10])  // Poprawione przesunięcie
    cube([3.5, 1, 1]);
}

// Tacka/wnętrze
//difference() {
//    color("grey", 0.5)  // Zwiększona przejrzystość
//    translate([2.5, 3, 11])
//    minkowski() {
//        cube([84, 54, 2], center = false);
//        cylinder(h = 1, r = 12);
//    }
    
// Wycięcie dla tacki
//     for (i=[0:19]) {
//	   translate([-4 + (i * 5), -1, 10])
//	   minkowski() {
//		 cube([1, 62, 4], center = false);
//		 cylinder(h = 1, r = 1);
//	   }
//     }
     
     
 //    }
     
// stojak na szmatkę
color("grey")
union() {
     translate([0, 75, 22])
     rotate([10, 0, 0])
     cylinder(h=150, r=3);
     translate([90, 75, 22])
     rotate([10, 0, 0])
     cylinder(h=150, r=3);
     
     translate([-5, 48, 172])
     rotate([0, 90, 0])
     cylinder(h=100, r=4);
     
}
     
