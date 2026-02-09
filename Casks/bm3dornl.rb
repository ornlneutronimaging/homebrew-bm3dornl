cask "bm3dornl" do
  version "0.8.0"
  sha256 "c7b73fdd9918357fbc16ec6d58504736f9e1863432bf2ec40980f4e3cca4ca5b"

  url "https://github.com/ornlneutronimaging/bm3dornl/releases/download/v#{version}/bm3dornl-#{version}-macos-arm64.dmg"
  name "BM3DORNL"
  desc "BM3D denoising GUI for ring artifact removal in neutron imaging"
  homepage "https://github.com/ornlneutronimaging/bm3dornl"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "bm3dornl.app"

  postflight do
    system_command "/bin/echo",
                   args: ["Removing quarantine attribute from bm3dornl.app (app is not code-signed)..."]
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/bm3dornl.app"]
    system_command "/bin/echo",
                   args: ["Done. bm3dornl.app is ready to use."]
  end

  zap trash: [
    "~/Library/Preferences/com.ornl.bm3dornl.plist",
    "~/Library/Saved Application State/com.ornl.bm3dornl.savedState",
  ]
end
