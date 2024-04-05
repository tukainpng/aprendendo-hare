use fmt;
use types::c;

export type Color = struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
};

export fn init_window(width: size, height: size, title: str) void = {
	InitWindow(width, height, c::fromstr(title));
};

export fn draw_text(title: str, x: size, y: size, text_size: size, color: Color) void = {
	DrawText(c::fromstr(title), x, y, text_size, color);
};

@symbol("InitWindow") fn InitWindow(size, size, *c::char) void;
export @symbol("GetColor") fn get_color(color: u32) Color;
export @symbol("WindowShouldClose") fn window_should_close() bool;
export @symbol("BeginDrawing") fn begin_drawing() void;
export @symbol("ClearBackground") fn clear_background(color: Color) void;
export @symbol("EndDrawing") fn end_drawing() void;
export @symbol("CloseWindow") fn close_window() void;
export @symbol("IsKeyDown") fn is_key_down(key: int) bool;
export @symbol("DrawRectangle") fn draw_rectangle(x: int, y: int, w: int, h: int, color: Color) void;
export @symbol("GetFrameTime") fn get_frame_time() f32;
@symbol("DrawText") fn DrawText(*c::char, size, size, size, Color) void;
