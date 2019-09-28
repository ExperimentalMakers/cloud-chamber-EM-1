//========== ASSEMBLY MODEL ==========//

include <../parameters.scad>

use <lib/ALU_profile.scad>
use <lib/ALU_profile_R.scad>
use <lib/ALU_profile_3N.scad>
use <lib/ALU_profile_2NVS.scad>


translate([chamber_width/2+ALU30_size/2, chamber_deepth/2+ALU30_size/2, -ALU30_size/2])
    rotate([0, 0, 0])
        ALU_profile_R(size = ALU30_size, height = chamber_height);

translate([chamber_width/2+ALU30_size/2, -chamber_deepth/2-ALU30_size/2, -ALU30_size/2])
    rotate([0, 0, -90])
        ALU_profile_R(size = ALU30_size, height = chamber_height);

translate([-chamber_width/2-ALU30_size/2, chamber_deepth/2+ALU30_size/2, -ALU30_size/2])
    rotate([0, 0, 90])
        ALU_profile_R(size = ALU30_size, height = chamber_height);

translate([-chamber_width/2-ALU30_size/2, -chamber_deepth/2-ALU30_size/2, -ALU30_size/2])
    rotate([0, 0, -180])
        ALU_profile_R(size = ALU30_size, height = chamber_height);



translate([chamber_width/2+ALU30_size/2, -chamber_deepth/2, 0])
    rotate([-90, 0, 0])
        ALU_profile_2NVS(size = ALU30_size, height = chamber_deepth);

translate([chamber_width/-2-ALU30_size/2, -chamber_deepth/2, 0])
    rotate([-90, 90, 0])
        ALU_profile_2NVS(size = ALU30_size, height = chamber_deepth);

translate([-chamber_width/2, -chamber_deepth/2-ALU30_size/2, 0])
    rotate([-90, 0, -90])
        ALU_profile_2NVS(size = ALU30_size, height = chamber_width);

translate([-chamber_width/2, chamber_deepth/2+ALU30_size/2, 0])
    rotate([0, 90, 0])
        ALU_profile_2NVS(size = ALU30_size, height = chamber_width);


translate([0, 0, chamber_height]) {
    rotate([180, 0, 0]) {
    translate([chamber_width/2+ALU30_size/2, -chamber_deepth/2, 0])
        rotate([-90, 0, 0])
            ALU_profile_R(size = ALU30_size, height = chamber_deepth);

    translate([chamber_width/-2-ALU30_size/2, -chamber_deepth/2, 0])
        rotate([-90, 90, 0])
            ALU_profile_R(size = ALU30_size, height = chamber_deepth);

    translate([-chamber_width/2, -chamber_deepth/2-ALU30_size/2, 0])
        rotate([-90, 0, -90])
            ALU_profile_R(size = ALU30_size, height = chamber_width);

    translate([-chamber_width/2, chamber_deepth/2+ALU30_size/2, 0])
        rotate([0, 90, 0])
            ALU_profile_R(size = ALU30_size, height = chamber_width);
    }
}


translate([-chamber_width/2, peltier_size_x/2+ALU20_size/2, chamber_height-ALU30_size/2-ALU20_size/2])
    rotate([0, 90, 0])
        ALU_profile(size = ALU20_size, height = chamber_width);

translate([-chamber_width/2, -peltier_size_x/2-ALU20_size/2, chamber_height-ALU30_size/2-ALU20_size/2])
    rotate([0, 90, 0])
        ALU_profile(size = ALU20_size, height = chamber_width);


translate([chamber_width/2+ALU30_size/2, chamber_deepth/2-ALU30_size/2-door_width, ALU30_size/2])
    rotate([0, 0, -90])
        ALU_profile_3N(size = ALU30_size, height = chamber_height-ALU30_size);