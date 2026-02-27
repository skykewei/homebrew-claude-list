class ClaudeList < Formula
  desc "List Claude Code skills and MCP servers"
  homepage "https://github.com/skykewei/claude-list"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skykewei/claude-list/releases/download/v#{version}/claude-list-darwin-arm64.tar.gz"
      sha256 "3bd139aa3026ad656a7c997990dd9318fd4c0eeb0dbae63a6c19261ca936027f"
    else
      url "https://github.com/skykewei/claude-list/releases/download/v#{version}/claude-list-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/skykewei/claude-list/releases/download/v#{version}/claude-list-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install "claude-list"
  end

  test do
    system "#{bin}/claude-list", "--version"
  end
end
