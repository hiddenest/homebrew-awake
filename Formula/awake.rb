class Awake < Formula
  desc "Keep your Mac awake while AI coding CLIs are doing real work"
  homepage "https://github.com/hiddenest/awake"
  url "https://github.com/hiddenest/awake/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "5ca5ed4ffe2e77b61fcbfd8a75ea60648131d2b43834b54d1924248e63f4a1b2"
  license "MIT"
  head "https://github.com/hiddenest/awake.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/awake setup --help")
  end
end
