include <../../parameters.scad>

use <fitting.scad>

fins_count = floor(mm_to_inch(fan_size*3)*radiator_fpi);
fins_height = ((radiator_height-radiator_frame_thickness*2)-(radiator_pipe_thickness*radiator_pipe_count))/(radiator_pipe_count+1);

module radiator() {
    //mount
    difference() {
        union() {
            translate([radiator_fans_translate+fan_size-radiator_mount_width/2, 0, 0])
                cube([radiator_mount_width, radiator_thickness, radiator_mount_height]);

            translate([radiator_fans_translate+fan_size*2-radiator_mount_width/2, 0, 0])
                cube([radiator_mount_width, radiator_thickness, radiator_mount_height]);

            translate([radiator_fans_translate+fan_size-radiator_mount_width/2, 0, radiator_height-radiator_mount_height])
                cube([radiator_mount_width, radiator_thickness, radiator_mount_height]);

            translate([radiator_fans_translate+fan_size*2-radiator_mount_width/2, 0, radiator_height-radiator_mount_height])
                cube([radiator_mount_width, radiator_thickness, radiator_mount_height]);


            translate([radiator_fans_translate, 0, 0])
                cube([radiator_mount_width/2, radiator_thickness, radiator_mount_height]);

            translate([radiator_fans_translate, 0, radiator_height-radiator_mount_height])
                cube([radiator_mount_width/2, radiator_thickness, radiator_mount_height]);
            
            translate([radiator_fans_translate+fan_size*3-radiator_mount_width/2, 0, 0])
                cube([radiator_mount_width/2, radiator_thickness, radiator_mount_height]);

            translate([radiator_fans_translate+fan_size*3-radiator_mount_width/2, 0, radiator_height-radiator_mount_height])
                cube([radiator_mount_width/2, radiator_thickness, radiator_mount_height]);
        }

        translate([0, radiator_mount_thickness, -radiator_height/2])
            cube([radiator_width, radiator_thickness-radiator_mount_thickness*2, radiator_height*2]);

        translate([radiator_fans_translate+fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);

        translate([radiator_fans_translate+fan_size*3-fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size*3-fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);

        translate([radiator_fans_translate+fan_size+fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size+fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size-fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size-fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);

        translate([radiator_fans_translate+fan_size*2+fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size*2+fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size*2-fan_screw_distance, 0, fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
        translate([radiator_fans_translate+fan_size*2-fan_screw_distance, 0, radiator_height-fan_screw_distance])
            rotate([90, 0, 0])
                cylinder(d=fan_screw_diameter, h=radiator_thickness*3, center=true, $fn=20);
    }

    //fins
    union() {
        translate([radiator_width-(radiator_width-(fan_size*3+radiator_fans_translate+radiator_frame_thickness))/2, radiator_frame_thickness, radiator_height/5])
            rotate([90, 0, 0])
                fitting();
        translate([radiator_width-(radiator_width-(fan_size*3+radiator_fans_translate+radiator_frame_thickness))/2, radiator_frame_thickness, radiator_height*4/5])
            rotate([90, 0, 0])
                fitting();

        translate([radiator_fans_translate, radiator_frame_overhang, radiator_frame_thickness])
        for(i = [1:radiator_pipe_count]) {
            hull() {
                translate([0, radiator_pipe_thickness/2, i*fins_height+radiator_pipe_thickness*i])
                    rotate([0, 90, 0])
                        cylinder(d=radiator_pipe_thickness, h=fan_size*3, $fn=20);

                translate([0, radiator_thickness-radiator_frame_overhang*2-radiator_pipe_thickness/2, i*fins_height+radiator_pipe_thickness*i])
                    rotate([0, 90, 0])
                        cylinder(d=radiator_pipe_thickness, h=fan_size*3, $fn=20);
            }
        }

        translate([radiator_fans_translate, radiator_frame_overhang, radiator_frame_thickness])
        for(i = [1:fins_count]) {
            translate([i*(fan_size*3/fins_count), 0, 0])
                cube([radiator_fin_thickness, radiator_thickness-radiator_frame_overhang*2, radiator_height-radiator_frame_thickness*2]);
        }
    }

    //frame
    difference() {
        union() {
            cube([radiator_width, radiator_thickness, radiator_height]);
        }

        translate([radiator_width-(radiator_width-(fan_size*3+radiator_fans_translate+radiator_frame_thickness))/2, radiator_thickness/2, radiator_height/5])
            rotate([90, 0, 0])
                cylinder(d=fitting_thread_diameter, h=100, $fn=50);

        translate([radiator_width-(radiator_width-(fan_size*3+radiator_fans_translate+radiator_frame_thickness))/2, radiator_thickness/2, radiator_height*4/5])
            rotate([90, 0, 0])
                cylinder(d=fitting_thread_diameter, h=100, $fn=50);

        translate([radiator_fans_translate, -0.1, radiator_frame_thickness])
            cube([fan_size*3, radiator_thickness+0.2, radiator_height-radiator_frame_thickness*2]);

        translate([radiator_fans_translate+fan_size*3+radiator_frame_thickness, -radiator_thickness/2, radiator_height/2])
            rotate([0, 45, 0])
                cube([500, radiator_thickness*2, 500]);

        translate([radiator_fans_translate+fan_size*3+radiator_frame_thickness, -0.1, -0.1])
            cube([100, radiator_frame_thickness, radiator_height+0.2]);

        translate([radiator_fans_translate+fan_size*3+radiator_frame_thickness, radiator_thickness-radiator_frame_thickness, -0.1])
            cube([100, radiator_frame_thickness+0.1, radiator_height+0.2]);

        translate([-0.1, -0.1, -0.1])
            cube([radiator_fans_translate-radiator_frame_thickness+0.1, radiator_frame_thickness+0.1, radiator_height+0.2]);

        translate([-0.1, radiator_thickness-radiator_frame_thickness, -0.1])
            cube([radiator_fans_translate-radiator_frame_thickness+0.1, radiator_frame_thickness+0.1, radiator_height+0.2]);
    }
}

radiator();