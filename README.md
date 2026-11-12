# homebrew-sparkedit

**SparkEdit**, a text editor for the Mac whose tabs are miniatures of their pages, with the
`spk` command for the shell.

```sh
brew install --cask siriokds/sparkedit/sparkedit
spk notes.txt
```

`spk file` opens the file in SparkEdit, starting it if it is not running (as CotEditor's `cot`);
`spk -n file` creates the file first if it does not exist; `spk -h` tells the rest.

The cask installs the app already built: macOS 14 or later on Apple silicon.

SparkEdit is not notarized by Apple: the first time, macOS stops it. Open System Settings ›
Privacy & Security and click **Open Anyway**; from then on it opens as any app.
