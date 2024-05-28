use fmt;

export fn main() void = {
	const greetings = [
		"Hello, world!",
		"¡Hola Mundo!",
		"Γειά σου Κόσμε!",
		"Привіт, світ!",
		"こんにちは世界！",
	];
	for (let greeting .. greetings) {
		fmt::println(greeting)!;
	};
};
