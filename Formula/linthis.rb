class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "3ae567299346ad6318abed681f3c46b7d743fbbc404a94d2d0b161d10d2b9adf" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "cde5080a38fa6b5dbc05557021710bf424839670fa67f1bf70f9cb2850488fb6" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "355aa5a185171d3d7052397b1cc7a931c603e8307450f11c7c500171d3d97f44" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa481faf5f67e9d8d46148f5b9795bf51ac36e29c3814d3f81f7d67e3fc1f89e" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
