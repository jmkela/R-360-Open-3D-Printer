//Render Parts in position x0,y0,z0
//Render one part at the time only
echo("Loading Layout - Individual");
module individual(){
//lasercut parts
if(frame_thickness > 0){
	
	linear_extrude(height = frame_thickness, center = true, convexity = 10)	{
	if(show_bed_top) {
		disc_top();
	}
	if(show_bed_bottom) {
		disc_bottom();
	}
	if(show_frame_front) {
		 frame();
	}
	if(show_frame_back) {
		frame_back();
	}
	if(show_gear_spacer){
		gear_spacer();
	}
	if(show_heater_rim) {
		heater_rim();
	}
	if(show_y_cross_frame) {
		y_cross_frame();
	}
	if(show_y_end_frame) {
		y_end_frame();
	}
	
	}
	if(show_large_y_gears) {
		y_large_gear();
	}
	if(show_small_y_gears) {
		y_small_gear();
	}
}else{
	if(show_bed_top) {
		disc_top();
	}
	if(show_bed_bottom) {
		disc_bottom();
	}
	if(show_frame_front) {
		frame();
	}
	if(show_frame_back) {
		frame_back();
	}
	if(show_gear_spacer){
		gear_spacer();
	}
	if(show_heater_rim) {
		heater_rim();
	}
	if(show_large_y_gears) {
		projection(){ y_large_gear(); }
	}
	if(show_small_y_gears) {
		projection() y_small_gear();
	}
}
//Z-axis
if(show_z_axis_top){
	z_axes("top",1);
}
if(show_z_axis_bottom){
	z_axes("bottom",1);
}
if(show_z_axis_bottom_rod){
	z_axes("bottom_rod",1);
}
//X-axis
if(show_x_motor){
	x_axis_leadscrew_panel("motor");
	
}
if(show_x_idler){
	x_axis_leadscrew_panel("idler");
	
}
//Y-axis
if(show_y_base){
	y_base();
}

}
