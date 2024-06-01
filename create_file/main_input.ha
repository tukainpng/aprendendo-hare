use fmt;
use os;
use bufio;
use strings;

fn nomeDoArquivo() str = {
	fmt::printf("Escreva o nome do arquivo.\n:")!;
	const inputUser = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(inputUser)!;
};

export fn main() void = {
	// Criação de arquivos vazios com nome dado por input do usuário

	let arquivo = nomeDoArquivo();
	if (os::exists(arquivo)) {
		fmt::println("Arquivo já existe.\n")!;
	} else {
		os::create(arquivo, 384)!;
	};
};

