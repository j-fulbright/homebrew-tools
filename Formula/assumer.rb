class Assumer < Formula
  desc "Terminal UI for AWS SSO authentication and role assumption"
  homepage "https://github.com/j-fulbright/rust-aws-sso-tui"
  url "https://github.com/j-fulbright/rust-aws-sso-tui/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "PLACEHOLDER_UPDATE_AFTER_v1.0.7_RELEASE_IS_TAGGED"
  version "1.0.7"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "assumer", shell_output("#{bin}/assumer --version 2>&1", 1)
  end
end
