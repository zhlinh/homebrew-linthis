class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "f24827c72a284131997176521295a421d086ebc149a6f3e8811dd95844a154db" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "e77dc62fadc9cd9e1d8f75678f681f676ad1018b102048cf8bc9c0c9c738780f" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "285a4d5d4e69afd031769b4317dda6f47cc8678b1c9516b69a2c9f3802617d6c" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2bff8885fdaa124b61a55bb4361833ab1fb484b6abb06c1e062663a9a9ade6e7" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
