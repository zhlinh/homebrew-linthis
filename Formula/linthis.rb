class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "6410e6a6080cdcdc71a92f2602fef48ed793fa026fd43d6fc193379e97dc5e7a" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "06c445acf5b09cda82718fefda73df44fdab8a1cf23fa2871b30eddc8bb1eaaf" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b4a5806be6741d9a32695851041081b633dda8152b26c927d775d3606a90b43e" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60da2deb407459d8af7f609b694b34663553fc3c16c64184654d9d7f61b05bf3" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
