# Change Log

All notable changes to the "chord-heavy-keymap" extension will be documented in this file. See [keepachangelog.com](https://keepachangelog.com/en/1.0.0/) for how this is formatted.

## [1.1.1] - March 1, 2020

- Added:
  - `workbench.action.quickOpenSelectNext` - `ctrl+tab`
  - `workbench.view.explorer` - `cmd+o e`
  - `editor.action.movelinesUpAction` - `shift+alt+up`
  - `editor.action.movelinesDownAction` - `shift+alt+down`
  - `extension.openInGitHub` - `cmd+g o`
  - `extension.openPrGitProvider` - `cmd+g shift+o`
  - `workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup` - `ctrl+tab`
- Removed some shortcuts that interfered with workflows, and cut down on some cruft that was accumulating (too many ways to do the same thing).
- Changed the behavior of `ctrl+tab` (holding "ctrl" and hitting "tab" multiple times will go down the list, hitting "shift+tab" will bring you back up the list).

## [1.1.0] - 2020-02-26

- Swapped `workbench.action.closeAllEditors`and `workbench.action.closeEditorInAllGroups` shortcuts, since it feels a bit more logical.
- Changed the behavior of `ctrl+tab` (now focuses the "Open Editors" view). Still playing around with this.
- Added more "Window" shortcuts for `workbench.action.focusNextGroup` and `workbench.action.focusPreviousGroup` where appropriate.

## [1.0.3] - 2020-02-24

- Updated README

## [1.0.2] - 2020-02-23

### New

- (Actual) Initial release

## [1.0.0/1.0.1] - 2020-02-23

- These two versions were a mistake because idk how `vsce` works.
