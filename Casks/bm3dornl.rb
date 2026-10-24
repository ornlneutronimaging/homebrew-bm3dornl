cask "bm3dornl" do
  version "0.12.1"
  sha256 "a3b17b5841e2ee6bbd7aeef86866dadbb15821f91436994f2cc3ae5ec5138a58"

  url "https://github.com/ornlneutronimaging/bm3dornl/releases/download/v#{version}/bm3dornl-#{version}-macos-arm64.dmg"
  name "BM3DORNL"
  desc "BM3D denoising GUI for ring artifact removal in neutron imaging"
  homepage "https://github.com/ornlneutronimaging/bm3dornl"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "bm3dornl.app"

  # The app is not code-signed, so strip the quarantine attribute that would
  # otherwise make Gatekeeper report it as damaged.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/bm3dornl.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.ornl.bm3dornl.plist",
    "~/Library/Saved Application State/com.ornl.bm3dornl.savedState",
  ]
end
