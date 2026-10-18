class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.1/coxswain-terminal-v2.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "c3c9a068e73cbf19f81ee3a26a5543337f0a03e56eaaf748984c72e162b4fc17"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.1/coxswain-terminal-v2.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "e9156f7335a360ebcc619ad5a50100ab5e4cda594bd4de2bbd838fdab4c034ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.1/coxswain-terminal-v2.27.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "232a8e37f79b4ae005632923aeb40444bde7a593eb0e2fef004e42abce263574"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.1/coxswain-terminal-v2.27.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "468e3dd7ad9e38466cbe0d7f42ffd2678eda2f4a02821d2c37c911d928d35d45"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
