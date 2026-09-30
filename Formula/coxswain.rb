class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.18.0/coxswain-terminal-v1.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "8272a2cb3e37b414004a8af24a2fb586fc7c66bb07d613cce58e0bc61f4ac48c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.18.0/coxswain-terminal-v1.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "78140dcd0eecf77511b773bbb6195f18d9e5916880b358d819512b0c483b09c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.18.0/coxswain-terminal-v1.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c812f161429d476dc525478224584a132a66890b134846ed5435dcf6304b01b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.18.0/coxswain-terminal-v1.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "286b205e087928f6e183bf6aeb33693d28350edaffb462730daf9b3fe19fc98e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
