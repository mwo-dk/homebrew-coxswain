class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.19.0/coxswain-terminal-v2.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca10dbebeab484d49544f772f5e065f6d4feceaceb26975a34df3700cb3261e4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.19.0/coxswain-terminal-v2.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "55f75ea8ab9970d419a068966dc957337665b717ee0e44acf93905c83955c96b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.19.0/coxswain-terminal-v2.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62fa38ae31c7096c83cc92b92eef018f83eee1e3b0ad59ededd081e0ac596643"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.19.0/coxswain-terminal-v2.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8f0b916747ff34f63e2bec8b2128b9b8749b3d840e42df7f6a363a02ec957c1"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
