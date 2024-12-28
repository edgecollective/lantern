block_x=2;
block_y=8;
gap_x=block_x*0.1;
gap_y=block_y*0.1;

square_side=block_y;

number_x=10;
number_y=6;

number_x_squares=1;

panel_x=square_side;
panel_y=2*square_side;
number_y_panels=3;

projection() {
    for ( j = [0:1:number_y-1]) {
    translate([0,j*(block_y+gap_y),0])
for ( i = [0:1:number_x-1]) 
translate([(block_x+gap_x)*i,0,0])
cube([block_x,block_y,2]);
}


x_start=number_x*(gap_x+block_x);
translate([x_start,0,0]) {
    
    for ( j = [0:1:number_y-1]) {
        translate([0,j*(square_side+gap_y),0])
        for ( i = [0:1:number_x_squares-1])
           translate([(square_side+gap_x)*i,0,0]) 
cube([square_side,square_side,2]);
    }
}
}

x_start=number_x*(gap_x+block_x)+number_x_squares*(gap_x+square_side);
translate([x_start,0,0]) {
for ( j = [0:1:number_y_panels-1]) {
    translate([0,j*(panel_y+gap_y),0])
cube([panel_x,panel_y,2]);
}
}
