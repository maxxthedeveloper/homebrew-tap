cask "focuh" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "6460f8511a5b80300cf93bc3c8fc05c74049da7e8f62af32678c33f35a91d5c3",
         intel: "3912be8610118abe043b617f696383ef50d45f7010d23752b826d5d87592bd25"

  url "https://github.com/maxxthedeveloper/focuh-releases/releases/download/v#{version}/Focuh_#{version}_#{arch}.dmg"
  name "Focuh"
  desc "Focus timer with system-wide website and app blocking"
  homepage "https://www.focuh.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Focuh.app"

  uninstall quit: "com.focuh.app"

  zap trash: [
    "~/Library/Application Support/com.focuh.app",
    "~/Library/Caches/com.focuh.app",
    "~/Library/HTTPStorages/com.focuh.app.binarycookies",
    "~/Library/Logs/com.focuh.app",
    "~/Library/Preferences/com.focuh.app.plist",
    "~/Library/WebKit/com.focuh.app",
  ]
end
