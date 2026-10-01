class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.2/coxswain-terminal-v1.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "d700323075623f797e2cf477c77c8ebf244777adb9a3b65ba3b2e8c88d9614dd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.2/coxswain-terminal-v1.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "c106340144ea328654ce54a2a8b4923bc5c6c72db4415a258900094293ae05b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.2/coxswain-terminal-v1.25.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5ae35463cd2cd6a4bee88f8b5864cb889ef4da3638b2581ed57300e24622398"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.2/coxswain-terminal-v1.25.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3947c5fa7a7a1a16274dce3f94cd1f4916a6935358860abb507867100748cf7"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
