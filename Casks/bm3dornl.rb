cask "bm3dornl" do
  version "0.7.0"
  sha256 "f2ab79415248205c8c7d2854bf586e772ef353645ffcfacdcff19293d5a93b58"

  url "https://github.com/ornlneutronimaging/bm3dornl/releases/download/v#{version}/bm3dornl-#{version}-macos-arm64.dmg"
  name "BM3DORNL"
  desc "BM3D denoising GUI for ring artifact removal in neutron imaging"
  homepage "https://github.com/ornlneutronimaging/bm3dornl"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "bm3dornl.app"

  zap trash: [
    "~/Library/Preferences/com.ornl.bm3dornl.plist",
    "~/Library/Saved Application State/com.ornl.bm3dornl.savedState",
  ]
end
