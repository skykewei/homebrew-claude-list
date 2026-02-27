class ClaudeList < Formula
  desc "List Claude Code skills and MCP servers"
  homepage "https://github.com/skykewei/claude-list"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skykewei/claude-list/releases/download/v#{version}/claude-list-darwin-arm64.tar.gz"
      sha256 "4229e85f31e0578de13a68dcc7779836ac26cc613509f1463e377ebe52e2b0c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/skykewei/claude-list/releases/download/v#{version}/claude-list-linux-amd64.tar.gz"
      sha256 "ae8517a512e88aa53b0b131656ea6244c3fb11f9f26332978495f7bc1272dcf7"
    end
  end

  def install
    bin.install "claude-list"
  end

  test do
    system "#{bin}/claude-list", "--version"
  end
end
