class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.1/coxswain-terminal-v1.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a2c02b7cc48daa050164fff55acf6232baf9be3a8b5f35ec068cc124785ef5f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.1/coxswain-terminal-v1.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "f001ca4be827d4d0eb254464fe84ce055eedc282275cb0122cc0ecaa05db6bec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.1/coxswain-terminal-v1.29.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "311066c6d96d7060f24846489cc4a715ccfba9c62d4a37e4fe3bb29b99b5a855"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.1/coxswain-terminal-v1.29.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5868b1deaea17ebddd52854f33bd2b2ff2704726b60544f23e4a6b985367a6a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
