using BinDeps
@BinDeps.load_dependencies

terminalnotifier = library_dependency("terminal-notifier", os = :Darwin)

provides(Homebrew, {"terminal-notifier" => terminalnotifier})
