class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.1/coxswain-terminal-v1.30.1-aarch64-apple-darwin.tar.gz"
      sha256 "b1fb111a9589ef791914f9b199959d4718b18a5b80b684439c250eb8dbfebda3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.1/coxswain-terminal-v1.30.1-x86_64-apple-darwin.tar.gz"
      sha256 "5e174e4867a818ce977623d6e2c197c581550713a6c471e98a1af09fb26392e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.1/coxswain-terminal-v1.30.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d577d30dafc3ff67fa4b10c41290933a7709af62796ebbb6a6323ff45792810"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.1/coxswain-terminal-v1.30.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08ee9749f049f2e6d9092370598aed9e93d044821cfd71cc89df0314154017b0"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
