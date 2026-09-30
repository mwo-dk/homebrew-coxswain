class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.0/coxswain-terminal-v1.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "a98c37afb9ff4311faa0cbe8415cb16026835dc700458a3e8fd503a2c6495df6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.0/coxswain-terminal-v1.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "e24d03c275d0114858759b32c5f0761148142c727977e01c33643e1fd5a057cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.0/coxswain-terminal-v1.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "765e60c1156ac6ce755ccea353306eb8719a517acb0975abc3b420e0e1fa88e8"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.9.0/coxswain-terminal-v1.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d758cd002d18c1a59edaab95d8d90bc15355aeb5539a4d8e732210588f335cc"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
