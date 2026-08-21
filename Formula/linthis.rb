class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "3d2f0fcb1e0fa8d845eb0d9b3d86608cef1ec13f0c8f52069b5d38e692b53917" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "0d2f8b944570f7b013f288b0b5460a4d3d8c42f4cf3278e92e1c8cf1f24c7e33" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a3bc74a2e91366327566316fea20a405493e3b4e101a705b3850016436dfc26" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "adbd49a30f431d81d4e2522a538f57a8c7dbcf4199c441a864a1df44da4172b6" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
