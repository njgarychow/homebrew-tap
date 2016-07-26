# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Cow < Formula
  desc "Climb Over the Wall"
  homepage "https://github.com/cyfdecyf/cow"
  url "https://codeload.github.com/njgarychow/Homebrew/tar.gz/cow-0.9.8"
  version "0.9.8"
  sha256 "8be83b5498ff8f350abf14eb4c58aaee8b141374ab263414aea18c1cf89e87f5"

  def install
    cd "cow-0.9.8" do
      bin.install "cow"
    end
  end

  plist_options :manual => "cow"

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>WorkingDirectory</key>
      <string>#{var}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/cow</string>
        <string>&</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end
