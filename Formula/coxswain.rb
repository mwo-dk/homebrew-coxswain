class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.0/coxswain-terminal-v2.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0727fb0ac49a4f37bba910edc45e56b07317029faff9ef09866c8cb637ef48e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.0/coxswain-terminal-v2.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "e63f228cfcd2312f536e756aa02db72f7d6bf0ddaf59dd8c20b269a656b57ba6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.0/coxswain-terminal-v2.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0dfee7fcabd52ad36a63abe8c35368f9212636d8a86ed6214f4dfdf25b091d42"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.0/coxswain-terminal-v2.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f42a9236636195a17861a2f625560a9642cf7d801a0335e1d0efc81b996b0a7"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
