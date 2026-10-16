class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.24.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.2/coxswain-terminal-v2.24.2-aarch64-apple-darwin.tar.gz"
      sha256 "40989cf0528e564ea4effcebce10679300e09efe23a7d5f133dc146a69f48b4a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.2/coxswain-terminal-v2.24.2-x86_64-apple-darwin.tar.gz"
      sha256 "d9a6f8acf5815c3ffa11fb883563dadbfcbb3c67efc4b628d4bd3feb4d52f1a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.2/coxswain-terminal-v2.24.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3341c2c5ff7dfe3a700e0b3076c2b3796a654ba05753002b8870aa2270502d18"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.2/coxswain-terminal-v2.24.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "986105777792e03c6755a9513fdefd3b6a38c096466249858121c4aea6c546ac"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
