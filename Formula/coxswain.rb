class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.44.0/coxswain-terminal-v1.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ad646fe279aefec398ff2a9a93608090653b31c394c90c4f524cf2533ef5c7f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.44.0/coxswain-terminal-v1.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "5c7a5fb1344234dccd966dece60afad57dc869aa6813c561b791af34cb6b1db8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.44.0/coxswain-terminal-v1.44.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e9bfa675dee17dd2a1758896c5e5280bd32f01950a1c167047f4d483594b319"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.44.0/coxswain-terminal-v1.44.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e370f7524f47f9822423c683c111433b0716f2545b1dd5bee9ad9f1f4f329c3"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
