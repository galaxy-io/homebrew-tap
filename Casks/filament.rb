# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of filament overwrites this file.
cask "filament" do
  version "0.21.0"

  on_macos do
    on_arm do
      sha256 "9ede1aa2dec6d2b0a7f64e7ad64b6f6d9ab65a53623e2c2a0b63e98bdf58b1f5"
      url "https://github.com/galaxy-io/filament/releases/download/v0.21.0/filament_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "6b8fa11b10c8b980a1ad377fbb1037aaa6c8077a060844bf83051d2be280e934"
      url "https://github.com/galaxy-io/filament/releases/download/v0.21.0/filament_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "4c106d4562c2fc14d2e56b839f364cac1cc9f0505b0b79807d391fd7543a85be"
      url "https://github.com/galaxy-io/filament/releases/download/v0.21.0/filament_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "5ef073a5b56c6d408c7dc77a94f93958a287749f3f906ecd7003b98d546aa7b5"
      url "https://github.com/galaxy-io/filament/releases/download/v0.21.0/filament_linux_amd64.tar.gz"
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
