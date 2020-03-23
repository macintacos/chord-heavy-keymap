# Change Log

All notable changes to the "chord-heavy-keymap" extension will be documented in this file. See [keepachangelog.com](https://keepachangelog.com/en/1.0.0/) for how this is formatted.

## [1.3.0] - March 23, 2020

- Added:
  - [BETA] Linux support (if you have any problems, please [open an issue](https://github.com/macintacos/chord-heavy-keymap/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc))
  - New [Markdown All-in-one chords](README.md#markdown-all-in-one-prefix-m) (these only work when you're editing a markdown document)

## [1.2.1] - March 17, 2020

- Changed `cmd+e shift+n` chords to `cmd+e p`

## [1.2.0] - March 17, 2020

- Added:
  - `tab`/`shift+tab` now behaves the way you'd mostly expect!
    - If you're in a sidebar, hitting `tab` should bring you to the next open editor.
    - See the new "[VSCodeVim Keybindings](README.md#vscodevim-keybindings)" section of the README to see how I get `tab`/`shift+tab` to behave when you're in an editor (focuse the next/previous editor group)
  - `cmd+o l` now invokes `workbench.action.togglePanel`
  - `shift+cmd+,` now invokes `workbench.action.decreaseViewSize`
  - `shift+cmd+.` now invokes `workbench.action.increaseViewSize`
  - `cmd+w r` now invokes `workbench.action.evenEditorWidths`
  - `ctrl+n/p` now move you to the next change when you're in a given file or if you're in the diff editor
- Changed:
  - `cmd+o d` now invokes `workbench.view.extension.dockerView` instead of `worbench.view.debug` (you can use `cmd+d o` for that)
  - `cmd+f r` now invokes `editor.action.startFindReplaceAction`. Because of this:
    - `fileutils.renameFile` was changed from `cmd+f r` to `cmd+f cmd+r`
    - `toggleSearchRegex` was changed from `cmd+f cmd+r` to `cmd+f r`
    - `workbench.action.terminal.toggleFindRegex` was changed from `cmd+f r` to `cmd+f r`
    - `revealFileInOS` was unmapped (not used often enough, can be invoked from the command pallette)
- Cleaned up some `ctrl+j/k` interactions with lists

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
