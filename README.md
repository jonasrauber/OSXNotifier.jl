# OSXNotifier

[![Build Status](https://travis-ci.org/jonasrauber/OSXNotifier.jl.svg?branch=master)](https://travis-ci.org/jonasrauber/OSXNotifier.jl)

##Installation

```julia
Pkg.clone("https://github.com/jonasrauber/OSXNotifier.jl")
Pkg.build("OSXNotifier") # to install dependencies
```

Once this package is available in METADATA.jl, the following should be sufficient:

```julia
Pkg.add("OSXNotifier")
```

##Usage

```julia
using OSXNotifier
notify("Task completed")
```
