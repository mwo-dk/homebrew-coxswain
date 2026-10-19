class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.31.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.3/coxswain-terminal-v2.31.3-aarch64-apple-darwin.tar.gz"
      sha256 "fb87cf2c80d62ca670d30987aab82cb76246ab6d123c7868658d9f2e7c2b4b71"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.3/coxswain-terminal-v2.31.3-x86_64-apple-darwin.tar.gz"
      sha256 "7be3d82aa5f6eed976f1a6ec1cbc630ffcf11fce93923ca2ab0faed3a518ac43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.3/coxswain-terminal-v2.31.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fefe87302ff3cfcdf9af32f186f7ff4f62ca19e7f3a71df8e6dad110e759d96"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.3/coxswain-terminal-v2.31.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1dcff49e700c2165c598e125be2066267836147e6f2e2ddb6f2390c2ab5c3ff"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
