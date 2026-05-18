class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "759a567dc0efeadbfa6f5e3286e0c2c4fb7e2d2840322e07fe945981add9e41f" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "cb4e5cffb28c481f0009c9332f548b7b71c2399e5b5082973748490088c37d2b" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9eb4d1a4697344470f2508b1723dd3a8f60506d4c0759323241811b2242fe68b" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9d4e013dce94d285536bbc3dfd41413870d1896b815ecaae2560df04de7522e" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
