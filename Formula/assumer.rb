class Assumer < Formula
  desc "Terminal UI for AWS SSO authentication and role assumption"
  homepage "https://github.com/j-fulbright/rust-aws-sso-tui"
  url "https://github.com/j-fulbright/rust-aws-sso-tui/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "7544f3dc1bb102c179cccabd849165d6beddc3e7fea3384d82f3333f114ec02b"
  version "1.0.5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "assumer", shell_output("#{bin}/assumer --version 2>&1", 1)
  end
end
