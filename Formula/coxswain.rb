class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.8.0/coxswain-terminal-v1.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "b91a05de5b34d1621b67dfab6da909295fa63a1970e1da56520cd9967e3a7902"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.8.0/coxswain-terminal-v1.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "d49b8492d37f2a9ae77f66267d4d76e8a0abc999da89c54b2337356840a13e1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.8.0/coxswain-terminal-v1.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29c965b3fe642cd8a557e9679964773282f802b8dc8b8f27b65c531e73bd644b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.8.0/coxswain-terminal-v1.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1fc836e3b50dc03c14008d402a79b559b6011ad1ca1c1c2cbd41ad4afa78229"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
