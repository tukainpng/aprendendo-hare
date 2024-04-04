use strings;
use bufio;
use fmt;
use os;
use io;

export fn main() void = {
	if (len(os::args) < 2) {
		fmt::fatalf("Uso: {} <input>", os::args[0]);
	};


	switch (os::args[1]) {
		case "-h" =>
			fmt::printfln("Uso: {} [opções] <input>", os::args[0])!;
			fmt::println()!;
			fmt::println("Opções:")!;
			fmt::println("-h	- Ajuda")!;
			fmt::println("-v	- Versão")!;
		case "-v" =>
			fmt::println("v0.0.0")!;
		case => editar();
	};


};

fn escrita() str = {
	let input = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(input)!;
};

fn editar() void = {
const arquivo = os::args[1];
	for (true) {
		if (os::exists(arquivo)) {
			fmt::println("O arquivo existe")!;
			// TODO: Implementar uma forma de escrever o input
			// do usuário no arquivo selecionado.
			break;
		} else {
			fmt::println("O arquivo não existe")!;
			break;
		};
	};
};

