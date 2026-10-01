cask "coxswain-gui" do
  version "1.26.3"
  sha256 arm:          "9759161c4efe71000714f772e00db3514a0e34e81172a9c1831749018a1dcca0",
         intel:        "4735fbf506ea51f3cd5abb0acab3458ffe307bce3f9a9595ee11b232b4b73398",
         x86_64_linux: "9a72953a24653bf7f36f3bb63169bb217e530463376dcf7982607ed40acea22c"

  on_macos do
    arch arm: "aarch64", intel: "x64"

    url "https://github.com/mwo-dk/coxswain/releases/download/v#{version}/Coxswain_#{version}_#{arch}.dmg"

    app "Coxswain.app"
  end
  on_linux do
    url "https://github.com/mwo-dk/coxswain/releases/download/v#{version}/Coxswain_#{version}_amd64.AppImage"

    depends_on arch: :x86_64

    binary "Coxswain_#{version}_amd64.AppImage", target: "coxswain-gui"
  end

  name "Coxswain"
  desc "Norton Commander style file manager with Everything-speed search (desktop app)"
  homepage "https://github.com/mwo-dk/coxswain"

  preflight_steps do
    on_linux do
      set_permissions "Coxswain_{{version}}_amd64.AppImage", "0755"
    end
  end

  # Not notarized: without the quarantine flag cleared, macOS says the app is damaged.
  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Coxswain.app"]
    end
  end

  # Config and state in the coxswain config folder stay: the terminal app shares them.
  zap trash: [
    "~/Library/Caches/coxswain",
    "~/Library/WebKit/dk.mwo.coxswain",
  ]
end
