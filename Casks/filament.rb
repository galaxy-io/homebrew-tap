# Written by hand to match GoReleaser's `homebrew_casks` output for this release.
# The next GoReleaser release of filament overwrites this file.
cask "filament" do
  version "0.24.0"

  on_macos do
    on_arm do
      sha256 "27fd77f262ef1a6ae6919f2ea298550c0f319b49305929df947b88d6f3a6e611"
      url "https://github.com/galaxy-io/filament/releases/download/v0.24.0/filament_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "8b8c0c81c839a9e537a2d22b5fd2c8cf00e6a910003558e4a36b296c8ec655b6"
      url "https://github.com/galaxy-io/filament/releases/download/v0.24.0/filament_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "89a675547c2cf04f368f960bbdf8f87bb5a622b69d6d851f88c9f1dc5869f0a3"
      url "https://github.com/galaxy-io/filament/releases/download/v0.24.0/filament_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "33146b5a36749fb4167448429e5a873c09e714fb9fd3de59a24663ab89324432"
      url "https://github.com/galaxy-io/filament/releases/download/v0.24.0/filament_linux_amd64.tar.gz"
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
