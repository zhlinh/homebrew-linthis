class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.26.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "0ed3b51ca67b02ff128dbee6cc5e9ad8d56db36ae8bfa1cc77eb0c72e45cf653" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "d09cd0bd2766583388beea6346f2a86f31cbdc5b554ba3dbbea50eeb6710f11e" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d7458d94cc59d8d0bd4c7085224ac9b6f3a6a21d3b96345cbd7af63c8f0f68e" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b65eab314db666a66d0c76efcdc70dcfc089949517e063ce26d6e931917a9f5e" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
