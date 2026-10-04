class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.29.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.2/coxswain-terminal-v1.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "cc0f01f73169539c9d5d65452df9ddec2579928588135c432f164b77896dda3c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.2/coxswain-terminal-v1.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "2c690e7def6ca686941f001116c9af195cb3aa0323ff3c80d16cd1039ecb3cca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.2/coxswain-terminal-v1.29.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "586012d534cbc146aa7b67f23e9f39c1335a23cdb01515a84a87752de42181da"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.2/coxswain-terminal-v1.29.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dcf4cc2c07eee99b6d11b314a52a649a45820bf91fa344e8bc1e506f4834293"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
