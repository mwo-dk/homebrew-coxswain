class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.1/coxswain-terminal-v2.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "96f5cad86e1d10876e8a2c194f1f83198df354dda27128098930e8a988b00467"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.1/coxswain-terminal-v2.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "49c3fedccf27bddf80b38ab28e0afbcd7589ec7b9d58f37274607379825f1e12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.1/coxswain-terminal-v2.28.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8f97809275cb64abd3848bb500cccfdaaf40cf75aa7f41734b17ba511d6e291"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.1/coxswain-terminal-v2.28.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3342be995b54f9aa83cdc5ea46cce2e3215235dc791a2a1060f730e9ed930dc"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
