
weave_x_inches=.25;
weave_x_mm=weave_x_inches*25.4;
block_x=weave_x_mm;
block_y=20;
gap_x=block_x;
gap_y=block_y+block_x;
margin_x=block_x*2;
margin_y=block_y*2/3;

screw_diam=4.5;

square_side=block_y;

loom_width_inches=12;
loom_width_mm=loom_width_inches*25.4;
number_x=floor(loom_width_mm/(block_x+gap_x));
//number_x=20;

number_x_squares=1;

//panel_x=square_side;
//panel_y=2*square_side;

panel_x=(block_x+gap_x)*number_x+gap_x;

projection() {

//lower
    

difference() {
    
    union() {
cube([panel_x,margin_y,1]);

translate([gap_x,0,0]) {
for ( i = [2:1:number_x-3]) 
translate([(block_x+gap_x)*i,0,0])
cube([block_x,block_y,2]);
}

}

translate([gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([gap_x*2+screw_diam,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([panel_x-gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([panel_x-(gap_x*2+screw_diam),margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

}


//upper

translate([0,gap_y,0])
difference() {
    
    union() {
cube([panel_x,margin_y,1]);

translate([gap_x*2,0,0]) {
for ( i = [1:1:number_x-3]) 
translate([(block_x+gap_x)*i,0,0])
cube([block_x,block_y,2]);
}

}

translate([gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([gap_x*2+screw_diam,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([panel_x-gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([panel_x-(gap_x*2+screw_diam),margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

}


}

translate([0,gap_y*2,0])
difference() {
    
cube([gap_x*2+screw_diam+gap_x,panel_x,1]);

translate([gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([gap_x*2+screw_diam,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);
    
translate([0,panel_x-margin_y]) {
    translate([gap_x,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);

translate([gap_x*2+screw_diam,margin_y/2,0])
cylinder(h=5,r=screw_diam/2);
}

}