class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "49caf4edf6ca46823c16c85e25ee44d6862f303418a688753eb734f36754148c" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "db10b6477112f74f442405d72fa857b9b59ffbfb2940a59fd7d44bc7173f329f" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d287f2ee7c8170edd6304514c471b9a4b557c66b88a07346dd628d31ce8258eb" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fc9990f4abf7dc5f29350a1b816dac823bc01b133ba3ae6631c6813f1cccc86" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
