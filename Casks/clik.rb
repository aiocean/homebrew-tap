cask "clik" do
  version "0.18.0"
  sha256 "61b0c2e343809b2ed73015415bb07a1caabd313b887491d9e14c0ee9b014d99c"

  url "https://github.com/aiocean/clik-releases/releases/download/v#{version}/clik_#{version}_aarch64.dmg"
  name "Clik"
  desc "Screenshot capture and annotation tool for sharing with AI assistants"
  homepage "https://clik.aiocean.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "clik.app"

  uninstall quit: "io.aiocean.clik"

  zap trash: [
    "~/Library/Application Support/io.aiocean.clik",
    "~/Library/LaunchAgents/clik.plist",
  ]
end
