class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.25.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "47ceb8f9073b173a62f800b51b855beaeb3c57ea58000e0584ca4395bddf9e96" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "9f9022138d0a19f4b30d9c63f3672a64982223ef0d5c912c9a4446547073a9ac" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b320533cdfca6265a95cc5f5c1174d35039c1587d6e342f07d4c222a1bbbafff" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ab29d7bfb0eeb9eaa811e2fbd4da976560b5b9c973f32417635023b8cc49abe" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
