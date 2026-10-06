class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.0/coxswain-terminal-v2.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e43fbeda28bdf5c26579bc71a4d21a7c4875c77c83ce9966f119f4a1ddf2be2f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.0/coxswain-terminal-v2.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd2da5ad16a8d6b9e511d0bf28b8861a6b225e5ae7b38a9f732092faa947a404"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.0/coxswain-terminal-v2.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "825453c5441329fcc258bca82ee6dfa4e5b08225df5e8664a3557c89176e4c0d"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.0/coxswain-terminal-v2.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "041d4d16871e3a6b9a25f0e0a5464ba647ec3949710716af1547825f7bedf708"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
