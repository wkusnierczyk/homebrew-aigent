class Aigent < Formula
  desc "AI agent skill toolchain — validate, lint, score, build, and test SKILL.md files"
  homepage "https://github.com/wkusnierczyk/aigent"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5dfc571c1f2ce97f02d9ba231f40e83c78bdf5daa41e89a91d858013d5cea489"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d1f0bbe15b05d40efdd07df8167371398db40ba89144e6eb14df3e3f83afce43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d3e6653cdd3815c578e45721c267338df1be4153d8f6f665d8b77fba1ba1b2c"
    else
      url "https://github.com/wkusnierczyk/aigent/releases/download/v#{version}/aigent-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48b4e8796ed6a23c28b308584cc27401724a63643cc372cb5accec9b35ea02cf"
    end
  end

  def install
    bin.install "aigent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aigent --version")
  end
end
