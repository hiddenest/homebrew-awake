class Awake < Formula
  desc "Keep your Mac awake while AI coding CLIs are doing real work"
  homepage "https://github.com/hiddenest/awake"
  url "https://github.com/hiddenest/awake/archive/refs/tags/v0.2.4.tar.gz"
  sha256 "92043ede115d5495fefc21b00a0c3f942e717a4b97af3d044a7eeaadf006c6f3"
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
