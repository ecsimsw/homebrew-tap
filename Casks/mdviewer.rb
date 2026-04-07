cask "mdviewer" do                                                                                                                                                                                                                                     
  version "1.0.2"                                                                                                                                                                                                                                      
  sha256 "02e2d25315749d7d45fd2e1be7eb48f4e049c08649b3d52157d1184158c776d7"
                                                                                                                                                                                                                                                       
  url "https://github.com/ecsimsw/mdviewer/releases/download/v#{version}/MarkdownViewer.app.zip"                                                                                                                                                       
  name "MarkdownViewer"                                                                                                                                                                                                                                
  desc "Markdown file viewer for macOS"                                                                                                                                                                                                                
  homepage "https://github.com/ecsimsw/mdviewer"                                                                                                                                                                                                       
 
  depends_on formula: "node"                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                     
  app "MarkdownViewer.app"

  postflight do                                                                                                                                                                                                                                        
    system_command HOMEBREW_PREFIX/"bin/npm",
                   args: ["install", "-g", "@ecsimsw/mdviewer"]                                                                                                                                                                                        
  end                                                                                                                                                                                                                                                

  zap trash: "~/Applications/MarkdownViewer.app"                                                                                                                                                                                                       
end
