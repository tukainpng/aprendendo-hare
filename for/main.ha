use fmt;

export fn main() void = {
	let i = 0i;
	for (i < 11; i += 1) {
		fmt::println(i)!;
	};
};
