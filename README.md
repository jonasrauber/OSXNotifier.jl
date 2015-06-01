# OSXNotifier

[![Build Status](https://travis-ci.org/jonasrauber/OSXNotifier.jl.svg?branch=master)](https://travis-ci.org/jonasrauber/OSXNotifier.jl)

##Installation

```julia
Pkg.add("OSXNotifier")
```

##Usage

```julia
using OSXNotifier
notify("Task completed")
notify("Notification with sound", sound=true) # you can also specify a sound file
```

![Screenshot of a Notification](/docs/screenshot.png?raw=true)

Other supported parameters include `group` and `subtitle`.

You can also remove notifications. However, this does not seem to work reliably.

```julia
OSXNotifier.remove() # removes all notifications
```

To remove specific notifications, you need to specify a group identifier when calling `notify`. This identifier can then be passed to `remove()`.

```julia
notify("Notification A", group="group1")
notify("Notification B", group="group2")

OSXNotifier.remove("group1")
```
