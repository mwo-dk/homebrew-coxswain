class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.25.0/coxswain-terminal-v2.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2efe7e1479bec195d622cadfe35ccd3f9a42d9551baad7acb41fe6040a14426"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.25.0/coxswain-terminal-v2.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "ccab85b00465489a7884a800e8d31e6e4d72a980a9e5538934823293c9c5f528"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.25.0/coxswain-terminal-v2.25.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f186c56e05e29790b11d2247e3132fb517f308a6a4f9966e95005ad8a25414ed"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.25.0/coxswain-terminal-v2.25.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10cbf49d27a8f32880ac51d32377d86ac6d5fb07a388bdfb4e00f141e4c20e5b"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
