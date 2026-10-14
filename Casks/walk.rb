cask "walk" do
  version "0.3.17"
  sha256 "e253789f31d0c2d23938e6c376548fbcbdf32ab7f7330633e7fb35d0bbcabbfd"

  url "https://dl.walk.md/#{version}/openwalk-#{version}-macos-arm64.dmg"
  name "Openwalk"
  desc "Agents, code, notebooks, browser and terminal in one native app"
  homepage "https://walk.md/"

  livecheck do
    url "https://walk.md/downloads.json"
    strategy :json do |json|
      json.dig("stable", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Openwalk.app"

  zap trash: [
    "~/.openwalk",
    "~/Library/Caches/sh.openwalk.app",
    "~/Library/HTTPStorages/sh.openwalk.app",
    "~/Library/LaunchAgents/sh.openwalk.app.plist",
    "~/Library/Preferences/sh.openwalk.app.plist",
    "~/Library/Saved Application State/sh.openwalk.app.savedState",
    "~/Library/WebKit/sh.openwalk.app",
  ]
end
