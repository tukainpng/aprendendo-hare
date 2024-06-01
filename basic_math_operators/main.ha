use fmt;
use bufio;
use os;
use strconv;
use strings;

fn input() f32 = {
	const inputUser = bufio::read_line(os::stdin)! as []u8;
	return strconv::stof32(strings::fromutf8(inputUser)!)!;
};

export fn main() void = {
	let valor1: 		f32 = 0.0;
	let valor2: 		f32 = 0.0;
	let soma: 		f32 = 0.0;
	let subtracao: 		f32 = 0.0;
	let multiplicacao: 	f32 = 0.0;
	let divisao: 		f32 = 0.0;

	fmt::println("Digite o valor do primeiro número:")!;
	valor1 = input();

	fmt::println("Digite o valor do segundo número:")!;
	valor2 = input();

	soma = valor1 + valor2;
	subtracao = valor1 - valor2;
	multiplicacao = valor1 * valor2;
	divisao = valor1 / valor2;

	fmt::printfln("Soma: {}", soma)!;
	fmt::printfln("Subtração: {}", subtracao)!;
	fmt::printfln("Multiplicação: {}", multiplicacao)!;
	fmt::printfln("Divisão: {}", divisao)!;

};

