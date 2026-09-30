class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.0/coxswain-terminal-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "27f8586e8cd8ec178c1cf0105be6a4f7677661f16b130e4ee52247ed57a68e60"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.0/coxswain-terminal-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f25e375a7b29d51eeabe868c6561bb24e4b5975d0e2962cda9ef89158bf891c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.0/coxswain-terminal-v1.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31110b1e6d1608ca2db3178b4fbbebaac242bfd0f142f152a0590cd947ab373f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.0/coxswain-terminal-v1.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45bb499c13b5b291f10c2812e71f7e4c11829fdb6b3bb09f7cd54fefef82e6dc"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
