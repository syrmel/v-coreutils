import common.testing

const the_executable = testing.prepare_executable('arch')

const cmd = testing.new_paired_command('arch', the_executable)

fn test_help_and_version() {
	cmd.ensure_help_and_version_options_work()!
}

fn test_unknown_option() {
	testing.command_fails('${the_executable} -x')!
}

fn test_redundant_argument() {
	testing.command_fails('${the_executable} x')!
}

fn test_print_machine_arch() {
	assert cmd.same_results('')
}
