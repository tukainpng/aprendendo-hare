use fmt;
use os;
use os::exec;

// Struct base para a compilação.
//
// Tudo o que ele armazena são algumas strings usadas no comando:
// - hare build
type Build = struct {
	flag:	str,
	target:	str,
	link:	str,
	output:	str,
	src:	str,
};

// Função que executa o comando ``hare build`` com o struct Build como
// parâmetro.
fn build(b: Build) void = {
	let cmd = exec::cmd(
		"hare",
		"build",
		"-a",
		b.target,
		b.flag,
		b.link,
		"-o",
		b.output,
		b.src,
	)!;
	let proc = exec::start(&cmd)!;
	let status = exec::wait(&proc)!;
	assert(exec::check(&status) is void);
};

def src_file = "hello.ha";

export fn main() void = {
	let prog = Build {
		target =	os::machine(),
		flag =		"-R",
		link =		"-L.",
		src =		src_file,
		output =	"hello",
	};

	build(prog);
};

@init fn init() void = {
	fmt::printfln("Compilando: {}", src_file)!;
};

@fini fn init() void = {
	fmt::println("Programa compilado!")!;
};
