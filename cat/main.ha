use fmt;
use os;
use io;
use strings;

export fn main() void = {

	if (len(os::args) != 2) {
		fmt::fatalf("Uso: {} <arquivo>", os::args[0]);
	};

	const caminho = os::args[1];
	const arquivo = os::open(caminho)!;
	const arquivo = io::drain(arquivo)!;
	const arquivo = strings::fromutf8(arquivo)!;
	const arquivo = strings::split(arquivo, "\n");

	for (let i .. arquivo) {
		fmt::println(i)!;
	};
};

