use fmt::*;
use os;

// Mensagem de "Olá, mundo!"
export fn mensagem() void = {
	println("Olá, mundo!")!;
};

// Mostra a arquitetura do processador em que o programa foi compilado.
export fn cpu() void = {
	printfln("A arquitetura da sua CPU é: {}", os::machine())!;
};
