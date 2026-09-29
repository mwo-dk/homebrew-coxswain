class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.0/coxswain-terminal-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8132d0737adbf3b5e8d10d6582ac52ce7bd58fe5cc3a06ab71858f3634f91a67"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.0/coxswain-terminal-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "45ea75f541f63ee690cab10e5c10684d99f872cbc70aec12226af27335b094a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.0/coxswain-terminal-v1.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09d6c193f6ca30bf5215b1b1459444802c928aa277ded6210b832e2d0ee46869"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.0/coxswain-terminal-v1.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e4dc51971b5195d4bc2d91aca616a1cea3d095ec35d625c8010414b853d7e1f"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
