class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.0/coxswain-terminal-v2.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "313afedbff9b8170c1403642822adfc091a3814b0bfe5fc0ed6ddc67eea1f8e4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.0/coxswain-terminal-v2.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "0859a41d7f6d3ffb1b5c9dce1f08464ef164b7967f9e74c21759a155d70f4d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.0/coxswain-terminal-v2.32.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ea581d99ff4ac7b7444afb3b7fe6bc0f2e68c8e379bcbef490fa89febf4dbb1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.0/coxswain-terminal-v2.32.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a51947e35f07983acb2fb9b1abf35e23d24ffb930a5f8e11794a2239ce45b913"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
