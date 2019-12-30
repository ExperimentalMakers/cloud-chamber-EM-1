//|==========================================|//
//|               CLOUD CHAMBER              |//
//|==========================================|//


//========== FUNCTIONS ==========//

//unit conversions
function inch_to_mm(inch) = inch*25.4;
function mm_to_inch(mm) = mm/25.4;


//========== SCREWS ==========//

//Screw diameter and nut for M10 [mm]
M10_screw_diameter=10.4;
M10_head_height = 10;
M10_head_diameter = 16+0.5;
M10_nut_height = 10.5;
M10_nut_diameter = 25.5;
M10_nut_pocket = 22.3;

//Screw diameter and nut for M8 [mm]
M8_screw_diameter = 8 + 1;
M8_head_height = 8;
M8_head_diameter = 13.5;
M8_nut_height = 7.5;
M8_nut_diameter = 14.4 + 0.5;
M8_nut_pocket = 13 + 0.5;

//Screw diameter and nut for M6 [mm]
M6_screw_diameter=6.5;
M6_head_diameter = 10+0.5;
M6_head_height = 6;
M6_nut_height = 4.9;
M6_nut_diameter = 11.8;
M6_nut_pocket = 10.4;

//Screw diameter and nut for M5 [mm]
M5_screw_diameter=5.5;
M5_head_height = 5;
M5_head_diameter = 13+0.5;
M5_nut_height = 4.5;
M5_nut_diameter = 9.4;
M5_nut_pocket = 8.4;

//Screw diameter and nut for M4 [mm]
M4_screw_diameter=4.5;
M4_screw_head_height = 4;
M4_nut_height = 3.2;
M4_nut_diameter = 8.4;
M4_nut_pocket = 7.5;

//Screw diameter and nut for M3 [mm]
M3_screw_diameter = 3.2;
M3_nut_height = 2.7;
M3_nut_diameter = 6.6;
M3_screw_head_height = 3;
M3_nut_pocket = 5.6;

//Screw diameter and nut for M2,5 [mm]
M2_5_screw_diameter = 2.7;
M2_5_nut_height = 2.3;
M2_5_nut_diameter = 6;
M2_5_nut_pocket = 5.1;


//========== CHAMBER ==========//

//observation_surface_x
observation_surface_x = 200.5;
observation_surface_y = 100.5;

//cooper block
cooper_block_x = 200;
cooper_block_y = 100;
cooper_block_thickness = 8;

//chamber frame
chamber_width = 400;
chamber_deepth = 350;
chamber_height = 250;

//service door
door_width = 200;

//peltiers
peltier_size_x = 40;
peltier_size_y = 40;
peltier_thickness = 2.9;
peltier_cable_diameter = 4;

//water ALU block
water_block_width = 40;
water_block_length = 120;
water_block_thickness = 12.5;

//hose
hose_outer_diameter = 10;
hose_inner_diameter = 8;

//nextion display 2.8"
nextion_board_width = 85;
nextion_board_height = 50;
nextion_board_thickness = 1.6;
nextion_display_width = 69.5;
nextion_display_height = 50;
nextion_thickness = 7;
nextion_screw_diameter = M2_5_screw_diameter;
nextion_screw_width_distance = 78.5;
nextion_screw_height_distance = 49;


//========== ALU PROFILES ==========//

//30x30 profile
ALU30_size = 30;
ALU30_groove = 8;

//20x20 profile
ALU20_size = 20;
ALU20_groove = 6;


//========== ELECTRONIC DEVICE ==========//

//TO-92 package
TO92_width = 4.6;
TO92_height = 4.6;
TO92_thickness = 3.9;
TO92_pins = 14.5;
TO92_bottom_to_pins = 1;


//========== COOLING CIRCUIT ==========//

//fitting
fitting_thread_diameter = 13.157;
fitting_thread_height = 4;
fitting_height = 9.5;
fitting_inner_diameter = 8.4;
fitting_wall_thickness = 0.8;
fitting_overhang_height = 5;
fitting_overhang_size = 1;
fitting_nut_diameter = 18;
fitting_nut_height = 3;
fitting_seal_thickness = 0.8;

//pump
pump_diameter = 70;
pump_height = 135;
pump_in_out_distance = 40;
pump_in_out_diameter = 25;
pump_in_out_height = 30;
pump_in_out_overlap = 5;

//fan
fan_size = 120;
fan_thickness = 25;
fan_frame_thickness = 2.5;
fan_diameter = fan_size-2;
fan_center_diameter = 30;
fan_blade_count = 5;
fan_blade_center_size = 5;
fan_blade_outer_size = 45;
fan_blade_angle = 23;
fan_blade_thickness = 0.4;
fan_screw_diameter = M4_screw_diameter;
fan_screw_distance = 7;
fan_rotation = false;

//radiator
radiator_width = 392;
radiator_height = 120;
radiator_thickness = 27;
radiator_fpi = 16;
radiator_fin_thickness = 0.05;
radiator_frame_thickness = 2;
radiator_frame_overhang = 4;
radiator_fans_translate = 17-fan_screw_distance;
radiator_pipe_count = 12;
radiator_pipe_thickness = 2;
radiator_mount_height = 12;
radiator_mount_width = 31;
radiator_mount_thickness = 1;