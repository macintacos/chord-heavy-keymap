# Chord Heavy - A keymap inspired by [Spacemacs](https://www.spacemacs.org/)

**Linux/Windows support is only available in BETA right now.** If you run into any odd keybindings with Linux/Windows, please create an issue! I don't have either OS to test with (and I'm low-key lazy to thoroughly vet these on those OS's myself).

- [Chord Heavy - A keymap inspired by Spacemacs](#chord-heavy---a-keymap-inspired-by-spacemacs)
	- [Keymap](#keymap)
		- [Important Single-chords](#important-single-chords)
		- [Preferences/Settings (prefix: `,`)](#preferencessettings-prefix)
		- [Buffers (prefix: `b`)](#buffers-prefix-b)
		- [Code (prefix: `c`)](#code-prefix-c)
		- [Debug (prefix: `d`)](#debug-prefix-d)
		- [Errors (prefix: `e`)](#errors-prefix-e)
		- [Files (prefix: `f`)](#files-prefix-f)
		- [Git (prefix: `g`)](#git-prefix-g)
		- [Help (prefix: `h`)](#help-prefix-h)
		- [Jump (prefix: `j`)](#jump-prefix-j)
		- [Markdown All-in-One (prefix: `m`)](#markdown-all-in-one-prefix-m)
		- [Panel (prefix: `l`)](#panel-prefix-l)
		- [Open... (prefix: `o`)](#open-prefix-o)
		- [Project (prefix: `p`)](#project-prefix-p)
		- [Quit/Close (prefix: `q`)](#quitclose-prefix-q)
		- [Refactor (prefix: `r`)](#refactor-prefix-r)
		- [Search (prefix: `s`)](#search-prefix-s)
		- [Toggle (prefix: `t`)](#toggle-prefix-t)
		- [Window (prefix: `w`)](#window-prefix-w)
		- [Yank/Copy (prefix: `y`)](#yankcopy-prefix-y)
		- [Clobbered Commands](#clobbered-commands)
		- [Misc. (one-off shortcuts, most not `chords)`](#misc-one-off-shortcuts-most-not-chords)
	- [Inspiration](#inspiration)
	- [Caveats](#caveats)
	- [VSCodeVim Keybindings](#vscodevim-keybindings)
	- [Multi-Command Actions](#multi-command-actions)
	- [Issues to Vote For](#issues-to-vote-for)
	- [Potential Future Improvements](#potential-future-improvements)

After trying and failing to get a [Spacemacs](https://www.spacemacs.org/) installation to function properly, I came back to VSCode since it was significantly less finicky to set up (don't @ me, Spacemacs diehards). However, the one thing that I _really_ liked about Spacemacs was the [mnemonic](https://develop.spacemacs.org/doc/DOCUMENTATION.html#mnemonic), chord-focused shortcuts to execute actions and navigate.

So I set out to create [a keymap](#keymap) [within the confines of VSCode's mechanisms](#caveats) that "made sense". A lot of the base keymap configurations were either taken straight from Spacemacs or from the [Intellimacs](https://github.com/MarcoIeni/intellimacs/blob/master/docs/KEYBINDINGS.org) keybindings. Some chords exist because they "made sense" to me, so please refer to the keymap if you need some guidance! Most things should "just work" if you replace common Spacemacs chords' `SPC` with `cmd` (or `ctrl`) in your head (more information on "why `cmd`/`ctrl`?" in the [Inspiration](#inspiration) section).

Also, before you get mad at me, I really encourage you to read the [Caveats](#caveats) section for this keymap.

## Keymap

### Important Single-chords

| Action                                     | Keybinding/Chord |
| ------------------------------------------ | ---------------- |
| `workbench.action.showCommands`            | `ctrl+space`     |
| `workbench.action.terminal.toggleTerminal` | `ctrl+'`         |
| `workbench.action.files.save`              | `ctrl+s`         |

### Preferences/Settings (prefix: `,`)

| Action                                                        | Keybinding/Chord (Mac/Other)     |
| ------------------------------------------------------------- | -------------------------------- |
| `workbench.action.openGlobalSettings`                         | `cmd+, ,`/`ctrl+, ,`             |
| `workbench.action.selectIconTheme`                            | `cmd+, i`/`ctrl+, i`             |
| `workbench.action.openGlobalKeybindings`                      | `cmd+, k`/`ctrl+, k`             |
| `workbench.action.configureLanguageBasedSettings`             | `cmd+, l`/`ctrl+, l`             |
| `workbench.extensions.action.showRecommendedKeymapExtensions` | `cmd+, m`/`ctrl+, m`             |
| `workbench.action.openSnippets`                               | `cmd+, n`/`ctrl+, n`             |
| `workbench.action.openSettingsJson`                           | `cmd+, s`/`ctrl+, s`             |
| `workbench.action.openGlobalKeybindingsFile`                  | `cmd+, shift+k`/`ctrl+, shift+k` |
| `workbench.action.selectTheme`                                | `cmd+, t`/`ctrl+, t`             |
| `extension.updateSettings`                                    | `cmd+, u`/`ctrl+, u`             |
| `workbench.action.openWorkspaceSettings`                      | `cmd+, w`/`ctrl+, w`             |

### Buffers (prefix: `b`)

| Action                                    | Keybinding/Chord (Mac/Other)     |
| ----------------------------------------- | -------------------------------- |
| `workbench.action.quickOpen`              | `cmd+b b`/`ctrl+b b`             |
| `workbench.action.closeActiveEditor`      | `cmd+b d`/`ctrl+b d`             |
| `workbench.action.closeWindow`            | `cmd+b d`/`ctrl+b d`             |
| `workbench.action.nextEditor`             | `cmd+b n`/`ctrl+b n`             |
| `workbench.action.previousEditor`         | `cmd+b p`/`ctrl+b p`             |
| `workbench.action.files.newUntitledFile`  | `cmd+b s`/`ctrl+b s`             |
| `workbench.action.closeUnmodifiedEditors` | `cmd+b shift+d`/`ctrl+b shift+d` |
| `workbench.action.reopenClosedEditor`     | `cmd+b u`/`ctrl+b u`             |

### Code (prefix: `c`)

| Action                      | Keybinding/Chord (Mac/Other) |
| --------------------------- | ---------------------------- |
| `editor.action.commentLine` | `cmd+c l`/`ctrl+c l`         |
| `code-runner.run`           | `cmd+c r`/`+c r`             |

### Debug (prefix: `d`)

| Action                                                | Keybinding/Chord (Mac/Other)     |
| ----------------------------------------------------- | -------------------------------- |
| `editor.debug.action.goToNextBreakpoint`              | `cmd+d c`/`ctrl+d c`             |
| `workbench.action.debug.continue`                     | `cmd+d c`/`ctrl+d c`             |
| `workbench.action.debug.start`                        | `cmd+d d`/`ctrl+d d`             |
| `workbench.action.debug.stepInto`                     | `cmd+d j`/`ctrl+d j`             |
| `workbench.debug.action.toggleRepl`                   | `cmd+d l`/`ctrl+d l`             |
| `workbench.action.debug.stepOver`                     | `cmd+d n`/`ctrl+d n`             |
| `workbench.action.debug.stepOver`                     | `cmd+d n`/`ctrl+d n`             |
| `workbench.view.debug`                                | `cmd+d o`/`ctrl+d o`             |
| `workbench.action.debug.run`                          | `cmd+d r`/`ctrl+d r`             |
| `workbench.debug.action.focusBreakpointsView`         | `cmd+d shift+b`/`ctrl+d shift+b` |
| `workbench.debug.viewlet.action.removeAllBreakpoints` | `cmd+d shift+c`/`ctrl+d shift+c` |
| `workbench.action.debug.restart`                      | `cmd+d shift+d`/`ctrl+d shift+d` |
| `workbench.action.debug.stepOut`                      | `cmd+d shift+o`/`ctrl+d shift+o` |
| `editor.debug.action.toggleBreakpoint`                | `cmd+d t`/`ctrl+d t`             |

### Errors (prefix: `e`)

| Action                                 | Keybinding/Chord (Mac/Other) |
| -------------------------------------- | ---------------------------- |
| `workbench.action.problems.focus`      | `cmd+e l`/`ctrl+e l`         |
| `editor.action.marker.next`            | `cmd+e n`/`ctrl+e n`         |
| `editor.action.marker.next`            | `cmd+e n`/`ctrl+e n`         |
| `editor.action.marker.nextInFiles`     | `cmd+e n`/`ctrl+e n`         |
| `workbench.action.output.toggleOutput` | `cmd+e o`/`ctrl+e o`         |
| `editor.action.marker.prev`            | `cmd+e p`/`ctrl+e p`         |
| `editor.action.marker.prev`            | `cmd+e p`/`ctrl+e p`         |
| `editor.action.marker.prevInFiles`     | `cmd+e p`/`ctrl+e p`         |

### Files (prefix: `f`)

| Action                                            | Keybinding/Chord (Mac/Other)     |
| ------------------------------------------------- | -------------------------------- |
| `editor.action.formatDocument`                    | `cmd+f =`/`ctrl+f =`             |
| `editor.action.formatSelection`                   | `cmd+f =`/`ctrl+f =`             |
| `workbench.files.action.compareWithClipboard`     | `cmd+f c`/`ctrl+f c`             |
| `toggleFindRegex`                                 | `cmd+f r`/`ctrl+f r`             |
| `toggleSearchRegex`                               | `cmd+f r`/`ctrl+f r`             |
| `workbench.action.terminal.toggleFindRegex`       | `cmd+f r`/`ctrl+f r`             |
| `workbench.action.terminal.toggleFindRegex`       | `cmd+f r`/`ctrl+f r`             |
| `workbench.action.openRecent`                     | `cmd+f e`/`ctrl+f e`             |
| `workbench.action.quickOpen`                      | `cmd+f f`/`ctrl+f f`             |
| `workbench.action.findInFiles`                    | `cmd+f g`/`ctrl+f g`             |
| `workbench.action.editor.changeLanguageMode`      | `cmd+f l`/`ctrl+f l`             |
| `extension.advancedNewFile`                       | `cmd+f n`/`ctrl+f n`             |
| `outline.focus`                                   | `cmd+f o`/`ctrl+f o`             |
| `fileutils.renameFile`                            | `cmd+f cmd+r`/`ctrl+f ctrl+r`    |
| `editor.action.startFindReplaceAction`            | `cmd+f r`/`ctrl+f r`             | when: `editorTextFocus` |
| `workbench.action.files.saveWithoutFormatting`    | `cmd+f s`/`ctrl+f s`             |
| `fileutils.newFolderAtRoot`                       | `cmd+f shift+n`/`ctrl+f shift+n` |
| `workbench.files.action.showActiveFileInExplorer` | `cmd+f shift+s`/`ctrl+f shift+s` |
| `workbench.action.toggleSidebarVisibility`        | `cmd+f t`/`ctrl+f t`             |
| `workbench.view.explorer`                         | `cmd+f t`/`ctrl+f t`             |
| `workbench.view.explorer`                         | `cmd+f t`/`ctrl+f t`             |
| `workbench.action.files.newUntitledFile`          | `cmd+f u`/`ctrl+f u`             |
| `copyFilePath`                                    | `cmd+f y`/`ctrl+f y`             |

### Git (prefix: `g`)

| Action                        | Keybinding/Chord (Mac/Other)     |
| ----------------------------- | -------------------------------- |
| `git.stageAllTracked`         | `cmd+g a`/`ctrl+g a`             |
| `git.checkout`                | `cmd+g b`/`ctrl+g b`             |
| `git-graph.view`              | `cmd+g g`/`ctrl+g g`             |
| `git.init`                    | `cmd+g i`/`ctrl+g i`             |
| `git.pull`                    | `cmd+g l`/`ctrl+g l`             |
| `extension.openInGitHub`      | `cmd+g o`/`ctrl+g o`             |
| `git.pushTo`                  | `cmd+g p`/`ctrl+g p`             |
| `workbench.view.scm`          | `cmd+g s`/`ctrl+g s`             |
| `git.stageAll`                | `cmd+g shift+a`/`ctrl+g shift+a` |
| `git.branch`                  | `cmd+g shift+b`/`ctrl+g shift+b` |
| `extension.openPrGitPRovider` | `cmd+g shift+o`/`ctrl+g shift+o` |

### Help (prefix: `h`)

| Action                                       | Keybinding/Chord     |
| -------------------------------------------- | -------------------- |
| `workbench.action.openDocumentationUrl`      | `cmd+h d`/`ctrl+h d` |
| `workbench.action.showInteractivePlayground` | `cmd+h p`/`ctrl+h p` |
| `workbench.action.openRequestFeatureUrl`     | `cmd+h s`/`ctrl+h s` |

### Jump (prefix: `j`)

| Action                            | Keybinding/Chord     |
| --------------------------------- | -------------------- |
| `editor.action.formatSelection`   | `cmd+j =`/`ctrl+j =` |
| `workbench.action.gotoSymbol`     | `cmd+j e`/`ctrl+j e` |
| `extension.aceJump`               | `cmd+j j`/`ctrl+j j` |
| `workbench.action.gotoMethod`     | `cmd+j m`/`ctrl+j m` |
| `workbench.action.showAllSymbols` | `cmd+j s`/`ctrl+j s` |

### [Markdown All-in-One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) (prefix: `m`)

| Action                                           | Keybinding/Chord (Mac/Other)        |
| ------------------------------------------------ | ----------------------------------- |
| `markdown.extension.editing.toggleMath`          | `cmd+m m`/`ctrl+m m`                |
| `markdown.extension.checkTaskList`               | `cmd+m c`/`ctrl+m c`                |
| `markdown.extension.editing.toggleBold`          | `cmd+m b`/`ctrl+m b`                |
| `markdown.extension.editing.toggleItalic`        | `cmd+m i`/`ctrl+m i`                |
| `markdown.extension.editing.toggleStrikethrough` | `cmd+m s`/`ctrl+m s`                |
| `markdown.extension.editing.toggleCodeSpan`      | ` cmd+m \``/ `ctrl+m \``            |
| `markdown.extension.editing.toggleCodeBlock`     | ` cmd+m shift+\``/ `cmd+m shift+\`` |
| `markdown.extension.editing.toggleList`          | `cmd+m l`/`cmd+m l`                 |

### Panel (prefix: `l`)

| Action                                     | Keybinding/Chord (Mac/Other)         |
| ------------------------------------------ | ------------------------------------ |
| `workbench.action.closePanel`              | `cmd+l c`/`ctrl+l c`                 |
| `workbench.action.focusPanel`              | `cmd+l f`/`ctrl+l f`                 |
| `workbench.action.terminal.resizePaneLeft` | `cmd+l left`/`ctrl+l left`           |
| `workbench.action.toggleMaximizedPanel`    | `cmd+l m`/`ctrl+l m`                 |
| `workbench.panel.markers.view.focus`       | `cmd+l p`/`ctrl+l p`                 |
| `workbench.action.previousPanelView`       | `cmd+l shift+tab`/`ctrl+l shift+tab` |
| `workbench.action.togglePanel`             | `cmd+l t`/`ctrl+l t`                 |
| `workbench.action.nextPanelView`           | `cmd+l tab`/`ctrl+l tab`             |

### Open... (prefix: `o`)

| Action                                              | Keybinding/Chord (Mac/Other)     |
| --------------------------------------------------- | -------------------------------- |
| `extension.openWithDefault`                         | `cmd+o b`/`ctrl+o b`             |
| `workbench.view.explorer`                           | `cmd+o e`/`ctrl+o e`             |
| `workbench.action.showAllEditorsByMostRecentlyUsed` | `cmd+o shift+e`/`ctrl+o shift+e` |
| `workbench.action.files.openFileFolder`             | `cmd+o f`/`ctrl+o f`             |
| `workbench.action.togglePanel`                      | `cmd+o l`/`ctrl+o l`             |
| `workbench.view.extension.github-pull-requests`     | `cmd+o p`/`ctrl+o p`             |
| `workbench.view.extension.project-manager`          | `cmd+o shift+p`/`ctrl+o shift+p` |
| `workbench.view.extension.todo-tree-container`      | `cmd+o t`/`ctrl+o t`             |
| `confluence.showPreview`                            | `cmd+o v`/`ctrl+o v`             |
| `confluence.showPreviewToSide`                      | `cmd+o v`/`ctrl+o v`             |
| `csv.preview`                                       | `cmd+o v`/`ctrl+o v`             |
| `csv.preview`                                       | `cmd+o v`/`ctrl+o v`             |
| `csv.preview`                                       | `cmd+o v`/`ctrl+o v`             |
| `csv.preview`                                       | `cmd+o v`/`ctrl+o v`             |
| `excel.preview`                                     | `cmd+o v`/`ctrl+o v`             |
| `markdown.showPreview`                              | `cmd+o v`/`ctrl+o v`             |
| `markdown.showPreviewToSide`                        | `cmd+o v`/`ctrl+o v`             |
| `workbench.view.extensions`                         | `cmd+o x`/`ctrl+o x`             |

### Project (prefix: `p`)

| Action                                 | Keybinding/Chord (Mac/Other)     |
| -------------------------------------- | -------------------------------- |
| `projectManager.saveProject`           | `cmd+p c`/`ctrl+p c`             |
| `projectManager.editProjects`          | `cmd+p e`/`ctrl+p e`             |
| `workbench.action.quickOpen`           | `cmd+p f`/`ctrl+p f`             |
| `projectManager.listProjects`          | `cmd+p p`/`ctrl+p p`             |
| `projectManager.renameProject`         | `cmd+p r`/`ctrl+p r`             |
| `projectManager.listProjectsNewWindow` | `cmd+p shift+p`/`ctrl+p shift+p` |
| `workbench.action.replaceInFiles`      | `cmd+p shift+r`/`ctrl+p shift+r` |

### Quit/Close (prefix: `q`)

| Action                                       | Keybinding/Chord (Mac/Other)     |
| -------------------------------------------- | -------------------------------- |
| `workbench.action.closeAllEditors`           | `cmd+q a`/`ctrl+q a`             |
| `code-runner.stop`                           | `cmd+q c`/`ctrl+q c`             |
| `workbench.action.debug.stop`                | `cmd+q d`/`ctrl+q d`             |
| `workbench.action.closeEditorsToTheLeft`     | `cmd+q left`/`ctrl+q left`       |
| `workbench.action.closeOtherEditors`         | `cmd+q o`/`ctrl+q o`             |
| `workbench.action.quit`                      | `cmd+q q`/`ctrl+q q`             |
| `workbench.action.closeEditorsToTheRight`    | `cmd+q right`/`ctrl+q right`     |
| `workbench.action.closeEditorInAllGroups`    | `cmd+q shift+a`/`ctrl+q shift+a` |
| `workbench.action.closeEditorsInOtherGroups` | `cmd+q shift+o`/`ctrl+q shift+o` |
| `workbench.action.closeFolder`               | `cmd+q w`/`ctrl+q w`             |

### Refactor (prefix: `r`)

| Action                                 | Keybinding/Chord (Match/Other)   |
| -------------------------------------- | -------------------------------- |
| `go.godoctor.extract`                  | `cmd+r m`/`ctrl+r m`             |
| `python.refactorExtractMethod`         | `cmd+r m`/`ctrl+r m`             |
| `editor.action.refactor`               | `cmd+r r`/`ctrl+r r`             |
| `editor.action.startFindReplaceAction` | `cmd+r s`/`ctrl+r s`             |
| `workbench.action.replaceInFiles`      | `cmd+r shift+s`/`ctrl+r shift+s` |
| `go.godoctor.var`                      | `cmd+r v`/`ctrl+r v`             |
| `python.refactorExtractVariable`       | `cmd+r v`/`ctrl+r v`             |

### Search (prefix: `s`)

| Action                                      | Keybinding/Chord (Mac/Other)    |
| ------------------------------------------- | ------------------------------- |
| `workbench.explorer.fileView.focus`         | `cmd+s e`/`cmd+s e`             |
| `actions.find`                              | `cmd+s f`/`cmd+s f`             |
| `editor.action.extensioneditor.showfind`    | `cmd+s f`/`cmd+s f`             |
| `editor.action.webvieweditor.showFind`      | `cmd+s f`/`cmd+s f`             |
| `keybindings.editor.searchKeybindings`      | `cmd+s f`/`cmd+s f`             |
| `problems.action.focusFilter`               | `cmd+s f`/`cmd+s f`             |
| `settings.action.search`                    | `cmd+s f`/`cmd+s f`             |
| `workbench.action.terminal.focusFindWidget` | `cmd+s f`/`cmd+s f`             |
| `workbench.action.terminal.focusFindWidget` | `cmd+s f`/`cmd+s f`             |
| `workbench.action.findInFiles`              | `cmd+s l`/`cmd+s l`             |
| `workbench.action.findInFiles`              | `cmd+s p`/`cmd+s p`             |
| `editor.action.startFindReplaceAction`      | `cmd+s r`/`cmd+s r`             |
| `workbench.action.findInFiles`              | `cmd+s s`/`cmd+s s`             |
| `workbench.action.replaceInFiles`           | `cmd+s shift+r`/`cmd+s shift+r` |

### Toggle (prefix: `t`)

| Action                              | Keybinding/Chord (Mac/Other) |
| ----------------------------------- | ---------------------------- |
| `workbench.action.toggleFullScreen` | `cmd+t f`/`ctrl+t f`         |
| `settings.cycle.lineNumbers`        | `cmd+t l`/`ctrl+t l`         |
| `toggleVim`                         | `cmd+t v`/`ctrl+t v`         |
| `editor.action.toggleWordWrap`      | `cmd+t w`/`ctrl+t w`         |
| `workbench.action.toggleZenMode`    | `cmd+t z`/`ctrl+t z`         |

### Window (prefix: `w`)

| Action                                                | Keybinding/Chord (Mac/Other)                      |
| ----------------------------------------------------- | ------------------------------------------------- |
| `workbench.action.splitEditorDown`                    | `cmd+w -`/`ctrl+w -`                              |
| `workbench.action.splitEditor`                        | `cmd+w /`/`ctrl+w /`                              |
| `workbench.action.terminal.split`                     | `cmd+w /`/`ctrl+w /`                              |
| `workbench.action.firstEditorInGroup`                 | `cmd+w 1`/`ctrl+w 1`                              |
| `workbench.action.lastEditorInGroup`                  | `cmd+w 9`/`ctrl+w 9`                              |
| `workbench.action.previousEditorInGroup`              | `cmd+w alt+cmd+left`/`ctrl+w alt+ctrl+left`       |
| `workbench.action.nextEditorInGroup`                  | `cmd+w alt+cmd+right`/`ctrl+w alt+ctrl+right`     |
| `workbench.action.closeEditorsInGroup`                | `cmd+w d`/`ctrl+w d`                              |
| `workbench.action.closeGroup`                         | `cmd+w d`/`ctrl+w d`                              |
| `workbench.action.focusBelowGroup`                    | `cmd+w down`/`ctrl+w down`                        |
| `workbench.action.focusPreviousGroup`                 | `cmd+w h`/`ctrl+w h`                              |
| `workbench.action.focusBelowGroup`                    | `cmd+w j`/`ctrl+w j`                              |
| `workbench.action.focusAboveGroup`                    | `cmd+w k`/`ctrl+w k`                              |
| `workbench.action.focusNextGroup`                     | `cmd+w l`/`ctrl+w l`                              |
| `workbench.action.focusPreviousGroup`                 | `cmd+w left`/`ctrl+w left`                        |
| `multiCommand.closePanelAndSidebarAndOtherEditors`    | `cmd+w m`/`ctrl+w m`                              |
| `workbench.action.newWindow`                          | `cmd+w n`/`ctrl+w n`                              |
| `workbench.action.quickSwitchWindow`                  | `cmd+w o`/`ctrl+w o`                              |
| `workbench.action.focusNextGroup`                     | `cmd+w right`/`ctrl+w right`                      |
| `workbench.action.reloadWindow`                       | `cmd+w cmd+r`/`ctrl+w ctrl+r`                     |
| `workbench.action.reloadWindowWithExtensionsDisabled` | `cmd+w shift+cmd+r`/`ctrl+w shift+ctrl+r`         |
| `workbench.action.splitEditorDown`                    | `cmd+w s`/`ctrl+w s`                              |
| `workbench.action.toggleSidebarVisibility`            | `cmd+w s`/`ctrl+w s`                              |
| `workbench.action.moveEditorLeftInGroup`              | `cmd+w shift+cmd+left`/`ctrl+w shift+ctrl+left`   |
| `workbench.action.moveEditorRightInGroup`             | `cmd+w shift+cmd+right`/`ctrl+w shift+ctrl+right` |
| `workbench.action.closeAllGroups`                     | `cmd+w shift+d`/`ctrl+w shift+d`                  |
| `workbench.action.moveActiveEditorGroupDown`          | `cmd+w shift+down`/`ctrl+w shift+down`            |
| `workbench.action.focusFirstEditorGroup`              | `cmd+w shift+h`/`ctrl+w shift+h`                  |
| `workbench.action.focusLastEditorGroup`               | `cmd+w shift+j`/`ctrl+w shift+j`                  |
| `workbench.action.focusFirstEditorGroup`              | `cmd+w shift+k`/`ctrl+w shift+k`                  |
| `workbench.action.focusLastEditorGroup`               | `cmd+w shift+l`/`ctrl+w shift+l`                  |
| `workbench.action.moveActiveEditorGroupLeft`          | `cmd+w shift+left`/`ctrl+w shift+left`            |
| `workbench.action.moveActiveEditorGroupRight`         | `cmd+w shift+right`/`ctrl+w shift+right`          |
| `workbench.action.reopenClosedEditor`                 | `cmd+w shift+t`/`ctrl+w shift+t`                  |
| `workbench.action.moveActiveEditorGroupUp`            | `cmd+w shift+up`/`ctrl+w shift+up`                |
| `workbench.action.files.newUntitledFile`              | `cmd+w t`/`ctrl+w t`                              |
| `workbench.action.focusNextGroup`                     | `cmd+w tab`/`ctrl+w tab`                          |
| `workbench.action.focusPreviousGroup`                 | `cmd+w tab`/`ctrl+w tab`                          |
| `workbench.action.focusAboveGroup`                    | `cmd+w up`/`ctrl+w up`                            |
| `workbench.action.splitEditor`                        | `cmd+w v`/`ctrl+w v`                              |
| `workbench.action.terminal.split`                     | `cmd+w v`/`ctrl+w v`                              |
| `workbench.action.closeEditorsInGroup`                | `cmd+w x`/`ctrl+w x`                              |

### Yank/Copy (prefix: `y`)

| Action                                        | Keybinding/Chord (Mac/Other)     |
| --------------------------------------------- | -------------------------------- |
| `editor.action.copyLinesDownAction`           | `cmd+y j`/`ctrl+y j`             |
| `markdown.extension.onCopyLineDown`           | `cmd+y j`/`ctrl+y j`             |
| `editor.action.copyLinesUpAction`             | `cmd+y k`/`ctrl+y k`             |
| `markdown.extension.onCopyLineUp`             | `cmd+y k`/`ctrl+y k`             |
| `fileutils.copyFileName`                      | `cmd+y n`/`ctrl+y n`             |
| `copyFilePath`                                | `cmd+y p`/`ctrl+y p`             |
| `workbench.action.files.copyPathOfActiveFile` | `cmd+y p`/`ctrl+y p`             |
| `copyRelativeFilePath`                        | `cmd+y shift+p`/`ctrl+y shift+p` |

### Clobbered Commands

These are commands that have been "clobbered" and are thus needed to be remapped. Anything that would be a "normal" mapping before (`cmd+c` for "copy", for example) need to be changed in order for them to work the way that you expect. Trust me, this makes more sense when you actually start using chords in VSCode.

**NOTE:** These aren't meant to be mnemonic or follow any Spacemacs idioms; it's meant to just provide "default" functionality that one would come to expect on their respective OS.

| Action                                      | Keybinding/Chord (Mac/Other)  |
| ------------------------------------------- | ----------------------------- |
| `workbench.action.toggleSidebarVisibility`  | `cmd+b cmd+b`/`ctrl+b ctrl+b` |
| `editor.action.clipboardCopyAction`         | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `editor.action.webvieweditor.copy`          | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `execCopy`                                  | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `filesExplorer.copy`                        | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `gitlens.views.compare.copy`                | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `gitlens.views.fileHistory.copy`            | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `gitlens.views.lineHistory.copy`            | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `gitlens.views.repositories.copy`           | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `gitlens.views.search.copy`                 | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `keybindings.editor.copyKeybindingEntry`    | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `problems.action.copy`                      | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `remote.tunnel.copyAddressInline`           | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `workbench.action.terminal.copySelection`   | `cmd+c cmd+c`/`ctrl+c ctrl+c` |
| `editor.action.copyLinesDownAction`         | `cmd+d cmd+d`/`ctrl+d ctrl+d` |
| `editor.action.addSelectionToNextFindMatch` | `cmd+d cmd+d`/`ctrl+d ctrl+d` |
| `workbench.action.openRecent`               | `cmd+e cmd+e`/`ctrl+e ctrl+e` |
| `actions.find`                              | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `editor.action.extensioneditor.showfind`    | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `editor.action.webvieweditor.showFind`      | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `keybindings.editor.searchKeybindings`      | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `problems.action.focusFilter`               | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `settings.action.search`                    | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `workbench.action.terminal.focusFindWidget` | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `workbench.action.terminal.focusFindWidget` | `cmd+f cmd+f`/`ctrl+f ctrl+f` |
| `workbench.action.togglePanel`              | `cmd+j cmd+j`/`ctrl+j ctrl+j` |
| `workbench.action.gotoLine`                 | `cmd+l cmd+l`/`ctrl+l ctrl+l` |
| `expandLineSelection`                       | `cmd+l cmd+l`/`ctrl+l ctrl+l` |
| `workbench.action.quit`                     | `cmd+q cmd+q`/`ctrl+q ctrl+q` |
| `workbench.action.reloadWindow`             | `cmd+r cmd+r`/`ctrl+r ctrl+r` |
| `editor.action.startFindReplaceAction`      | `cmd+r cmd+r`/`ctrl+r ctrl+r` |
| `workbench.action.files.save`               | `cmd+s cmd+s`/`ctrl+s ctrl+s` |
| `workbench.action.closeWindow`              | `cmd+w cmd+w`/`ctrl+w ctrl+w` |

### Misc. (one-off shortcuts, most not `chords)`

| Action                                                        | Keybinding/Chord (Mac/Other)                 |
| ------------------------------------------------------------- | -------------------------------------------- |
| `editor.action.selectAll`                                     | `alt+a`                                      |
| `editor.action.webvieweditor.selectAll`                       | `alt+a`                                      |
| `list.selectAll`                                              | `alt+a`                                      |
| `workbench.action.terminal.selectAll`                         | `alt+a`                                      |
| `undo_expand_region`                                          | `alt+down`                                   |
| `editor.action.peekDefinition`                                | `alt+enter`                                  |
| `markdown-checkbox.markCheckbox`                              | `alt+enter`                                  |
| `editor.action.addSelectionToNextFindMatch`                   | `alt+l`                                      |
| `editor.action.triggerSuggest`                                | `alt+space`                                  |
| `toggleSuggestionDetails`                                     | `alt+space`                                  |
| `expand_region`                                               | `alt+up`                                     |
| `editor.action.fontZoomOut`                                   | `cmd+-`/`cmd+-`                              |
| `workbench.action.terminal.focus`                             | `cmd+'`/`cmd+'`                              |
| `workbench.action.navigateBack`                               | `cmd+[`/`cmd+[`                              |
| `workbench.action.navigateForward`                            | `cmd+]`/`cmd+]`                              |
| `editor.action.fontZoomReset`                                 | `cmd+=`/`cmd+=`                              |
| `deleteAllLeft`                                               | `cmd+backspace`/`cmd+backspace`              |
| `multiCommand.repeatLastCommand`                              | `cmd+ctrl+r`/`cmd+ctrl+r`                    |
| `editor.action.insertSnippet`                                 | `cmd+k`/`cmd+k`                              |
| `editor.action.fontZoomIn`                                    | `cmd+numpad_add`/`cmd+numpad_add`            |
| `editor.action.commentLine`                                   | `cmd+; ;`/`cmd+; ;`                          |
| `deleteWordPartLeft`                                          | `ctrl+alt+backspace`                         |
| `cursorWordPartStartLeft`                                     | `ctrl+alt+left`                              |
| `cursorWordPartRight`                                         | `ctrl+alt+right`                             |
| `cursorLeft`                                                  | `ctrl+h`                                     |
| `cursorDown`                                                  | `ctrl+j`                                     |
| `list.focusDown`                                              | `ctrl+j`                                     |
| `selectNextSuggestion`                                        | `ctrl+j`                                     |
| `workbench.action.quickOpenSelectNext`                        | `ctrl+j`                                     |
| `cursorUp`                                                    | `ctrl+k`                                     |
| `list.focusUp`                                                | `ctrl+k`                                     |
| `selectPrevSuggestion`                                        | `ctrl+k`                                     |
| `workbench.action.quickOpenSelectPrevious`                    | `ctrl+k`                                     |
| `cursorRight`                                                 | `ctrl+l`                                     |
| `workbench.action.files.save`                                 | `ctrl+s`                                     |
| `search.action.focusNextSearchResult`                         | `ctrl+shift+j`                               | when: `hasSearchResult && searchViewletVisible` |
| `search.action.focusPreviousSearchResult`                     | `ctrl+shift+k`                               | when: `hasSearchResult && searchViewletVisible` |
| `deleteWordPartRight`                                         | `ctrl+shift+alt+backspace |`                 |
| `cursorWordPartStartLeftSelect`                               | `ctrl+shift+alt+left`                        |
| `cursorWordPartRightSelect`                                   | `ctrl+shift+alt+right`                       |
| `workbench.action.terminal.runSelectedText`                   | `ctrl+shift+alt+t`                           |
| `workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup` | `ctrl+tab`                                   |
| `extension.jumpy-exit`                                        | `Escape`                                     |
| `vscode-neovim.compositeEscape1`                              | `j`                                          |
| `extension.toggleTheme`                                       | `shift+alt+d`                                |
| `extension.jumpy-line`                                        | `shift+alt+enter`                            |
| `editor.action.moveLinesUpAction`                             | `shift+alt+up`                               |
| `editor.action.moveLinesDownAction`                           | `shift+alt+down`                             |
| `editor.action.deleteLines`                                   | `shift+cmd+backspace`/`shift+ctrl+backspace` |
| `workbench.action.decreaseViewSize`                           | `shift+cmd+,`/`shift+ctrl+,`                 |
| `workbench.action.increaseViewSize`                           | `shift+cmd+.`/`shift+ctrl+.`                 |
| `workbench.action.focusFirstEditorGroup`                      | `tab`                                        | when: `sideBarFocus && activeViewlet == 'workbench.view.explorer'` |
| `cursorUp`                                                    | `up`                                         |

## Inspiration

Despite Spacemacs' influence, this keymap uses the "Command (⌘, `cmd`)" key on the Mac (or `ctrl` key on other OS's) in place of `SPC` in Spacemacs chords. Extensions like [VSpaceCode](https://github.com/VSpaceCode/VSpaceCode) rely on you _needing_ [VSCodeVim](https://github.com/VSCodeVim/Vim) installed, and to be in the editor (the chords in VSpaceCode don't work when your focus is in something like the sidebar). I didn't like that limitation (it didn't feel very Spacemacs-y to suddenly need to use a completely different set of shortcuts if you were "elsewhere" from the editor). Re-orienting myself around the `cmd` key as my `leader` key allowed me to remove this restriction and allowed me to have the same set of key chords, everywhere.

It's worth mentioning that [I use a keyboard powered by QMK software](https://configure.ergodox-ez.com/planck-ez/layouts/5BRQB/Ny4rd/0), and have set my `cmd` key to be a [One Shot Modifier](https://docs.qmk.fm/#/feature_advanced_keycodes?id=one-shot-keys). This makes the chords feel a bit more like Spacemacs, where chords like `SPC w -` are three individual key presses. In this keymap and with a OSM `cmd` key set up, you can think of that same chord as being `cmd w -` (three individual key presses), even though the keymap is actually specified as `cmd+w -`.

Lastly, as I explored creating this keymap, I've come to the conclusion that VSCode generally doesn't really know what to do with chords. They seem to have been bolted on without much thought. As such, there are a number of improvements that can/should be added in the future that would make this keymap even more robust. See the [Issues to Vote For](#issues-to-vote-for) section for some issues to follow/vote for!

## Caveats

There are some caveats to keep in mind if you'd like to use this keymap, which would be difficult to digest for most of the VSCode population (and that's fine; I really only made this because it was fun!). Those caveats are:

- **This keymap removes A LOT of default shortcuts.** If you're not comfortable with looking up the commands or using the command search, stay away from this keymap!
- **There are some chords/shortcuts that are dependent on snippets or extensions that I have personally installed on my machine.** VSCode might complain about this, but you should be fine.
- In VSCode, when you've defined a chord for a specific character, it "clobbers" shortcuts that are only one `modifier+key` combination. Thus, because `cmd+c r` is a chord, things like `cmd+c` in a text editor (copy) won't work (VSCode sits there waiting for a chord to be executed). For most of the "common sense" shortcuts, I've tried to mitigate this by just making the user hit the shortcut twice; so now, "copy" is `cmd+c cmd+c` instead of just `cmd+c`. That's what made the most sense in my head, so that's what I went with! For all of these changes, please see the "[Clobbered Commands](#clobbered-commands)" section of the README.
- Right now this keymap only _properly_ supports the Mac, and **Linux/Windows support is considered in "beta"**.
- I use VSCodeVim and most of the time, if I don't use a native shortcut for something, it's because I just use Vim motions to get the job done. See the [VSCodeVim Keybindings](#vscodevim-keybindings) section below for what I use there!

If the above caveats are "fine" for you, I really think that this keymap can work well. It doesn't cover 100% of the capabilities that Spacemacs can, but it gets a lot of the way there!

## VSCodeVim Keybindings

For keybindings that made "more sense" to be set at that extension's level, I've set them there. Below are the keybindings that I have set up so that they function the way I "expect" with this keymap (these are meant to go in your `settings.json` file):

```
"vim.insertModeKeyBindings": [
	{
		"after": [
			"cmd+z"
		],
		"before": [
			"cmd+a"
		]
	},
	{
		"after": [
			"<Esc>"
		],
		"before": [
			"j",
			"j"
		]
	},
	{
		"after": [
			"<Esc>"
		],
		"before": [
			"k",
			"k"
		]
	},
	{
		"after": [
			"<Esc>"
		],
		"before": [
			"j",
			"k"
		]
	},
	{
		"after": [
			"<Esc>"
		],
		"before": [
			"k",
			"j"
		]
	}
],
"vim.normalModeKeyBindingsNonRecursive": [
	{
		"before": [
			"L"
		],
		"after": [
			"$"
		]
	},
	{
		"before": [
			"H"
		],
		"after": [
			"^"
		]
	},
	{
		"after": [],
		"before": [
			"g",
			"H"
		],
		"commands": [
			{
				"command": "editor.action.triggerParameterHints"
			}
		]
	},
	{
		"after": [],
		"before": [
			"shift+tab"
		],
		"commands": [
			{
				"command": "workbench.action.focusPreviousGroup"
			}
		]
	},
	{
		"after": [],
		"before": [
			"tab"
		],
		"commands": [
			{
				"command": "workbench.action.focusNextGroup"
			}
		]
	},
	{
		"after": [],
		"before": [
			"u"
		],
		"commands": [
			{
				"command": "undo"
			}
		]
	},
	{
		"after": [],
		"before": [
			"<C-r>"
		],
		"commands": [
			{
				"command": "redo"
			}
		]
	},
	{
		"after": [
			"v"
		],
		"before": [
			"v"
		]
	},
	{
		"after": [
			"g",
			"k"
		],
		"before": [
			"<up>"
		]
	},
	{
		"after": [
			"g",
			"j"
		],
		"before": [
			"<down>"
		]
	},
	{
		"after": [
			"y",
			"$"
		],
		"before": [
			"Y"
		]
	}
],
"vim.visualModeKeyBindingsNonRecursive": [
	{
		"before": [
			"H"
		],
		"after": [
			"^"
		]
	},
	{
		"before": [
			"L"
		],
		"after": [
			"$"
		]
	},
	{
		"before": [
			">"
		],
		"commands": [
			"editor.action.indentLines"
		]
	},
	{
		"before": [
			"<"
		],
		"commands": [
			"editor.action.outdentLines"
		]
	},
	{
		"after": [
			"a",
			"f"
		],
		"before": [
			"v"
		]
	}
],
```

## Multi-Command Actions

I use a tool called [`multi-command`](https://github.com/ryuta46/vscode-multi-command) for some actions that are defined in this keymap. Here's the definition that I have (I'll be sure to keep this updated):

```json
"multiCommand.commands": [
	{
		"command": "multiCommand.closePanelAndSidebarAndOtherEditors",
		"sequence": [
			"workbench.action.closePanel",
			"workbench.action.closeSidebar",
			"workbench.action.closeEditorsInOtherGroups"
		]
	},
]
```

This is for the following chords:

- `multiCommand.closePanelAndSidebarAndOtherEditors` -> `cmd+w m`

## Issues to Vote For

VSCode was developed with a completely different user-base in mind, but that doesn't mean that VSCode can't be improved in the future to facilitate Spacemacs-like navigational workflows. While it'd take a significant amount of effort to actually get this to be a Spacemacs replacement, there are some low-hanging fruit issues that, if they were resolved, would improve a keymap like this significantly:

- Add suggested completions for key chords [\#3969](https://github.com/microsoft/vscode/issues/3969)
- Enable keychords of 3 steps [\#6966](https://github.com/microsoft/vscode/issues/6966)
- Reserve shortcut prefix for user [\#87565](https://github.com/microsoft/vscode/issues/87565)
- When using record keys search for individual keys [\#88122](https://github.com/microsoft/vscode/issues/88122)

---

## Potential Future Improvements

- Add proper support for Linux/Windows (Linux/Windows support is considered to be in beta, mostly because I don't have either OS so can't verify that they work properly! If there are problems, please open an issue!)
- Create shortcuts that are based on specific file types, so that there is a "major mode" of sorts for them. Can start with HTML and go through other languages as I see fit; use the [Spacemacs layer keybindings](https://www.spacemacs.org/layers/LAYERS.html) for inspiration. Maybe the `ctrl` key can be first character for "major" mode? Inspiration:
	- [HTML](https://www.spacemacs.org/layers/+lang/html/README.html)
	- [javascript](https://www.spacemacs.org/layers/+lang/javascript/README.html)
	- [markdown](https://www.spacemacs.org/layers/+lang/markdown/README.html)
	- [python](https://www.spacemacs.org/layers/+lang/python/README.html)
	- [go](https://www.spacemacs.org/layers/+lang/go/README.html)
	- [rust](https://www.spacemacs.org/layers/+lang/rust/README.html)
	- [java](https://www.spacemacs.org/layers/+lang/java/README.html)
	- [typescript](https://www.spacemacs.org/layers/+lang/typescript/README.html)
	- [shell-scripts](https://www.spacemacs.org/layers/+lang/shell-scripts/README.html)
