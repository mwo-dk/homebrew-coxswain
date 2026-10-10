class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.20.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.2/coxswain-terminal-v2.20.2-aarch64-apple-darwin.tar.gz"
      sha256 "df5f1db508d1ff69e69f29bab02c7790f8f37ec9625d3f14c686e95c35389bce"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.2/coxswain-terminal-v2.20.2-x86_64-apple-darwin.tar.gz"
      sha256 "6e1b6bb77d09d0ada52c8266511296b892ddc6bc0bfbb8bd95467f6671a5d985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.2/coxswain-terminal-v2.20.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9404204fe463e18536ca1a8a25afb1626719ec0bdf5b15dfb329e694e02f2bd6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.2/coxswain-terminal-v2.20.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9363dfb0f59bd41d3ab24a71ff735a10789087483fd132e406e4ae96f8e7ceb4"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
