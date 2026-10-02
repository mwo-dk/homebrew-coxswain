class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.27.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.2/coxswain-terminal-v1.27.2-aarch64-apple-darwin.tar.gz"
      sha256 "551843a58d204b3c36a7b21c5afd7d6f9d0a4bffd811b8c914375ce00bbee555"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.2/coxswain-terminal-v1.27.2-x86_64-apple-darwin.tar.gz"
      sha256 "94d9f6d35f667a276009fca4622ea232ec4582273e65842806176cc3936268fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.2/coxswain-terminal-v1.27.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4c232100e45469d938421464a61f39113e14c8f72a5ec71cc676c336736f720a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.2/coxswain-terminal-v1.27.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0530d65ee4f00b70401751ffb9855e8945f5be578d0398ac99783f00b9abd73"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
