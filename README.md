# OSXNotifier

[![Build Status](https://travis-ci.org/jonasrauber/OSXNotifier.jl.svg?branch=master)](https://travis-ci.org/jonasrauber/OSXNotifier.jl)

##Installation

```sh
brew install terminal-notifier
```

```julia
Pkg.clone("https://github.com/jonasrauber/OSXNotifier.jl")
```

<!--
```julia
Pkg.add("OSXNotifier")
```
-->

##Usage

```julia
using OSXNotifier
notify("Task completed")
```
