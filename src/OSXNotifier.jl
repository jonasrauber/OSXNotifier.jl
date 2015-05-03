module OSXNotifier

if isfile(joinpath(dirname(@__FILE__),"..","deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("OSXNotifier not properly installed. Please run Pkg.build(\"OSXNotifier\")")
end

export notify

function notify(message)
    run(`terminal-notifier -message $message`)
end

end # module
