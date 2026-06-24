class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "60f0a3757ee35068fc9c9eb32ed5db1abc0498011c706081a6b133f262d0951d" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "4e3bc031323d2635c1f4d33cb8f21162529bd6d73836085a97fb0053b9565fc8" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef09e7417a5c6f98f8a7d8e687444c730d32d7711bab32e2fefca5bdab86ecb7" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ef02c2fcf94baa58acf0687b256e50719d8061b078331f246f375125b1e804e" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
