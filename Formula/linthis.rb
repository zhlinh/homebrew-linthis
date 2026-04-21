class Linthis < Formula
  desc "A fast linter and formatter"
  homepage "https://github.com/zhlinh/linthis"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-apple-darwin.tar.gz"
      sha256 "819264e0514c858482e8fa72aa5a8ea15c260c5914acfdfcb85dd31ae24547fb" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-apple-darwin.tar.gz"
      sha256 "2c9d99623bc9a3827317df851601e10388b329ef86854c3fce81f2563cd05718" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6f0c166dca5a24012a08b0f9998be765a49b765c46d2143487a010d01a213fa" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/linthis/releases/download/v#{version}/linthis-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c67b9111965a1d4bcd79530709133390811d88d2bcf4ae9178cbed0c71cc3cb" # linux-x86_64
    end
  end

  def install
    bin.install "linthis"
  end
end
