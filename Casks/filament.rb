# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of filament overwrites this file.
cask "filament" do
  version "0.27.0"

  on_macos do
    on_arm do
      sha256 "73b15465e9b2d517108bbd54cfd34d29c7eba8b9e07d2e75e8fcadffb139ebe6"
      url "https://github.com/galaxy-io/filament/releases/download/v0.27.0/filament_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "7aef98ec4e3e68c8b78068d3d6213b2acc51e3b661115f7499a9a196ae23a075"
      url "https://github.com/galaxy-io/filament/releases/download/v0.27.0/filament_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "7f20e48ccd9b4890847d7fa6f981736b20e85648b658cd961be637a021e4a66c"
      url "https://github.com/galaxy-io/filament/releases/download/v0.27.0/filament_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "a271a246d6852a9d3b9cc2628a2b76b19c8e7fe8c2795422f4bf3e18fac3fd9f"
      url "https://github.com/galaxy-io/filament/releases/download/v0.27.0/filament_linux_amd64.tar.gz"
    end
  end

  name "filament"
  desc "Pluggable data replication with checkpointing, batching, and integrity events"
  homepage "https://github.com/galaxy-io/filament"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "filament"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "."], chdir: "."
    end
  end
end
