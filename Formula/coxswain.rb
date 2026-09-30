class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.16.0/coxswain-terminal-v1.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "beb0d891af4ce9615fecea423eb7d501b35725285dfde8367c3c8f86802604c1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.16.0/coxswain-terminal-v1.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "1e163d612f8936a8cb4161564227a29a56dc70d59315db8394a8a785b5706994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.16.0/coxswain-terminal-v1.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dea67d5c6f38e213232540a79f4350fbcbb7550dc91235dfc215c50435b86d64"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.16.0/coxswain-terminal-v1.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d15029e3762107bd7d43fa7feb6361dad2f915bdc89a8898c2a6dbe3e979ff03"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
