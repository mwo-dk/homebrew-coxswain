class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.6/coxswain-terminal-v2.27.6-aarch64-apple-darwin.tar.gz"
      sha256 "83699b3fde967b3f204cbb6d27bc58a3561f4c4fec9a3621cd6dafd3dd55ae68"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.6/coxswain-terminal-v2.27.6-x86_64-apple-darwin.tar.gz"
      sha256 "8bad608d69a22e86196e38a474139cb7f6ca4247048f18bbd3427c7b5d452dd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.6/coxswain-terminal-v2.27.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbbbad35f82142b549c7a3d6832ab23311f34a7e2d435878d70024313a9bad7c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.6/coxswain-terminal-v2.27.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82fae95bafb36919aae3d8c89498a13f69e196218656651a2341ca5ba6733482"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
