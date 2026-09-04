class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "aa0487d397a113ae3b25ffd10fa756ecb4e6912783b3fb0689926f67a9e43a28" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "5f931c81174def904634d84d8147149b70346fdea288d994abe9ced971cd8357" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2d406c314789727b4db81fef99fda8c7c0131c1fe665df3a78db88cb6653e86" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef2e0bdc166d1ce6c3ef00db5472db3bd2da7bd95dd0bc9a697f8ee371e57c03" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
