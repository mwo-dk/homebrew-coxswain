class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.43.0/coxswain-terminal-v1.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "4bbdc51951a3536c3694bd056592b6da12bd42677c610263555fb23a83a8bc64"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.43.0/coxswain-terminal-v1.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "4324dd7eac05fdb0ca92edcf85827932be490009277f1f04357162539169f8aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.43.0/coxswain-terminal-v1.43.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "63f526159ab8f59b61704ae6e0abfd398da22b29271110acb4c703bc1166d509"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.43.0/coxswain-terminal-v1.43.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "264b91c2d385e70a3da60d254d9905c759576a3f567f495ea1b0afb8eab44852"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
