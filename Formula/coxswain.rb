class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.1/coxswain-terminal-v1.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "556f82ed2b942034794089fdb12a66b70f9b455e26cb5e59c9055438f1714093"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.1/coxswain-terminal-v1.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "6ab62c47f56610119b30a36248ae9817da9b2d1da20cead8e8aea87864819a23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.1/coxswain-terminal-v1.9.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e1a39906c6093017348056fd2dc014751848291ff8a9c111f9df42768cf141a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.1/coxswain-terminal-v1.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66b20651953fc5793d26b68de3a2a9cbf9a6064006dda407d0b39acc4f634f71"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
