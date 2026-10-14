cask "walk" do
  version "0.3.13"
  sha256 "b490a5e237222123c5dfc0f9ef2910d56d0a61a99fe9a559833ae111a8c61b32"

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
