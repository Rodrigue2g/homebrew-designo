  cask "apply-studio" do
    version "0.14.0"
    sha256 "← sha256sum build/ApplyStudio-0.14.0.dmg"

    url "https://github.com/PaulGregory1/apply-studio/releases/download/v#{version}/ApplyStudio-#{version}.dmg"
    name "ApplyStudio"
    desc "Local UI over Claude and Codex for managing job applications"
    homepage "https://github.com/PaulGregory1/apply-studio"

    app "ApplyStudio.app"

    zap trash: [
      "~/Documents/applystudio",
      "~/Library/Application Support/ApplyStudio",
      "~/Library/Logs/ApplyStudio",
      "~/Library/Preferences/com.designogroup.applystudio.plist",
      "~/Library/Saved Application State/com.designogroup.applystudio.savedState",
    ]
  end
