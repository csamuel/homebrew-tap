cask "polyend-tool" do
  version "1.2.1"
  sha256 "82d022b7bc1f6f2a774e39e4d1802ac5c68b539a56837061948e09318c266224"

  url "https://polyend.com/wp-content/uploads/2022/05/Polyend_Tool_v#{version}_macOS.zip",
    verified: "https://polyend.com/wp-content/uploads/2022/05/"
  name "Polyend Tool"
  desc "Manage Polyend device firmware upgrades"
  homepage "https://polyend.com/"

  livecheck do
    url "https://polyend.com/downloads/"
    regex(/href=.*?Polyend_Tool_v?(\d+(?:\.\d+)+)_macOS\.zip\"/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Polyend_Tool_v#{version}_macOS/Polyend Tool.app"

end
