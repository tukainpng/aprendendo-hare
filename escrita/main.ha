use fmt;
use bufio;
use os;
use strings;

export fn main() void = {
	fmt::println("Criação de arquivos vazios com nome dado por input do usuário\n")!;
	let arquivo = nomeDoArquivo();
	if (os::exists(arquivo)) {
		fmt::println("Arquivo já existe.\n")!;
	} else {
		os::create(arquivo, 384)!;
	};
};

fn nomeDoArquivo() str = {
	fmt::printf("Escreva o nome do arquivo.\n: ")!;
	const inputUser = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(inputUser)!;
};
