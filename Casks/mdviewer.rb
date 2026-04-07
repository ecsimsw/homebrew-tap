cask "mdviewer" do
  version "1.2.0"
  sha256 "6641f75d90032dab82ade082fba413152dd46b16720aacfd5bd7607632dc480d"

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
