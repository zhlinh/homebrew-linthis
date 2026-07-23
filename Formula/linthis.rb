class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "2d64a28ed95e5f8cf0c4587af6f614fdb13b89b1802245bd6a160b8fd42ce765" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "cad18a8c999ec4177891697558ebe944ecd3a60cdaab85437e323e6999a7c473" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60e44491a33ead3c5e94f3256705b2d39b8b942c55463434901b65cdd6a43af7" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f71e297dd7c258fbffc736d0a77f447709026f64c261a93c16bb983173e5d28" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
