class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.35.0/coxswain-terminal-v1.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "a1221c76d493207e12a6f5a2610495351d66401e9fc6a5db352431fb540e990b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.35.0/coxswain-terminal-v1.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "34c4ec2880659da8129f58c4970a982515078fe8dd608cfd869e9182bc3a06ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.35.0/coxswain-terminal-v1.35.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "330428952fc0a535e82e7224fe1aa5654c47400cdcdd36e88bcec3e4e330a7f4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.35.0/coxswain-terminal-v1.35.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36e09d5df5d9ffc4745259c1868f2b52d4616816f95469ff2ef60cd8d2b2341d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
