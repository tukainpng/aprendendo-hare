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
	let mouse_x: f32 = 0.0;
	let mouse_y: f32 = 0.0;

	let size_x: f32 = 32.0;
	let size_y: f32 = 32.0;

	let first_square_color = green;
	let second_square_color = aqua;

	init_window(800, 600, "Olá, Mundo!");

	for (!window_should_close()) {
		set_window_title("Olá, Mundo!");
		begin_drawing();
		clear_background(bg);
		draw_text("Olá, Mundo!", 10, 570, 20, fg);

		// Keyboard
		if (is_key_down('W')) y -= SPEED*get_frame_time();
		if (is_key_down('A')) x -= SPEED*get_frame_time();
		if (is_key_down('S')) y += SPEED*get_frame_time();
		if (is_key_down('D')) x += SPEED*get_frame_time();

		if (is_key_down('-')) size_y -= SPEED*2.0*get_frame_time();
		if (is_key_down('-')) size_x -= SPEED*2.0*get_frame_time();
		if (is_key_down('=')) size_y += SPEED*2.0*get_frame_time();
		if (is_key_down('=')) size_x += SPEED*2.0*get_frame_time();

		if (is_key_down('1')) first_square_color = red;
		if (is_key_down('2')) first_square_color = green;
		if (is_key_down('3')) first_square_color = yellow;
		if (is_key_down('4')) first_square_color = blue;
		if (is_key_down('5')) first_square_color = purple;
		if (is_key_down('6')) first_square_color = aqua;
		if (is_key_down('7')) first_square_color = orange;
		if (is_key_down('8')) first_square_color = fg;
		if (is_key_down('9')) first_square_color = bg;

		// Mouse
		if (true) {
			mouse_x = get_mouse_x();
			mouse_y = get_mouse_y();
		};

		if (is_mouse_button_pressed(0)) second_square_color = blue;
		if (is_mouse_button_pressed(1)) second_square_color = red;
		if (is_mouse_button_pressed(2)) second_square_color = aqua;

		// Shapes
		draw_rectangle(x: int, y: int, size_x: int, size_y: int, first_square_color);
		draw_rectangle(mouse_x: int, mouse_y: int, size_x: int, size_y: int, second_square_color);

		end_drawing();
	};

	close_window();
};

