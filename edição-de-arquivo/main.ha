use strings;
use bufio;
use fmt;
use os;
use io;

export fn main() void = {
	fmt::println("Edição de arquivos com input do usuário\n")!;

	if (len(os::args) != 2) {
		fmt::fatalf("Uso: {} <input>", os::args[0]);
	};

	const arquivo = os::args[1];

	if (os::exists(arquivo)) {
		fmt::println("O arquivo existe")!;
		// TODO: Implementar uma forma de escrever o input
		// do usuário no arquivo selecionado.

	} else {
		fmt::println("O arquivo não existe\nCriando novo arquivo...")!;
		os::create(arquivo, 384)!;
	};

};

fn escrita() str = {
	let input = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(input)!;
};

