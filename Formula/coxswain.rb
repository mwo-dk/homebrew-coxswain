class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.2/coxswain-terminal-v2.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "b2c4b76b36ec0ac47b2f1f80798ba0396a525bca2990628c23c35d34401f53d6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.2/coxswain-terminal-v2.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "ed467d30539e67ba1d05bc23330d370ecd0661f522298e42e7be4372c635ee76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.2/coxswain-terminal-v2.8.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "159a51eddf363b4fe5317f6d70857964170759ce1be3f98d063d8890c33a26a4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.2/coxswain-terminal-v2.8.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "788f426ce34a65988ab85527e5990a08873161941d07b8cc68121feb24baf62e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
