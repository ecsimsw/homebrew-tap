cask "mdviewer" do
  version "1.3.0"
  sha256 "655219e29357a3dc41044e7ca80827aa88321168247eee85be1f9bdc07f047c8"

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
