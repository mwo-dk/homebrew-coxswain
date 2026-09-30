class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.19.0/coxswain-terminal-v1.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d4ab1ab99f1dd8ecbf007ae91435e0439b847ad82fe9e30cb3b816e1ac5f25a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.19.0/coxswain-terminal-v1.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "4c4cb040f4d758eec06dd9754594e54551841f2dd12d65e260f60e4ec8dbc3a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.19.0/coxswain-terminal-v1.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c04664011854422bcef10ee5c179a7bb2bfec84f301296ac1e699ec8615f71e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.19.0/coxswain-terminal-v1.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89e132e76a48a9fc904809be18e21bd8f6fcd9d29c7b48333683310fab6f30d5"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
