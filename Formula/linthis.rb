class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.28.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "e1d7fa6a9f304dc149a7f2f0bf2d0ba0c77d388c73efbee3254a49bacad7679d" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "9138bb7a0530a65a225fb86e4e90e7edf90f9289f3b7766bea7dc3683ac1277c" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "879c0db5a6e70f563c2db80557f7eae05bf03931a1c957d6917d375516ea483e" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "274fdcb62db82525bc79fe37746aa19ef4253407cdf04c7aba1affb48b4845d9" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
