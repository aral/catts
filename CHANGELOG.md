# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - Initial release; in progress…

This is the initial release since Catts was forked from [Gala Alt Tab Plus](https://github.com/markstory/gala-alt-tab-plus).

### Changed

  - __Only runs on elementary OS 6 (Hera).__ For 5.x, please use [Gala Alt Tab Plus](https://github.com/markstory/gala-alt-tab-plus).

### Added

  - __Colour scheme support.__ Supports Dark Mode and reacts to colour scheme changes.

### Removed

  - __Indicator animation.__ The selected window indicator no longer animates from icon to icon. While animation can play an important role in supporting semantics and aiding cognition, in this case it was slowing down the interaction and creating a metaphor (of a spotlight) that wasn’t necessary. In other words, the animation was purely cosmetic and didn’t add any value beyond that while actually making the interaction feel slower as the spotlight raced to keep up and, when wrapping around, rather unobtrusive. The goal of Catts is to be as unobtrusive and functional as possible in keeping with its role as a hidden, advanced productivity gesture.
