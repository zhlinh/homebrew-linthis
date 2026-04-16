class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.19.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "baceff81bf70b2dfbffe24be1e99673ac9c45657e4f66c7116f888e851988dc8" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "68d79f6831abbdf8c3d466b0f633229fa39ad1f7613111a275cfb2d92c44af8a" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50ab62562f56dad65d979188ff71d422038aea09af16684efec968c0dabe5758" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2289406b67ccca06e81afb4454a00f3d01fc4e0e79906f5c1ef1c3581c43d9f7" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
