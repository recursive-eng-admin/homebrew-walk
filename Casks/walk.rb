cask "walk" do
  version "0.3.11"
  sha256 "3b79c6fe377cdb70251a36efb2ef4d4aa827204d29abca72e0128fdacf056868"

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
