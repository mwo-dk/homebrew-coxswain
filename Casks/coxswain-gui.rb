cask "coxswain-gui" do
  version "1.34.0"
  sha256 arm:          "0358a599bb780a690b8dbb053c7942395e52ede00732478cfa1fbd834d10b72c",
         intel:        "b6c11e6ffdc10dc52e3d4796facd9a5ebbd3bdb7af64233df87bdd3e69f80c30",
         x86_64_linux: "2ecc81925d42b79b40c0bbb66be1ff8623426729354823d482344231ec1c6e21"

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
