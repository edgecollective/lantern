block_x=2;
block_y=8;
gap_x=block_x;
gap_y=block_y+block_x;
margin_x=block_x*2;
margin_y=5;

square_side=block_y;

number_x=20;

number_x_squares=1;

panel_x=square_side;
panel_y=2*square_side;

projection() {

//lower
cube([(block_x+gap_x)*number_x+gap_x,margin_y,1]);

translate([gap_x,0,0]) {
for ( i = [0:1:number_x-1]) 
translate([(block_x+gap_x)*i,0,0])
cube([block_x,block_y,2]);
}


//upper

translate([0,gap_y,0]) {
cube([(block_x+gap_x)*number_x+gap_x,margin_y,1]);

translate([gap_x*2,0,0]) {
for ( i = [0:1:number_x-2]) 
translate([(block_x+gap_x)*i,0,0])
cube([block_x,block_y,2]);
}

}


}
