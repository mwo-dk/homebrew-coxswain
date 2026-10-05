class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.39.0/coxswain-terminal-v1.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "3bbf61f97b32aa0e30eb00aab7e8161dfaab9b04927312ee201cb0f0f696a5d7"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.39.0/coxswain-terminal-v1.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "61d9815d4f1d05e300463757f792f86b58de0de5864c340107e9a2de4542745e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.39.0/coxswain-terminal-v1.39.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ef73a866652ddbf7245d92a5b20bfe82fcaeedda132a884f033969f98eb316f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.39.0/coxswain-terminal-v1.39.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66cdb2ed987df19e6ce8b418225fbc412e35abc0fd27363c19348565f4285a4a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
