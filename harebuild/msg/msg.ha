use fmt::*;
use os;

export fn mensagem() void = {
	println("Olá, mundo!")!;
};

export fn cpu() void = {
	printfln("A arquitetura da sua CPU é: {}", os::machine())!;
};
