# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of tempo overwrites this file.
cask "tempo" do
  version "0.1.15"

  on_macos do
    on_arm do
      sha256 "5336547ca37540651eec3bc89d9ecdbc5b60a2d9d384d11e2832b2619955cdce"
      url "https://github.com/galaxy-io/tempo/releases/download/v0.1.15/tempo_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1eaebc9390753f8a2d4ef2bf190ea5eb25f79504aea6686b6e2da1e709533851"
      url "https://github.com/galaxy-io/tempo/releases/download/v0.1.15/tempo_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "5cfd2527a28ab3ef6a9b0094f956704639c6854075ae84df6c4ac5f894e9529e"
      url "https://github.com/galaxy-io/tempo/releases/download/v0.1.15/tempo_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "7960f016c48dab3822e962d056c7e61e37948dcc869c6a8d4e0f55d36961313b"
      url "https://github.com/galaxy-io/tempo/releases/download/v0.1.15/tempo_linux_amd64.tar.gz"
    end
  end

  name "tempo"
  desc "TUI Client for Temporal"
  homepage "https://github.com/galaxy-io/tempo"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "tempo"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "."], chdir: "."
    end
  end
end
