# Change Log

All notable changes to the "chord-heavy-keymap" extension will be documented in this file.
See [keepachangelog.com](https://keepachangelog.com/en/1.0.0/) for how this is formatted.

## [1.5.3] - August 21, 2020 - The Final Update

**NOTE** - This extension is being "discontinued" and archived in favor of [VSpaceCode](https://github.com/VSpaceCode/VSpaceCode). Please download that extension instead; you'll get a very robust Spacemacs-esque configuration out of the box and be happier than using the compromise that is this keymap.

The "old" README is available [here](./OLD_README.md) if you'd still like to refer to it. I'd still like to advocate for the [issues that I'd noted there as well](./OLD_README.md##issues-to-vote-for); please vote for them!

## [1.5.2] - July 21, 2020

- New chords:
  - All bookmark-related functionality was added to VSCodeVim keybindings. [Refer to the
    README for more information](README.md#vscodevim-keybindings).
  - `cmd+w shift+m` is now `editor.action.toggleMinimap`
  - `cmd+j o` is now `breadcrums.focusAndSelect`
- Revised chords:
  - `cmd+g g` is now `git.viewHistory` (you can switch it back to `git-graph.view`
    manually if you prefer that extension).
  - `alt+cmd+i alt+cmd+i` is now `workbench.action.toggleDevTools` (the old shortcut was removed)

## [1.5.1] - June 20, 2020

- New chords:
  - `cmd+l o` is now `workbench.action.togglePanel`
  - `cmd+l right` is now `workbench.action.positionPanelRight`
  - `cmd+l left` is now `workbench.action.positionPanelLeft`
  - `cmd+l down` is now `workbench.action.positionPanelBottom`
  - `ctrl+tab` is now `workbench.action.nextPanelView` (when panel is focused)
  - `shift+ctrl+tab` is now `workbench.action.previousPanelView` (when panel is focused)
  - `cmd+w p` is now `workbench.action.pinEditor`
  - `cmd+w shift+p` is now `workbench.action.unpinEditor`
- Removed command that don't mean anything anymore (`multiCommand.repearLastCommand`)
- Removed the shortcut to resize the terminal pane, replaced with various shortcuts to resize the pane itself instead.
- `cmd+o t` now opens Test Explorer, if you have it installed.
  - This means that opening the TODO Tree view is now `cmd+o shift+t`
- Made sure that `tab` made more sense in new views (like the Test Explorer) and brought you to the first editor group, if there is one.
- (Backend stuff) Updated the build script so that it's like 10x easier to deploy; been wanting to do this for a long time.
  - Really doesn't matter for anyone else, but I really want to automate the compilation of the README tables as well... another time.

## [1.5.0] - June 14, 2020

- Normalized the codebase and did some scripting in the backend to make sure that it'd be easier to iterate over time. This mostly resulted in redundant keybindings being added, for for the package.json to be a bit more neat (all the keys are in the same order, which helps with my sanity).
- Added some additional keybindings (in no particular order; if you're on Linux/Windows, map "cmd" to "ctrl" in your brain):
  - `ctrl+w s` -> `wiki.searchWiki`
  - `cmd+g f` -> `git.fetch'
  - `cmd+g shift+f` -> `git.fetchAll'
  - `cmd+o s` -> `workbench.action.toggleSidebarVisibility`
  - `cmd+f =` -> `editor.action.formatDocument.none`
  - `cmd+f =` -> `editor.action.formatDocument`
  - `cmd+w u` -> `workbench.action.reopenClosedEditor`
- `cmd+b b` no longer invoked `quickOpen` but rather invokes `workbench.action.showAllEditorsByMostRecentlyUsed`, to more align with expectations of "listing currently open buffers" which is what `SPC b b` does in Spacemacs

## [1.4.7] - April 23, 2020

- Added `ctrl+shift-l` as a shortcut for `editor.action.openLink`.
- Added `cmd+o s` as a chord for opening the sidebar.
- Added `cmd+o m` as a chord for opening the MongoDB view. (going to wait for its official release before I go adding other chords for that extension)
- Added more logic to `tab`/`shift+tab` so that it responds correctly when in more types of views (like the shortcuts editor, some sidebar views, etc.).

## [1.4.6] - April 6, 2020

- Improved the logic of `tab` when the sidebar isn't visible.

## [1.4.5] - April 5, 2020

- Hotfix; had to add `ctrl` to all of the keybindings that were used in the file explorer because I couldn't get it to interpret those characters correctly when I was typing out a file name. I hope to revisit this in the future, since adding the `ctrl` is a bit inelegant.

## [1.4.4] - April 5, 2020

- Improved `tab` when in `normal` mode in VSCodeVim such that it now properly lets you cycle through the sidebar and all of the editors as you would expect. I haven't added the ability to cycle through the panel yet, but I'm not sure I want to. My ultimate goal is for the sidebar to "feel" like it's just another buffer, and accepts all the same commands that you'd expect. To that end...
- The following is now possible in the Files explorer view:
  - `a` now prompts you to create a file in the current "node" you're on.
  - `d` not attempts to delete the file you're currently on.
  - `y n` copies the file name you're currently on.
  - `y p` copies the file path of the file you're currently on.
  - (I'll add more to this, but I'm modeling the shortcuts off of NERDTree for now)

## [1.4.3] - April 5, 2020

- Minor oopsies in the README, again.

## [1.4.2] - April 5, 2020

- Updated the README; this doesn't have any user-facing additions.

## [1.4.1] - March 28, 2020

- Changed:
  - All references of `linux` have been switched to `key` in the keymap, while setting `mac` as a "special" keymap. This SHOULDN'T break anything, but please let me know if it does! (For those that care; this should now mean that both Linux AND Windows are supported, albeit in a pretty naive way since I don't have either OS to test with; yay!)
  - Added a shortcut for syncing settings with the Settings Sync extension - `cmd+, u` (not sure if this will be needed in the next version of VSCode, but whatever)
  - Added the following to the "Clobbered Commands" section:
    - `workbench.action.closeWindow`
    - `workbench.action.quit`
  - Minor edits to README.

## [1.4.0] - March 28, 2020

I'd like to call this the "Clobber Cleanup" release. It's been bothering me that I had to put in weird "hacks" to do something that "just works" in pretty much any other application, like copy or find commands that are pretty universal in all Mac applications. I didn't want to sacrifice the "Mac"-ness of the OS.

To work around this, I basically just made it so that you had to hit that shortcut twice to get the expected behavior that was clobbered. That means that all single-chord shortcuts that are now clobbered by a "prefix" specified in the README should work if you just hit that key combination again. Some examples of what that means are:

  - "copy" operations are now `cmd+c cmd+c`
  - "find" operations are now `cmd+f cmd+f`
  - etc. etc.
  - **Note:** the chords that were defined before this are still the same.

All of these are outlined in [the new "Clobbered Commands" section in the README](README.md#clobbered-commands).

Other updates:

- Cleaned up some Linux interactions (will need to continue working on this over the long term).
- Cleaned up some wording in the README.
- Added minor changes for my VSCodeVim keybindings.

## [1.3.0] - March 23, 2020

- Added:
  - [BETA] Linux support (if you have any problems, please [open an issue](https://github.com/macintacos/chord-heavy-keymap/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc))
    - This _shouldn't_ affect Mac keybindings, but please let me know if it does.
  - New [Markdown All-in-one chords](README.md#markdown-all-in-one-prefix-m) (these only work when you're editing a markdown document)
- Changed:
  - `workbench.action.reloadWindow` is now set to `cmd+w cmd+r`
  - `workbench.action.reloadWindowWithExtensionsDisabled` is now set to `cmd+w shift+cmd+r`

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
