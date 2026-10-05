class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.30.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.3/coxswain-terminal-v1.30.3-aarch64-apple-darwin.tar.gz"
      sha256 "5398cc86b9ff475d26611d48f56413cc65ab32abd2edca25a89ce3a1c6fe2e08"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.3/coxswain-terminal-v1.30.3-x86_64-apple-darwin.tar.gz"
      sha256 "58c51c8f9ed8564b1d74c441df2393479834ade83bc72eb1447d08d8ef81b116"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.3/coxswain-terminal-v1.30.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e22c502db573b12dd5a152e6fecfe4bd18a58ee57666a742db5d20588cc90bf9"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.3/coxswain-terminal-v1.30.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a98aa1b37de2ffcf0998f4c153f4c3b36aadf9c8ae667feb6780574017e8b501"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
