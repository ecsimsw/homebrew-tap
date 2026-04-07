cask "mdviewer" do
  version "1.4.0"
  sha256 "9ac499a32491d10ae3ae079ec4e3ad0623e2f41f315b666700cbe94dca0ed557"

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
