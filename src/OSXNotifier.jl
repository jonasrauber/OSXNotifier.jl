module OSXNotifier

export notify

@osx_only begin
	using Homebrew

	if Homebrew.installed("terminal-notifier")
		terminalnotifier = joinpath(Homebrew.prefix("terminal-notifier"), "bin", "terminal-notifier")
		if !isfile(terminalnotifier)
			error("terminal-notifier binary does not exist: $terminalnotifier")
		end
	else
		error("OSXNotifier not properly installed. Please run Pkg.build(\"OSXNotifier\")")
	end

	function notify(message=""; title="Julia", subtitle="", open="", group="", sound=false, sender="org.julialang")
		if group != "" && sound != "" && sound != false
			run(`$terminalnotifier -sender $sender -message $message -title $title -subtitle $subtitle -open $open -group $group -sound $sound`)
		elseif sound != "" && sound != false
			run(`$terminalnotifier -sender $sender -message $message -title $title -subtitle $subtitle -open $open -sound $sound`)
		elseif group != ""
			run(`$terminalnotifier -sender $sender -message $message -title $title -subtitle $subtitle -open $open -group $group`)
		else
			run(`$terminalnotifier -sender $sender -message $message -title $title -subtitle $subtitle -open $open`)
		end
	end

	function remove(group="ALL"; sender="org.julialang")
		run(`$terminalnotifier -remove $group -sender $sender`)
	end

	#function list(group="ALL")
	#	lines = readall(`$terminalnotifier -list $group`)
	#	lines = split(lines, "\n")
	#	lines = map(line -> split(line, "\t"), lines)
	#	lines = map(line -> map(element -> convert(ASCIIString, element), line), lines)
	#	keys = lines[1]
	#	lines = lines[2:end-1]
	#	map(line -> Dict(zip(keys, line)), lines)
	#end
end

end # module
