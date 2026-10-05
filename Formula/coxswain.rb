class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.0/coxswain-terminal-v1.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "3029eb77795f0e43f9a3e4e05a30b3f389db47825d396bfe3dce86b44c3c1261"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.0/coxswain-terminal-v1.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "68694c38f76ed0fb185d2d6620ac7cf4838f67951fc255e9c74528d2734ee8cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.0/coxswain-terminal-v1.32.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "571d846872907c83b253725162ded22f5bb57dfe833a8ac66156d0fa481a3511"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.0/coxswain-terminal-v1.32.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29faedcb7b9144ee43ece7be8a775315b55bc0de6b999d65e60be7d9aa904017"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
