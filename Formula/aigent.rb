class Aigent < Formula
  desc "AI agent skill toolchain — validate, lint, score, build, and test SKILL.md files"
  homepage "https://github.com/wkusnierczyk/aigent"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cd0260c0b7fcf6c21d47c846253829dc60a4a7ab66997a51f5265c0d1a7b2494"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "018c013c5d704d7d27f247c09d9c8cf07fc818e39d164441809b24c1262ffbbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d07bddb50fb758abd34fde459fb28f6ffc88d00f15273f73c60fb6839f29517b"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46d7c2178523f49bd679aa4399dc8b7b95102986e9a525c64fb4a487b879bab7"
    end
  end

  def install
    bin.install "aigent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aigent --version")
  end
end
