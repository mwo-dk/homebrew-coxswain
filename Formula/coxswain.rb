class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.33.0/coxswain-terminal-v1.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "a317bc94aeaa8f18a4dd095a7d0df048c84056d7036887b56c9d1a50f497052b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.33.0/coxswain-terminal-v1.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "7e4c3179fbb3204a7dc584b721d243c6f13277ada9854f0dbc6997c4332e5521"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.33.0/coxswain-terminal-v1.33.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5bdb24d4147af8aa0b13bf0b8d6e284ab03f6558cc504e43446b06a45c1ad8e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.33.0/coxswain-terminal-v1.33.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "614f8b6d3d032a55ea99818ffea386504f064f5c8b9613a568e5fb2d7de85e87"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
