class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.0/coxswain-terminal-v2.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "408f6064ecdae00d8b49c7bb7832c72650d0c6d4181b5163be7f1b4aee515b8b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.0/coxswain-terminal-v2.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "44fc30a5511ddb30fc4390c7818b9448a42de869ce3758c24d591c6e60a84207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.0/coxswain-terminal-v2.37.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5271bb46ed0bcc37e2768967a9b96350ba77bc16e3c564656a0ef5f44f7d8242"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.0/coxswain-terminal-v2.37.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "daee999596377fcf8f9a57bbd9f783643ae22ab71ff39660cbfec1179c67424a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
