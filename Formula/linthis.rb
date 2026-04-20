class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.19.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "e27a49d15c27f324482581980953e0a5ed096234518a9acf87210367185fe34e" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "4ba8f5f45ab59fbac76e7d2b9d4f1e0264a96fd8b3c27f7d12d18fe0970b4d1a" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c26b45b71ca9a2031e8e7e82c202970e863283f91d4c6d7d631d92fb346372e6" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed1805c64b81c30c56cf75220ac2788f7fd2b67eef74d379ff6f167d2f9e40c2" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
