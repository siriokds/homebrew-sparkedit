# homebrew-sparkedit

**SparkEdit**, a text editor for the Mac whose tabs are miniatures of their pages, with the
`spk` command for the shell.

```sh
brew install --cask siriokds/sparkedit/sparkedit
spk notes.txt
```

`spk file` opens the file in SparkEdit, starting it if it is not running (as CotEditor's `cot`);
a file that does not exist yet is made, empty. `spk -h` tells the rest.

The cask installs the app already built: macOS 14 or later on Apple silicon.

To update (`brew update` first, so that Homebrew reads the new version):

```sh
brew update && brew upgrade --cask sparkedit
```

SparkEdit is not notarized by Apple: the first time, macOS stops it. Open System Settings ›
Privacy & Security and click **Open Anyway**; from then on it opens as any app.
