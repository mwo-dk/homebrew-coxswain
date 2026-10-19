class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.29.0/coxswain-terminal-v2.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "b06bec3ddfb27d65f5e17293c69bebdf824bfb01efbb1f986967b73e940d2788"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.29.0/coxswain-terminal-v2.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c3834c26789ceb100c55db6273061bc6a319a37391aa5b7656025699a3bac43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.29.0/coxswain-terminal-v2.29.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a98e6b77bfb8b48343effec49ab24f39793119824dfeee86461510e28d66e32"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.29.0/coxswain-terminal-v2.29.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adea9ec766e243de5e135ecf6a42f82bc0f195561b21c2711fd9b7c56032088c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
