class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.7.3/coxswain-terminal-v2.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "f6f1012c8b6c91044e30f94a2855c918afe8cb745ada0838ce788a56ba8bf440"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.7.3/coxswain-terminal-v2.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "9076cb2c8ec45372f511b07882c367e345841dcb082ffeb29207ccaee211d221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.7.3/coxswain-terminal-v2.7.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77f79eaf573f2f59757506f1a1b5d3fddf38c590523876166fc30d7dec22e6e4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.7.3/coxswain-terminal-v2.7.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b39bc927445a18fd5d835b1a9a570cf47416347241e327ed05af82d4c1ec8ff8"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
