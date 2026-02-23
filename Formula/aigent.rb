class Aigent < Formula
  desc "AI agent skill toolchain — validate, lint, score, build, and test SKILL.md files"
  homepage "https://github.com/wkusnierczyk/aigent"
  version "0.6.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0789e7e3690060a47ea0c657ebaa1dcc0de5e3344127c3ce1ed51c887eb8b155"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "82ae54407760ca27869c3e0cd37b92de309b1d25717ab2d85cb6b86f075aefce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56e178a407ba92d5cb2b41526e327d4a19bc2431e1bde7ac11d41aedb72b172e"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e8687433036d88d4ee9e17ebe9806604fc36bbac3a64844d21495f108b09b1e"
    end
  end

  def install
    bin.install "aigent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aigent --version")
  end
end
