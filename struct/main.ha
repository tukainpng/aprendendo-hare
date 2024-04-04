use fmt::*;

type Usuario = struct {
	nome:  str,
	idade: int,
	dia:   int,
	mes:   int,
	ano:   int
};

export fn main() void = {
	println("Structs\n")!;

	// Iniciando variáveis que usam o struct "Usuario"
	let primeiro = Usuario {
		nome  = "Marisol",
		idade = 18,
		dia   = 27,
		mes   = 8,
		ano   = 2005
	};

	let segundo = Usuario {
		nome  = "Diogo",
		idade = 18,
		dia   = 24,
		mes   = 5,
		ano   = 2005
	};

	printfln("Nome: {}\nIdade: {}\nData de nascimento: {}/{}/{}",
		primeiro.nome, primeiro.idade, primeiro.dia, primeiro.mes, primeiro.ano)!;

	println()!;

	printfln("Nome: {}\nIdade: {}\nData de nascimento: {}/{}/{}",
		segundo.nome, segundo.idade, segundo.dia, segundo.mes, segundo.ano)!;
};
