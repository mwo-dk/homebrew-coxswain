class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.20.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.5/coxswain-terminal-v2.20.5-aarch64-apple-darwin.tar.gz"
      sha256 "d612c030e40743687effc137907dfafa0ab426c0013631bcf625e164a2d29848"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.5/coxswain-terminal-v2.20.5-x86_64-apple-darwin.tar.gz"
      sha256 "b4eb9b54791e46ac1639c0dc7b4bc701cf5c6a549ca77a42db66afed226023e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.5/coxswain-terminal-v2.20.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8dc6b73a15a83a2004e3c25b73cde1451eb02edcbe1070fd719f19069d92676"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.5/coxswain-terminal-v2.20.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20cc944943e295a008e493f448b564a8f52c991f2341f0382696c0fae3b94ec2"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
