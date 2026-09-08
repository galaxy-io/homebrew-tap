# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of filament overwrites this file.
cask "filament" do
  version "0.1.1"

  on_macos do
    on_intel do
      sha256 "e39f47e8c65d93d4c6fc406acb0e4e38d4b0aafe3d0ed79b128b5e6db3b7b0cb"
      url "https://github.com/galaxy-io/filament/releases/download/v0.1.1/filament_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "b2a643f979ad7687899cc09f75a54ebb0657a10dbece5aef1380a9ab8b8070f1"
      url "https://github.com/galaxy-io/filament/releases/download/v0.1.1/filament_darwin_arm64.tar.gz"
    end
  end
  on_linux do
    on_intel do
      sha256 "41667ca1d54a9b8083d531f3f22ac1880d97ccf15c12553c5e2d0e45199e3f1a"
      url "https://github.com/galaxy-io/filament/releases/download/v0.1.1/filament_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "853d8bde55c044d528fad16dc25cd529c9b480a79be63724873f7b40a6ca4e7d"
      url "https://github.com/galaxy-io/filament/releases/download/v0.1.1/filament_linux_arm64.tar.gz"
    end
  end

  name "filament"
  desc "Pluggable data replication with checkpointing, batching, and integrity events"
  homepage "https://github.com/galaxy-io/filament"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "filament"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/filament"]
    end
  end
end
