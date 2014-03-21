module OSXNotifier

export notify

function notify(message)
    run(`terminal-notifier -message $message`)
end

end # module
