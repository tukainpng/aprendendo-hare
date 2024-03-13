use fmt;
use os;
use bufio;
use strings;

export fn main() void = {
	fmt::println("if statement\n")!;

	const resposta = pergunta();

	if (resposta == "Mari" || resposta == "mari") {
		fmt::printfln("Oiê :3")!;
	} 
	else if (resposta == "Diogo" || resposta == "diogo") {
		fmt::println("Vai trabalhar, vagabundo!")!;
	} 
	else {
		fmt::printfln("Olá, {}!", resposta)!;
	};
};

fn pergunta() str = {
	fmt::println("Digite seu nome: ")!;
	const nome = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(nome)!;
};
