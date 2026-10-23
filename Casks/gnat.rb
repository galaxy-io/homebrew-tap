# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of gnat overwrites this file.
cask "gnat" do
  version "0.1.9"

  on_macos do
    on_arm do
      sha256 "d3a130b322159fc8ab90ef7876673b8031ccd883c7a1574dc5b7e41650354a63"
      url "https://github.com/galaxy-io/gnat/releases/download/v0.1.9/gnat_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "28c41499dd195d0308844aca5a55eda16b2cc0490a1876410792f5e1404729e9"
      url "https://github.com/galaxy-io/gnat/releases/download/v0.1.9/gnat_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "6b60a8edbe226a6614ecd47529079eec061b2f74cb43d4e1617f72c5af79f8bd"
      url "https://github.com/galaxy-io/gnat/releases/download/v0.1.9/gnat_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f4c2d271980fc7c275eb82733e41d9c833a0029a2af3d4262aab51fbf4fdd36c"
      url "https://github.com/galaxy-io/gnat/releases/download/v0.1.9/gnat_linux_amd64.tar.gz"
    end
  end

  name "gnat"
  desc "TUI Client for NATS"
  homepage "https://github.com/galaxy-io/gnat"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "gnat"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "."], chdir: "."
    end
  end
end
