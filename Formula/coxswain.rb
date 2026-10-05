class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.41.0/coxswain-terminal-v1.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff86e4b8cf949c3505bd1f993953c97d3d165d796ba945b40a1dca49038c04b3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.41.0/coxswain-terminal-v1.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "3cacc317096b81aa06cd7b624595ee6b685a79321170e56206495b5e8ac0f9c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.41.0/coxswain-terminal-v1.41.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38339b34f2d4ea020dd93a16b9c820d5e61a050261158b296d0b4547a88d4e12"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.41.0/coxswain-terminal-v1.41.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8627497a391b5a4b2a36b4369475385ab8445849cdf3a81a5adff4002f08db2d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
