module raw_case() {
    import("left_case.stl");
}

module cutaway_cube() {
    translate([-230, -60, -9]) cube([200, 150, 40]);
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

module left_case() {
    difference() {
        translate([110, 0, 230.1]) rotate([0, -15, 0]) scale([1, 1, 20]) base();
        bottom_cube();
    }

    translate([154, 0, 66]) rotate([0, -15, 0]) raw_case();
}

left_case();