cask "linguist-zixia-input" do
  version "0.1.0"
  sha256 "49fa66625d4ccc168af9467287a39ed3b19bd4969d2ad41e0dac1bf3cb976953"

  url "https://github.com/ProjectLaplace/LinguistZixiaInput/releases/download/v#{version}/LinguistZixiaInput-v#{version}.zip"
  name "Linguist Zixia Input"
  name "紫霞输入法"
  desc "Deterministic pinyin input method"
  homepage "https://github.com/ProjectLaplace/LinguistZixiaInput"

  livecheck do
    url :url
    strategy :github_latest
  end

  input_method "Linguist Zixia Input.app"

  uninstall quit: "org.1b2c.inputmethod.LaplaceIME"

  zap trash: [
    "~/Library/Application Support/LaplaceIME",
    "~/Library/Caches/org.1b2c.inputmethod.LaplaceIME",
    "~/Library/Preferences/org.1b2c.inputmethod.LaplaceIME.plist",
    "~/Library/Saved Application State/org.1b2c.inputmethod.LaplaceIME.savedState",
  ]
end
