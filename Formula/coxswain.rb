class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.0.0/coxswain-terminal-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "a6b8e90058ecc748b491983a4493f89650fa5f648137d7698fbdad2bee30b805"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.0.0/coxswain-terminal-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "74c379e3ad3e677fc5a316ed80489d4ecfe84dbd3b07a31530468150cf1ba623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.0.0/coxswain-terminal-v2.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d3530c9941caf79a84c60c464713c479dc6f5b36f269c26b6f28a986bf94bc3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.0.0/coxswain-terminal-v2.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63e4f11868e2f4c08011db5af2c4b2db95427cf3a5028286ac5b229609816504"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
