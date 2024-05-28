use fmt::*;
use strings;
use bufio;
use os;

export fn main() void = {
	println("Switch-Case\n")!;

	let resposta = input();

	switch (resposta) {
		case "1" =>
			println("1ª opção")!;
		case "2" =>
			println("2ª opção")!;
		case => println("Escolha inválida")!;
	};
};

fn input() str = {
	print("Escolha uma opção:\n1ª opção\n2ª opção\n~> ")!;
	const input = bufio::read_line(os::stdin)! as []u8;
	return strings::fromutf8(input)!;
};

