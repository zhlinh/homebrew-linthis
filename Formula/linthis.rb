class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "2a06a97d04a5f9b901e352ed33f481404e947815fd51ad39e559f9bcdcf1ac11" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "4c8407c53381b277784bc858246a56366ff410c9527ba88a76022023e5eace30" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd01973b19b368451e2e69fc59501858340870dfc68806ef6b0bd98ee7fcdfdb" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9134269c5e92c1310bb31d6ce0f2f20786b27ea96ac690035867bf97afc6dec" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
