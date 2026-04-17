class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.19.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "bc8f44bbd88ff34385bbcabfd454de5ce1a33efcd3f838e1648e591ca1da12a8" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "f0cc6d89ec1b6a12ca4b40454bcbb7308a5014ef45d25f06d694680118babea2" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4498e3a436ea00cbab063263ccdc0af806984f1af7296b3cbac6c76b185169d" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80ef0fbe321f78f4fd0cae90905aceb539d9c732f2ca91cb1f051d95325c07f3" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
