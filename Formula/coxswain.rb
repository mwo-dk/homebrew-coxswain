class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.1/coxswain-terminal-v2.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "ef950eadc594c8f46d89a3eafc486bcc46504a4dfffcc01c77cf6799b10c1c8f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.1/coxswain-terminal-v2.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "69a3132733b936946e2a9ec75401865e9a2d71706b97d68eade2e8f9ece84f8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.1/coxswain-terminal-v2.26.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c7aca243acbac099e22d8643ce1cf3d35ce8f67fd0240ee389065b0ec8267fc"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.1/coxswain-terminal-v2.26.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a594f07da6f5c5477e4da0e94abbd33fcee716cb56ef5a559788649faade9233"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
