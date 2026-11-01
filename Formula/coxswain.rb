class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.1/coxswain-terminal-v2.35.1-aarch64-apple-darwin.tar.gz"
      sha256 "231523317e87110d299f0856114526388b6376eeb66038b1223fbbf841361104"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.1/coxswain-terminal-v2.35.1-x86_64-apple-darwin.tar.gz"
      sha256 "9dca5b659c1696247f9de7d875df1a70963b73068bfa0eecd83e3277216958a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.1/coxswain-terminal-v2.35.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e42554cc204d6dad52bd4fd736d18050617d42fc8735ccdf27634dd26fa9ebc"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.1/coxswain-terminal-v2.35.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2bd0e1b3aa31758d6aef6d38cbae07a6d9c78de7d129f869bd36ad5d8b96d410"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
