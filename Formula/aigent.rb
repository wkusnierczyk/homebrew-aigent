class Aigent < Formula
  desc "AI agent skill toolchain — validate, lint, score, build, and test SKILL.md files"
  homepage "https://github.com/wkusnierczyk/aigent"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b85b19e698134fc21aaec6f82af3c269914f9dbca3418e8927a40528040ae0bf"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c8dc9de12118f0f516484a35277d3f8df89fae1205bb5778d549b12975ec9c31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cdbcffe041b89f6306d15319b81fd77e2e084f242935080889c245cfac0ac7f"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42aadc7084ad8d208e12b7396cbf6cfe24bc292473ba8a93e9aff810ce856c90"
    end
  end

  def install
    bin.install "aigent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aigent --version")
  end
end
