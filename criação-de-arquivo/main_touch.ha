use fmt;
use os;

export fn main() void = {
	// Criação de arquivos estilo touch

	if (len(os::args) != 2) {
		fmt::fatalf("Uso: {} <nome do arquivo>", os::args[0]);
	};

	const arquivo = os::args[1];

	if (os::exists(arquivo)) {
		fmt::println("O arquivo já existe")!;
	} else {
		os::create(arquivo, 384)!;
	};

};

