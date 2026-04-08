class Awake < Formula
  desc "Keep your Mac awake while AI coding CLIs are doing real work"
  homepage "https://github.com/hiddenest/awake"
  url "https://github.com/hiddenest/awake/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "38e26824d5db9e7ac40cfe62a790fc9037317ad018d9f21ee38d8a8592046e35"
  license "MIT"
  head "https://github.com/hiddenest/awake.git", branch: "main"

  bottle do
    root_url "https://github.com/hiddenest/awake/releases/download/v0.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "97c5278ec67c105e10e022ba055cd31e98435216c91cfb94be07bdeda56903ac"
  end

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/awake setup --help")
  end
end
