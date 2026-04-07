cask "mdviewer" do
  version "1.2.2"
  sha256 "88647d51e6606f3bc1c0c6af41ff78c14268f1c1fe04e06f1d1be7e45228aea2"

  url "https://github.com/ecsimsw/mdviewer/releases/download/v#{version}/MarkdownViewer.app.zip"
  name "MarkdownViewer"
  desc "Markdown file viewer for macOS"
  homepage "https://github.com/ecsimsw/mdviewer"

  depends_on formula: "node"

  app "MarkdownViewer.app"

  postflight do
    system_command "/bin/bash",
                   args: ["-c", "export PATH=#{HOMEBREW_PREFIX}/bin:$PATH && npm install -g @ecsimsw/mdviewer"]
  end

  zap trash: "~/Applications/MarkdownViewer.app"
end
