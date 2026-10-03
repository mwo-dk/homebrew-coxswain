class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.28.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.4/coxswain-terminal-v1.28.4-aarch64-apple-darwin.tar.gz"
      sha256 "b10d8be33e13e4d3262d4567f945c4f1d7ae0e002d879296a7d9d6916aa4b8bf"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.4/coxswain-terminal-v1.28.4-x86_64-apple-darwin.tar.gz"
      sha256 "8629a6a9f03fe89a63d5d50012f4ac2f6ed7fb4eeeadb1476efb18cf480e28cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.4/coxswain-terminal-v1.28.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "554674015c3a5d038e39f16c2a95ad4b71d4715e7845d27ed3831091bf04c2a6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.4/coxswain-terminal-v1.28.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "add44b8ba220ccdee2d6e09b454d28f7aed2622364b84f483bc466127b1f385e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
