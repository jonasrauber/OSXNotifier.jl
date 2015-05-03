using BinDeps
@BinDeps.setup
terminalnotifier = library_dependency("terminal-notifier", os = :Darwin)

using Homebrew
provides(Homebrew.HB, "terminal-notifier", terminalnotifier, os = :Darwin)
