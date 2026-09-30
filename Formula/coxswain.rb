class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.12.0/coxswain-terminal-v1.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "0f66ca185aed3f4f49ebea424b5d30740a9be6c67a0e86ffb5ade3cef0d66e5f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.12.0/coxswain-terminal-v1.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "f88b041972ba5993cd929ed880073ae6ef163d189b0af9bab2172f73ef634d7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.12.0/coxswain-terminal-v1.12.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0568c2059d92382b6fdd5cb7c6fde83a5e6216a5a40a01eb3c1909efba8cf32"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.12.0/coxswain-terminal-v1.12.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "649aba7da8b9616c6477db95f39cbafd1873c643bdafa3ec31b46020656a4d62"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
