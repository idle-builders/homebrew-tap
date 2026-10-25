cask "hyperidle" do
  version "0.5.0"
  url "https://github.com/idle-builders/hyperidle/releases/download/v#{version}/HyperIdle-#{version}-arm64.dmg"
  sha256 "8ba12ff280241223d5e7fbc3a0fdd5e0a857ed0c33aba48eaa3f659e9ae69cb8"

  name "HyperIdle"
  desc "Agentic operating system for AI product teams"
  homepage "https://hyperidle.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "HyperIdle.app"

  zap trash: [
    "~/Library/Application Support/HyperIdle",
    "~/Library/Logs/HyperIdle",
    "~/Library/Preferences/com.hyperidle.app.plist",
    "~/Library/Saved Application State/com.hyperidle.app.savedState",
  ]
end
