class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.0/coxswain-terminal-v1.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "5366805c495a0b499255b5c285269c297219df9df97ada8d39c21879dc46be2c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.0/coxswain-terminal-v1.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "50f1ff4fc36ecfe3487b053151cf6cff47b99d3bc689f5c76544e9b5eca09c40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.0/coxswain-terminal-v1.26.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b52f48ac04c2917c4116c6d68f5989f29aa927074df33b4e6544b652fae77bbe"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.0/coxswain-terminal-v1.26.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ece0d0ab73d3ba9d8958ce825860b2d38854cb15e5f185756386c07d94e4db2a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
