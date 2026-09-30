class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.5.0/coxswain-terminal-v1.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "8686830fcea8974a887867b722afcc2216381d556efba4597106ce3cdd598ad4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.5.0/coxswain-terminal-v1.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "627dac4c36cf9d77fc978e06e7ac6c10d77f236439ff5795440599013a0bc7e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.5.0/coxswain-terminal-v1.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a897749a51c91b4d8757ad70cc2a15432882028df06e13c9fd3e083bdb3e6b46"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.5.0/coxswain-terminal-v1.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d9b60303dd9fc04f5b7000ce7818596463eddcb7dd99a8eb80841933a2de196"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
