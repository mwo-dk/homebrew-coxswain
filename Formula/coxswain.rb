class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.2.0/coxswain-terminal-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "dbef9e8088654e7933c94ec36a9920249a08d6ab4bc016a96347006a6b6782cf"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.2.0/coxswain-terminal-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "572c1981e7dc214fe845aff0d4ec549e7b756b728b20c43358c60a6b4a1efbc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.2.0/coxswain-terminal-v1.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d7969777dce412a5d5c0f05b287291c2dabdff3071a94df644bab93a375d8856"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.2.0/coxswain-terminal-v1.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f8cd657dfadfe59d0a11820d3635d81865f011fbbfd3a1dc393b89632278f10"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
