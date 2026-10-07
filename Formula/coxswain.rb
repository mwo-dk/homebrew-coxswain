class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.9.0/coxswain-terminal-v2.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4bad9e5fca5dba83c698a2326c64dde78c13392c706502a0bbcf900b22e7139f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.9.0/coxswain-terminal-v2.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "4128245d9fc2d3223c255732e133f652053542032e0f88a3a16626878915f2ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.9.0/coxswain-terminal-v2.9.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34b474e87dde9b6d1b86c061948238b64cce836dc60769a32618936875b7c27a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.9.0/coxswain-terminal-v2.9.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8823e53bfec7069f576a1a70b199c8946667e74ee6a50aad3fbc85ddf1e7777f"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
