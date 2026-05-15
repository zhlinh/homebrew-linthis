class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "0f2425a1171ac1708fa0f8d0f72d6ab57274eb08c5838ef5a749d78bb63f2415" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "59335437c13dc69180121fdb4008a6b41c7116bd0c9c02515b2ff728c3bad6d1" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "384febb3f67366b90d7551779054ef05cbe636bab25122dbd9c64e490ef16532" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c65795236e81af42e363955871e891b46a1bef22cb93d331a687dbe4912e833" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
