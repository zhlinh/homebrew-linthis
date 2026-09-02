class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "8e1748c5c07b83f3e6d89512b5468b75047587c713330158f529685f40918472" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "07717507a5a2af1251f5c537c97deb9dccf623f65c474ea7c2c0ac8171689d5d" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64dc68c06251237c61dce894b3373f49cd1be0ca97736d2385cc45960128db21" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb9f3582ab4d0b6e1c038e7d9f648d661c8620cded9553c4679cfbef30d6358a" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
