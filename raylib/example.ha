use fmt;
use types::c;
use raylib::*;
use gruvbox::*;

const SPEED: f32 = 100.0;

export fn main() void = {

	let bg         = get_color(bg0);
	let fg         = get_color(fg1);

	let red        = get_color(red0);
	let green      = get_color(green0);
	let yellow     = get_color(yellow0);
	let blue       = get_color(blue0);
	let purple     = get_color(purple0);
	let aqua       = get_color(aqua0);
	let orange     = get_color(orange0);

	let x: f32 = 0.0;
	let y: f32 = 0.0;
	let size_x: f32 = 32.0;
	let size_y: f32 = 32.0;
	let square_color = green;

	init_window(800, 600, "Olá, Mundo!");

	for (!window_should_close()) {
		begin_drawing();
		clear_background(bg);
		draw_text("Olá, Mundo!", 10, 570, 20, fg);

		if (is_key_down('W')) y -= SPEED*get_frame_time();
		if (is_key_down('A')) x -= SPEED*get_frame_time();
		if (is_key_down('S')) y += SPEED*get_frame_time();
		if (is_key_down('D')) x += SPEED*get_frame_time();

		if (is_key_down('-')) size_y -= SPEED*2.0*get_frame_time();
		if (is_key_down('-')) size_x -= SPEED*2.0*get_frame_time();
		if (is_key_down('=')) size_y += SPEED*2.0*get_frame_time();
		if (is_key_down('=')) size_x += SPEED*2.0*get_frame_time();

		if (is_key_down('1')) square_color = red;
		if (is_key_down('2')) square_color = green;
		if (is_key_down('3')) square_color = yellow;
		if (is_key_down('4')) square_color = blue;
		if (is_key_down('5')) square_color = purple;
		if (is_key_down('6')) square_color = aqua;
		if (is_key_down('7')) square_color = orange;
		if (is_key_down('8')) square_color = fg;
		if (is_key_down('9')) square_color = bg;

		if (is_key_down('Q')) close_window();

		draw_rectangle(x: int, y: int, size_x: int, size_y: int, square_color);
		end_drawing();
	};

	close_window();
};

