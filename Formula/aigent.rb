class Aigent < Formula
  desc "AI agent skill toolchain — validate, lint, score, build, and test SKILL.md files"
  homepage "https://github.com/wkusnierczyk/aigent"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b5d88c8897afdfc59d241a16ae04ebc07fca2d16e04e545c500b69a5c6b2af4a"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "432629142ddcd27f535112d6768bb14018554cf65e0d812b8dbe12f4f89a409f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c08f2d8f1360e3e88a65260a9a20047a41650df6946899f4820828409abfea02"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "541865d36c751bb6e21a0bd0c421c23d8db00aa9eab914ab8d5b6391b3886fbf"
    end
  end

  def install
    bin.install "aigent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aigent --version")
  end
end
