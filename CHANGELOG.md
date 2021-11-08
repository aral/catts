# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.2] - 2021-11-08

### Added

  - Basic accessibility.

    Announces: “window, task switcher, N items, panel” when launched and the title of the window when an item is selected.

    Given there is next to no usable information about accessibility in the GNOME/Gtk/Vala/elementary OS documentation, I had to cobble together whatever pieces I could find to get this together. It is not ideal but it is way better than having the task switcher be entirely inaccessible, which has been the case with the previous one for the first six releases of elementary OS.

    I hope that this will spur others with greater experience in the platform to improve this essential feature going forward.

    If you care about accessibility and inclusivity and you want to see it reflected as a core tenet of elementary OS, please make your voice heard in this discussion thread: https://github.com/elementary/hig/discussions/51

## [1.0.1] - 2021-08-29

### Fixed

  - Pressing escape now cancels the task switch action and system focus stays on the current window without switching to the window whose icon was selected in Catts (as was erroneously the case before). Thanks to [David M. Hewitt](https://github.com/davidmhewitt) for fixing this as part of [his pull request to bring Catts in-tree to Gala](https://github.com/elementary/gala/pull/1234).

## [1.0.0] - 2021-08-28

Initial release since Catts was forked from [Gala Alt Tab Plus](https://github.com/markstory/gala-alt-tab-plus).

### Changed

  - __Only runs on elementary OS 6 (Hera).__ For 5.x, please use [Gala Alt Tab Plus](https://github.com/markstory/gala-alt-tab-plus).

### Added

  - __Colour scheme support.__ Supports Dark Mode and reacts to colour scheme changes.

### Removed

  - __Indicator animation.__ The selected window indicator no longer animates from icon to icon. While animation can play an important role in supporting semantics and aiding cognition, in this case it was slowing down the interaction and creating a metaphor (of a spotlight) that wasn’t necessary. In other words, the animation was purely cosmetic and didn’t add any value beyond that while actually making the interaction feel slower as the spotlight raced to keep up and, when wrapping around, rather unobtrusive. The goal of Catts is to be as unobtrusive and functional as possible in keeping with its role as a hidden, advanced productivity gesture.
