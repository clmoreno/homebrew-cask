cask "paperspace" do
  version "11.9.7.5215"
  sha256 "5cb02a22317fb223c143c2897a041e9f01193fb33122a55c22decd8901d05acc"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  livecheck do
    # curl -H 'Content-Type: application/json' \
    #   --data-binary \
    #   '{"component": "paperspaceInstaller", "os": "mac"}' \
    #   https://api.paperspace.io/receivers/latestVersion
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "Paperspace.app"

  zap trash: [
    "~/Library/Application Support/Paperspace",
    "~/Library/Caches/Paperspace",
    "~/Library/Preferences/com.paperspace.Paperspace.plist",
    "~/Library/Preferences/paperspace.Paperspace.plist",
    "~/Library/Saved Application State/paperspace.Paperspace.savedState",
  ]
end
