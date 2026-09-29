class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.1.0/coxswain-terminal-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0954fb536097fff6a93b6226ca60f14787b31337a0f0f4a01f01671d120a82df"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.1.0/coxswain-terminal-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a3bea026498189ee6343371fb2d4ddfaa6667aeb096840328b170531c65b97f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.1.0/coxswain-terminal-v1.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "953ce1d653dbed8592412824f11b2abeb953259b95a34f54ddb189c66f794321"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.1.0/coxswain-terminal-v1.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9099618989fe7dd128b2d08739faef193dbde969f11902004348e4d128e46014"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
