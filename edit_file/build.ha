use fmt;
use os;
use os::exec;

def src_file = "main.ha";
def out = "ed";

type Build = struct {
	flag:	str,
	target:	str,
	link:	str,
	output:	str,
	src:	str,
};

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

export fn main() void = {
	let prog = Build {
		target =	os::machine(),
		flag =		"-R",
		link =		"-L.",
		src =		src_file,
		output =	out,
	};

	build(prog);
};

@init fn init() void = {
	fmt::printfln("Compilando: {}", src_file)!;
};

@fini fn init() void = {
	fmt::println("Programa compilado!")!;
};
