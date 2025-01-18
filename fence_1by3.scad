// assuming all in inches

picket_width=3;
picket_gap=3;
picket_height=4*12;
picket_depth=1;

fence_length=13*12;
cube([picket_width,picket_height,picket_depth]);


number_pickets=floor(fence_length/(picket_width+picket_gap));
echo(number_pickets);

for ( j = [0:1:number_pickets-1]) {
    translate([(picket_gap+picket_width)*j,0,0])
    cube([picket_width,picket_height,picket_depth]);
    
    
}