cask "focuh" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "74f625a7d6073afadc05d5075d53624084ac8f8990ff3ccfee7f93221325cd8d",
         intel: "dfe9fdaa6bbb4e7b326673f4f46ac009845e1891868aeea19dad23a2876f04ae"

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

