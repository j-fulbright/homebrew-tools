class Assumer < Formula
  desc "Terminal UI for AWS SSO authentication and role assumption"
  homepage "https://github.com/j-fulbright/rust-aws-sso-tui"
  url "https://github.com/j-fulbright/rust-aws-sso-tui/archive/refs/heads/main.tar.gz"
  sha256 "ffec3b0a396357e6a9e5a25c8719029eadbb87605438105b547e5c7237ea7d7f"
  version "1.0.4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "assumer", shell_output("#{bin}/assumer --version 2>&1", 1)
  end
end
