cask "sparkedit" do
  version "2.0.0,169"
  sha256 "183d774f6a894cc64ba036cfc9c15fccf0cadb4ce0e153e8562e7d87c00fc643"

  url "https://github.com/siriokds/homebrew-sparkedit/releases/download/v#{version.csv.first}-#{version.csv.second}/SparkEdit-#{version.csv.first}-#{version.csv.second}.zip"
  name "SparkEdit"
  desc "Text editor whose tabs are miniatures of their pages"
  homepage "https://github.com/siriokds/homebrew-sparkedit"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "SparkEdit.app"
  # spk, as CotEditor's cot: `spk file` opens the file in SparkEdit.
  binary "#{appdir}/SparkEdit.app/Contents/SharedSupport/bin/spk"

  uninstall quit: "com.siriokds.sparkedit"

  # No zap: SparkEdit's folder holds the user's notes and session, never deleted by Homebrew.

  caveats <<~EOS
    SparkEdit is not notarized by Apple. The first time, macOS stops it: open
    System Settings > Privacy & Security and click "Open Anyway".

    In the shell: spk file opens the file in SparkEdit (spk -h for the rest).
  EOS
end
