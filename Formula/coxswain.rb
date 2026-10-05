class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.1/coxswain-terminal-v1.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "ca010f693bd820d8ad1219dc3b234b937d93095f06e3d92c0b7767c3730ca44c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.1/coxswain-terminal-v1.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "a9150b0c134d77f1b3f7a0d36f20207aa1ab828c56fc15a058337c93fe01772f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.1/coxswain-terminal-v1.32.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ebc7f1088dd4d2ae27889e893f793568fd67a42067b7ac516b3a3b3195bddd9a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.32.1/coxswain-terminal-v1.32.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01822b3db10b976b2f13ba19b09327302be0273f6a8e472fbd8e7344693c22e1"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
