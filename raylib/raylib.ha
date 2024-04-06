use fmt;
use types::c;

export type Color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
};

// Window-Related Functions
export fn init_window(width: size, height: size, title: str) void = {
	InitWindow(width, height, c::fromstr(title));
};

export fn set_window_title(title: str) void = {
	SetWindowTitle(c::fromstr(title));
};

@symbol("InitWindow") fn InitWindow(size, size, *c::char) void;
@symbol("SetWindowTitle") fn SetWindowTitle(*c::char) void;
export @symbol("WindowShouldClose") fn window_should_close() bool;
export @symbol("CloseWindow") fn close_window() void;

// Drawing-Related Functions
export @symbol("BeginDrawing") fn begin_drawing() void;
export @symbol("EndDrawing") fn end_drawing() void;
export @symbol("ClearBackground") fn clear_background(color: Color) void;

// Input-related functions: keyboard
export @symbol("IsKeyDown") fn is_key_down(key: int) bool;

// Input-related functions: mouse
export @symbol("IsMouseButtonPressed") fn is_mouse_button_pressed(mouse_button: int) bool;
export @symbol("IsMouseButtonDown") fn is_mouse_button_down(mouse_button: int) bool;
export @symbol("IsMouseButtonReleased") fn is_mouse_button_released(mouse_button: int) bool;
export @symbol("GetMouseX") fn get_mouse_x() int;
export @symbol("GetMouseY") fn get_mouse_y() int;
export @symbol("SetMousePosition") fn set_mouse_position(x: int, y: int) void;
export @symbol("SetMouseOffset") fn set_mouse_offset(offset_x: int, offset_y: int) void;

// Input-related functions: gamepad
export @symbol("IsGamepadAvaible") fn is_gamepad_avaible(gamepad: int) bool;
export @symbol("IsGamepadButtonPressed") fn is_gamepad_button_pressed(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonDown") fn is_gamepad_button_down(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonReleased") fn is_gamepad_button_released(gamepad: int, button: int) bool;
export @symbol("IsGamepadButtonUp") fn is_gamepad_button_up(gamepad: int, button: int) bool;
export @symbol("GetGamepadButtonPressed") fn get_gamepad_button_pressed() int;
export @symbol("GetGamepadAxisCount") fn get_gamepad_axis_count() int;
export @symbol("GetGamepadAxisMovement") fn get_gamepad_axis_movement(gamepad: int, axis: int) f32;

// Timing-Related Functions
export @symbol("GetFrameTime") fn get_frame_time() f32;

// module: rshapes
// Basic shapes drawing functions
export @symbol("DrawRectangle") fn draw_rectangle(x: int, y: int, w: int, h: int, color: Color) void;

// module: rtextures
// Color/Pixel related functions
export @symbol("GetColor") fn get_color(color: u32) Color;

// module: rtext
// Text-Drawing Functions
export fn draw_text(title: str, x: size, y: size, text_size: size, color: Color) void = {
	DrawText(c::fromstr(title), x, y, text_size, color);
};

@symbol("DrawText") fn DrawText(*c::char, size, size, size, Color) void;

