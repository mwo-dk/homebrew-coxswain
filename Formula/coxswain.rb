class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.1/coxswain-terminal-v1.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "260c66e8ccf360bf802186ed86a94b0266257ca56e84461876ec1014a9a6f54c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.1/coxswain-terminal-v1.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "fe24a303ead9d7db9fc33c34ecbd355d16afb3dd4b6c16dd56a5f88b4dd9ca29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.1/coxswain-terminal-v1.25.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f1df414dbba9ebb2bccb9c537cf8e5077f5c02711d1a2df1792df2900aa0d09"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.1/coxswain-terminal-v1.25.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a3cde8e4a9241b0626b6de6a0273335f9cdb3791260f3a2b33da445e8b22684"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
