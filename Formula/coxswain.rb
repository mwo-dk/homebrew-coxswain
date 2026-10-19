class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.1/coxswain-terminal-v2.31.1-aarch64-apple-darwin.tar.gz"
      sha256 "a56ff060c624595d6bdd3cc34dd5a82214adc27ff9ef7214ef2b3c68e47bb3b8"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.1/coxswain-terminal-v2.31.1-x86_64-apple-darwin.tar.gz"
      sha256 "c05763e2d1f9d051cc37bca9d1aad2b2e72f2cb3ee04c8461c79b2dafd15aceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.1/coxswain-terminal-v2.31.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "70b0b4213d1158b2a59bd373eda130fb0800030d23a99e0f9aedd41fc5029f83"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.1/coxswain-terminal-v2.31.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66f4ca4b507da5b61bbbbcc880b3db764b6342c897a838100f4e42080e817c48"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
