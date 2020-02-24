# Chord Heavy - A keymap inspired by [Spacemacs](https://www.spacemacs.org/)

After trying and failing to get a [Spacemacs](https://www.spacemacs.org/) installation to function properly, I came back to VSCode since it was significantly less finicky to set up (don't @ me, Spacemacs diehards). However, the one thing that I _really_ likes about Spacemacs was the [mnemonic](https://develop.spacemacs.org/doc/DOCUMENTATION.html#mnemonic), chord-focused shortcuts to execute actions and navigate.

So I set out a few weeks ago now to create [a keymap](#keymap) that "made sense" inside the limitations that VSCode has and then share it with the world. A lot of the base keymap configurations were either taken straight from Spacemacs or from the [Intellimacs](https://github.com/MarcoIeni/intellimacs/blob/master/docs/KEYBINDINGS.org) keybindings. Some modifications were made because they "made sense" to me, so please refer to the keymap if you need some guidance! Most things should "just work" if you replace common Spacemacs chords' `SPC` with `cmd` in your head (more information on "why `cmd`?" in the [Inspiration](#inspiration) section).

## Keymap

Table would go here.

## Inspiration

Despite Spacemacs' influence, this keymap was created with the "Command (⌘, `cmd`)" key in place of `SPC` in Spacemacs chords. Extensions like [VSpaceCode](https://github.com/VSpaceCode/VSpaceCode) rely on you _needing_ [VSCodeVim](https://github.com/VSCodeVim/Vim) installed, and to be in the editor (the chords in VSpaceCode don't work when your focus is in something like the sidebar). Re-orienting myself around the `cmd` key being the first character in the chord (or the "leader" key, in this case the `cmd` key) allowed me to remove this restriction and thus be able to use these chords anywhere.

Also, it's worth mentioning that [I use a keyboard powered by QMK software](https://configure.ergodox-ez.com/planck-ez/layouts/5BRQB/Ny4rd/0), and have set my `cmd` key to be a [One Shot Modifier](https://docs.qmk.fm/#/feature_advanced_keycodes?id=one-shot-keys). This makes the chords feel a bit more like Spacemacs, where chords like `SPC w -` are three individual key presses. In this keymap and with a OSM `cmd` key set up, you can think of that same chord as being `cmd w -` (three individual key presses).

As I explored creating this keymap, I've come to the conclusion that VSCode generally doesn't really know what to do with chords and seem to have been bolted on. As such, there are a number of improvements that can/should be added in the future that would make this keymap even more robust. See the [Issues to Vote For](#issues-to-vote-for) section for some issues to follow/vote for!

## Caveats

There are some caveats to keep in mind if you'd like to use this keymap, which would be difficult to digest for most of the VSCode population (and that's fine; I really only made this because it was fun!). Those are:

- This keymap removes A LOT of default shortcuts. If you're not comfortable with looking up the commands or using the command search, stay away from this keymap!
- There are some chords/shortcuts that are dependent on snippets or extensions that I have personally installed on my machine. VSCode might complain about this, but you should be fine.
- In VSCode, when you've defined a chord for a specific character, it "clobbers" shortcuts that are only one `modifier+key` combination. Thus, because `cmd+a x` is a chord, things like `cmd+a` in a text editor (select all text) won't work (VSCode sits there waiting for a chord to be executed). Despite not needing it in order to get this keymap working, I _am_ a VSCodeVim user, so anything to do with text manipulation is handled by that extension anyway so that's generally not an issue for me. However, if you rely on those kinds of "common" shortcuts, keep in mind that they have changed (more often than not to `alt+key`).
- On my machine, there seems to be an issue with key chords being executed in the integrated terminal ([microsoft/vscode/issues/91238](https://github.com/microsoft/vscode/issues/91238)); until that's fixed, I'm just going to use an external terminal application instead, but hopefully that can be resolved soon-ish.
- Right now this keymap only supports the Mac; sorry! I'll add more in the future if literally _anyone_ uses this.

If the above are "fine" for you, I really think that this keymap can work well. It doesn't cover 100% of the capabilities that Spacemacs can, but it gets a lot of the way there!

## Issues to Vote For

VSCode was developed with a completely different user-base in mind, but that doesn't mean that VSCode can't be improved in the future to facilitate Spacemacs-like navigational workflows. While it'd take a significant amount of effort to actually get this to be a Spacemacs replacement there are some low-hanging fruit issues that, if they were resolved, would improve a keymap like this significantly.

Here are some issues that, if they were resolved, would improve this keymap significantly:

- Add suggested completions for key chords [\#3969](https://github.com/microsoft/vscode/issues/3969)
- enable keychords of 3 steps [\#6966](https://github.com/microsoft/vscode/issues/6966)
- Reserve shortcut prefix for user [\#87565](https://github.com/microsoft/vscode/issues/87565)
- When using record keys search for individual keys [\#88122](https://github.com/microsoft/vscode/issues/88122)

----

## Potential Future Improvements

- Once [microsoft/vscode/issues/91238](https://github.com/microsoft/vscode/issues/91238) is taken care of, I'll be able to implement all of the same terminal window splits that I can do in normal editor windows
- Create shortcuts that are based on specific file types, so that there is a "major mode" of sorts for them. Can start with HTML and go through other languages as I see fit; use the [Spacemacs layer keybindings](https://www.spacemacs.org/layers/LAYERS.html) for inspiration.
	> NOTE: maybe the `ctrl` key can signify "major" mode?
	- [HTML](https://www.spacemacs.org/layers/+lang/html/README.html)
	- [javascript](https://www.spacemacs.org/layers/+lang/javascript/README.html)
	- [markdown](https://www.spacemacs.org/layers/+lang/markdown/README.html)
	- [python](https://www.spacemacs.org/layers/+lang/python/README.html)
	- [go](https://www.spacemacs.org/layers/+lang/go/README.html)
	- [rust](https://www.spacemacs.org/layers/+lang/rust/README.html)
	- [java](https://www.spacemacs.org/layers/+lang/java/README.html)
	- [typescript](https://www.spacemacs.org/layers/+lang/typescript/README.html)
	- [shell-scripts](https://www.spacemacs.org/layers/+lang/shell-scripts/README.html)