using BinDeps
using Compat

@BinDeps.setup

terminalnotifier = library_dependency("terminal-notifier", os = :Darwin)

@osx_only begin
	using Homebrew
	provides(Homebrew.HB, "terminal-notifier", terminalnotifier, os = :Darwin)
end

@BinDeps.install @compat Dict(:terminalnotifier => :terminalnotifier)
