class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "c54dfc9d3ed2b6a122b04481fbfc215af20105783050feb3d50c45b48e68eca2" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "7c8816e13fc4a727c68be026c12f5c0cec732d6c6b96d3c1d786897d6aa342d3" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8e5fe2b99661666d4dd1f40bcfc8dac8723c66426a5783472d1bdc61e97bbad" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b52d785896fca6342f13095b6dd3fbc0e78e438f15cbdb4922983022c20e975b" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
