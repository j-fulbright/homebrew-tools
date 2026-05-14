class Assumer < Formula
  desc "Terminal UI for AWS SSO authentication and role assumption"
  homepage "https://github.com/j-fulbright/rust-aws-sso-tui"
  url "https://github.com/j-fulbright/rust-aws-sso-tui/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "a81cee448282e877cff6a7e00aecaed6026265d4f5a1015f5e877e262fb514a1"
  version "1.0.6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "assumer", shell_output("#{bin}/assumer --version 2>&1", 1)
  end
end
