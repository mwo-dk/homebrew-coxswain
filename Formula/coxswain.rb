class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.5/coxswain-terminal-v2.27.5-aarch64-apple-darwin.tar.gz"
      sha256 "465fa52f0a75c09a12ef46f56d08057d3ec65aaa7099480642839a0a913bc186"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.5/coxswain-terminal-v2.27.5-x86_64-apple-darwin.tar.gz"
      sha256 "24ee705673bb43c75aae89e902ff0ae59784599328256259fbd19ff68e9d5aa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.5/coxswain-terminal-v2.27.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94e42a93233f01d77c3b3f6716a6adc917d7487f80db674e1a41d019d604feb4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.5/coxswain-terminal-v2.27.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a729cd73656720a5d713fd64085de58862af620201d33a6e4c391c1d6230eb91"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
