class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.0/coxswain-terminal-v2.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f611e7eae710b60883a211f05b0f83ccf650eb3665023dc764c85826d62e34c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.0/coxswain-terminal-v2.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "630f08cdf7b3dd73e24b703fafb2ef9bbcbc58d2376a77949dcba0ea2fb762d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.0/coxswain-terminal-v2.34.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee3f755f290d438c40bb76d1d69f6cf8402667871f23a6d92008d219a7a8d7c3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.0/coxswain-terminal-v2.34.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "293af7d58f026e86c7190ac574057a1d3338cb290750c8f951f3acc2e85ea93d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
