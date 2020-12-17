module raw_case() {
    import("dependencies/left_case.stl");
}

module cutaway_cube() {
    translate([-230, -60, -9]) cube([200, 150, 40]);
}

module bottom_cube() {
    width = 500;
    height = 80;
    translate([0, 0, -height/2]) cube([width, width, height], center=true);
}

module base() {
    difference() {
        union() {
            raw_case();
            translate([-200, -10, -12]) cube([130, 65, 3]);
            translate([-84, -21, -12]) cube([10, 10, 3]);
            translate([-120, 55, -12]) cube([10, 10, 3]);
        }
        cutaway_cube();
    }
}

module left_case() {
    difference() {
        translate([0, 0, 61]) {
            rotate([0, -15, 0]) {
                union() {
                    translate([0, 0, 174.5]) {
                        scale([1, 1, 20]) base();
                    }
                  raw_case();
                }
            }
        }
        bottom_cube();
    }
}

left_case();
