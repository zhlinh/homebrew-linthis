class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "b6c4d977bd204a06ea89600220b0dfb66cf7f5f05a44e739a8a13b8c38f0b4a1" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "a1d2a64ff55246046a538c9c85e064e799d22dcfff627064fa4e4476a3b0e99b" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2727f663ca89512932e7f32d407ca7145692c801ca606191a6f004f251000d64" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f29b83d58f5ff390407bd90c406b266bd8da4545bdfe980fbbf43e2245621185" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
