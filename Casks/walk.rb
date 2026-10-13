cask "walk" do
  version "0.3.9"
  sha256 "851d59c42aea5bb66ef5c8933f4936149b140856f3c73750ed51ca03048726e7"

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
