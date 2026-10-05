class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.42.0/coxswain-terminal-v1.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a70738da2962f63c28825f7c8d17573e0e976e06985bab96d86895721b33abd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.42.0/coxswain-terminal-v1.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "10e7bd398f3d0b015fcf557131ddadfb00e5d4f28e8db429cd3d5d2bc723e0fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.42.0/coxswain-terminal-v1.42.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a0a2aa5c2296640d44247984d14c056324516fc3ad218d21766c3df7089b816"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.42.0/coxswain-terminal-v1.42.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "769e2fd7e25e0d99297f61f42340c77ebcbd8800e2ea3823de69a6409d2ebf9d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
