class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.0/coxswain-terminal-v2.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "95c8a8dd74bb157838aca754f97ecd08e78f57572dc6f8665e4c5ef3c08ebdd5"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.0/coxswain-terminal-v2.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "a70977784c7fdea1738a0f3052c5502a8b63320c347940f0b4b320f409e32b4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.0/coxswain-terminal-v2.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd4cb9927052c71342e81f8f153ceaff08cd6d990e24db58c0f377bcfe4ec959"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.0/coxswain-terminal-v2.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a038b80886a958da46f7a93ea0e49f2be687ac7f7453bc958ce1e515ba33d05"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
