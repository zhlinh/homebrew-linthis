class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "9898d98ed90f63e29613a85aff144836002502ceb49017f82eba28297d7c25b5" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "f36eeddbbbb03bd89eb5d83c344ba1bd3a23f93d0d46b1d8329fabfabf546d42" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f453b8d96ffd4302912eed7aa96e63cd84db98628e8b49b2664bf5682aad50d" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91f9250da1dd044a19d136cc8f976dcad02be6f113d254f3116bd484c72c3df0" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
