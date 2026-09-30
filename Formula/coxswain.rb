class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.21.0/coxswain-terminal-v1.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "5cf68cec57dae30fed92a4d46900641c69b53183f456de0143b990b8875c2305"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.21.0/coxswain-terminal-v1.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "3496ad6cdc0b9d81ab4e3c320aa009e3f4094ca78d303ff0b06a70b126ca0151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.21.0/coxswain-terminal-v1.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8a3db6f559f939efe917690941205bef364ff62ef44052c1e0f81131172f2e3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.21.0/coxswain-terminal-v1.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d2c9a6d8ea602ce78588ce51dac9248cdc388c31ff182198fd8c003a3ee3f91"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
