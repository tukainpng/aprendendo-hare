use fmt;
use os;

// Criação de arquivos estilo touch
export fn main() void = {

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

