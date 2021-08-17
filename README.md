# Catts (Calm Alt-Tab Task Switcher)

Catts is a calmer <kbd>alt</kbd> + <kbd>tab</kbd> task switcher for elementary OS 6 (Odin).

![](./example.png)

## Install

1. Open up a Terminal session (press <kbd>⌘</kbd> + T).

2. Copy and paste the following line which will run [this script](./install.sh) to install Catts on your system:

    ```shell
    wget -qO- https://raw.githubusercontent.com/small-tech/catts/master/install.sh | bash
    ```
3. <kbd>Alt</kbd> + <kbd>Tab</kbd> in peace and calm.

## Troubleshooting

### Alt + Shift + Tab doesn't work

Elementary ships with `Alt + Shift` bound 'switch layouts'. Make sure you go
into _Settings_ → _Keyboard_ → _Layout_ and remove and reassign this keybinding.

## Why?

Because <kbd>alt</kbd> + <kbd>tab</kbd> is a hidden, shortcut gesture for quickly switching between the various windows you have open.

(GNOME successfully expand this to differentiate between apps you have open and windows but Catts is simple and limited to windows at the moment. See [limitations](#limitations), below.)

__In elementary OS, however the task switcher:__

  - __Overloads the dock__ (the dock is transformed to include icons of windows and the icons there used to indicate which window you’re switching to). This breaks the physicality of the dock and overloads its meaning. That said, due to the amount of other animation going on, willing myself to concentrate on the dock is the only way I can use it at all.

  - __Has excessive motion__ (animates windows backwards or forwards while dimming them in/out every time you press <kbd>alt</kbd> + <kbd>tab</kbd>). Imagine that happening with maximized or half-screen windows on a 24" monitor. I don’t normally have issues with motion and it makes me feel seasick after a few uses.

  - __Gets stuck.__ Sometimes it will just get stuck in a state where no window is selected. Presing <kbd>alt</kbd> + <kbd>tab</kbd> again gets you out of it.

  - __Is one-way__ (<kbd>shift</kbd> + <kbd>alt</kbd> + <kbd>tab</kbd>) doesn’t do anything.

Basically, the task switcher in elementary OS is unusable.

This one, despite its [limitations](#limitations), at least fixes the above issues.

__Catts:__

  - __Is calm.__ It does not animate my windows. I don’t want congitive complexity when I’m fast switching between apps. I want to switch between apps. (I would even drop the easing animation of the highlight between apps. In fact, I might just fork it and do that.)

  - __Uses icons.__ There is very little cognitive load to recognising an icon. There’s a reason we use icons of applications in menus, etc., instead of tiny thumbnails of them. The same principles apply here. (If we showed windows within an app as well, thumbnails might make more sense there but titles would probably still suffice. Which leads me to…)

  - __Enables you to tell apart different windows of the same app__ (simply, by displaying some additional information about each).

    _This could be handled differently if desired and isn’t the most aesthetically-pleasing but functional features below delightful for a reason on the ethical design pyramid (https://2017.ind.ie/ethical-design/). Ideally, of course, I would be able to switch between windows of the same app differently and not have to worry about which workspace or screen my apps are. All these add cognitive load that can make me forget what I am doing._

I feel that elementary OS would be far more usable – especially for folks just coming over from macOS or Windows – if Catts (or something like it) were to [replace the official task switcher in elementary OS](https://github.com/elementary/gala/discussions/72#discussioncomment-219601).

## Limitations

Catts implements the bare minimum functionality for a calm task switching experience and nothing more. Part of that is because I (Aral) don’t have the time to learn the innards of elementary OS to improve it.

Specifically, it has the following major limitations:

  - __Drag and drop does not work.__ You should be able to drag and drop onto the icons which should act as proxies for the apps/windows themselves.

  - __Does not group windows by app.__ Catts only deals with windows at the moment. It is not smart enough to group them by app or provide a distinction between switching between apps and windows. Pop!_OS used to do this well from what I remember but it seems [they might have broken it too](https://www.reddit.com/r/pop_os/comments/nsr3eq/pop_os_devs_why_is_switch_applications_task/) (I haven’t tested it recently.)
---

## For developers

The following are technical details for developers who want to manually compile or hack on Catts.

### Dependencies

* elementary-sdk
* libclutter-1.0-dev
* libwnck-3-dev

Make sure you `apt install` all of the above requirements before trying to build.

## Build

```bash
mkdir build
cd build
cmake ..
make
sudo make install
```

## Test

Modifying the primary gala instance can result in a broken desktop that requires a restart to fix.

After following the Installation structions, stop before the ‘Restart Gala’ step and, instead, use [xephyr](https://en.wikipedia.org/wiki/Xephyr) to create a separate session:

```bash
sudo apt install xserver-xephyr

# Running the test script starts up a new session using
# xephyr and launches the Calculator, and Tasks apps.
./test.sh
```

When the xephyr window appears, give it focus by pressing <kbd>ctrl</kbd> + <kbd>shift</kbd> and test out the new alt-tab behavior.

Once you're done testing you can remove the plugin with.

```bash
./cleanup.sh
```

## Replace Gala

After you’ve built Catts, you can replace the task switcher in your main session by running:

```shell
# Restart Gala
sudo gala --replace &
```



## Version details, history, and credits

Catts is only for elementary OS 6 (Odin).

For elementary OS versions 5.x, please use [Gala Alt Tab Plus]().

Catts is based on [Gala Alt Tab Plus](https://github.com/markstory/gala-alt-tab-plus) by [Mark Story](https://github.com/markstory) which is based on [Gala Window Manager Alternative Window Switcher](https://github.com/tom95/gala-alternate-alt-tab) by [Tom Beckmann](https://github.com/tom95).

## License

Portions copyright ⓒ 2021 Aral Balkan, Small Technology Foundation

Licensed under [GNU GPL 3.0](./LICENSE)
