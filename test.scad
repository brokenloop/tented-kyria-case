// rotate([0, 15, 0]) {
//     translate([0, 0, 65]) { 
        
//         import("/home/daniel/3dprinting/openscad/kyria/right_case.stl");
//     }
// }

module raw_case() {
    import("/home/daniel/3dprinting/openscad/kyria/right_case.stl");
}

module cutaway_cube() {
    translate([0, -60, -10]) cube([200, 150, 40]);
}

module bottom_cube() {
    translate([-60, -60, -60]) cube([200, 150, 60]);
}

module base() {
    difference() {
        raw_case();
        cutaway_cube();
    }
}


difference() {
    translate([0, 0, 243]) rotate([0, 15, 0]) scale([1, 1, 20]) base();
    bottom_cube();
}

translate([-49.0, 0, 60]) rotate([0, 15, 0]) raw_case();

