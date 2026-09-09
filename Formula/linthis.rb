class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "b3574dfbdb4f333943f87b29e15350688e93680e8a757a3ca056e207857b7f75" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "c01e21b85f0e37aea735fd5072f993ab2190132e87becae1318aee663106ed08" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2256df480d37db86065e9490be30e7b165f85612ca37c9b8edb5fb58565fa59" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a17ece98d6e5680e916ce604eb19b78c85b43395465f3b9753aa9b6610ca5bef" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
