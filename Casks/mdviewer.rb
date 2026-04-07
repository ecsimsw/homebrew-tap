cask "mdviewer" do
  version "1.1.1"
  sha256 "2552103e0f09d7118087404f606683d079f36af2e26fa0d36dcea4731c6e793b"

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
