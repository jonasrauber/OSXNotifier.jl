module OSXNotifier

export notify

using Homebrew

if Homebrew.installed("terminal-notifier")
	terminalnotifier = joinpath(Homebrew.prefix("terminal-notifier"), "bin", "terminal-notifier")
	if !isfile(terminalnotifier)
		error("terminal-notifier binary does not exist: $terminalnotifier")
	end
else
    error("OSXNotifier not properly installed. Please run Pkg.build(\"OSXNotifier\")")
end

function notify(message)
    run(`$terminalnotifier -message $message`)
end

end # module
