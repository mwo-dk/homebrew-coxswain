class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.1/coxswain-terminal-v1.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "80bc3e01a42004decf2ce9daada22f2306713d33321a939aae5400d9df5961aa"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.1/coxswain-terminal-v1.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "44c5cedf468333a5c69deadf1feef737e589b7bab4db444bd0d1fab5bfaac652"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.1/coxswain-terminal-v1.23.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7720da7a6078f21cbee7a67160ece5b697c760775208becf9ca0ad8bfbcefd09"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.1/coxswain-terminal-v1.23.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf6bd8d7b4eb45857ed89ae6dcd10886e11bdfc402686428329ef18bb0d8d27c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
